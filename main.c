//Compiled using SDCC
#include <at89x52.h>
#include <compiler.h>

#define DS3232_ADDRESS 0x68 // address of rtc

#define AT24C512B_ADDRESS 0X50 // address of eeprom

#define NUM_ALARMS 8 // maximum number of alarms 

#define EEPROM_BASE 0x0000  // 24lc32a RAM starts at 0x00

#define STEPS 137 // number of steps for stepper motor [48byj-28] to rotate 12 degrees


unsigned char __idata alarm_hours[NUM_ALARMS];  //to store alarm hours
unsigned char __idata alarm_minutes[NUM_ALARMS];  //to store alarm minutes

unsigned char time_date[7] = {0,0,0,0,1,1,25};  //starting time

unsigned char num_alarms = 1;
unsigned int idle_counter = 0;

unsigned char h, m, s, d, mo, y, day;
const unsigned char __idata max_vals[] = {24, 60, 60, 7, 31, 12, 100};
const unsigned char __idata min_vals[] = {0, 0, 0, 0, 1, 1, 0};
int alarm_index,index;
char time_str[9];
char date_str[13];
char buf[3];
unsigned char hr, min;

__bit wake_flag = 0;

//lcd connections
SBIT(LCD_RS, 0x90, 0);
SBIT(LCD_RW, 0x90, 1);
SBIT(LCD_EN, 0x90, 2);
SBIT(LCD_D4, 0x90, 3);
SBIT(LCD_D5, 0x90, 4);
SBIT(LCD_D6, 0x90, 5);
SBIT(LCD_D7, 0x90, 6);

//reset connection
SBIT(RESET, 0x90, 7);

//Button connections
SBIT(up, 0xB0, 4);
SBIT(down, 0xB0, 5);
SBIT(next, 0xB0, 6);
SBIT(back, 0xB0, 7);

//I2C connections
SBIT(SDA, 0xB0, 1);
SBIT(SCL, 0xB0, 0);

//Stepper motor connections [via uln2003]
SBIT(IN1, 0xA0, 1);
SBIT(IN2, 0xA0, 2);
SBIT(IN3, 0xA0, 3);
SBIT(IN4, 0xA0, 4);

//Buzzer connection
SBIT(BUZZER, 0XA0, 0);

void delay(unsigned int cycles) {
	unsigned int i, j;
	for(i = 0; i < cycles; i++)
		for(j = 0; j < 5; j++);
}

void delay_ms(unsigned int ms) {
	unsigned int i,j;
	for(i=0; i<ms; i++)
		for(j=0; j<1275; j++);
}

void pulse_enable() {
	LCD_EN = 1;
	delay(1);
	LCD_EN = 0;
	delay(1);
}

void send_nibble(unsigned char nibble) {
	LCD_D4 = (nibble >> 0) & 1;
	LCD_D5 = (nibble >> 1) & 1;
	LCD_D6 = (nibble >> 2) & 1;
	LCD_D7 = (nibble >> 3) & 1;
	pulse_enable();
}

void lcd_cmd(unsigned char cmd) {
	LCD_RS = 0;
	LCD_RW = 0;
	send_nibble(cmd >> 4);
	send_nibble(cmd & 0x0F);
	delay(2);
}

void lcd_char(unsigned char ch) {
	LCD_RS = 1;
	LCD_RW = 0;
	send_nibble(ch >> 4);
	send_nibble(ch & 0x0F);
	delay(2);
}

void lcd_string(char *str) {
	while(*str) {
		lcd_char(*str++);
	}
}

void lcd_clear() {
	lcd_cmd(0x01);
	delay(2);
}

void lcd_goto(unsigned char row, unsigned char col) {
	unsigned char address = (row == 0) ? (0x80 + col) : (0xC0 + col);
	lcd_cmd(address);
}

void lcd_init() {
	LCD_RS = 0;
	LCD_RW = 0;
	LCD_EN = 0;

	delay(20);

	send_nibble(0x03);
	delay(5);
	send_nibble(0x03);
	delay(5);
	send_nibble(0x03);
	delay(5);
	send_nibble(0x02);

	lcd_cmd(0x28);
	lcd_cmd(0x0C);
	lcd_cmd(0x06);
	lcd_cmd(0x01);
	delay(2);
}

void int_to_str(unsigned char val, char *str) {
	str[0] = (val / 10) + '0';
	str[1] = (val % 10) + '0';
	str[2] = '\0';
}

void i2c_init() {
	SDA = 1;
	SCL = 1;
	delay(1);
}

void i2c_start() {
	SDA = 1;
	SCL = 1;
	delay(1);
	SDA = 0;
	delay(1);
	SCL = 0;
}

void i2c_stop() {
	SDA = 0;
	SCL = 1;
	delay(1);
	SDA = 1;
	delay(1);
}

__bit i2c_write(unsigned char value) {
	unsigned char i;
	__bit ack;

	for (i = 0; i < 8; i++) {
		SDA = (value & 0x80) ? 1 : 0;
		SCL = 1;
		delay(1);
		SCL = 0;
		value <<= 1;
	}

	SDA = 1;
	SCL = 1;
	delay(1);
	ack = SDA;
	SCL = 0;
	return ~ack;
}

unsigned char i2c_read(unsigned char ack) {
	unsigned char i, value = 0;

	SDA = 1;

	for (i = 0; i < 8; i++) {
		value <<= 1;
		SCL = 1;
		delay(1);
		if (SDA)
			value |= 1;
		SCL = 0;
		delay(1);
	}

	SDA = (ack) ? 0 : 1;
	SCL = 1;
	delay(1);
	SCL = 0;
	SDA = 1;
	return value;
}

unsigned char dec_to_bcd(unsigned char val) {
	return ((val / 10) << 4) | (val % 10);
}

unsigned char bcd_to_dec(unsigned char val) {
	return ((val >> 4) * 10) + (val & 0x0F);
}

void ds3232_init(void) {
	i2c_start();
	i2c_write((DS3232_ADDRESS << 1) | 0); // Write mode
	i2c_write(0x00); // Point to seconds register
	i2c_write(0x00); // Start oscillator (CH = 0)
	i2c_stop();
}

void ds3232_set_time_date(unsigned char hrs, unsigned char min, unsigned char sec, unsigned char day, unsigned char date, unsigned char month, unsigned char year) {
	i2c_start();
	i2c_write((DS3232_ADDRESS << 1) | 0);
	i2c_write(0x00);
	i2c_write(dec_to_bcd(sec));
	i2c_write(dec_to_bcd(min));
	i2c_write(dec_to_bcd(hrs));
	i2c_write(dec_to_bcd(day));
	i2c_write(dec_to_bcd(date));
	i2c_write(dec_to_bcd(month));
	i2c_write(dec_to_bcd(year));
	i2c_stop();
}

void ds3232_get_time_date(unsigned char *hrs, unsigned char *min, unsigned char *sec, unsigned char *day, unsigned char *date, unsigned char *month, unsigned char *year) {
	i2c_start();
	i2c_write((DS3232_ADDRESS << 1) | 0);
	i2c_write(0x00);
	i2c_stop();

	i2c_start();
	i2c_write((DS3232_ADDRESS << 1) | 1);
	*sec   = bcd_to_dec(i2c_read(1));
	*min   = bcd_to_dec(i2c_read(1));
	*hrs   = bcd_to_dec(i2c_read(1));
	*day   = bcd_to_dec(i2c_read(1));
	*date  = bcd_to_dec(i2c_read(1));
	*month = bcd_to_dec(i2c_read(1));
	*year  = bcd_to_dec(i2c_read(0));
	i2c_stop();
}

void display(unsigned char h, unsigned char m, unsigned char s, unsigned char d, unsigned char mo, unsigned char y, unsigned char day ) {
	int_to_str(h, buf);
	time_str[0] = buf[0];
	time_str[1] = buf[1];
	time_str[2] = ':';
	int_to_str(m, buf);
	time_str[3] = buf[0];
	time_str[4] = buf[1];
	time_str[5] = ':';
	int_to_str(s, buf);
	time_str[6] = buf[0];
	time_str[7] = buf[1];
	time_str[8] = '\0';

	// Format date string
	int_to_str(d, buf);
	date_str[0] = buf[0];
	date_str[1] = buf[1];
	date_str[2] = ':';
	int_to_str(mo, buf);
	date_str[3] = buf[0];
	date_str[4] = buf[1];
	date_str[5] = ':';
	int_to_str(y, buf);
	date_str[6] = buf[0];
	date_str[7] = buf[1];
	date_str[8] = ' ';

	switch(day) {
	case 1:
		buf[0] = 'S';
		buf[1] = 'u';
		buf[2] = 'n';
		break;
	case 2:
		buf[0] = 'M';
		buf[1] = 'o';
		buf[2] = 'n';
		break;
	case 3:
		buf[0] = 'T';
		buf[1] = 'u';
		buf[2] = 'e';
		break;
	case 4:
		buf[0] = 'W';
		buf[1] = 'e';
		buf[2] = 'd';
		break;
	case 5:
		buf[0] = 'T';
		buf[1] = 'h';
		buf[2] = 'u';
		break;
	case 6:
		buf[0] = 'F';
		buf[1] = 'r';
		buf[2] = 'i';
		break;
	case 7:
		buf[0] = 'S';
		buf[1] = 'a';
		buf[2] = 't';
		break;
	}
	date_str[9] = buf[0];
	date_str[10] = buf[1];
	date_str[11] = buf[2];
	date_str[12] = '\0';

	// Display on LCD
	lcd_goto(0, 0);
	lcd_string(time_str);
	lcd_goto(1, 0);
	lcd_string(date_str);
}

void step_motor(int step) {
	switch(step % 8) {
	case 0:
		IN1=1;
		IN2=0;
		IN3=0;
		IN4=0;
		break;
	case 1:
		IN1=1;
		IN2=1;
		IN3=0;
		IN4=0;
		break;
	case 2:
		IN1=0;
		IN2=1;
		IN3=0;
		IN4=0;
		break;
	case 3:
		IN1=0;
		IN2=1;
		IN3=1;
		IN4=0;
		break;
	case 4:
		IN1=0;
		IN2=0;
		IN3=1;
		IN4=0;
		break;
	case 5:
		IN1=0;
		IN2=0;
		IN3=1;
		IN4=1;
		break;
	case 6:
		IN1=0;
		IN2=0;
		IN3=0;
		IN4=1;
		break;
	case 7:
		IN1=1;
		IN2=0;
		IN3=0;
		IN4=1;
		break;
	}
}

void write_eeprom(unsigned int addr, unsigned char value) {
	// Ensure address is within valid RAM range
	if (addr > 0x0FFF) return;

	i2c_start();
	i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode
	i2c_write((addr>>8) & 0xFF);                       // upper byte RAM address
	i2c_write(addr & 0xFF);				  			  // lower byte RAM address
	i2c_write(value);                      // Data
	i2c_stop();
	delay(500);
}

unsigned char read_eeprom(unsigned int addr) {
	unsigned char data;

	if (addr > 0x0FFF) return 0xFF; // Return invalid value if out of range

	i2c_start();
	i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode to set address pointer
	i2c_write((addr>>8) & 0xFF); 
	i2c_write(addr & 0xFF);	

	i2c_start();                           // Repeated start
	i2c_write((AT24C512B_ADDRESS << 1) | 1);  // Read mode
	data = i2c_read(0);                    // No ACK
	i2c_stop();
	delay(500);
	return data;
}

void write_alarm_to_eeprom(unsigned char index, unsigned char h, unsigned char m) {
	write_eeprom(EEPROM_BASE + (index * 2) + 1, h);
	write_eeprom(EEPROM_BASE + (index * 2) + 2, m);
}


void alarm_arranger(unsigned char hours[], unsigned char minutes[], unsigned char *n){
	    unsigned char i, j, min_idx;

    // Step 1: Sort using selection sort
    for (i = 0; i < *n - 1; i++) {
        min_idx = i;
        for (j = i + 1; j < *n; j++) {
            if (hours[j] < hours[min_idx] || (hours[j] == hours[min_idx] && minutes[j] < minutes[min_idx])) {
                min_idx = j;
            }
        }
        // Swap hours
        unsigned temp = hours[i];
        hours[i] = hours[min_idx];
        hours[min_idx] = temp;

        // Swap minutes
        temp = minutes[i];
        minutes[i] = minutes[min_idx];
        minutes[min_idx] = temp;
    }

    // Step 2: Remove duplicates in-place
    int __index = 1; // points to next unique position
    for (i = 1; i < *n; i++) {
        if (!(hours[i] == hours[__index - 1] && minutes[i] == minutes[__index - 1])) {
            hours[__index] = hours[i];
            minutes[__index] = minutes[i];
            __index++;
        }
    }

    // Update n to new size
    *n = __index;

}

void ds3232_set_alarm1(unsigned char hrs, unsigned char min, unsigned char sec) {
    // Convert to BCD
    unsigned char bcd_sec = dec_to_bcd(sec);
    unsigned char bcd_min = dec_to_bcd(min);
    unsigned char bcd_hrs = dec_to_bcd(hrs);

    // Set Alarm 1 for exact time match: hrs:min:sec (A1M1=0, A1M2=0, A1M3=0, A1M4=1)
    i2c_start();
    i2c_write((DS3232_ADDRESS << 1) | 0);  // Write mode
    i2c_write(0x07); // Alarm1 register start

    i2c_write(bcd_sec & 0x7F);      // A1 Seconds, A1M1 = 0
    i2c_write(bcd_min & 0x7F);      // A1 Minutes, A1M2 = 0
    i2c_write(bcd_hrs & 0x7F);      // A1 Hours, A1M3 = 0
    i2c_write(0x80);                // A1 Day/Date, A1M4 = 1 (don’t care about day/date)
    i2c_stop();

    // Enable Alarm1 interrupt, INTCN = 1
    i2c_start();
    i2c_write((DS3232_ADDRESS << 1) | 0);
    i2c_write(0x0E); // Control register
    i2c_write(0x05); // 00000101 => A1IE = 1, INTCN = 1
    i2c_stop();

    // Clear Alarm1 flag (bit 0) in status register
    i2c_start();
    i2c_write((DS3232_ADDRESS << 1) | 0);
    i2c_write(0x0F); // Status register
    i2c_write(0x00); // Clear A1F
    i2c_stop();
}

void set_clock() {
	idle_counter = 0;
	index = 0;
	display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);

	while (index < 7) {
		delay(10000);
		if (!up) {
			delay(10000); // debounce
			time_date[index]++;
			if (time_date[index] >= max_vals[index]) {
				time_date[index] = min_vals[index];
			}
			display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
			idle_counter = 0;
		}

		if (!down) {
			delay(10000); // debounce
			if (time_date[index] <= min_vals[index]) {
				time_date[index] = max_vals[index] - 1;
			} else {
				time_date[index]--;
			}
			display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
			idle_counter = 0;
		}

		if (!next) {
			delay(10000); // debounce
			index = index+1;
			idle_counter = 0;
		}

		if (!back) {
			delay(10000); // debounce
			index = index-1;
			idle_counter = 0;
		}
		if (++idle_counter >30) {
			break;
		}
	}
	if (idle_counter <= 30) {
		ds3232_set_time_date(time_date[0], time_date[1], time_date[2], time_date[3] + 1, time_date[4], time_date[5], time_date[6]);
	}

	idle_counter = 0;
}

void set_alarms() {
	idle_counter = 0;
	unsigned char i;
	// Step 1: Ask user how many alarms
	lcd_clear();
	lcd_goto(0, 0);
	lcd_string(" How many alarms");
	while (1) {
		lcd_goto(1, 6);
		lcd_char(num_alarms + '0');
		delay(10000);

		if (!up) {
			delay(10000);
			if (num_alarms < NUM_ALARMS) num_alarms++;
			idle_counter = 0;
		}

		if (!down) {
			delay(10000);
			if (num_alarms > 1) num_alarms--;
			idle_counter = 0;
		}

		if (!next) {
			delay(10000);
			break;
		}

		if (++idle_counter > 30) {
			lcd_clear();
			lcd_goto(0,0);
			lcd_string(" Time limit exc!");
			delay_ms(3000);
			lcd_clear();
			idle_counter = 0;
			return;  //time exceeded
		}
	}

	// Step 2: Loop for each alarm
	for (i = 0; i < num_alarms; i++) {
		idle_counter = 0;

		// Set hour
		lcd_clear();
		lcd_goto(0, 0);
		lcd_string(" Set Hour Alarm ");
		lcd_goto(1, 0);
		lcd_string("Alarm ");
		lcd_char('1' + i);

		while (1) {
			lcd_goto(1, 9);
			int_to_str(hr, buf);
			lcd_string(buf);
			delay(10000);

			if (!up) {
				delay(10000);
				hr = (hr + 1) % 24;
				idle_counter = 0;
			}
			if (!down) {
				delay(10000);
				hr = (hr == 0) ? 23 : hr - 1;
				idle_counter = 0;
			}
			if (!next) {
				delay(10000);
				break;
			}
			if (!back) return;

			if (++idle_counter > 30) {
				lcd_clear();
				lcd_goto(0,0);
				lcd_string(" Time limit exc!");
				delay_ms(3000);
				idle_counter = 0;
				return;  //time exceeded
			}
		}

		// Set minute
		idle_counter = 0;
		lcd_clear();
		lcd_goto(0, 0);
		lcd_string(" Set Min Alarm ");
		lcd_goto(1, 0);
		lcd_string("Alarm ");
		lcd_char('1' + i);

		while (1) {
			lcd_goto(1, 9);
			int_to_str(min, buf);
			lcd_string(buf);
			delay(10000);

			if (!up) {
				delay(10000);
				min = (min + 1) % 60;
				idle_counter = 0;
			}
			if (!down) {
				delay(10000);
				min = (min == 0) ? 59 : min - 1;
				idle_counter = 0;
			}
			if (!next) {
				delay(10000);
				break;
			}
			if (!back) return;

			if (++idle_counter > 30) {
				lcd_clear();
				lcd_goto(0,0);
				lcd_string(" Time limit exc!");
				delay_ms(3000);
				idle_counter = 0;
				return;
			}
		}

		alarm_hours[i] = hr;
		alarm_minutes[i] = min;
		lcd_clear();
		lcd_string(" Alarm Saved");
		delay(25000);
	}
	alarm_arranger(alarm_hours, alarm_minutes, &num_alarms);
	write_eeprom(EEPROM_BASE, num_alarms);

	for(i = 0; i < num_alarms; i++) {
		write_alarm_to_eeprom(i, alarm_hours[i], alarm_minutes[i]);
	}
	ds3232_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
	int total_mins = (h*60)+min;

	if (total_mins >= (alarm_hours[num_alarms - 1] * 60 + alarm_minutes[num_alarms - 1])) {
    	ds3232_set_alarm1(alarm_hours[0], alarm_minutes[0], 0);
    	write_eeprom(0x003A, 0);
	}

	else{
		for(i=0; i<num_alarms-1; i++){
			int total_mins1 = (alarm_hours[i]*60)+alarm_minutes[i];
			int total_mins2 = (alarm_hours[i+1]*60)+alarm_minutes[i+1];
			if (total_mins>= total_mins1 && total_mins<total_mins2){
				ds3232_set_alarm1(alarm_hours[i+1], alarm_minutes[i+1], 0);
				write_eeprom(0x003A, (i+1)%num_alarms);
			}
		}
	}
	

	lcd_clear();
	lcd_string(" All Alarms Saved");
	delay(25000);
	lcd_clear();
}

void reset_motor_position(void) {
	unsigned char count;
	unsigned int total_steps, correction_steps, remainder, ii;

	// 1. Read the counter value
	count = read_eeprom(0x003F);

	// 2. Calculate how far we've moved
	total_steps = (unsigned long)count * 137;

	// 3. Get how far into the current full rotation we are
	remainder = total_steps % 4096;

	// 4. Calculate steps needed to return to zero
	if (remainder != 0) {
		correction_steps = 4096 - remainder;

		// 5. Rotate the motor back
		for(ii=0; ii<correction_steps; ii++) {
			step_motor(ii);
			delay_ms(3);
		}
		IN1 = 0;
		IN2 = 0;
		IN3 = 0;
		IN4 = 0;
	}

	// 6. Reset counter in DS1307 RAM
	write_eeprom(0x003F, 0);
}

void alarm_triggered(void) __interrupt(0) {
	EA = 0;
	unsigned char j, k;
	wake_flag = 1;
	lcd_clear();
	lcd_goto(0, 0);
	lcd_string(" Alarm Triggered");
	lcd_goto(1, 0);
	lcd_string("Take Medicine");
	BUZZER = 1;
	k = read_eeprom(0x003F);
	k = k+1;
	write_eeprom(0x003F, k);
	for(j = 0; j < STEPS; j++) {
		step_motor(j);
		delay_ms(3);  // Adjust delay for speed
	}
	IN1=0;
	IN2=0;
	IN3=0;
	IN4=0; // to save power
	// Wait for user to acknowledge (e.g., press a button)
	unsigned int timeout = 0;
	while (down && timeout < 5000) {  // ~5 sec timeout
		delay_ms(1);
		timeout++;
	}
	lcd_clear();
	BUZZER = 0;
	unsigned char alarm_indx = read_eeprom(0x003A);
	alarm_indx = (alarm_indx+1)%num_alarms;
	write_eeprom(0x003A, alarm_indx);
	hr = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 1);
	min  = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 2);
	ds3232_set_alarm1(hr, min, 0);
	EA = 1;
}

void configuration(void) __interrupt(2) {
	EA = 0;
	wake_flag = 1;
	lcd_clear();
	lcd_goto(1,0);
	lcd_string(" Edit Mode");
	delay(30000);
	lcd_clear();
	lcd_string(" <- to set ALARM");
	lcd_goto(1,1);
	lcd_string(" -> to set Clock");
	idle_counter = 0;
	while(next && back){
		if(++idle_counter>1000){
			lcd_clear();
			return;
		}
		delay(500);
	}
	lcd_clear();
	if(!next){
		set_clock();
	}
	else if(!back){
		set_alarms();
	}
	EA = 1;
}

void main() {
	EA  = 1;   // Enable global interrupts
	EX0 = 1;   // Enable INT0 (P3.2)
	IT0 = 0;   // Set INT0 to level-triggered
	EX1 = 1;   // Enable INT1 (P3.3)
	IT1 = 0;   // Set INT1 to level-triggered
	IP |= 0x04;

	BUZZER = 0;

	// Initialize peripherals
	lcd_init();     // LCD init
	i2c_init();     // I2C init
	ds3232_init();  // DS3232 RTC init

	unsigned char checker[4];
	checker[0] = read_eeprom(0x003B);
	checker[1] = read_eeprom(0x003C);
	checker[2] = read_eeprom(0x003D);
	checker[3] = read_eeprom(0x003E);
	if(!(checker[0] == 'I' && checker[1] == 'N' && checker[2] == 'I' && checker[3] == 'T')){
		lcd_clear();
		write_eeprom(0x003B, 'I');
		write_eeprom(0x003C, 'N');
		write_eeprom(0x003D, 'I');
		write_eeprom(0x003E, 'T');
		write_eeprom(0x003F, 0x0);
		write_eeprom(0x003A, 0x0);
		set_alarms();
		lcd_clear();
		lcd_goto(0,0);
		lcd_string(" NOW INIT");
		delay(30000);
		lcd_clear();
	}

	else{
		lcd_clear();
		lcd_goto(0,0);
		lcd_string(" PREV INIT");
		delay(30000);
		lcd_clear();
	}

	num_alarms = read_eeprom(EEPROM_BASE);
	
	while(1){
		delay(1000);
		PCON |= 0x02;
		if (wake_flag) {
            wake_flag = 0;
            i2c_init();       // reinit
            lcd_init();
            ds3232_init();
            lcd_clear();
            lcd_string("Alarm Wakeup");
            delay(2000);
        }
	}
	
}

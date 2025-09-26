;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #15373 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _alarm_arranger_PARM_3
	.globl _alarm_arranger_PARM_2
	.globl _int_to_str_PARM_2
	.globl _main
	.globl _configuration
	.globl _alarm_triggered
	.globl _set_alarms
	.globl _set_clock
	.globl _ds3232_set_alarm1
	.globl _alarm_arranger
	.globl _write_alarm_to_eeprom
	.globl _read_eeprom
	.globl _write_eeprom
	.globl _step_motor
	.globl _display
	.globl _ds3232_get_time_date
	.globl _ds3232_set_time_date
	.globl _ds3232_init
	.globl _bcd_to_dec
	.globl _dec_to_bcd
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_init
	.globl _int_to_str
	.globl _lcd_init
	.globl _lcd_goto
	.globl _lcd_clear
	.globl _lcd_string
	.globl _lcd_char
	.globl _lcd_cmd
	.globl _send_nibble
	.globl _pulse_enable
	.globl _delay_ms
	.globl _delay
	.globl _POWER_PULSE
	.globl _BUZZER
	.globl _IN4
	.globl _IN3
	.globl _IN2
	.globl _IN1
	.globl _SCL
	.globl _SDA
	.globl _back
	.globl _next
	.globl _down
	.globl _up
	.globl _LCD_D7
	.globl _LCD_D6
	.globl _LCD_D5
	.globl _LCD_D4
	.globl _LCD_EN
	.globl _LCD_RW
	.globl _LCD_RS
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _min_vals
	.globl _max_vals
	.globl _alarm_minutes
	.globl _alarm_hours
	.globl _ds3232_set_alarm1_PARM_3
	.globl _ds3232_set_alarm1_PARM_2
	.globl _write_alarm_to_eeprom_PARM_3
	.globl _write_alarm_to_eeprom_PARM_2
	.globl _write_eeprom_PARM_2
	.globl _display_PARM_7
	.globl _display_PARM_6
	.globl _display_PARM_5
	.globl _display_PARM_4
	.globl _display_PARM_3
	.globl _display_PARM_2
	.globl _ds3232_get_time_date_PARM_7
	.globl _ds3232_get_time_date_PARM_6
	.globl _ds3232_get_time_date_PARM_5
	.globl _ds3232_get_time_date_PARM_4
	.globl _ds3232_get_time_date_PARM_3
	.globl _ds3232_get_time_date_PARM_2
	.globl _ds3232_set_time_date_PARM_7
	.globl _ds3232_set_time_date_PARM_6
	.globl _ds3232_set_time_date_PARM_5
	.globl _ds3232_set_time_date_PARM_4
	.globl _ds3232_set_time_date_PARM_3
	.globl _ds3232_set_time_date_PARM_2
	.globl _lcd_goto_PARM_2
	.globl _min
	.globl _hr
	.globl _buf
	.globl _date_str
	.globl _time_str
	.globl _index
	.globl _alarm_index
	.globl _day
	.globl _y
	.globl _mo
	.globl _d
	.globl _s
	.globl _m
	.globl _h
	.globl _idle_counter
	.globl _num_alarms
	.globl _time_date
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_LCD_RS	=	0x0090
_LCD_RW	=	0x0091
_LCD_EN	=	0x0092
_LCD_D4	=	0x0093
_LCD_D5	=	0x0094
_LCD_D6	=	0x0095
_LCD_D7	=	0x0096
_up	=	0x00b4
_down	=	0x00b5
_next	=	0x00b6
_back	=	0x00b7
_SDA	=	0x00b1
_SCL	=	0x00b0
_IN1	=	0x00a4
_IN2	=	0x00a3
_IN3	=	0x00a2
_IN4	=	0x00a1
_BUZZER	=	0x00a0
_POWER_PULSE	=	0x00a7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_time_date::
	.ds 7
_num_alarms::
	.ds 1
_idle_counter::
	.ds 2
_h::
	.ds 1
_m::
	.ds 1
_s::
	.ds 1
_d::
	.ds 1
_mo::
	.ds 1
_y::
	.ds 1
_day::
	.ds 1
_alarm_index::
	.ds 2
_index::
	.ds 2
_time_str::
	.ds 9
_date_str::
	.ds 13
_buf::
	.ds 3
_hr::
	.ds 1
_min::
	.ds 1
_lcd_goto_PARM_2:
	.ds 1
_ds3232_set_time_date_PARM_2:
	.ds 1
_ds3232_set_time_date_PARM_3:
	.ds 1
_ds3232_set_time_date_PARM_4:
	.ds 1
_ds3232_set_time_date_PARM_5:
	.ds 1
_ds3232_set_time_date_PARM_6:
	.ds 1
_ds3232_set_time_date_PARM_7:
	.ds 1
_ds3232_get_time_date_PARM_2:
	.ds 3
_ds3232_get_time_date_PARM_3:
	.ds 3
_ds3232_get_time_date_PARM_4:
	.ds 3
_ds3232_get_time_date_PARM_5:
	.ds 3
_ds3232_get_time_date_PARM_6:
	.ds 3
_ds3232_get_time_date_PARM_7:
	.ds 3
_display_PARM_2:
	.ds 1
_display_PARM_3:
	.ds 1
_display_PARM_4:
	.ds 1
_display_PARM_5:
	.ds 1
_display_PARM_6:
	.ds 1
_display_PARM_7:
	.ds 1
_write_eeprom_PARM_2:
	.ds 1
_write_alarm_to_eeprom_PARM_2:
	.ds 1
_write_alarm_to_eeprom_PARM_3:
	.ds 1
_ds3232_set_alarm1_PARM_2:
	.ds 1
_ds3232_set_alarm1_PARM_3:
	.ds 1
_set_alarms_total_mins_10002_135:
	.ds 2
_set_alarms_total_mins1_50002_140:
	.ds 2
_set_alarms_sloc0_1_0:
	.ds 2
_main_checker_10001_169:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_int_to_str_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_alarm_arranger_PARM_2:
	.ds 3
_alarm_arranger_PARM_3:
	.ds 3
_alarm_arranger_hours_10000_63:
	.ds 3
_alarm_arranger_i_10000_64:
	.ds 1
_alarm_arranger_min_idx_10000_64:
	.ds 1
_alarm_arranger_temp_30001_71:
	.ds 2
_alarm_arranger___index_10001_72:
	.ds 2
_alarm_arranger_sloc0_1_0:
	.ds 1
_alarm_arranger_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_alarm_hours::
	.ds 8
_alarm_minutes::
	.ds 8
_max_vals::
	.ds 7
_min_vals::
	.ds 7
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_i2c_write_ack_10000_29:
	.ds 1
_i2c_read_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_alarm_triggered
	.ds	5
	reti
	.ds	7
	ljmp	_configuration
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:19: unsigned char time_date[7] = {0,0,0,0,1,1,25};  //starting time
	mov	_time_date,#0x00
	mov	(_time_date + 0x0001),#0x00
	mov	(_time_date + 0x0002),#0x00
	mov	(_time_date + 0x0003),#0x00
	mov	(_time_date + 0x0004),#0x01
	mov	(_time_date + 0x0005),#0x01
	mov	(_time_date + 0x0006),#0x19
;	main.c:21: unsigned char num_alarms = 1;
	mov	_num_alarms,#0x01
;	main.c:22: unsigned int idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:25: const unsigned char __idata max_vals[] = {24, 60, 60, 7, 31, 12, 100};
	mov	r0,#_max_vals
	mov	@r0,#0x18
	mov	r0,#(_max_vals + 0x0001)
	mov	@r0,#0x3c
	mov	r0,#(_max_vals + 0x0002)
	mov	@r0,#0x3c
	mov	r0,#(_max_vals + 0x0003)
	mov	@r0,#0x07
	mov	r0,#(_max_vals + 0x0004)
	mov	@r0,#0x1f
	mov	r0,#(_max_vals + 0x0005)
	mov	@r0,#0x0c
	mov	r0,#(_max_vals + 0x0006)
	mov	@r0,#0x64
;	main.c:26: const unsigned char __idata min_vals[] = {0, 0, 0, 0, 1, 1, 0};
	mov	r0,#_min_vals
	mov	@r0,#0x00
	mov	r0,#(_min_vals + 0x0001)
	mov	@r0,#0x00
	mov	r0,#(_min_vals + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_min_vals + 0x0003)
	mov	@r0,#0x00
	mov	r0,#(_min_vals + 0x0004)
	mov	@r0,#0x01
	mov	r0,#(_min_vals + 0x0005)
	mov	@r0,#0x01
	mov	r0,#(_min_vals + 0x0006)
	mov	@r0,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;cycles        Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:65: void delay(unsigned int cycles) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	main.c:67: for(i = 0; i < cycles; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:68: for(j = 0; j < 5; j++);
	mov	r2,#0x05
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:67: for(i = 0; i < cycles; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:71: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	main.c:73: for(i=0; i<ms; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:74: for(j=0; j<1275; j++);
	mov	r2,#0xfb
	mov	r3,#0x04
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:73: for(i=0; i<ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pulse_enable'
;------------------------------------------------------------
;	main.c:77: void pulse_enable() {
;	-----------------------------------------
;	 function pulse_enable
;	-----------------------------------------
_pulse_enable:
;	main.c:78: LCD_EN = 1;
;	assignBit
	setb	_LCD_EN
;	main.c:79: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:80: LCD_EN = 0;
;	assignBit
	clr	_LCD_EN
;	main.c:81: delay(50);
	mov	dptr,#0x0032
;	main.c:82: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'send_nibble'
;------------------------------------------------------------
;nibble        Allocated to registers r7 
;------------------------------------------------------------
;	main.c:84: void send_nibble(unsigned char nibble) {
;	-----------------------------------------
;	 function send_nibble
;	-----------------------------------------
_send_nibble:
;	main.c:85: LCD_D4 = (nibble >> 0) & 1;
	mov	a,dpl
	mov	r7,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D4,c
;	main.c:86: LCD_D5 = (nibble >> 1) & 1;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D5,c
;	main.c:87: LCD_D6 = (nibble >> 2) & 1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D6,c
;	main.c:88: LCD_D7 = (nibble >> 3) & 1;
	mov	a,r7
	mov	c,acc.3
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_LCD_D7,c
;	main.c:89: pulse_enable();
;	main.c:90: }
	ljmp	_pulse_enable
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;cmd           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:92: void lcd_cmd(unsigned char cmd) {
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	r7, dpl
;	main.c:93: LCD_RS = 0;
;	assignBit
	clr	_LCD_RS
;	main.c:94: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:95: send_nibble(cmd >> 4);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_send_nibble
	pop	ar7
;	main.c:96: send_nibble(cmd & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	lcall	_send_nibble
;	main.c:97: delay(50);
	mov	dptr,#0x0032
;	main.c:98: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_char'
;------------------------------------------------------------
;ch            Allocated to registers r7 
;------------------------------------------------------------
;	main.c:100: void lcd_char(unsigned char ch) {
;	-----------------------------------------
;	 function lcd_char
;	-----------------------------------------
_lcd_char:
	mov	r7, dpl
;	main.c:101: LCD_RS = 1;
;	assignBit
	setb	_LCD_RS
;	main.c:102: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:103: send_nibble(ch >> 4);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_send_nibble
	pop	ar7
;	main.c:104: send_nibble(ch & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	lcall	_send_nibble
;	main.c:105: delay(50);
	mov	dptr,#0x0032
;	main.c:106: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_string'
;------------------------------------------------------------
;str           Allocated to registers 
;------------------------------------------------------------
;	main.c:108: void lcd_string(char *str) {
;	-----------------------------------------
;	 function lcd_string
;	-----------------------------------------
_lcd_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:109: while(*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:110: lcd_char(*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_char
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	main.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;	main.c:114: void lcd_clear() {
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
;	main.c:115: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main.c:116: delay(50);
	mov	dptr,#0x0032
;	main.c:117: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_goto'
;------------------------------------------------------------
;col           Allocated with name '_lcd_goto_PARM_2'
;row           Allocated to registers r7 
;address       Allocated to registers 
;------------------------------------------------------------
;	main.c:119: void lcd_goto(unsigned char row, unsigned char col) {
;	-----------------------------------------
;	 function lcd_goto
;	-----------------------------------------
_lcd_goto:
;	main.c:120: unsigned char address = (row == 0) ? (0x80 + col) : (0xC0 + col);
	mov	a,dpl
	jnz	00103$
	mov	r7,_lcd_goto_PARM_2
	mov	a,#0x80
	add	a, r7
	mov	r7,a
	sjmp	00104$
00103$:
	mov	r6,_lcd_goto_PARM_2
	mov	a,#0xc0
	add	a, r6
	mov	r7,a
00104$:
	mov	dpl,r7
;	main.c:121: lcd_cmd(address);
;	main.c:122: }
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	main.c:124: void lcd_init() {
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	main.c:125: LCD_RS = 0;
;	assignBit
	clr	_LCD_RS
;	main.c:126: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:127: LCD_EN = 0;
;	assignBit
	clr	_LCD_EN
;	main.c:129: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:131: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:132: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:133: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:134: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:135: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:136: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:137: send_nibble(0x02);
	mov	dpl, #0x02
	lcall	_send_nibble
;	main.c:139: lcd_cmd(0x28);
	mov	dpl, #0x28
	lcall	_lcd_cmd
;	main.c:140: lcd_cmd(0x0C);
	mov	dpl, #0x0c
	lcall	_lcd_cmd
;	main.c:141: lcd_cmd(0x06);
	mov	dpl, #0x06
	lcall	_lcd_cmd
;	main.c:142: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main.c:143: delay(2);
	mov	dptr,#0x0002
;	main.c:144: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_str'
;------------------------------------------------------------
;str           Allocated with name '_int_to_str_PARM_2'
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:146: void int_to_str(unsigned char val, char *str) {
;	-----------------------------------------
;	 function int_to_str
;	-----------------------------------------
_int_to_str:
	mov	r7, dpl
;	main.c:147: str[0] = (val / 10) + '0';
	mov	r4,_int_to_str_PARM_2
	mov	r5,(_int_to_str_PARM_2 + 1)
	mov	r6,(_int_to_str_PARM_2 + 2)
	mov	ar3,r7
	mov	b,#0x0a
	mov	a,r3
	div	ab
	add	a,#0x30
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	main.c:148: str[1] = (val % 10) + '0';
	mov	a,#0x01
	add	a, r4
	mov	r1,a
	clr	a
	addc	a, r5
	mov	r2,a
	mov	ar3,r6
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	a,#0x30
	add	a, r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
;	main.c:149: str[2] = '\0';
	mov	a,#0x02
	add	a, r4
	mov	r4,a
	clr	a
	addc	a, r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
;	main.c:150: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_init'
;------------------------------------------------------------
;	main.c:152: void i2c_init() {
;	-----------------------------------------
;	 function i2c_init
;	-----------------------------------------
_i2c_init:
;	main.c:153: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:154: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:155: delay(1);
	mov	dptr,#0x0001
;	main.c:156: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	main.c:158: void i2c_start() {
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	main.c:159: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:160: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:161: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:162: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:163: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:164: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:165: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	main.c:167: void i2c_stop() {
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	main.c:168: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:169: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:170: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:171: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:172: delay(1);
	mov	dptr,#0x0001
;	main.c:173: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;value         Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	main.c:175: __bit i2c_write(unsigned char value) {
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	main.c:179: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00102$:
;	main.c:180: SDA = (value & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_SDA,c
;	main.c:181: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:182: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:183: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:184: value <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main.c:179: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00102$
;	main.c:187: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:188: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:189: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:190: ack = SDA;
;	assignBit
	mov	c,_SDA
	mov	_i2c_write_ack_10000_29,c
;	main.c:191: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:192: return !ack;
	mov	c,_i2c_write_ack_10000_29
	cpl	c
;	main.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ack           Allocated to registers r7 
;i             Allocated to registers r5 
;value         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:195: unsigned char i2c_read(unsigned char ack) {
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7, dpl
;	main.c:196: unsigned char i, value = 0;
	mov	r6,#0x00
;	main.c:198: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:200: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00104$:
;	main.c:201: value <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	main.c:202: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:203: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:204: if (SDA)
	jnb	_SDA,00102$
;	main.c:205: value |= 1;
	orl	ar6,#0x01
00102$:
;	main.c:206: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:207: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:200: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00128$
00128$:
	jc	00104$
;	main.c:210: SDA = (ack) ? 0 : 1;
	mov	a,r7
	cjne	a,#0x01,00130$
00130$:
	mov  _i2c_read_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_SDA,c
;	main.c:211: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:212: delay(1);
	mov	dptr,#0x0001
	push	ar6
	lcall	_delay
	pop	ar6
;	main.c:213: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:214: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:215: return value;
	mov	dpl, r6
;	main.c:216: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_to_bcd'
;------------------------------------------------------------
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:218: unsigned char dec_to_bcd(unsigned char val) {
;	-----------------------------------------
;	 function dec_to_bcd
;	-----------------------------------------
_dec_to_bcd:
	mov	r7, dpl
;	main.c:219: return ((val / 10) << 4) | (val % 10);
	mov	ar6,r7
	mov	b,#0x0a
	mov	a,r6
	div	ab
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	a,b
	orl	a,r6
	mov	dpl,a
;	main.c:220: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_to_dec'
;------------------------------------------------------------
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:222: unsigned char bcd_to_dec(unsigned char val) {
;	-----------------------------------------
;	 function bcd_to_dec
;	-----------------------------------------
_bcd_to_dec:
;	main.c:223: return ((val >> 4) * 10) + (val & 0x0F);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,#0x0f
	anl	a,r7
	add	a, r6
	mov	dpl,a
;	main.c:224: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds3232_init'
;------------------------------------------------------------
;	main.c:226: void ds3232_init(void) {
;	-----------------------------------------
;	 function ds3232_init
;	-----------------------------------------
_ds3232_init:
;	main.c:227: i2c_start();
	lcall	_i2c_start
;	main.c:228: i2c_write((DS3232_ADDRESS << 1) | 0); // Write mode
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:229: i2c_write(0x00); // Point to seconds register
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:230: i2c_write(0x00); // Start oscillator (CH = 0)
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:231: i2c_stop();
;	main.c:232: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds3232_set_time_date'
;------------------------------------------------------------
;min           Allocated with name '_ds3232_set_time_date_PARM_2'
;sec           Allocated with name '_ds3232_set_time_date_PARM_3'
;day           Allocated with name '_ds3232_set_time_date_PARM_4'
;date          Allocated with name '_ds3232_set_time_date_PARM_5'
;month         Allocated with name '_ds3232_set_time_date_PARM_6'
;year          Allocated with name '_ds3232_set_time_date_PARM_7'
;hrs           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:234: void ds3232_set_time_date(unsigned char hrs, unsigned char min, unsigned char sec, unsigned char day, unsigned char date, unsigned char month, unsigned char year) {
;	-----------------------------------------
;	 function ds3232_set_time_date
;	-----------------------------------------
_ds3232_set_time_date:
	mov	r7, dpl
;	main.c:235: i2c_start();
	push	ar7
	lcall	_i2c_start
;	main.c:236: i2c_write((DS3232_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:237: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:238: i2c_write(dec_to_bcd(sec));
	mov	dpl, _ds3232_set_time_date_PARM_3
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:239: i2c_write(dec_to_bcd(min));
	mov	dpl, _ds3232_set_time_date_PARM_2
	lcall	_dec_to_bcd
	lcall	_i2c_write
	pop	ar7
;	main.c:240: i2c_write(dec_to_bcd(hrs));
	mov	dpl, r7
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:241: i2c_write(dec_to_bcd(day));
	mov	dpl, _ds3232_set_time_date_PARM_4
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:242: i2c_write(dec_to_bcd(date));
	mov	dpl, _ds3232_set_time_date_PARM_5
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:243: i2c_write(dec_to_bcd(month));
	mov	dpl, _ds3232_set_time_date_PARM_6
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:244: i2c_write(dec_to_bcd(year));
	mov	dpl, _ds3232_set_time_date_PARM_7
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:245: i2c_stop();
;	main.c:246: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds3232_get_time_date'
;------------------------------------------------------------
;min           Allocated with name '_ds3232_get_time_date_PARM_2'
;sec           Allocated with name '_ds3232_get_time_date_PARM_3'
;day           Allocated with name '_ds3232_get_time_date_PARM_4'
;date          Allocated with name '_ds3232_get_time_date_PARM_5'
;month         Allocated with name '_ds3232_get_time_date_PARM_6'
;year          Allocated with name '_ds3232_get_time_date_PARM_7'
;hrs           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:248: void ds3232_get_time_date(unsigned char *hrs, unsigned char *min, unsigned char *sec, unsigned char *day, unsigned char *date, unsigned char *month, unsigned char *year) {
;	-----------------------------------------
;	 function ds3232_get_time_date
;	-----------------------------------------
_ds3232_get_time_date:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:249: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main.c:250: i2c_write((DS3232_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:251: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:252: i2c_stop();
	lcall	_i2c_stop
;	main.c:254: i2c_start();
	lcall	_i2c_start
;	main.c:255: i2c_write((DS3232_ADDRESS << 1) | 1);
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main.c:256: *sec   = bcd_to_dec(i2c_read(1));
	mov	r2,_ds3232_get_time_date_PARM_3
	mov	r3,(_ds3232_get_time_date_PARM_3 + 1)
	mov	r4,(_ds3232_get_time_date_PARM_3 + 2)
	mov	dpl, #0x01
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	main.c:257: *min   = bcd_to_dec(i2c_read(1));
	mov	r2,_ds3232_get_time_date_PARM_2
	mov	r3,(_ds3232_get_time_date_PARM_2 + 1)
	mov	r4,(_ds3232_get_time_date_PARM_2 + 2)
	mov	dpl, #0x01
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	main.c:258: *hrs   = bcd_to_dec(i2c_read(1));
	mov	dpl, #0x01
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:259: *day   = bcd_to_dec(i2c_read(1));
	mov	r5,_ds3232_get_time_date_PARM_4
	mov	r6,(_ds3232_get_time_date_PARM_4 + 1)
	mov	r7,(_ds3232_get_time_date_PARM_4 + 2)
	mov	dpl, #0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:260: *date  = bcd_to_dec(i2c_read(1));
	mov	r5,_ds3232_get_time_date_PARM_5
	mov	r6,(_ds3232_get_time_date_PARM_5 + 1)
	mov	r7,(_ds3232_get_time_date_PARM_5 + 2)
	mov	dpl, #0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:261: *month = bcd_to_dec(i2c_read(1));
	mov	r5,_ds3232_get_time_date_PARM_6
	mov	r6,(_ds3232_get_time_date_PARM_6 + 1)
	mov	r7,(_ds3232_get_time_date_PARM_6 + 2)
	mov	dpl, #0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:262: *year  = bcd_to_dec(i2c_read(0));
	mov	r5,_ds3232_get_time_date_PARM_7
	mov	r6,(_ds3232_get_time_date_PARM_7 + 1)
	mov	r7,(_ds3232_get_time_date_PARM_7 + 2)
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_dec
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:263: i2c_stop();
;	main.c:264: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;m             Allocated with name '_display_PARM_2'
;s             Allocated with name '_display_PARM_3'
;d             Allocated with name '_display_PARM_4'
;mo            Allocated with name '_display_PARM_5'
;y             Allocated with name '_display_PARM_6'
;day           Allocated with name '_display_PARM_7'
;h             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:266: void display(unsigned char h, unsigned char m, unsigned char s, unsigned char d, unsigned char mo, unsigned char y, unsigned char day ) {
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r7, dpl
;	main.c:267: int_to_str(h, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, r7
	lcall	_int_to_str
;	main.c:268: time_str[0] = buf[0];
	mov	_time_str,_buf
;	main.c:269: time_str[1] = buf[1];
	mov	(_time_str + 0x0001),(_buf + 0x0001)
;	main.c:270: time_str[2] = ':';
	mov	(_time_str + 0x0002),#0x3a
;	main.c:271: int_to_str(m, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_2
	lcall	_int_to_str
;	main.c:272: time_str[3] = buf[0];
	mov	(_time_str + 0x0003),_buf
;	main.c:273: time_str[4] = buf[1];
	mov	(_time_str + 0x0004),(_buf + 0x0001)
;	main.c:274: time_str[5] = ':';
	mov	(_time_str + 0x0005),#0x3a
;	main.c:275: int_to_str(s, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_3
	lcall	_int_to_str
;	main.c:276: time_str[6] = buf[0];
	mov	(_time_str + 0x0006),_buf
;	main.c:277: time_str[7] = buf[1];
	mov	(_time_str + 0x0007),(_buf + 0x0001)
;	main.c:278: time_str[8] = '\0';
	mov	(_time_str + 0x0008),#0x00
;	main.c:281: int_to_str(d, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_4
	lcall	_int_to_str
;	main.c:282: date_str[0] = buf[0];
	mov	_date_str,_buf
;	main.c:283: date_str[1] = buf[1];
	mov	(_date_str + 0x0001),(_buf + 0x0001)
;	main.c:284: date_str[2] = ':';
	mov	(_date_str + 0x0002),#0x3a
;	main.c:285: int_to_str(mo, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_5
	lcall	_int_to_str
;	main.c:286: date_str[3] = buf[0];
	mov	(_date_str + 0x0003),_buf
;	main.c:287: date_str[4] = buf[1];
	mov	(_date_str + 0x0004),(_buf + 0x0001)
;	main.c:288: date_str[5] = ':';
	mov	(_date_str + 0x0005),#0x3a
;	main.c:289: int_to_str(y, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_6
	lcall	_int_to_str
;	main.c:290: date_str[6] = buf[0];
	mov	(_date_str + 0x0006),_buf
;	main.c:291: date_str[7] = buf[1];
	mov	(_date_str + 0x0007),(_buf + 0x0001)
;	main.c:292: date_str[8] = ' ';
	mov	(_date_str + 0x0008),#0x20
;	main.c:294: switch(day) {
	mov	a,_display_PARM_7
	add	a,#0xff - 0x07
	jc	00108$
	mov	a,_display_PARM_7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_display_PARM_7
	add	a,#(00119$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00118$:
	.db	00108$
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
00119$:
	.db	00108$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
;	main.c:295: case 1:
00101$:
;	main.c:296: buf[0] = 'S';
	mov	_buf,#0x53
;	main.c:297: buf[1] = 'u';
	mov	(_buf + 0x0001),#0x75
;	main.c:298: buf[2] = 'n';
	mov	(_buf + 0x0002),#0x6e
;	main.c:299: break;
;	main.c:300: case 2:
	sjmp	00108$
00102$:
;	main.c:301: buf[0] = 'M';
	mov	_buf,#0x4d
;	main.c:302: buf[1] = 'o';
	mov	(_buf + 0x0001),#0x6f
;	main.c:303: buf[2] = 'n';
	mov	(_buf + 0x0002),#0x6e
;	main.c:304: break;
;	main.c:305: case 3:
	sjmp	00108$
00103$:
;	main.c:306: buf[0] = 'T';
	mov	_buf,#0x54
;	main.c:307: buf[1] = 'u';
	mov	(_buf + 0x0001),#0x75
;	main.c:308: buf[2] = 'e';
	mov	(_buf + 0x0002),#0x65
;	main.c:309: break;
;	main.c:310: case 4:
	sjmp	00108$
00104$:
;	main.c:311: buf[0] = 'W';
	mov	_buf,#0x57
;	main.c:312: buf[1] = 'e';
	mov	(_buf + 0x0001),#0x65
;	main.c:313: buf[2] = 'd';
	mov	(_buf + 0x0002),#0x64
;	main.c:314: break;
;	main.c:315: case 5:
	sjmp	00108$
00105$:
;	main.c:316: buf[0] = 'T';
	mov	_buf,#0x54
;	main.c:317: buf[1] = 'h';
	mov	(_buf + 0x0001),#0x68
;	main.c:318: buf[2] = 'u';
	mov	(_buf + 0x0002),#0x75
;	main.c:319: break;
;	main.c:320: case 6:
	sjmp	00108$
00106$:
;	main.c:321: buf[0] = 'F';
	mov	_buf,#0x46
;	main.c:322: buf[1] = 'r';
	mov	(_buf + 0x0001),#0x72
;	main.c:323: buf[2] = 'i';
	mov	(_buf + 0x0002),#0x69
;	main.c:324: break;
;	main.c:325: case 7:
	sjmp	00108$
00107$:
;	main.c:326: buf[0] = 'S';
	mov	_buf,#0x53
;	main.c:327: buf[1] = 'a';
	mov	(_buf + 0x0001),#0x61
;	main.c:328: buf[2] = 't';
	mov	(_buf + 0x0002),#0x74
;	main.c:330: }
00108$:
;	main.c:331: date_str[9] = buf[0];
	mov	(_date_str + 0x0009),_buf
;	main.c:332: date_str[10] = buf[1];
	mov	(_date_str + 0x000a),(_buf + 0x0001)
;	main.c:333: date_str[11] = buf[2];
	mov	(_date_str + 0x000b),(_buf + 0x0002)
;	main.c:334: date_str[12] = '\0';
	mov	(_date_str + 0x000c),#0x00
;	main.c:337: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:338: lcd_string(time_str);
	mov	dptr,#_time_str
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:339: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:340: lcd_string(date_str);
	mov	dptr,#_date_str
	mov	b, #0x40
;	main.c:341: }
	ljmp	_lcd_string
;------------------------------------------------------------
;Allocation info for local variables in function 'step_motor'
;------------------------------------------------------------
;step          Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:343: void step_motor(int step) {
;	-----------------------------------------
;	 function step_motor
;	-----------------------------------------
_step_motor:
;	main.c:344: switch(step % 8) {
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6, dpl
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00124$
	ret
00124$:
	clr	c
	mov	a,#0x07
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00110$
	mov	a,r6
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00127$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00126$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00127$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	main.c:345: case 0:
00101$:
;	main.c:346: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:347: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:348: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:349: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:350: break;
;	main.c:351: case 1:
	ret
00102$:
;	main.c:352: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:353: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:354: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:355: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:356: break;
;	main.c:357: case 2:
	ret
00103$:
;	main.c:358: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:359: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:360: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:361: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:362: break;
;	main.c:363: case 3:
	ret
00104$:
;	main.c:364: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:365: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:366: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:367: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:368: break;
;	main.c:369: case 4:
	ret
00105$:
;	main.c:370: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:371: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:372: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:373: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:374: break;
;	main.c:375: case 5:
	ret
00106$:
;	main.c:376: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:377: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:378: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:379: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:380: break;
;	main.c:381: case 6:
	ret
00107$:
;	main.c:382: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:383: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:384: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:385: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:386: break;
;	main.c:387: case 7:
	ret
00108$:
;	main.c:388: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:389: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:390: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:391: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:393: }
00110$:
;	main.c:394: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_eeprom'
;------------------------------------------------------------
;value         Allocated with name '_write_eeprom_PARM_2'
;addr          Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:396: void write_eeprom(unsigned int addr, unsigned char value) {
;	-----------------------------------------
;	 function write_eeprom
;	-----------------------------------------
_write_eeprom:
	mov	r6, dpl
	mov	r7, dph
;	main.c:398: if (addr > 0x0FFF) return;
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x0f
	subb	a,r7
	jnc	00102$
	ret
00102$:
;	main.c:400: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	main.c:401: i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode
	mov	dpl, #0xae
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:402: i2c_write((addr>>8) & 0xFF);                       // upper byte RAM address
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:403: i2c_write(addr & 0xFF);				  			  // lower byte RAM address
	mov	dpl,r6
	lcall	_i2c_write
;	main.c:404: i2c_write(value);                      // Data
	mov	dpl, _write_eeprom_PARM_2
	lcall	_i2c_write
;	main.c:405: i2c_stop();
	lcall	_i2c_stop
;	main.c:406: delay(5000);
	mov	dptr,#0x1388
;	main.c:407: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'read_eeprom'
;------------------------------------------------------------
;addr          Allocated to registers r6 r7 
;data          Allocated to registers r7 
;------------------------------------------------------------
;	main.c:409: unsigned char read_eeprom(unsigned int addr) {
;	-----------------------------------------
;	 function read_eeprom
;	-----------------------------------------
_read_eeprom:
	mov	r6, dpl
	mov	r7, dph
;	main.c:412: if (addr > 0x0FFF) return 0xFF; // Return invalid value if out of range
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x0f
	subb	a,r7
	jnc	00102$
	mov	dpl, #0xff
	ret
00102$:
;	main.c:414: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	main.c:415: i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode to set address pointer
	mov	dpl, #0xae
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:416: i2c_write((addr>>8) & 0xFF); 
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:417: i2c_write(addr & 0xFF);	
	mov	dpl,r6
	lcall	_i2c_write
;	main.c:419: i2c_start();                           // Repeated start
	lcall	_i2c_start
;	main.c:420: i2c_write((AT24C512B_ADDRESS << 1) | 1);  // Read mode
	mov	dpl, #0xaf
	lcall	_i2c_write
;	main.c:421: data = i2c_read(0);                    // No ACK
	mov	dpl, #0x00
	lcall	_i2c_read
	mov	r7, dpl
;	main.c:422: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	main.c:423: return data;
	mov	dpl, r7
;	main.c:424: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_alarm_to_eeprom'
;------------------------------------------------------------
;h             Allocated with name '_write_alarm_to_eeprom_PARM_2'
;m             Allocated with name '_write_alarm_to_eeprom_PARM_3'
;index         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:426: void write_alarm_to_eeprom(unsigned char index, unsigned char h, unsigned char m) {
;	-----------------------------------------
;	 function write_alarm_to_eeprom
;	-----------------------------------------
_write_alarm_to_eeprom:
	mov	r7, dpl
;	main.c:427: write_eeprom(EEPROM_BASE + (index * 2) + 1, h);
	mov	r6,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	mov	_write_eeprom_PARM_2,_write_alarm_to_eeprom_PARM_2
	push	ar7
	push	ar6
	lcall	_write_eeprom
	pop	ar6
	pop	ar7
;	main.c:428: write_eeprom(EEPROM_BASE + (index * 2) + 2, m);
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	inc	dptr
	mov	_write_eeprom_PARM_2,_write_alarm_to_eeprom_PARM_3
;	main.c:429: }
	ljmp	_write_eeprom
;------------------------------------------------------------
;Allocation info for local variables in function 'alarm_arranger'
;------------------------------------------------------------
;minutes       Allocated with name '_alarm_arranger_PARM_2'
;n             Allocated with name '_alarm_arranger_PARM_3'
;hours         Allocated with name '_alarm_arranger_hours_10000_63'
;i             Allocated with name '_alarm_arranger_i_10000_64'
;j             Allocated to registers 
;min_idx       Allocated with name '_alarm_arranger_min_idx_10000_64'
;temp          Allocated with name '_alarm_arranger_temp_30001_71'
;__index       Allocated with name '_alarm_arranger___index_10001_72'
;sloc0         Allocated with name '_alarm_arranger_sloc0_1_0'
;sloc1         Allocated with name '_alarm_arranger_sloc1_1_0'
;------------------------------------------------------------
;	main.c:432: void alarm_arranger(unsigned char hours[], unsigned char minutes[], unsigned char *n){
;	-----------------------------------------
;	 function alarm_arranger
;	-----------------------------------------
_alarm_arranger:
	mov	_alarm_arranger_hours_10000_63,dpl
	mov	(_alarm_arranger_hours_10000_63 + 1),dph
	mov	(_alarm_arranger_hours_10000_63 + 2),b
;	main.c:436: for (i = 0; i < *n - 1; i++) {
	mov	r2,_alarm_arranger_PARM_3
	mov	r3,(_alarm_arranger_PARM_3 + 1)
	mov	r4,(_alarm_arranger_PARM_3 + 2)
	mov	r1,#0x00
00115$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	dec	r0
	cjne	r0,#0xff,00188$
	dec	r7
00188$:
	mov	ar5,r1
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,r0
	mov	a,r6
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00189$
	ljmp	00106$
00189$:
;	main.c:437: min_idx = i;
	mov	ar7,r1
;	main.c:438: for (j = i + 1; j < *n; j++) {
	mov	ar6,r1
	mov	a,r6
	inc	a
	mov	_alarm_arranger_min_idx_10000_64,a
00112$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	clr	c
	mov	a,_alarm_arranger_min_idx_10000_64
	subb	a,r5
	jc	00190$
	ljmp	00105$
00190$:
;	main.c:439: if (hours[j] < hours[min_idx] || (hours[j] == hours[min_idx] && minutes[j] < minutes[min_idx])) {
	push	ar2
	push	ar3
	push	ar4
	mov	a,_alarm_arranger_min_idx_10000_64
	add	a, _alarm_arranger_hours_10000_63
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r5,a
	mov	r6,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	mov	a,r7
	add	a, _alarm_arranger_hours_10000_63
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r4,a
	mov	r5,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_alarm_arranger_sloc0_1_0,a
	clr	c
	mov	a,r6
	subb	a,_alarm_arranger_sloc0_1_0
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00101$
	mov	a,r6
	cjne	a,_alarm_arranger_sloc0_1_0,00113$
	push	ar2
	push	ar3
	push	ar4
	mov	a,_alarm_arranger_min_idx_10000_64
	add	a, _alarm_arranger_PARM_2
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	mov	a,r7
	add	a, _alarm_arranger_PARM_2
	mov	r4,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00113$
00101$:
;	main.c:440: min_idx = j;
	mov	r7,_alarm_arranger_min_idx_10000_64
00113$:
;	main.c:438: for (j = i + 1; j < *n; j++) {
	inc	_alarm_arranger_min_idx_10000_64
	ljmp	00112$
00105$:
;	main.c:444: unsigned temp = hours[i];
	push	ar2
	push	ar3
	push	ar4
	mov	a,r1
	add	a, _alarm_arranger_hours_10000_63
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r5,a
	mov	r6,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_alarm_arranger_sloc0_1_0, a
;	main.c:445: hours[i] = hours[min_idx];
	mov	a,r7
	add	a, _alarm_arranger_hours_10000_63
	mov	_alarm_arranger_sloc1_1_0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	(_alarm_arranger_sloc1_1_0 + 1),a
	mov	(_alarm_arranger_sloc1_1_0 + 2),(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,_alarm_arranger_sloc1_1_0
	mov	dph,(_alarm_arranger_sloc1_1_0 + 1)
	mov	b,(_alarm_arranger_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	main.c:446: hours[min_idx] = temp;
	mov	r4,_alarm_arranger_sloc0_1_0
	mov	dpl,_alarm_arranger_sloc1_1_0
	mov	dph,(_alarm_arranger_sloc1_1_0 + 1)
	mov	b,(_alarm_arranger_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	main.c:449: temp = minutes[i];
	mov	a,r1
	add	a, _alarm_arranger_PARM_2
	mov	r4,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_alarm_arranger_temp_30001_71, a
;	main.c:450: minutes[i] = minutes[min_idx];
	mov	a,r7
	add	a, _alarm_arranger_PARM_2
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r2,a
	mov	r7,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	main.c:451: minutes[min_idx] = temp;
	mov	r3,_alarm_arranger_temp_30001_71
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	main.c:436: for (i = 0; i < *n - 1; i++) {
	inc	r1
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00115$
00106$:
;	main.c:456: for (i = 1; i < *n; i++) {
	mov	_alarm_arranger___index_10001_72,#0x01
	mov	(_alarm_arranger___index_10001_72 + 1),#0x00
	mov	_alarm_arranger_i_10000_64,#0x01
00118$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,_alarm_arranger_i_10000_64
	subb	a,r1
	jc	00195$
	ljmp	00110$
00195$:
;	main.c:457: if (!(hours[i] == hours[__index - 1] && minutes[i] == minutes[__index - 1])) {
	mov	a,_alarm_arranger_i_10000_64
	add	a, _alarm_arranger_hours_10000_63
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r1,a
	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	a,_alarm_arranger___index_10001_72
	add	a,#0xff
	mov	r6,a
	mov	a,(_alarm_arranger___index_10001_72 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	a,r6
	add	a, _alarm_arranger_hours_10000_63
	mov	r6,a
	mov	a,r7
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r1,a
	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	a,r0
	cjne	a,ar6,00107$
	mov	a,_alarm_arranger_i_10000_64
	add	a, _alarm_arranger_PARM_2
	mov	r1,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	a,_alarm_arranger___index_10001_72
	add	a,#0xff
	mov	r6,a
	mov	a,(_alarm_arranger___index_10001_72 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	a,r6
	add	a, _alarm_arranger_PARM_2
	mov	r6,a
	mov	a,r7
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r0,a
	mov	r7,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r6
	mov	dph,r0
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	a,r1
	cjne	a,ar6,00198$
	sjmp	00119$
00198$:
00107$:
;	main.c:458: hours[__index] = hours[i];
	push	ar2
	push	ar3
	push	ar4
	mov	a,_alarm_arranger___index_10001_72
	add	a, _alarm_arranger_hours_10000_63
	mov	r1,a
	mov	a,(_alarm_arranger___index_10001_72 + 1)
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r6,a
	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
	mov	a,_alarm_arranger_i_10000_64
	add	a, _alarm_arranger_hours_10000_63
	mov	r0,a
	clr	a
	addc	a, (_alarm_arranger_hours_10000_63 + 1)
	mov	r4,a
	mov	r5,(_alarm_arranger_hours_10000_63 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	main.c:459: minutes[__index] = minutes[i];
	mov	a,_alarm_arranger___index_10001_72
	add	a, _alarm_arranger_PARM_2
	mov	r5,a
	mov	a,(_alarm_arranger___index_10001_72 + 1)
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_alarm_arranger_PARM_2 + 2)
	mov	a,_alarm_arranger_i_10000_64
	add	a, _alarm_arranger_PARM_2
	mov	r2,a
	clr	a
	addc	a, (_alarm_arranger_PARM_2 + 1)
	mov	r3,a
	mov	r4,(_alarm_arranger_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	main.c:460: __index++;
	inc	_alarm_arranger___index_10001_72
	clr	a
	cjne	a,_alarm_arranger___index_10001_72,00199$
	inc	(_alarm_arranger___index_10001_72 + 1)
00199$:
;	main.c:465: *n = __index;
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:460: __index++;
00119$:
;	main.c:456: for (i = 1; i < *n; i++) {
	inc	_alarm_arranger_i_10000_64
	ljmp	00118$
00110$:
;	main.c:465: *n = __index;
	mov	r6,_alarm_arranger___index_10001_72
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
;	main.c:467: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'ds3232_set_alarm1'
;------------------------------------------------------------
;min           Allocated with name '_ds3232_set_alarm1_PARM_2'
;sec           Allocated with name '_ds3232_set_alarm1_PARM_3'
;hrs           Allocated to registers r7 
;bcd_sec       Allocated to registers r6 
;bcd_min       Allocated to registers r5 
;bcd_hrs       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:469: void ds3232_set_alarm1(unsigned char hrs, unsigned char min, unsigned char sec) {
;	-----------------------------------------
;	 function ds3232_set_alarm1
;	-----------------------------------------
_ds3232_set_alarm1:
	mov	r7, dpl
;	main.c:471: unsigned char bcd_sec = dec_to_bcd(sec);
	mov	dpl, _ds3232_set_alarm1_PARM_3
	push	ar7
	lcall	_dec_to_bcd
	mov	r6, dpl
;	main.c:472: unsigned char bcd_min = dec_to_bcd(min);
	mov	dpl, _ds3232_set_alarm1_PARM_2
	push	ar6
	lcall	_dec_to_bcd
	mov	r5, dpl
	pop	ar6
	pop	ar7
;	main.c:473: unsigned char bcd_hrs = dec_to_bcd(hrs);
	mov	dpl, r7
	push	ar6
	push	ar5
	lcall	_dec_to_bcd
	mov	r7, dpl
	pop	ar5
	pop	ar6
;	main.c:476: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main.c:477: i2c_write((DS3232_ADDRESS << 1) | 0);  // Write mode
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:478: i2c_write(0x07); // Alarm1 register start
	mov	dpl, #0x07
	lcall	_i2c_write
	pop	ar5
	pop	ar6
;	main.c:480: i2c_write(bcd_sec & 0x7F);      // A1 Seconds, A1M1 = 0
	mov	a,#0x7f
	anl	a,r6
	mov	dpl,a
	push	ar5
	lcall	_i2c_write
	pop	ar5
;	main.c:481: i2c_write(bcd_min & 0x7F);      // A1 Minutes, A1M2 = 0
	mov	a,#0x7f
	anl	a,r5
	mov	dpl,a
	lcall	_i2c_write
	pop	ar7
;	main.c:482: i2c_write(bcd_hrs & 0x7F);      // A1 Hours, A1M3 = 0
	mov	a,#0x7f
	anl	a,r7
	mov	dpl,a
	lcall	_i2c_write
;	main.c:483: i2c_write(0x80);                // A1 Day/Date, A1M4 = 1 (donÃ¢â‚¬â„¢t care about day/date)
	mov	dpl, #0x80
	lcall	_i2c_write
;	main.c:484: i2c_stop();
	lcall	_i2c_stop
;	main.c:487: i2c_start();
	lcall	_i2c_start
;	main.c:488: i2c_write((DS3232_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:489: i2c_write(0x0E); // Control register
	mov	dpl, #0x0e
	lcall	_i2c_write
;	main.c:490: i2c_write(0x05); // 00000101 => A1IE = 1, INTCN = 1
	mov	dpl, #0x05
	lcall	_i2c_write
;	main.c:491: i2c_stop();
	lcall	_i2c_stop
;	main.c:494: i2c_start();
	lcall	_i2c_start
;	main.c:495: i2c_write((DS3232_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:496: i2c_write(0x0F); // Status register
	mov	dpl, #0x0f
	lcall	_i2c_write
;	main.c:497: i2c_write(0x00); // Clear A1F
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:498: i2c_stop();
;	main.c:499: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'set_clock'
;------------------------------------------------------------
;	main.c:501: void set_clock() {
;	-----------------------------------------
;	 function set_clock
;	-----------------------------------------
_set_clock:
;	main.c:502: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:503: index = 0;
	mov	_index,a
	mov	(_index + 1),a
;	main.c:504: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
	mov	dpl,_time_date
	mov	_display_PARM_2,(_time_date + 0x0001)
	mov	_display_PARM_3,(_time_date + 0x0002)
	mov	_display_PARM_4,(_time_date + 0x0004)
	mov	_display_PARM_5,(_time_date + 0x0005)
	mov	_display_PARM_6,(_time_date + 0x0006)
	mov	a,(_time_date + 0x0003)
	inc	a
	mov	_display_PARM_7,a
	lcall	_display
;	main.c:506: while (index < 7) {
00116$:
	clr	c
	mov	a,_index
	subb	a,#0x07
	mov	a,(_index + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00177$
	ljmp	00118$
00177$:
;	main.c:507: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:508: if (!up) {
	jb	_up,00104$
;	main.c:509: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:510: time_date[index]++;
	mov	a,_index
	add	a, #_time_date
	mov	r1,a
	inc	@r1
	mov	a,@r1
;	main.c:511: if (time_date[index] >= max_vals[index]) {
	mov	a,_index
	add	a, #_time_date
	mov	r1,a
	mov	ar7,@r1
	mov	a,_index
	add	a, #_max_vals
	mov	r0,a
	mov	ar6,@r0
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00102$
;	main.c:512: time_date[index] = min_vals[index];
	mov	a,_index
	add	a, #_min_vals
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
00102$:
;	main.c:514: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
	mov	dpl,_time_date
	mov	_display_PARM_2,(_time_date + 0x0001)
	mov	_display_PARM_3,(_time_date + 0x0002)
	mov	_display_PARM_4,(_time_date + 0x0004)
	mov	_display_PARM_5,(_time_date + 0x0005)
	mov	_display_PARM_6,(_time_date + 0x0006)
	mov	a,(_time_date + 0x0003)
	inc	a
	mov	_display_PARM_7,a
	lcall	_display
;	main.c:515: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00104$:
;	main.c:518: if (!down) {
	jb	_down,00109$
;	main.c:519: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:520: if (time_date[index] <= min_vals[index]) {
	mov	a,_index
	add	a, #_time_date
	mov	r1,a
	mov	ar7,@r1
	mov	a,_index
	add	a, #_min_vals
	mov	r0,a
	mov	ar6,@r0
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00106$
;	main.c:521: time_date[index] = max_vals[index] - 1;
	mov	a,_index
	add	a, #_max_vals
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	@r1,a
	sjmp	00107$
00106$:
;	main.c:523: time_date[index]--;
	mov	a,@r1
	dec	a
	mov	@r1,a
00107$:
;	main.c:525: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
	mov	dpl,_time_date
	mov	_display_PARM_2,(_time_date + 0x0001)
	mov	_display_PARM_3,(_time_date + 0x0002)
	mov	_display_PARM_4,(_time_date + 0x0004)
	mov	_display_PARM_5,(_time_date + 0x0005)
	mov	_display_PARM_6,(_time_date + 0x0006)
	mov	a,(_time_date + 0x0003)
	inc	a
	mov	_display_PARM_7,a
	lcall	_display
;	main.c:526: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00109$:
;	main.c:529: if (!next) {
	jb	_next,00111$
;	main.c:530: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:531: index = index+1;
	inc	_index
	clr	a
	cjne	a,_index,00183$
	inc	(_index + 1)
00183$:
;	main.c:532: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00111$:
;	main.c:535: if (!back) {
	jb	_back,00113$
;	main.c:536: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:537: index = index-1;
	dec	_index
	mov	a,#0xff
	cjne	a,_index,00185$
	dec	(_index + 1)
00185$:
;	main.c:538: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00113$:
;	main.c:540: if (++idle_counter >30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00186$
	inc	(_idle_counter + 1)
00186$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00187$
	ljmp	00116$
00187$:
;	main.c:541: break;
00118$:
;	main.c:544: if (idle_counter <= 30) {
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00120$
;	main.c:545: ds3232_set_time_date(time_date[0], time_date[1], time_date[2], time_date[3] + 1, time_date[4], time_date[5], time_date[6]);
	mov	dpl,_time_date
	mov	_ds3232_set_time_date_PARM_2,(_time_date + 0x0001)
	mov	_ds3232_set_time_date_PARM_3,(_time_date + 0x0002)
	mov	a,(_time_date + 0x0003)
	inc	a
	mov	_ds3232_set_time_date_PARM_4,a
	mov	_ds3232_set_time_date_PARM_5,(_time_date + 0x0004)
	mov	_ds3232_set_time_date_PARM_6,(_time_date + 0x0005)
	mov	_ds3232_set_time_date_PARM_7,(_time_date + 0x0006)
	lcall	_ds3232_set_time_date
00120$:
;	main.c:548: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:549: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_alarms'
;------------------------------------------------------------
;i             Allocated to registers r7 
;total_mins    Allocated with name '_set_alarms_total_mins_10002_135'
;total_mins1   Allocated with name '_set_alarms_total_mins1_50002_140'
;total_mins2   Allocated to registers r6 r4 
;sloc0         Allocated with name '_set_alarms_sloc0_1_0'
;------------------------------------------------------------
;	main.c:551: void set_alarms() {
;	-----------------------------------------
;	 function set_alarms
;	-----------------------------------------
_set_alarms:
;	main.c:552: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:555: lcd_clear();
	lcall	_lcd_clear
;	main.c:556: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:557: lcd_string(" How many alarms");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:558: while (1) {
00114$:
;	main.c:559: lcd_goto(1, 6);
	mov	_lcd_goto_PARM_2,#0x06
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:560: lcd_char(num_alarms + '0');
	mov	r7,_num_alarms
	mov	a,#0x30
	add	a, r7
	mov	dpl,a
	lcall	_lcd_char
;	main.c:561: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:563: if (!up) {
	jb	_up,00104$
;	main.c:564: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:565: if (num_alarms < NUM_ALARMS) num_alarms++;
	mov	a,#0x100 - 0x08
	add	a,_num_alarms
	jc	00102$
	inc	_num_alarms
00102$:
;	main.c:566: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00104$:
;	main.c:569: if (!down) {
	jb	_down,00108$
;	main.c:570: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:571: if (num_alarms > 1) num_alarms--;
	mov	a,_num_alarms
	add	a,#0xff - 0x01
	jnc	00106$
	dec	_num_alarms
00106$:
;	main.c:572: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00108$:
;	main.c:575: if (!next) {
	jb	_next,00110$
;	main.c:576: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:577: break;
	sjmp	00189$
00110$:
;	main.c:580: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00354$
	inc	(_idle_counter + 1)
00354$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jnc	00114$
;	main.c:581: lcd_clear();
	lcall	_lcd_clear
;	main.c:582: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:583: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:584: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:585: lcd_clear();
	lcall	_lcd_clear
;	main.c:586: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:587: return;  //time exceeded
	ret
;	main.c:592: for (i = 0; i < num_alarms; i++) {
00189$:
	mov	r7,#0x00
00153$:
	clr	c
	mov	a,r7
	subb	a,_num_alarms
	jc	00356$
	ljmp	00142$
00356$:
;	main.c:593: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:596: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	main.c:597: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:598: lcd_string(" Set Hour Alarm ");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:599: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:600: lcd_string("Alarm ");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar7
;	main.c:601: lcd_char('1' + i);
	mov	ar6,r7
	mov	a,#0x31
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_lcd_char
	pop	ar7
;	main.c:603: while (1) {
00127$:
;	main.c:604: lcd_goto(1, 9);
	mov	_lcd_goto_PARM_2,#0x09
	mov	dpl, #0x01
	push	ar7
	lcall	_lcd_goto
;	main.c:605: int_to_str(hr, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _hr
	lcall	_int_to_str
;	main.c:606: lcd_string(buf);
	mov	dptr,#_buf
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:607: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	main.c:609: if (!up) {
	jb	_up,00117$
;	main.c:610: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
;	main.c:611: hr = (hr + 1) % 24;
	mov	r5,_hr
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x18
	mov	(__modsint_PARM_2 + 1),r6
	lcall	__modsint
	mov	r5, dpl
	pop	ar7
	mov	_hr,r5
;	main.c:612: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00117$:
;	main.c:614: if (!down) {
	jb	_down,00119$
;	main.c:615: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:616: hr = (hr == 0) ? 23 : hr - 1;
	mov	a,_hr
	jnz	00163$
	mov	r5,#0x17
	sjmp	00164$
00163$:
	mov	r4,_hr
	dec	r4
	mov	a,r4
	mov	r5,a
	rlc	a
	subb	a,acc
00164$:
	mov	_hr,r5
;	main.c:617: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00119$:
;	main.c:619: if (!next) {
	jb	_next,00121$
;	main.c:620: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:621: break;
	sjmp	00128$
00121$:
;	main.c:623: if (!back) return;
	jb	_back,00123$
	ret
00123$:
;	main.c:625: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00362$
	inc	(_idle_counter + 1)
00362$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00363$
	ljmp	00127$
00363$:
;	main.c:626: lcd_clear();
	lcall	_lcd_clear
;	main.c:627: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:628: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:629: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:630: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:631: return;  //time exceeded
	ret
00128$:
;	main.c:636: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:637: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	main.c:638: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:639: lcd_string(" Set Min Alarm ");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:640: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:641: lcd_string("Alarm ");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar7
;	main.c:642: lcd_char('1' + i);
	mov	ar6,r7
	mov	a,#0x31
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_lcd_char
	pop	ar7
;	main.c:644: while (1) {
00140$:
;	main.c:645: lcd_goto(1, 9);
	mov	_lcd_goto_PARM_2,#0x09
	mov	dpl, #0x01
	push	ar7
	lcall	_lcd_goto
;	main.c:646: int_to_str(min, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _min
	lcall	_int_to_str
;	main.c:647: lcd_string(buf);
	mov	dptr,#_buf
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:648: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	main.c:650: if (!up) {
	jb	_up,00130$
;	main.c:651: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
;	main.c:652: min = (min + 1) % 60;
	mov	r5,_min
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x3c
	mov	(__modsint_PARM_2 + 1),r6
	lcall	__modsint
	mov	r5, dpl
	pop	ar7
	mov	_min,r5
;	main.c:653: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00130$:
;	main.c:655: if (!down) {
	jb	_down,00132$
;	main.c:656: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:657: min = (min == 0) ? 59 : min - 1;
	mov	a,_min
	jnz	00165$
	mov	r5,#0x3b
	sjmp	00166$
00165$:
	mov	r4,_min
	dec	r4
	mov	a,r4
	mov	r5,a
	rlc	a
	subb	a,acc
00166$:
	mov	_min,r5
;	main.c:658: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00132$:
;	main.c:660: if (!next) {
	jb	_next,00134$
;	main.c:661: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:662: break;
	sjmp	00141$
00134$:
;	main.c:664: if (!back) return;
	jb	_back,00136$
	ret
00136$:
;	main.c:666: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00369$
	inc	(_idle_counter + 1)
00369$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00370$
	ljmp	00140$
00370$:
;	main.c:667: lcd_clear();
	lcall	_lcd_clear
;	main.c:668: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:669: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:670: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:671: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:672: return;
	ret
00141$:
;	main.c:676: alarm_hours[i] = hr;
	mov	a,r7
	add	a, #_alarm_hours
	mov	r0,a
	mov	@r0,_hr
;	main.c:677: alarm_minutes[i] = min;
	mov	a,r7
	add	a, #_alarm_minutes
	mov	r0,a
	mov	@r0,_min
;	main.c:678: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	main.c:679: lcd_string(" Alarm Saved");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:680: delay(25000);
	mov	dptr,#0x61a8
	lcall	_delay
	pop	ar7
;	main.c:592: for (i = 0; i < num_alarms; i++) {
	inc	r7
	ljmp	00153$
00142$:
;	main.c:682: alarm_arranger(alarm_hours, alarm_minutes, &num_alarms);
	mov	_alarm_arranger_PARM_2,#_alarm_minutes
	mov	(_alarm_arranger_PARM_2 + 1),#0x00
	mov	(_alarm_arranger_PARM_2 + 2),#0x40
	mov	_alarm_arranger_PARM_3,#_num_alarms
	mov	(_alarm_arranger_PARM_3 + 1),#0x00
	mov	(_alarm_arranger_PARM_3 + 2),#0x40
	mov	dptr,#_alarm_hours
	mov	b, #0x40
	lcall	_alarm_arranger
;	main.c:683: write_eeprom(EEPROM_BASE, num_alarms);
	mov	_write_eeprom_PARM_2,_num_alarms
	mov	dptr,#0x0000
	lcall	_write_eeprom
;	main.c:685: for(i = 0; i < num_alarms; i++) {
	mov	r7,#0x00
00156$:
	clr	c
	mov	a,r7
	subb	a,_num_alarms
	jnc	00143$
;	main.c:686: write_alarm_to_eeprom(i, alarm_hours[i], alarm_minutes[i]);
	mov	a,r7
	add	a, #_alarm_hours
	mov	r1,a
	mov	_write_alarm_to_eeprom_PARM_2,@r1
	mov	a,r7
	add	a, #_alarm_minutes
	mov	r1,a
	mov	_write_alarm_to_eeprom_PARM_3,@r1
	mov	dpl, r7
	push	ar7
	lcall	_write_alarm_to_eeprom
	pop	ar7
;	main.c:685: for(i = 0; i < num_alarms; i++) {
	inc	r7
	sjmp	00156$
00143$:
;	main.c:688: ds3232_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
	mov	_ds3232_get_time_date_PARM_2,#_m
	mov	(_ds3232_get_time_date_PARM_2 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_2 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_3,#_s
	mov	(_ds3232_get_time_date_PARM_3 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_3 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_4,#_day
	mov	(_ds3232_get_time_date_PARM_4 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_4 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_5,#_d
	mov	(_ds3232_get_time_date_PARM_5 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_5 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_6,#_mo
	mov	(_ds3232_get_time_date_PARM_6 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_6 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_7,#_y
	mov	(_ds3232_get_time_date_PARM_7 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_7 + 2),#0x40
	mov	dptr,#_h
	mov	b, #0x40
	lcall	_ds3232_get_time_date
;	main.c:689: int total_mins = (h*60)+m;
	mov	__mulint_PARM_2,_h
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	lcall	__mulint
	mov	r6, dpl
	mov	r7, dph
	mov	r4,_m
	mov	r5,#0x00
	mov	a,r4
	add	a, r6
	mov	_set_alarms_total_mins_10002_135,a
	mov	a,r5
	addc	a, r7
	mov	(_set_alarms_total_mins_10002_135 + 1),a
;	main.c:691: if ((total_mins >= (alarm_hours[num_alarms - 1] * 60 + alarm_minutes[num_alarms - 1])) || (total_mins < (alarm_hours[0]*60 + alarm_minutes[0]))) {
	mov	r5,_num_alarms
	dec	r5
	mov	a,r5
	add	a, #_alarm_hours
	mov	r1,a
	mov	ar4,@r1
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar5
	lcall	__mulint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	mov	a,r5
	add	a, #_alarm_minutes
	mov	r1,a
	mov	ar5,@r1
	mov	r2,#0x00
	mov	a,r5
	add	a, r3
	mov	r3,a
	mov	a,r2
	addc	a, r4
	mov	r4,a
	clr	c
	mov	a,_set_alarms_total_mins_10002_135
	subb	a,r3
	mov	a,(_set_alarms_total_mins_10002_135 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00148$
	mov	r0,#_alarm_hours
	mov	ar5,@r0
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	mov	r0,#_alarm_minutes
	mov	ar3,@r0
	mov	r2,#0x00
	mov	a,r3
	add	a, r4
	mov	r4,a
	mov	a,r2
	addc	a, r5
	mov	r5,a
	clr	c
	mov	a,_set_alarms_total_mins_10002_135
	subb	a,r4
	mov	a,(_set_alarms_total_mins_10002_135 + 1)
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00196$
00148$:
;	main.c:692: ds3232_set_alarm1(alarm_hours[0], alarm_minutes[0], 0);
	mov	r0,#_alarm_hours
	mov	dpl,@r0
	mov	r0,#_alarm_minutes
	mov	_ds3232_set_alarm1_PARM_2,@r0
	mov	_ds3232_set_alarm1_PARM_3,#0x00
	lcall	_ds3232_set_alarm1
;	main.c:693: write_eeprom(0x003A, 0);
	mov	_write_eeprom_PARM_2,#0x00
	mov	dptr,#0x003a
	lcall	_write_eeprom
	ljmp	00150$
;	main.c:697: for(i=0; i<num_alarms-1; i++){
00196$:
	mov	r5,#0x00
00159$:
	mov	r3,_num_alarms
	mov	r4,#0x00
	dec	r3
	cjne	r3,#0xff,00374$
	dec	r4
00374$:
	mov	_set_alarms_sloc0_1_0,r5
	mov	(_set_alarms_sloc0_1_0 + 1),#0x00
	clr	c
	mov	a,_set_alarms_sloc0_1_0
	subb	a,r3
	mov	a,(_set_alarms_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00375$
	ljmp	00150$
00375$:
;	main.c:698: int total_mins1 = (alarm_hours[i]*60)+alarm_minutes[i];
	mov	a,r5
	add	a, #_alarm_hours
	mov	r1,a
	mov	ar4,@r1
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar5
	lcall	__mulint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	mov	a,r5
	add	a, #_alarm_minutes
	mov	r1,a
	mov	ar2,@r1
	mov	r7,#0x00
	mov	a,r2
	add	a, r3
	mov	_set_alarms_total_mins1_50002_140,a
	mov	a,r7
	addc	a, r4
	mov	(_set_alarms_total_mins1_50002_140 + 1),a
;	main.c:699: int total_mins2 = (alarm_hours[i+1]*60)+alarm_minutes[i+1];
	mov	ar7,r5
	mov	a,r7
	inc	a
	mov	r6,a
	add	a, #_alarm_hours
	mov	r1,a
	mov	ar2,@r1
	mov	__mulint_PARM_2,r2
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r2, dpl
	mov	r4, dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r6
	add	a, #_alarm_minutes
	mov	r1,a
	mov	ar6,@r1
	mov	r3,#0x00
	mov	a,r6
	add	a, r2
	mov	r6,a
	mov	a,r3
	addc	a, r4
	mov	r4,a
;	main.c:700: if (total_mins>= total_mins1 && total_mins<total_mins2){
	clr	c
	mov	a,_set_alarms_total_mins_10002_135
	subb	a,_set_alarms_total_mins1_50002_140
	mov	a,(_set_alarms_total_mins_10002_135 + 1)
	xrl	a,#0x80
	mov	b,(_set_alarms_total_mins1_50002_140 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00160$
	mov	a,_set_alarms_total_mins_10002_135
	subb	a,r6
	mov	a,(_set_alarms_total_mins_10002_135 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00160$
;	main.c:701: ds3232_set_alarm1(alarm_hours[i+1], alarm_minutes[i+1], 0);
	inc	r7
	mov	a,r7
	add	a, #_alarm_hours
	mov	r1,a
	mov	dpl,@r1
	mov	a,r7
	add	a, #_alarm_minutes
	mov	r1,a
	mov	_ds3232_set_alarm1_PARM_2,@r1
	mov	_ds3232_set_alarm1_PARM_3,#0x00
	push	ar5
	lcall	_ds3232_set_alarm1
;	main.c:702: write_eeprom(0x003A, (i+1)%num_alarms);
	mov	dpl,_set_alarms_sloc0_1_0
	mov	dph,(_set_alarms_sloc0_1_0 + 1)
	inc	dptr
	mov	__modsint_PARM_2,_num_alarms
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6, dpl
	mov	_write_eeprom_PARM_2,r6
	mov	dptr,#0x003a
	lcall	_write_eeprom
	pop	ar5
00160$:
;	main.c:697: for(i=0; i<num_alarms-1; i++){
	inc	r5
	ljmp	00159$
00150$:
;	main.c:708: lcd_clear();
	lcall	_lcd_clear
;	main.c:709: lcd_string(" All Alarms Saved");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:710: delay(25000);
	mov	dptr,#0x61a8
	lcall	_delay
;	main.c:711: lcd_clear();
;	main.c:712: }
	ljmp	_lcd_clear
;------------------------------------------------------------
;Allocation info for local variables in function 'alarm_triggered'
;------------------------------------------------------------
;j             Allocated to registers r7 
;k             Allocated to registers 
;timeout       Allocated to registers r6 r7 
;alarm_indx    Allocated to registers r6 
;------------------------------------------------------------
;	main.c:746: void alarm_triggered(void) __interrupt(0) {
;	-----------------------------------------
;	 function alarm_triggered
;	-----------------------------------------
_alarm_triggered:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:747: EA = 0;
;	assignBit
	clr	_EA
;	main.c:748: POWER_PULSE = 1;
;	assignBit
	setb	_POWER_PULSE
;	main.c:749: lcd_init();
	lcall	_lcd_init
;	main.c:751: lcd_clear();
	lcall	_lcd_clear
;	main.c:752: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:753: lcd_string(" Alarm Triggered");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:754: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:755: lcd_string("Take Medicine");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:756: BUZZER = 1;
;	assignBit
	setb	_BUZZER
;	main.c:757: k = read_eeprom(0x003F);
	mov	dptr,#0x003f
	lcall	_read_eeprom
;	main.c:758: k = k+1;
	mov	a,dpl
	inc	a
	mov	_write_eeprom_PARM_2,a
;	main.c:759: write_eeprom(0x003F, k);
	mov	dptr,#0x003f
	lcall	_write_eeprom
;	main.c:760: for(j = 0; j < STEPS; j++) {
	mov	r7,#0x00
00106$:
;	main.c:761: step_motor(j);
	mov	ar5,r7
	mov	r6,#0x00
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	lcall	_step_motor
;	main.c:762: delay_ms(3);  // Adjust delay for speed
	mov	dptr,#0x0003
	lcall	_delay_ms
	pop	ar7
;	main.c:760: for(j = 0; j < STEPS; j++) {
	inc	r7
	cjne	r7,#0x89,00147$
00147$:
	jc	00106$
;	main.c:764: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:765: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:766: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:767: IN4=0; // to save power
;	assignBit
	clr	_IN4
;	main.c:770: while (down && timeout < 5000) {  // ~5 sec timeout
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	jnb	_down,00105$
	clr	c
	mov	a,r6
	subb	a,#0x88
	mov	a,r7
	subb	a,#0x13
	jnc	00105$
;	main.c:771: delay_ms(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	main.c:772: timeout++;
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	main.c:774: lcd_clear();
	lcall	_lcd_clear
;	main.c:775: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:776: unsigned char alarm_indx = read_eeprom(0x003A);
	mov	dptr,#0x003a
	lcall	_read_eeprom
;	main.c:777: alarm_indx = (alarm_indx+1)%num_alarms;
	mov	r6,#0x00
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,_num_alarms
	mov	(__modsint_PARM_2 + 1),r6
	lcall	__modsint
	mov	r6, dpl
;	main.c:778: write_eeprom(0x003A, alarm_indx);
	mov	_write_eeprom_PARM_2,r6
	mov	dptr,#0x003a
	push	ar6
	lcall	_write_eeprom
	pop	ar6
;	main.c:779: hr = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 1);
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	push	ar7
	push	ar6
	lcall	_read_eeprom
	mov	_hr,dpl
	pop	ar6
	pop	ar7
;	main.c:780: min  = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 2);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	lcall	_read_eeprom
	mov	_min,dpl
;	main.c:781: ds3232_set_alarm1(hr, min, 0);
	mov	_ds3232_set_alarm1_PARM_2,_min
	mov	_ds3232_set_alarm1_PARM_3,#0x00
	mov	dpl, _hr
	lcall	_ds3232_set_alarm1
;	main.c:782: POWER_PULSE = 0;
;	assignBit
	clr	_POWER_PULSE
;	main.c:783: EA = 1;
;	assignBit
	setb	_EA
;	main.c:784: PCON |= 0x02;
	orl	_PCON,#0x02
;	main.c:785: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	ljmp	sdcc_atomic_maybe_rollback
;------------------------------------------------------------
;Allocation info for local variables in function 'configuration'
;------------------------------------------------------------
;	main.c:787: void configuration(void) __interrupt(2) {
;	-----------------------------------------
;	 function configuration
;	-----------------------------------------
_configuration:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:788: EA = 0;
;	assignBit
	clr	_EA
;	main.c:789: POWER_PULSE = 1;
;	assignBit
	setb	_POWER_PULSE
;	main.c:790: lcd_init();
	lcall	_lcd_init
;	main.c:791: lcd_clear();
	lcall	_lcd_clear
;	main.c:792: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:793: lcd_string(" <- to see TIME");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:794: lcd_goto(1,1);
	mov	_lcd_goto_PARM_2,#0x01
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:795: lcd_string("-> to CONFIGURE");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:796: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:797: while(next && back){
00104$:
	jnb	_next,00106$
	jnb	_back,00106$
;	main.c:798: if(++idle_counter>1000){
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00214$
	inc	(_idle_counter + 1)
00214$:
	clr	c
	mov	a,#0xe8
	subb	a,_idle_counter
	mov	a,#0x03
	subb	a,(_idle_counter + 1)
	jnc	00102$
;	main.c:799: lcd_clear();
	lcall	_lcd_clear
;	main.c:800: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:801: return;
	ljmp	00126$
00102$:
;	main.c:803: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
	sjmp	00104$
00106$:
;	main.c:805: lcd_clear();
	lcall	_lcd_clear
;	main.c:806: if(!next){
	jnb	_next,00216$
	ljmp	00124$
00216$:
;	main.c:807: lcd_clear();
	lcall	_lcd_clear
;	main.c:808: lcd_goto(1,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:809: lcd_string(" Edit Mode");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:810: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	main.c:811: lcd_clear();
	lcall	_lcd_clear
;	main.c:812: lcd_string(" <- to set ALARM");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:813: lcd_goto(1,1);
	mov	_lcd_goto_PARM_2,#0x01
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:814: lcd_string(" -> to set Clock");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:815: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:816: while(next && back){
00110$:
	jnb	_next,00112$
	jnb	_back,00112$
;	main.c:817: if(++idle_counter>1000){
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00219$
	inc	(_idle_counter + 1)
00219$:
	clr	c
	mov	a,#0xe8
	subb	a,_idle_counter
	mov	a,#0x03
	subb	a,(_idle_counter + 1)
	jnc	00108$
;	main.c:818: lcd_clear();
	lcall	_lcd_clear
;	main.c:819: return;
	ljmp	00126$
00108$:
;	main.c:821: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
	sjmp	00110$
00112$:
;	main.c:823: lcd_clear();
	lcall	_lcd_clear
;	main.c:824: if(!next){
	jb	_next,00116$
;	main.c:825: set_clock();
	lcall	_set_clock
	ljmp	00125$
00116$:
;	main.c:827: else if(!back){
	jnb	_back,00222$
	ljmp	00125$
00222$:
;	main.c:828: set_alarms();
	lcall	_set_alarms
	sjmp	00125$
00124$:
;	main.c:831: else if(!back){
	jb	_back,00125$
;	main.c:832: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:833: while(++idle_counter<1000){
00118$:
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00224$
	inc	(_idle_counter + 1)
00224$:
	clr	c
	mov	a,_idle_counter
	subb	a,#0xe8
	mov	a,(_idle_counter + 1)
	subb	a,#0x03
	jnc	00125$
;	main.c:834: ds3232_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
	mov	_ds3232_get_time_date_PARM_2,#_m
	mov	(_ds3232_get_time_date_PARM_2 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_2 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_3,#_s
	mov	(_ds3232_get_time_date_PARM_3 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_3 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_4,#_day
	mov	(_ds3232_get_time_date_PARM_4 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_4 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_5,#_d
	mov	(_ds3232_get_time_date_PARM_5 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_5 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_6,#_mo
	mov	(_ds3232_get_time_date_PARM_6 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_6 + 2),#0x40
	mov	_ds3232_get_time_date_PARM_7,#_y
	mov	(_ds3232_get_time_date_PARM_7 + 1),#0x00
	mov	(_ds3232_get_time_date_PARM_7 + 2),#0x40
	mov	dptr,#_h
	mov	b, #0x40
	lcall	_ds3232_get_time_date
;	main.c:835: display(h, m, s, d, mo, y, day);
	mov	_display_PARM_2,_m
	mov	_display_PARM_3,_s
	mov	_display_PARM_4,_d
	mov	_display_PARM_5,_mo
	mov	_display_PARM_6,_y
	mov	_display_PARM_7,_day
	mov	dpl, _h
	lcall	_display
	sjmp	00118$
00125$:
;	main.c:838: POWER_PULSE = 0;
;	assignBit
	clr	_POWER_PULSE
;	main.c:839: EA = 1;
;	assignBit
	setb	_EA
;	main.c:840: PCON |= 0x02;
	orl	_PCON,#0x02
00126$:
;	main.c:841: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	ljmp	sdcc_atomic_maybe_rollback
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;checker       Allocated with name '_main_checker_10001_169'
;------------------------------------------------------------
;	main.c:843: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:844: EA  = 1;   // Enable global interrupts
;	assignBit
	setb	_EA
;	main.c:845: EX0 = 1;   // Enable INT0 (P3.2)
;	assignBit
	setb	_EX0
;	main.c:846: IT0 = 1;   // Set INT0 to level-triggered
;	assignBit
	setb	_IT0
;	main.c:847: EX1 = 1;   // Enable INT1 (P3.3)
;	assignBit
	setb	_EX1
;	main.c:848: IT1 = 1;   // Set INT1 to level-triggered
;	assignBit
	setb	_IT1
;	main.c:849: IP |= 0x04;
	orl	_IP,#0x04
;	main.c:851: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:852: POWER_PULSE = 1;
;	assignBit
	setb	_POWER_PULSE
;	main.c:855: lcd_init();     // LCD init
	lcall	_lcd_init
;	main.c:856: i2c_init();     // I2C init
	lcall	_i2c_init
;	main.c:857: ds3232_init();  // DS3232 RTC init
	lcall	_ds3232_init
;	main.c:860: checker[0] = read_eeprom(0x003B);
	mov	dptr,#0x003b
	lcall	_read_eeprom
	mov	a, dpl
	mov	_main_checker_10001_169,a
;	main.c:861: checker[1] = read_eeprom(0x003C);
	mov	dptr,#0x003c
	lcall	_read_eeprom
	mov	a, dpl
	mov	(_main_checker_10001_169 + 0x0001),a
;	main.c:862: checker[2] = read_eeprom(0x003D);
	mov	dptr,#0x003d
	lcall	_read_eeprom
	mov	a, dpl
	mov	(_main_checker_10001_169 + 0x0002),a
;	main.c:863: checker[3] = read_eeprom(0x003E);
	mov	dptr,#0x003e
	lcall	_read_eeprom
	mov	a, dpl
	mov	(_main_checker_10001_169 + 0x0003),a
;	main.c:864: if(!(checker[0] == 'I' && checker[1] == 'N' && checker[2] == 'I' && checker[3] == 'T')){
	mov	a,#0x49
	cjne	a,_main_checker_10001_169,00101$
	mov	a,#0x4e
	cjne	a,(_main_checker_10001_169 + 0x0001),00101$
	mov	a,#0x49
	cjne	a,(_main_checker_10001_169 + 0x0002),00101$
	mov	a,#0x54
	cjne	a,(_main_checker_10001_169 + 0x0003),00142$
	ljmp	00102$
00142$:
00101$:
;	main.c:865: lcd_clear();
	lcall	_lcd_clear
;	main.c:866: set_alarms();
	lcall	_set_alarms
;	main.c:867: lcd_init();
	lcall	_lcd_init
;	main.c:868: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:869: write_eeprom(0x003B, 'I');
	mov	_write_eeprom_PARM_2,#0x49
	mov	dptr,#0x003b
	lcall	_write_eeprom
;	main.c:870: write_eeprom(0x003C, 'N');
	mov	_write_eeprom_PARM_2,#0x4e
	mov	dptr,#0x003c
	lcall	_write_eeprom
;	main.c:871: write_eeprom(0x003D, 'I');
	mov	_write_eeprom_PARM_2,#0x49
	mov	dptr,#0x003d
	lcall	_write_eeprom
;	main.c:872: write_eeprom(0x003E, 'T');
	mov	_write_eeprom_PARM_2,#0x54
	mov	dptr,#0x003e
	lcall	_write_eeprom
;	main.c:873: write_eeprom(0x003F, 0x0);
	mov	_write_eeprom_PARM_2,#0x00
	mov	dptr,#0x003f
	lcall	_write_eeprom
;	main.c:874: write_eeprom(0x003A, 0x0);
	mov	_write_eeprom_PARM_2,#0x00
	mov	dptr,#0x003a
	lcall	_write_eeprom
;	main.c:875: lcd_clear();
	lcall	_lcd_clear
;	main.c:876: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:877: lcd_string(" NOW INIT");
	mov	dptr,#___str_14
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:878: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	main.c:879: lcd_clear();
	lcall	_lcd_clear
	sjmp	00103$
00102$:
;	main.c:883: lcd_clear();
	lcall	_lcd_clear
;	main.c:884: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:885: lcd_string(" PREV INIT");
	mov	dptr,#___str_15
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:886: delay(30000);
	mov	dptr,#0x7530
	lcall	_delay
;	main.c:887: lcd_clear();
	lcall	_lcd_clear
00103$:
;	main.c:889: POWER_PULSE = 0;
;	assignBit
	clr	_POWER_PULSE
;	main.c:890: PCON |= 0x02;
	orl	_PCON,#0x02
;	main.c:891: while(1);
00108$:
;	main.c:892: }
	sjmp	00108$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii " How many alarms"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii " Time limit exc!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii " Set Hour Alarm "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Alarm "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii " Set Min Alarm "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii " Alarm Saved"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii " All Alarms Saved"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii " Alarm Triggered"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Take Medicine"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " <- to see TIME"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "-> to CONFIGURE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii " Edit Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii " <- to set ALARM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii " -> to set Clock"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii " NOW INIT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii " PREV INIT"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

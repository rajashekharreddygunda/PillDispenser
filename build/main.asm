;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #15373 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _int_to_str_PARM_2
	.globl _main
	.globl _reset_motor_position
	.globl _check_alarms
	.globl _touch
	.globl _set_alarms
	.globl _set_clock
	.globl _load_alarms_from_ds1307
	.globl _write_alarm_to_ds1307
	.globl _ds1307_read_ram
	.globl _ds1307_write_ram
	.globl _Settings
	.globl _step_motor
	.globl _display
	.globl _ds1307_get_time_date
	.globl _ds1307_set_time_date
	.globl _ds1307_init
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
	.globl _alarm
	.globl _clock
	.globl _RESET
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
	.globl _alarm_check
	.globl _clock_check
	.globl _touch_sensor
	.globl _edit_mode
	.globl _min_vals
	.globl _max_vals
	.globl _alarm_minutes
	.globl _alarm_hours
	.globl _check_alarms_PARM_3
	.globl _check_alarms_PARM_2
	.globl _write_alarm_to_ds1307_PARM_3
	.globl _write_alarm_to_ds1307_PARM_2
	.globl _ds1307_write_ram_PARM_2
	.globl _display_PARM_7
	.globl _display_PARM_6
	.globl _display_PARM_5
	.globl _display_PARM_4
	.globl _display_PARM_3
	.globl _display_PARM_2
	.globl _ds1307_get_time_date_PARM_7
	.globl _ds1307_get_time_date_PARM_6
	.globl _ds1307_get_time_date_PARM_5
	.globl _ds1307_get_time_date_PARM_4
	.globl _ds1307_get_time_date_PARM_3
	.globl _ds1307_get_time_date_PARM_2
	.globl _ds1307_set_time_date_PARM_7
	.globl _ds1307_set_time_date_PARM_6
	.globl _ds1307_set_time_date_PARM_5
	.globl _ds1307_set_time_date_PARM_4
	.globl _ds1307_set_time_date_PARM_3
	.globl _ds1307_set_time_date_PARM_2
	.globl _lcd_goto_PARM_2
	.globl _count_down
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
	.globl _dummy
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
_RESET	=	0x0097
_clock	=	0x00b2
_alarm	=	0x00b3
_up	=	0x00b4
_down	=	0x00b5
_next	=	0x00b6
_back	=	0x00b7
_SDA	=	0x00b1
_SCL	=	0x00b0
_IN1	=	0x00a1
_IN2	=	0x00a2
_IN3	=	0x00a3
_IN4	=	0x00a4
_BUZZER	=	0x00a0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_dummy::
	.ds 1
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
_count_down::
	.ds 2
_lcd_goto_PARM_2:
	.ds 1
_ds1307_set_time_date_PARM_2:
	.ds 1
_ds1307_set_time_date_PARM_3:
	.ds 1
_ds1307_set_time_date_PARM_4:
	.ds 1
_ds1307_set_time_date_PARM_5:
	.ds 1
_ds1307_set_time_date_PARM_6:
	.ds 1
_ds1307_set_time_date_PARM_7:
	.ds 1
_ds1307_get_time_date_PARM_2:
	.ds 3
_ds1307_get_time_date_PARM_3:
	.ds 3
_ds1307_get_time_date_PARM_4:
	.ds 3
_ds1307_get_time_date_PARM_5:
	.ds 3
_ds1307_get_time_date_PARM_6:
	.ds 3
_ds1307_get_time_date_PARM_7:
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
_ds1307_write_ram_PARM_2:
	.ds 1
_write_alarm_to_ds1307_PARM_2:
	.ds 1
_write_alarm_to_ds1307_PARM_3:
	.ds 1
_check_alarms_PARM_2:
	.ds 1
_check_alarms_PARM_3:
	.ds 1
_check_alarms_j_10000_125:
	.ds 1
_main_checker_10001_141:
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
_edit_mode::
	.ds 1
_touch_sensor::
	.ds 1
_clock_check::
	.ds 1
_alarm_check::
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
	ljmp	_Settings
	.ds	5
	reti
	.ds	7
	ljmp	_touch
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
;	main.c:21: unsigned char time_date[7] = {0,0,0,0,1,1,25};  //starting time
	mov	_time_date,#0x00
	mov	(_time_date + 0x0001),#0x00
	mov	(_time_date + 0x0002),#0x00
	mov	(_time_date + 0x0003),#0x00
	mov	(_time_date + 0x0004),#0x01
	mov	(_time_date + 0x0005),#0x01
	mov	(_time_date + 0x0006),#0x19
;	main.c:23: unsigned char num_alarms = 1;
	mov	_num_alarms,#0x01
;	main.c:24: unsigned int idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:27: const unsigned char __idata max_vals[] = {24, 60, 60, 7, 31, 12, 100};
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
;	main.c:28: const unsigned char __idata min_vals[] = {0, 0, 0, 0, 1, 1, 0};
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
;	main.c:15: volatile __bit edit_mode = 0;  // Global flag to enter clock-edit mode
;	assignBit
	clr	_edit_mode
;	main.c:16: volatile __bit touch_sensor = 0;  // global flag to enter alarm settings
;	assignBit
	clr	_touch_sensor
;	main.c:34: volatile __bit clock_check = 0;
;	assignBit
	clr	_clock_check
;	main.c:35: volatile __bit alarm_check = 0;
;	assignBit
	clr	_alarm_check
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
;	main.c:71: void delay(unsigned int cycles) {
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
;	main.c:73: for(i = 0; i < cycles; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:74: for(j = 0; j < 5; j++);
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
;	main.c:73: for(i = 0; i < cycles; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:77: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	main.c:79: for(i=0; i<ms; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:80: for(j=0; j<1275; j++);
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
;	main.c:79: for(i=0; i<ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pulse_enable'
;------------------------------------------------------------
;	main.c:83: void pulse_enable() {
;	-----------------------------------------
;	 function pulse_enable
;	-----------------------------------------
_pulse_enable:
;	main.c:84: LCD_EN = 1;
;	assignBit
	setb	_LCD_EN
;	main.c:85: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:86: LCD_EN = 0;
;	assignBit
	clr	_LCD_EN
;	main.c:87: delay(1);
	mov	dptr,#0x0001
;	main.c:88: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'send_nibble'
;------------------------------------------------------------
;nibble        Allocated to registers r7 
;------------------------------------------------------------
;	main.c:90: void send_nibble(unsigned char nibble) {
;	-----------------------------------------
;	 function send_nibble
;	-----------------------------------------
_send_nibble:
;	main.c:91: LCD_D4 = (nibble >> 0) & 1;
	mov	a,dpl
	mov	r7,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D4,c
;	main.c:92: LCD_D5 = (nibble >> 1) & 1;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D5,c
;	main.c:93: LCD_D6 = (nibble >> 2) & 1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_LCD_D6,c
;	main.c:94: LCD_D7 = (nibble >> 3) & 1;
	mov	a,r7
	mov	c,acc.3
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_LCD_D7,c
;	main.c:95: pulse_enable();
;	main.c:96: }
	ljmp	_pulse_enable
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;cmd           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:98: void lcd_cmd(unsigned char cmd) {
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	r7, dpl
;	main.c:99: LCD_RS = 0;
;	assignBit
	clr	_LCD_RS
;	main.c:100: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:101: send_nibble(cmd >> 4);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_send_nibble
	pop	ar7
;	main.c:102: send_nibble(cmd & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	lcall	_send_nibble
;	main.c:103: delay(2);
	mov	dptr,#0x0002
;	main.c:104: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_char'
;------------------------------------------------------------
;ch            Allocated to registers r7 
;------------------------------------------------------------
;	main.c:106: void lcd_char(unsigned char ch) {
;	-----------------------------------------
;	 function lcd_char
;	-----------------------------------------
_lcd_char:
	mov	r7, dpl
;	main.c:107: LCD_RS = 1;
;	assignBit
	setb	_LCD_RS
;	main.c:108: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:109: send_nibble(ch >> 4);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dpl,a
	push	ar7
	lcall	_send_nibble
	pop	ar7
;	main.c:110: send_nibble(ch & 0x0F);
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	lcall	_send_nibble
;	main.c:111: delay(2);
	mov	dptr,#0x0002
;	main.c:112: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_string'
;------------------------------------------------------------
;str           Allocated to registers 
;------------------------------------------------------------
;	main.c:114: void lcd_string(char *str) {
;	-----------------------------------------
;	 function lcd_string
;	-----------------------------------------
_lcd_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:115: while(*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:116: lcd_char(*str++);
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
;	main.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;	main.c:120: void lcd_clear() {
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
;	main.c:121: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main.c:122: delay(2);
	mov	dptr,#0x0002
;	main.c:123: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_goto'
;------------------------------------------------------------
;col           Allocated with name '_lcd_goto_PARM_2'
;row           Allocated to registers r7 
;address       Allocated to registers 
;------------------------------------------------------------
;	main.c:125: void lcd_goto(unsigned char row, unsigned char col) {
;	-----------------------------------------
;	 function lcd_goto
;	-----------------------------------------
_lcd_goto:
;	main.c:126: unsigned char address = (row == 0) ? (0x80 + col) : (0xC0 + col);
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
;	main.c:127: lcd_cmd(address);
;	main.c:128: }
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	main.c:131: void lcd_init() {
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	main.c:132: LCD_RS = 0;
;	assignBit
	clr	_LCD_RS
;	main.c:133: LCD_RW = 0;
;	assignBit
	clr	_LCD_RW
;	main.c:134: LCD_EN = 0;
;	assignBit
	clr	_LCD_EN
;	main.c:136: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:138: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:139: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:140: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:141: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:142: send_nibble(0x03);
	mov	dpl, #0x03
	lcall	_send_nibble
;	main.c:143: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:144: send_nibble(0x02);
	mov	dpl, #0x02
	lcall	_send_nibble
;	main.c:146: lcd_cmd(0x28);
	mov	dpl, #0x28
	lcall	_lcd_cmd
;	main.c:147: lcd_cmd(0x0C);
	mov	dpl, #0x0c
	lcall	_lcd_cmd
;	main.c:148: lcd_cmd(0x06);
	mov	dpl, #0x06
	lcall	_lcd_cmd
;	main.c:149: lcd_cmd(0x01);
	mov	dpl, #0x01
	lcall	_lcd_cmd
;	main.c:150: delay(2);
	mov	dptr,#0x0002
;	main.c:151: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_str'
;------------------------------------------------------------
;str           Allocated with name '_int_to_str_PARM_2'
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:153: void int_to_str(unsigned char val, char *str) {
;	-----------------------------------------
;	 function int_to_str
;	-----------------------------------------
_int_to_str:
	mov	r7, dpl
;	main.c:154: str[0] = (val / 10) + '0';
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
;	main.c:155: str[1] = (val % 10) + '0';
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
;	main.c:156: str[2] = '\0';
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
;	main.c:157: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_init'
;------------------------------------------------------------
;	main.c:159: void i2c_init() {
;	-----------------------------------------
;	 function i2c_init
;	-----------------------------------------
_i2c_init:
;	main.c:160: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:161: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:162: delay(1);
	mov	dptr,#0x0001
;	main.c:163: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	main.c:165: void i2c_start() {
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	main.c:166: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:167: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:168: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:169: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:170: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:171: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	main.c:174: void i2c_stop() {
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	main.c:175: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:176: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:177: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:178: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:179: delay(1);
	mov	dptr,#0x0001
;	main.c:180: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;value         Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	main.c:182: __bit i2c_write(unsigned char value) {
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	main.c:186: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00102$:
;	main.c:187: SDA = (value & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_SDA,c
;	main.c:188: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:189: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:190: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:191: value <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main.c:186: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00102$
;	main.c:194: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:195: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:196: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:197: ack = SDA;
	mov	c,_SDA
;	main.c:198: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:199: return ~ack;
	setb	c
;	main.c:200: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ack           Allocated to registers r7 
;i             Allocated to registers r5 
;value         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:202: unsigned char i2c_read(unsigned char ack) {
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7, dpl
;	main.c:203: unsigned char i, value = 0;
	mov	r6,#0x00
;	main.c:205: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:207: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00104$:
;	main.c:208: value <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	main.c:209: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:210: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:211: if (SDA)
	jnb	_SDA,00102$
;	main.c:212: value |= 1;
	orl	ar6,#0x01
00102$:
;	main.c:213: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:214: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:207: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00128$
00128$:
	jc	00104$
;	main.c:217: SDA = (ack) ? 0 : 1;
	mov	a,r7
	cjne	a,#0x01,00130$
00130$:
	mov  _i2c_read_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_SDA,c
;	main.c:218: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:219: delay(1);
	mov	dptr,#0x0001
	push	ar6
	lcall	_delay
	pop	ar6
;	main.c:220: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:221: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:222: return value;
	mov	dpl, r6
;	main.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_to_bcd'
;------------------------------------------------------------
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:225: unsigned char dec_to_bcd(unsigned char val) {
;	-----------------------------------------
;	 function dec_to_bcd
;	-----------------------------------------
_dec_to_bcd:
	mov	r7, dpl
;	main.c:226: return ((val / 10) << 4) | (val % 10);
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
;	main.c:227: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_to_dec'
;------------------------------------------------------------
;val           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:229: unsigned char bcd_to_dec(unsigned char val) {
;	-----------------------------------------
;	 function bcd_to_dec
;	-----------------------------------------
_bcd_to_dec:
;	main.c:230: return ((val >> 4) * 10) + (val & 0x0F);
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
;	main.c:231: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_init'
;------------------------------------------------------------
;	main.c:233: void ds1307_init(void) {
;	-----------------------------------------
;	 function ds1307_init
;	-----------------------------------------
_ds1307_init:
;	main.c:234: i2c_start();
	lcall	_i2c_start
;	main.c:235: i2c_write((DS1307_ADDRESS << 1) | 0); // Write mode
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:236: i2c_write(0x00); // Point to seconds register
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:237: i2c_write(0x00); // Start oscillator (CH = 0)
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:238: i2c_stop();
;	main.c:239: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_set_time_date'
;------------------------------------------------------------
;min           Allocated with name '_ds1307_set_time_date_PARM_2'
;sec           Allocated with name '_ds1307_set_time_date_PARM_3'
;day           Allocated with name '_ds1307_set_time_date_PARM_4'
;date          Allocated with name '_ds1307_set_time_date_PARM_5'
;month         Allocated with name '_ds1307_set_time_date_PARM_6'
;year          Allocated with name '_ds1307_set_time_date_PARM_7'
;hrs           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:241: void ds1307_set_time_date(unsigned char hrs, unsigned char min, unsigned char sec, unsigned char day, unsigned char date, unsigned char month, unsigned char year) {
;	-----------------------------------------
;	 function ds1307_set_time_date
;	-----------------------------------------
_ds1307_set_time_date:
	mov	r7, dpl
;	main.c:242: i2c_start();
	push	ar7
	lcall	_i2c_start
;	main.c:243: i2c_write((DS1307_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:244: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:245: i2c_write(dec_to_bcd(sec));
	mov	dpl, _ds1307_set_time_date_PARM_3
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:246: i2c_write(dec_to_bcd(min));
	mov	dpl, _ds1307_set_time_date_PARM_2
	lcall	_dec_to_bcd
	lcall	_i2c_write
	pop	ar7
;	main.c:247: i2c_write(dec_to_bcd(hrs));
	mov	dpl, r7
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:248: i2c_write(dec_to_bcd(day));
	mov	dpl, _ds1307_set_time_date_PARM_4
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:249: i2c_write(dec_to_bcd(date));
	mov	dpl, _ds1307_set_time_date_PARM_5
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:250: i2c_write(dec_to_bcd(month));
	mov	dpl, _ds1307_set_time_date_PARM_6
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:251: i2c_write(dec_to_bcd(year));
	mov	dpl, _ds1307_set_time_date_PARM_7
	lcall	_dec_to_bcd
	lcall	_i2c_write
;	main.c:252: i2c_stop();
;	main.c:253: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_get_time_date'
;------------------------------------------------------------
;min           Allocated with name '_ds1307_get_time_date_PARM_2'
;sec           Allocated with name '_ds1307_get_time_date_PARM_3'
;day           Allocated with name '_ds1307_get_time_date_PARM_4'
;date          Allocated with name '_ds1307_get_time_date_PARM_5'
;month         Allocated with name '_ds1307_get_time_date_PARM_6'
;year          Allocated with name '_ds1307_get_time_date_PARM_7'
;hrs           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:255: void ds1307_get_time_date(unsigned char *hrs, unsigned char *min, unsigned char *sec, unsigned char *day, unsigned char *date, unsigned char *month, unsigned char *year) {
;	-----------------------------------------
;	 function ds1307_get_time_date
;	-----------------------------------------
_ds1307_get_time_date:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:256: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main.c:257: i2c_write((DS1307_ADDRESS << 1) | 0);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:258: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:259: i2c_stop();
	lcall	_i2c_stop
;	main.c:261: i2c_start();
	lcall	_i2c_start
;	main.c:262: i2c_write((DS1307_ADDRESS << 1) | 1);
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main.c:263: *sec   = bcd_to_dec(i2c_read(1));
	mov	r2,_ds1307_get_time_date_PARM_3
	mov	r3,(_ds1307_get_time_date_PARM_3 + 1)
	mov	r4,(_ds1307_get_time_date_PARM_3 + 2)
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
;	main.c:264: *min   = bcd_to_dec(i2c_read(1));
	mov	r2,_ds1307_get_time_date_PARM_2
	mov	r3,(_ds1307_get_time_date_PARM_2 + 1)
	mov	r4,(_ds1307_get_time_date_PARM_2 + 2)
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
;	main.c:265: *hrs   = bcd_to_dec(i2c_read(1));
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
;	main.c:266: *day   = bcd_to_dec(i2c_read(1));
	mov	r5,_ds1307_get_time_date_PARM_4
	mov	r6,(_ds1307_get_time_date_PARM_4 + 1)
	mov	r7,(_ds1307_get_time_date_PARM_4 + 2)
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
;	main.c:267: *date  = bcd_to_dec(i2c_read(1));
	mov	r5,_ds1307_get_time_date_PARM_5
	mov	r6,(_ds1307_get_time_date_PARM_5 + 1)
	mov	r7,(_ds1307_get_time_date_PARM_5 + 2)
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
;	main.c:268: *month = bcd_to_dec(i2c_read(1));
	mov	r5,_ds1307_get_time_date_PARM_6
	mov	r6,(_ds1307_get_time_date_PARM_6 + 1)
	mov	r7,(_ds1307_get_time_date_PARM_6 + 2)
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
;	main.c:269: *year  = bcd_to_dec(i2c_read(0));
	mov	r5,_ds1307_get_time_date_PARM_7
	mov	r6,(_ds1307_get_time_date_PARM_7 + 1)
	mov	r7,(_ds1307_get_time_date_PARM_7 + 2)
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
;	main.c:270: i2c_stop();
;	main.c:271: }
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
;	main.c:274: void display(unsigned char h, unsigned char m, unsigned char s, unsigned char d, unsigned char mo, unsigned char y, unsigned char day ) {
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r7, dpl
;	main.c:275: int_to_str(h, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, r7
	lcall	_int_to_str
;	main.c:276: time_str[0] = buf[0];
	mov	_time_str,_buf
;	main.c:277: time_str[1] = buf[1];
	mov	(_time_str + 0x0001),(_buf + 0x0001)
;	main.c:278: time_str[2] = ':';
	mov	(_time_str + 0x0002),#0x3a
;	main.c:279: int_to_str(m, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_2
	lcall	_int_to_str
;	main.c:280: time_str[3] = buf[0];
	mov	(_time_str + 0x0003),_buf
;	main.c:281: time_str[4] = buf[1];
	mov	(_time_str + 0x0004),(_buf + 0x0001)
;	main.c:282: time_str[5] = ':';
	mov	(_time_str + 0x0005),#0x3a
;	main.c:283: int_to_str(s, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_3
	lcall	_int_to_str
;	main.c:284: time_str[6] = buf[0];
	mov	(_time_str + 0x0006),_buf
;	main.c:285: time_str[7] = buf[1];
	mov	(_time_str + 0x0007),(_buf + 0x0001)
;	main.c:286: time_str[8] = '\0';
	mov	(_time_str + 0x0008),#0x00
;	main.c:289: int_to_str(d, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_4
	lcall	_int_to_str
;	main.c:290: date_str[0] = buf[0];
	mov	_date_str,_buf
;	main.c:291: date_str[1] = buf[1];
	mov	(_date_str + 0x0001),(_buf + 0x0001)
;	main.c:292: date_str[2] = ':';
	mov	(_date_str + 0x0002),#0x3a
;	main.c:293: int_to_str(mo, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_5
	lcall	_int_to_str
;	main.c:294: date_str[3] = buf[0];
	mov	(_date_str + 0x0003),_buf
;	main.c:295: date_str[4] = buf[1];
	mov	(_date_str + 0x0004),(_buf + 0x0001)
;	main.c:296: date_str[5] = ':';
	mov	(_date_str + 0x0005),#0x3a
;	main.c:297: int_to_str(y, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _display_PARM_6
	lcall	_int_to_str
;	main.c:298: date_str[6] = buf[0];
	mov	(_date_str + 0x0006),_buf
;	main.c:299: date_str[7] = buf[1];
	mov	(_date_str + 0x0007),(_buf + 0x0001)
;	main.c:300: date_str[8] = ' ';
	mov	(_date_str + 0x0008),#0x20
;	main.c:302: switch(day) {
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
;	main.c:303: case 1:
00101$:
;	main.c:304: buf[0] = 'S';
	mov	_buf,#0x53
;	main.c:305: buf[1] = 'u';
	mov	(_buf + 0x0001),#0x75
;	main.c:306: buf[2] = 'n';
	mov	(_buf + 0x0002),#0x6e
;	main.c:307: break;
;	main.c:308: case 2:
	sjmp	00108$
00102$:
;	main.c:309: buf[0] = 'M';
	mov	_buf,#0x4d
;	main.c:310: buf[1] = 'o';
	mov	(_buf + 0x0001),#0x6f
;	main.c:311: buf[2] = 'n';
	mov	(_buf + 0x0002),#0x6e
;	main.c:312: break;
;	main.c:313: case 3:
	sjmp	00108$
00103$:
;	main.c:314: buf[0] = 'T';
	mov	_buf,#0x54
;	main.c:315: buf[1] = 'u';
	mov	(_buf + 0x0001),#0x75
;	main.c:316: buf[2] = 'e';
	mov	(_buf + 0x0002),#0x65
;	main.c:317: break;
;	main.c:318: case 4:
	sjmp	00108$
00104$:
;	main.c:319: buf[0] = 'W';
	mov	_buf,#0x57
;	main.c:320: buf[1] = 'e';
	mov	(_buf + 0x0001),#0x65
;	main.c:321: buf[2] = 'd';
	mov	(_buf + 0x0002),#0x64
;	main.c:322: break;
;	main.c:323: case 5:
	sjmp	00108$
00105$:
;	main.c:324: buf[0] = 'T';
	mov	_buf,#0x54
;	main.c:325: buf[1] = 'h';
	mov	(_buf + 0x0001),#0x68
;	main.c:326: buf[2] = 'u';
	mov	(_buf + 0x0002),#0x75
;	main.c:327: break;
;	main.c:328: case 6:
	sjmp	00108$
00106$:
;	main.c:329: buf[0] = 'F';
	mov	_buf,#0x46
;	main.c:330: buf[1] = 'r';
	mov	(_buf + 0x0001),#0x72
;	main.c:331: buf[2] = 'i';
	mov	(_buf + 0x0002),#0x69
;	main.c:332: break;
;	main.c:333: case 7:
	sjmp	00108$
00107$:
;	main.c:334: buf[0] = 'S';
	mov	_buf,#0x53
;	main.c:335: buf[1] = 'a';
	mov	(_buf + 0x0001),#0x61
;	main.c:336: buf[2] = 't';
	mov	(_buf + 0x0002),#0x74
;	main.c:338: }
00108$:
;	main.c:339: date_str[9] = buf[0];
	mov	(_date_str + 0x0009),_buf
;	main.c:340: date_str[10] = buf[1];
	mov	(_date_str + 0x000a),(_buf + 0x0001)
;	main.c:341: date_str[11] = buf[2];
	mov	(_date_str + 0x000b),(_buf + 0x0002)
;	main.c:342: date_str[12] = '\0';
	mov	(_date_str + 0x000c),#0x00
;	main.c:345: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:346: lcd_string(time_str);
	mov	dptr,#_time_str
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:347: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:348: lcd_string(date_str);
	mov	dptr,#_date_str
	mov	b, #0x40
;	main.c:349: }
	ljmp	_lcd_string
;------------------------------------------------------------
;Allocation info for local variables in function 'step_motor'
;------------------------------------------------------------
;step          Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:351: void step_motor(int step) {
;	-----------------------------------------
;	 function step_motor
;	-----------------------------------------
_step_motor:
;	main.c:352: switch(step % 8) {
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
;	main.c:353: case 0:
00101$:
;	main.c:354: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:355: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:356: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:357: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:358: break;
;	main.c:359: case 1:
	ret
00102$:
;	main.c:360: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:361: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:362: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:363: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:364: break;
;	main.c:365: case 2:
	ret
00103$:
;	main.c:366: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:367: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:368: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:369: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:370: break;
;	main.c:371: case 3:
	ret
00104$:
;	main.c:372: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:373: IN2=1;
;	assignBit
	setb	_IN2
;	main.c:374: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:375: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:376: break;
;	main.c:377: case 4:
	ret
00105$:
;	main.c:378: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:379: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:380: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:381: IN4=0;
;	assignBit
	clr	_IN4
;	main.c:382: break;
;	main.c:383: case 5:
	ret
00106$:
;	main.c:384: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:385: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:386: IN3=1;
;	assignBit
	setb	_IN3
;	main.c:387: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:388: break;
;	main.c:389: case 6:
	ret
00107$:
;	main.c:390: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:391: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:392: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:393: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:394: break;
;	main.c:395: case 7:
	ret
00108$:
;	main.c:396: IN1=1;
;	assignBit
	setb	_IN1
;	main.c:397: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:398: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:399: IN4=1;
;	assignBit
	setb	_IN4
;	main.c:401: }
00110$:
;	main.c:402: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Settings'
;------------------------------------------------------------
;	main.c:405: void Settings(void) __interrupt(0) {
;	-----------------------------------------
;	 function Settings
;	-----------------------------------------
_Settings:
;	main.c:406: EX0 = 0;          // Disable external interrupt
;	assignBit
	clr	_EX0
;	main.c:407: edit_mode = 1;    // Signal main loop to enter edit mode
;	assignBit
	setb	_edit_mode
;	main.c:408: EX0 = 1;          // Re-enable interrupt
;	assignBit
	setb	_EX0
;	main.c:409: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_write_ram'
;------------------------------------------------------------
;value         Allocated with name '_ds1307_write_ram_PARM_2'
;addr          Allocated to registers r7 
;------------------------------------------------------------
;	main.c:411: void ds1307_write_ram(unsigned char addr, unsigned char value) {
;	-----------------------------------------
;	 function ds1307_write_ram
;	-----------------------------------------
_ds1307_write_ram:
	mov	r7, dpl
;	main.c:413: if (addr < 0x08 || addr > 0x3F) return;
	cjne	r7,#0x08,00112$
00112$:
	jc	00101$
	mov	a,r7
	add	a,#0xff - 0x3f
	jnc	00102$
00101$:
	ret
00102$:
;	main.c:415: i2c_start();
	push	ar7
	lcall	_i2c_start
;	main.c:416: i2c_write((DS1307_ADDRESS << 1) | 0);  // Write mode
	mov	dpl, #0xd0
	lcall	_i2c_write
	pop	ar7
;	main.c:417: i2c_write(addr);                       // RAM address
	mov	dpl, r7
	lcall	_i2c_write
;	main.c:418: i2c_write(value);                      // Data
	mov	dpl, _ds1307_write_ram_PARM_2
	lcall	_i2c_write
;	main.c:419: i2c_stop();
;	main.c:420: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_read_ram'
;------------------------------------------------------------
;addr          Allocated to registers r7 
;data          Allocated to registers r7 
;------------------------------------------------------------
;	main.c:423: unsigned char ds1307_read_ram(unsigned char addr) {
;	-----------------------------------------
;	 function ds1307_read_ram
;	-----------------------------------------
_ds1307_read_ram:
	mov	r7, dpl
;	main.c:426: if (addr < 0x08 || addr > 0x3F) return 0xFF; // Return invalid value if out of range
	cjne	r7,#0x08,00112$
00112$:
	jc	00101$
	mov	a,r7
	add	a,#0xff - 0x3f
	jnc	00102$
00101$:
	mov	dpl, #0xff
	ret
00102$:
;	main.c:428: i2c_start();
	push	ar7
	lcall	_i2c_start
;	main.c:429: i2c_write((DS1307_ADDRESS << 1) | 0);  // Write mode to set address pointer
	mov	dpl, #0xd0
	lcall	_i2c_write
	pop	ar7
;	main.c:430: i2c_write(addr);
	mov	dpl, r7
	lcall	_i2c_write
;	main.c:432: i2c_start();                           // Repeated start
	lcall	_i2c_start
;	main.c:433: i2c_write((DS1307_ADDRESS << 1) | 1);  // Read mode
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main.c:434: data = i2c_read(0);                    // No ACK
	mov	dpl, #0x00
	lcall	_i2c_read
	mov	r7, dpl
;	main.c:435: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	main.c:437: return data;
	mov	dpl, r7
;	main.c:438: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_alarm_to_ds1307'
;------------------------------------------------------------
;h             Allocated with name '_write_alarm_to_ds1307_PARM_2'
;m             Allocated with name '_write_alarm_to_ds1307_PARM_3'
;index         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:441: void write_alarm_to_ds1307(unsigned char index, unsigned char h, unsigned char m) {
;	-----------------------------------------
;	 function write_alarm_to_ds1307
;	-----------------------------------------
_write_alarm_to_ds1307:
;	main.c:442: ds1307_write_ram(ALARM_RAM_BASE + (index * 2) + 1, h);
	mov	a,dpl
	add	a,dpl
	mov	r7,a
	add	a,#0x09
	mov	dpl,a
	mov	_ds1307_write_ram_PARM_2,_write_alarm_to_ds1307_PARM_2
	push	ar7
	lcall	_ds1307_write_ram
	pop	ar7
;	main.c:443: ds1307_write_ram(ALARM_RAM_BASE + (index * 2) + 2, m);
	mov	a,#0x0a
	add	a, r7
	mov	dpl,a
	mov	_ds1307_write_ram_PARM_2,_write_alarm_to_ds1307_PARM_3
;	main.c:444: }
	ljmp	_ds1307_write_ram
;------------------------------------------------------------
;Allocation info for local variables in function 'load_alarms_from_ds1307'
;------------------------------------------------------------
;count_        Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	main.c:446: void load_alarms_from_ds1307(unsigned char count_) {
;	-----------------------------------------
;	 function load_alarms_from_ds1307
;	-----------------------------------------
_load_alarms_from_ds1307:
	mov	r7, dpl
;	main.c:447: for (unsigned char i = 0; i < count_; i++) {
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00105$
;	main.c:448: alarm_hours[i] = ds1307_read_ram(ALARM_RAM_BASE + (i * 2) + 1);
	mov	a,r6
	add	a, #_alarm_hours
	mov	r1,a
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	mov	r5,a
	add	a,#0x09
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_ds1307_read_ram
	mov	a, dpl
	pop	ar1
	pop	ar5
	pop	ar6
	mov	@r1,a
;	main.c:449: alarm_minutes[i] = ds1307_read_ram(ALARM_RAM_BASE + (i * 2) + 2);
	mov	a,r6
	add	a, #_alarm_minutes
	mov	r1,a
	mov	a,#0x0a
	add	a, r5
	mov	dpl,a
	push	ar6
	push	ar1
	lcall	_ds1307_read_ram
	mov	a, dpl
	pop	ar1
	pop	ar6
	pop	ar7
	mov	@r1,a
;	main.c:447: for (unsigned char i = 0; i < count_; i++) {
	inc	r6
	sjmp	00103$
00105$:
;	main.c:451: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_clock'
;------------------------------------------------------------
;	main.c:453: void set_clock() {
;	-----------------------------------------
;	 function set_clock
;	-----------------------------------------
_set_clock:
;	main.c:454: index = 0;
	clr	a
	mov	_index,a
	mov	(_index + 1),a
;	main.c:455: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
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
;	main.c:457: while (index < 7) {
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
;	main.c:458: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:459: if (!up) {
	jb	_up,00104$
;	main.c:460: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:461: time_date[index]++;
	mov	a,_index
	add	a, #_time_date
	mov	r1,a
	inc	@r1
	mov	a,@r1
;	main.c:462: if (time_date[index] >= max_vals[index]) {
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
;	main.c:463: time_date[index] = min_vals[index];
	mov	a,_index
	add	a, #_min_vals
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
00102$:
;	main.c:465: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
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
;	main.c:466: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00104$:
;	main.c:469: if (!down) {
	jb	_down,00109$
;	main.c:470: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:471: if (time_date[index] <= min_vals[index]) {
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
;	main.c:472: time_date[index] = max_vals[index] - 1;
	mov	a,_index
	add	a, #_max_vals
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	@r1,a
	sjmp	00107$
00106$:
;	main.c:474: time_date[index]--;
	mov	a,@r1
	dec	a
	mov	@r1,a
00107$:
;	main.c:476: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
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
;	main.c:477: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00109$:
;	main.c:480: if (!next) {
	jb	_next,00111$
;	main.c:481: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:482: index = index+1;
	inc	_index
	clr	a
	cjne	a,_index,00183$
	inc	(_index + 1)
00183$:
;	main.c:483: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00111$:
;	main.c:486: if (!back) {
	jb	_back,00113$
;	main.c:487: delay(10000); // debounce
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:488: index = index-1;
	dec	_index
	mov	a,#0xff
	cjne	a,_index,00185$
	dec	(_index + 1)
00185$:
;	main.c:489: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00113$:
;	main.c:491: if (++idle_counter >30) {
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
;	main.c:492: break;
00118$:
;	main.c:495: if (idle_counter <= 30) {
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00120$
;	main.c:496: ds1307_set_time_date(time_date[0], time_date[1], time_date[2], time_date[3] + 1, time_date[4], time_date[5], time_date[6]);
	mov	dpl,_time_date
	mov	_ds1307_set_time_date_PARM_2,(_time_date + 0x0001)
	mov	_ds1307_set_time_date_PARM_3,(_time_date + 0x0002)
	mov	a,(_time_date + 0x0003)
	inc	a
	mov	_ds1307_set_time_date_PARM_4,a
	mov	_ds1307_set_time_date_PARM_5,(_time_date + 0x0004)
	mov	_ds1307_set_time_date_PARM_6,(_time_date + 0x0005)
	mov	_ds1307_set_time_date_PARM_7,(_time_date + 0x0006)
	lcall	_ds1307_set_time_date
00120$:
;	main.c:499: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:500: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_alarms'
;------------------------------------------------------------
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:503: void set_alarms() {
;	-----------------------------------------
;	 function set_alarms
;	-----------------------------------------
_set_alarms:
;	main.c:505: lcd_clear();
	lcall	_lcd_clear
;	main.c:506: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:507: lcd_string(" How many alarms");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:508: while (1) {
00114$:
;	main.c:509: lcd_goto(1, 6);
	mov	_lcd_goto_PARM_2,#0x06
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:510: lcd_char(num_alarms + '0');
	mov	r7,_num_alarms
	mov	a,#0x30
	add	a, r7
	mov	dpl,a
	lcall	_lcd_char
;	main.c:511: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:513: if (!up) {
	jb	_up,00104$
;	main.c:514: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:515: if (num_alarms < NUM_ALARMS) num_alarms++;
	mov	a,#0x100 - 0x08
	add	a,_num_alarms
	jc	00102$
	inc	_num_alarms
00102$:
;	main.c:516: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00104$:
;	main.c:519: if (!down) {
	jb	_down,00108$
;	main.c:520: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:521: if (num_alarms > 1) num_alarms--;
	mov	a,_num_alarms
	add	a,#0xff - 0x01
	jnc	00106$
	dec	_num_alarms
00106$:
;	main.c:522: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00108$:
;	main.c:525: if (!next) {
	jb	_next,00110$
;	main.c:526: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:527: ds1307_write_ram(0x08, num_alarms);
	mov	_ds1307_write_ram_PARM_2,_num_alarms
	mov	dpl, #0x08
	lcall	_ds1307_write_ram
;	main.c:528: break;
	sjmp	00174$
00110$:
;	main.c:531: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00295$
	inc	(_idle_counter + 1)
00295$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jnc	00114$
;	main.c:532: lcd_clear();
	lcall	_lcd_clear
;	main.c:533: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:534: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:535: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:536: lcd_clear();
	lcall	_lcd_clear
;	main.c:537: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:538: return;  //time exceeded
	ret
;	main.c:543: for (unsigned char i = 0; i < num_alarms; i++) {
00174$:
	mov	r7,#0x00
00144$:
	clr	c
	mov	a,r7
	subb	a,_num_alarms
	jc	00297$
	ljmp	00142$
00297$:
;	main.c:544: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:547: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	main.c:548: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:549: lcd_string(" Set Hour Alarm ");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:550: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:551: lcd_string("Alarm ");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar7
;	main.c:552: lcd_char('1' + i);
	mov	ar6,r7
	mov	a,#0x31
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_lcd_char
	pop	ar7
;	main.c:554: while (1) {
00127$:
;	main.c:555: lcd_goto(1, 9);
	mov	_lcd_goto_PARM_2,#0x09
	mov	dpl, #0x01
	push	ar7
	lcall	_lcd_goto
;	main.c:556: int_to_str(hr, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _hr
	lcall	_int_to_str
;	main.c:557: lcd_string(buf);
	mov	dptr,#_buf
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:558: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	main.c:560: if (!up) {
	jb	_up,00117$
;	main.c:561: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
;	main.c:562: hr = (hr + 1) % 24;
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
;	main.c:563: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00117$:
;	main.c:565: if (!down) {
	jb	_down,00119$
;	main.c:566: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:567: hr = (hr == 0) ? 23 : hr - 1;
	mov	a,_hr
	jnz	00148$
	mov	r5,#0x17
	sjmp	00149$
00148$:
	mov	r4,_hr
	dec	r4
	mov	a,r4
	mov	r5,a
	rlc	a
	subb	a,acc
00149$:
	mov	_hr,r5
;	main.c:568: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00119$:
;	main.c:570: if (!next) {
	jb	_next,00121$
;	main.c:571: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:572: break;
	sjmp	00128$
00121$:
;	main.c:574: if (!back) return;
	jb	_back,00123$
	ret
00123$:
;	main.c:576: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00303$
	inc	(_idle_counter + 1)
00303$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00304$
	ljmp	00127$
00304$:
;	main.c:577: lcd_clear();
	lcall	_lcd_clear
;	main.c:578: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:579: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:580: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:581: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:582: return;  //time exceeded
	ret
00128$:
;	main.c:587: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:588: lcd_clear();
	push	ar7
	lcall	_lcd_clear
;	main.c:589: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:590: lcd_string(" Set Min Alarm ");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:591: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:592: lcd_string("Alarm ");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar7
;	main.c:593: lcd_char('1' + i);
	mov	ar6,r7
	mov	a,#0x31
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_lcd_char
	pop	ar7
;	main.c:595: while (1) {
00140$:
;	main.c:596: lcd_goto(1, 9);
	mov	_lcd_goto_PARM_2,#0x09
	mov	dpl, #0x01
	push	ar7
	lcall	_lcd_goto
;	main.c:597: int_to_str(min, buf);
	mov	_int_to_str_PARM_2,#_buf
	mov	(_int_to_str_PARM_2 + 1),#0x00
	mov	(_int_to_str_PARM_2 + 2),#0x40
	mov	dpl, _min
	lcall	_int_to_str
;	main.c:598: lcd_string(buf);
	mov	dptr,#_buf
	mov	b, #0x40
	lcall	_lcd_string
;	main.c:599: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
	pop	ar7
;	main.c:601: if (!up) {
	jb	_up,00130$
;	main.c:602: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
;	main.c:603: min = (min + 1) % 60;
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
;	main.c:604: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00130$:
;	main.c:606: if (!down) {
	jb	_down,00132$
;	main.c:607: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:608: min = (min == 0) ? 59 : min - 1;
	mov	a,_min
	jnz	00150$
	mov	r5,#0x3b
	sjmp	00151$
00150$:
	mov	r4,_min
	dec	r4
	mov	a,r4
	mov	r5,a
	rlc	a
	subb	a,acc
00151$:
	mov	_min,r5
;	main.c:609: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
00132$:
;	main.c:611: if (!next) {
	jb	_next,00134$
;	main.c:612: delay(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:613: break;
	sjmp	00141$
00134$:
;	main.c:615: if (!back) return;
	jb	_back,00136$
	ret
00136$:
;	main.c:617: if (++idle_counter > 30) {
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00310$
	inc	(_idle_counter + 1)
00310$:
	clr	c
	mov	a,#0x1e
	subb	a,_idle_counter
	clr	a
	subb	a,(_idle_counter + 1)
	jc	00311$
	ljmp	00140$
00311$:
;	main.c:618: lcd_clear();
	lcall	_lcd_clear
;	main.c:619: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:620: lcd_string(" Time limit exc!");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:621: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	main.c:622: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:623: return;
	ret
00141$:
;	main.c:627: alarm_hours[i] = hr;
	mov	a,r7
	add	a, #_alarm_hours
	mov	r0,a
	mov	@r0,_hr
;	main.c:628: alarm_minutes[i] = min;
	mov	a,r7
	add	a, #_alarm_minutes
	mov	r0,a
	mov	@r0,_min
;	main.c:629: write_alarm_to_ds1307(i, hr, min);
	mov	_write_alarm_to_ds1307_PARM_2,_hr
	mov	_write_alarm_to_ds1307_PARM_3,_min
	mov	dpl, r7
	push	ar7
	lcall	_write_alarm_to_ds1307
;	main.c:631: lcd_clear();
	lcall	_lcd_clear
;	main.c:632: lcd_string(" Alarm Saved");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:633: delay(25000);
	mov	dptr,#0x61a8
	lcall	_delay
	pop	ar7
;	main.c:543: for (unsigned char i = 0; i < num_alarms; i++) {
	inc	r7
	ljmp	00144$
00142$:
;	main.c:636: lcd_clear();
	lcall	_lcd_clear
;	main.c:637: lcd_string(" All Alarms Saved");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:638: delay(25000);
	mov	dptr,#0x61a8
	lcall	_delay
;	main.c:639: lcd_clear();
;	main.c:640: }
	ljmp	_lcd_clear
;------------------------------------------------------------
;Allocation info for local variables in function 'touch'
;------------------------------------------------------------
;	main.c:642: void touch(void) __interrupt(2) {
;	-----------------------------------------
;	 function touch
;	-----------------------------------------
_touch:
;	main.c:643: EX1 = 0;
;	assignBit
	clr	_EX1
;	main.c:644: touch_sensor = 1;
;	assignBit
	setb	_touch_sensor
;	main.c:645: EX1 = 1;
;	assignBit
	setb	_EX1
;	main.c:646: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'check_alarms'
;------------------------------------------------------------
;m             Allocated with name '_check_alarms_PARM_2'
;s             Allocated with name '_check_alarms_PARM_3'
;h             Allocated to registers r7 
;i             Allocated to registers r6 
;j             Allocated with name '_check_alarms_j_10000_125'
;k             Allocated to registers 
;timeout       Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:648: void check_alarms(unsigned char h, unsigned char m, unsigned char s) {
;	-----------------------------------------
;	 function check_alarms
;	-----------------------------------------
_check_alarms:
	mov	r7, dpl
;	main.c:651: for (i = 0; i < NUM_ALARMS; i++) {
	mov	r6,#0x00
	clr	c
	mov	a,_check_alarms_PARM_3
	subb	a,#0x02
	clr	a
	rlc	a
	mov	r5,a
	mov	r4,#0x00
00113$:
;	main.c:652: if (h == alarm_hours[i] && m == alarm_minutes[i] && s < 2) {
	mov	a,r4
	add	a, #_alarm_hours
	mov	r1,a
	mov	ar3,@r1
	mov	a,r7
	cjne	a,ar3,00173$
	sjmp	00174$
00173$:
	ljmp	00114$
00174$:
	mov	a,r4
	add	a, #_alarm_minutes
	mov	r1,a
	mov	a,@r1
	cjne	a,_check_alarms_PARM_2,00175$
	sjmp	00176$
00175$:
	ljmp	00114$
00176$:
	mov	a,r5
	jnz	00177$
	ljmp	00114$
00177$:
;	main.c:653: lcd_clear();
	push	ar6
	lcall	_lcd_clear
;	main.c:654: lcd_goto(0, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:655: lcd_string(" Alarm ");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar6
;	main.c:656: lcd_char('1' + i);  // Optional: Show which alarm triggered
	mov	ar3,r6
	mov	a,#0x31
	add	a, r3
	mov	dpl,a
	lcall	_lcd_char
;	main.c:657: lcd_goto(1, 0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:658: lcd_string("Take Medicine");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:659: BUZZER = 1;
;	assignBit
	setb	_BUZZER
;	main.c:660: k = ds1307_read_ram(0x3F);
	mov	dpl, #0x3f
	lcall	_ds1307_read_ram
;	main.c:662: ds1307_write_ram(0x3F, j);
	mov	_ds1307_write_ram_PARM_2,#0x00
	mov	dpl, #0x3f
	lcall	_ds1307_write_ram
;	main.c:663: for(j = 0; j < STEPS; j++) {
	mov	_check_alarms_j_10000_125,#0x00
00111$:
;	main.c:664: step_motor(j);
	mov	r2,_check_alarms_j_10000_125
	mov	r3,#0x00
	mov	dpl, r2
	mov	dph, r3
	lcall	_step_motor
;	main.c:665: delay_ms(3);  // Adjust delay for speed
	mov	dptr,#0x0003
	lcall	_delay_ms
;	main.c:663: for(j = 0; j < STEPS; j++) {
	inc	_check_alarms_j_10000_125
	mov	a,#0x100 - 0x89
	add	a,_check_alarms_j_10000_125
	jnc	00111$
;	main.c:667: IN1=0;
;	assignBit
	clr	_IN1
;	main.c:668: IN2=0;
;	assignBit
	clr	_IN2
;	main.c:669: IN3=0;
;	assignBit
	clr	_IN3
;	main.c:670: IN4=0; // to save power
;	assignBit
	clr	_IN4
;	main.c:674: while (down && timeout < 5000) {  // ~5 sec timeout
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	jnb	_down,00105$
	clr	c
	mov	a,r2
	subb	a,#0x88
	mov	a,r3
	subb	a,#0x13
	jnc	00105$
;	main.c:675: delay_ms(1);
	mov	dptr,#0x0001
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
;	main.c:676: timeout++;
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00105$:
;	main.c:679: lcd_clear();
	lcall	_lcd_clear
;	main.c:680: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:681: break;  // Prevent multiple alarms triggering at once
	ret
00114$:
;	main.c:651: for (i = 0; i < NUM_ALARMS; i++) {
	inc	r4
	mov	ar6,r4
	cjne	r4,#0x08,00182$
00182$:
	jnc	00183$
	ljmp	00113$
00183$:
;	main.c:684: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_motor_position'
;------------------------------------------------------------
;count         Allocated to registers 
;total_steps   Allocated to registers 
;correction_steps Allocated to registers r6 r7 
;remainder     Allocated to registers r4 r5 
;ii            Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:686: void reset_motor_position(void) {
;	-----------------------------------------
;	 function reset_motor_position
;	-----------------------------------------
_reset_motor_position:
;	main.c:691: count = ds1307_read_ram(0x3F);
	mov	dpl, #0x3f
	lcall	_ds1307_read_ram
	mov	r7, dpl
;	main.c:694: total_steps = (unsigned long)count * 137;
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0089
	lcall	__mulint
	mov	a, dpl
	mov	b, dph
;	main.c:697: remainder = total_steps % 4096;
	mov	r6,a
	anl	b,#0x0f
	mov	r7,b
	mov	ar4,r6
	mov	ar5,r7
;	main.c:700: if (remainder != 0) {
	mov	a,r6
	orl	a,r7
	jz	00103$
;	main.c:701: correction_steps = 4096 - remainder;
	clr	a
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,#0x10
	subb	a,r5
	mov	r7,a
;	main.c:704: for(ii=0; ii<correction_steps; ii++) {
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00101$
;	main.c:705: step_motor(ii);
	mov	dpl, r4
	mov	dph, r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_step_motor
;	main.c:706: delay_ms(3);
	mov	dptr,#0x0003
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:704: for(ii=0; ii<correction_steps; ii++) {
	inc	r4
	cjne	r4,#0x00,00105$
	inc	r5
	sjmp	00105$
00101$:
;	main.c:708: IN1 = 0;
;	assignBit
	clr	_IN1
;	main.c:709: IN2 = 0;
;	assignBit
	clr	_IN2
;	main.c:710: IN3 = 0;
;	assignBit
	clr	_IN3
;	main.c:711: IN4 = 0;
;	assignBit
	clr	_IN4
00103$:
;	main.c:715: ds1307_write_ram(0x3F, 0);
	mov	_ds1307_write_ram_PARM_2,#0x00
	mov	dpl, #0x3f
;	main.c:716: }
	ljmp	_ds1307_write_ram
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;checker       Allocated with name '_main_checker_10001_141'
;------------------------------------------------------------
;	main.c:719: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:720: EA  = 1;   // Enable global interrupts
;	assignBit
	setb	_EA
;	main.c:721: EX0 = 1;   // Enable INT0 (P3.2)
;	assignBit
	setb	_EX0
;	main.c:722: IT0 = 1;   // Set INT0 to edge-triggered
;	assignBit
	setb	_IT0
;	main.c:723: EX1 = 1;   // Enable INT1 (P3.3)
;	assignBit
	setb	_EX1
;	main.c:724: IT1 = 1;   // Set INT1 to edge-triggered
;	assignBit
	setb	_IT1
;	main.c:726: lcd_init();  // initialize lcd
	lcall	_lcd_init
;	main.c:727: i2c_init();  // initialize i2c communication prototcol
	lcall	_i2c_init
;	main.c:728: ds1307_init();  //initialize ds1307 rtc
	lcall	_ds1307_init
;	main.c:729: num_alarms = ds1307_read_ram(0x08);
	mov	dpl, #0x08
	lcall	_ds1307_read_ram
;	main.c:730: load_alarms_from_ds1307(num_alarms);
	mov  _num_alarms,dpl
	lcall	_load_alarms_from_ds1307
;	main.c:731: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:734: checker[0] = ds1307_read_ram(0x3B);
	mov	dpl, #0x3b
	lcall	_ds1307_read_ram
	mov	a, dpl
	mov	_main_checker_10001_141,a
;	main.c:735: checker[1] = ds1307_read_ram(0x3C);
	mov	dpl, #0x3c
	lcall	_ds1307_read_ram
	mov	a, dpl
	mov	(_main_checker_10001_141 + 0x0001),a
;	main.c:736: checker[2] = ds1307_read_ram(0x3D);
	mov	dpl, #0x3d
	lcall	_ds1307_read_ram
	mov	a, dpl
	mov	(_main_checker_10001_141 + 0x0002),a
;	main.c:737: checker[3] = ds1307_read_ram(0x3E);
	mov	dpl, #0x3e
	lcall	_ds1307_read_ram
	mov	a, dpl
	mov	(_main_checker_10001_141 + 0x0003),a
;	main.c:739: if(!(checker[0] == 'I' && checker[1] == 'N' && checker[2] == 'I' && checker[3] == 'T')) {
	mov	a,#0x49
	cjne	a,_main_checker_10001_141,00101$
	mov	a,#0x4e
	cjne	a,(_main_checker_10001_141 + 0x0001),00101$
	mov	a,#0x49
	cjne	a,(_main_checker_10001_141 + 0x0002),00101$
	mov	a,#0x54
	cjne	a,(_main_checker_10001_141 + 0x0003),00230$
	sjmp	00130$
00230$:
00101$:
;	main.c:740: ds1307_write_ram(0x3B, 'I');
	mov	_ds1307_write_ram_PARM_2,#0x49
	mov	dpl, #0x3b
	lcall	_ds1307_write_ram
;	main.c:741: ds1307_write_ram(0x3C, 'N');
	mov	_ds1307_write_ram_PARM_2,#0x4e
	mov	dpl, #0x3c
	lcall	_ds1307_write_ram
;	main.c:742: ds1307_write_ram(0x3D, 'I');
	mov	_ds1307_write_ram_PARM_2,#0x49
	mov	dpl, #0x3d
	lcall	_ds1307_write_ram
;	main.c:743: ds1307_write_ram(0x3E, 'T');
	mov	_ds1307_write_ram_PARM_2,#0x54
	mov	dpl, #0x3e
	lcall	_ds1307_write_ram
;	main.c:744: ds1307_write_ram(0x3F, 0x0);
	mov	_ds1307_write_ram_PARM_2,#0x00
	mov	dpl, #0x3f
	lcall	_ds1307_write_ram
;	main.c:748: while (1) {
00130$:
;	main.c:750: if (!RESET) {
	jb	_RESET,00107$
;	main.c:751: reset_motor_position();
	lcall	_reset_motor_position
00107$:
;	main.c:755: if (!edit_mode && !touch_sensor) {
	jb	_edit_mode,00126$
	jb	_touch_sensor,00126$
;	main.c:756: ds1307_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
	mov	_ds1307_get_time_date_PARM_2,#_m
	mov	(_ds1307_get_time_date_PARM_2 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_2 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_3,#_s
	mov	(_ds1307_get_time_date_PARM_3 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_3 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_4,#_day
	mov	(_ds1307_get_time_date_PARM_4 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_4 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_5,#_d
	mov	(_ds1307_get_time_date_PARM_5 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_5 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_6,#_mo
	mov	(_ds1307_get_time_date_PARM_6 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_6 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_7,#_y
	mov	(_ds1307_get_time_date_PARM_7 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_7 + 2),#0x40
	mov	dptr,#_h
	mov	b, #0x40
	lcall	_ds1307_get_time_date
;	main.c:758: check_alarms(h, m, s);
	mov	_check_alarms_PARM_2,_m
	mov	_check_alarms_PARM_3,_s
	mov	dpl, _h
	lcall	_check_alarms
	sjmp	00130$
00126$:
;	main.c:762: else if (edit_mode) {
	jnb	_edit_mode,00123$
;	main.c:763: lcd_clear();
	lcall	_lcd_clear
;	main.c:764: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:765: lcd_string(" -> to set clock");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:766: lcd_goto(1,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_lcd_goto
;	main.c:767: lcd_string(" <- to set alarm");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:768: while(next && back);
00109$:
	jnb	_next,00111$
	jb	_back,00109$
00111$:
;	main.c:769: lcd_clear();
	lcall	_lcd_clear
;	main.c:770: lcd_goto(0,0);
	mov	_lcd_goto_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_lcd_goto
;	main.c:771: if (!next) {
	jb	_next,00115$
;	main.c:772: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:773: set_clock();
	lcall	_set_clock
	sjmp	00116$
00115$:
;	main.c:775: else if (!back) {
	jb	_back,00116$
;	main.c:776: delay(10000);
	mov	dptr,#0x2710
	lcall	_delay
;	main.c:777: set_alarms();
	lcall	_set_alarms
00116$:
;	main.c:779: edit_mode = 0;
;	assignBit
	clr	_edit_mode
	ljmp	00130$
00123$:
;	main.c:782: else if(touch_sensor) {
	jb	_touch_sensor,00239$
	ljmp	00130$
00239$:
;	main.c:783: idle_counter = 0;
	clr	a
	mov	_idle_counter,a
	mov	(_idle_counter + 1),a
;	main.c:784: while(++idle_counter < 1000) {
00117$:
	inc	_idle_counter
	clr	a
	cjne	a,_idle_counter,00240$
	inc	(_idle_counter + 1)
00240$:
	clr	c
	mov	a,_idle_counter
	subb	a,#0xe8
	mov	a,(_idle_counter + 1)
	subb	a,#0x03
	jnc	00119$
;	main.c:785: ds1307_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
	mov	_ds1307_get_time_date_PARM_2,#_m
	mov	(_ds1307_get_time_date_PARM_2 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_2 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_3,#_s
	mov	(_ds1307_get_time_date_PARM_3 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_3 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_4,#_day
	mov	(_ds1307_get_time_date_PARM_4 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_4 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_5,#_d
	mov	(_ds1307_get_time_date_PARM_5 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_5 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_6,#_mo
	mov	(_ds1307_get_time_date_PARM_6 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_6 + 2),#0x40
	mov	_ds1307_get_time_date_PARM_7,#_y
	mov	(_ds1307_get_time_date_PARM_7 + 1),#0x00
	mov	(_ds1307_get_time_date_PARM_7 + 2),#0x40
	mov	dptr,#_h
	mov	b, #0x40
	lcall	_ds1307_get_time_date
;	main.c:786: display(h, m, s, d, mo, y, day);
	mov	_display_PARM_2,_m
	mov	_display_PARM_3,_s
	mov	_display_PARM_4,_d
	mov	_display_PARM_5,_mo
	mov	_display_PARM_6,_y
	mov	_display_PARM_7,_day
	mov	dpl, _h
	lcall	_display
;	main.c:789: check_alarms(h, m, s);
	mov	_check_alarms_PARM_2,_m
	mov	_check_alarms_PARM_3,_s
	mov	dpl, _h
	lcall	_check_alarms
	sjmp	00117$
00119$:
;	main.c:791: touch_sensor = 0;
;	assignBit
	clr	_touch_sensor
;	main.c:795: }
	ljmp	00130$
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
	.ascii " Alarm "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Take Medicine"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " -> to set clock"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii " <- to set alarm"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

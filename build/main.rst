                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.2 #15373 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _int_to_str_PARM_2
                                     12 	.globl _main
                                     13 	.globl _reset_motor_position
                                     14 	.globl _check_alarms
                                     15 	.globl _touch
                                     16 	.globl _set_alarms
                                     17 	.globl _set_clock
                                     18 	.globl _load_alarms_from_ds1307
                                     19 	.globl _write_alarm_to_ds1307
                                     20 	.globl _ds1307_read_ram
                                     21 	.globl _ds1307_write_ram
                                     22 	.globl _Settings
                                     23 	.globl _step_motor
                                     24 	.globl _display
                                     25 	.globl _ds1307_get_time_date
                                     26 	.globl _ds1307_set_time_date
                                     27 	.globl _ds1307_init
                                     28 	.globl _bcd_to_dec
                                     29 	.globl _dec_to_bcd
                                     30 	.globl _i2c_read
                                     31 	.globl _i2c_write
                                     32 	.globl _i2c_stop
                                     33 	.globl _i2c_start
                                     34 	.globl _i2c_init
                                     35 	.globl _int_to_str
                                     36 	.globl _lcd_init
                                     37 	.globl _lcd_goto
                                     38 	.globl _lcd_clear
                                     39 	.globl _lcd_string
                                     40 	.globl _lcd_char
                                     41 	.globl _lcd_cmd
                                     42 	.globl _send_nibble
                                     43 	.globl _pulse_enable
                                     44 	.globl _delay_ms
                                     45 	.globl _delay
                                     46 	.globl _BUZZER
                                     47 	.globl _IN4
                                     48 	.globl _IN3
                                     49 	.globl _IN2
                                     50 	.globl _IN1
                                     51 	.globl _SCL
                                     52 	.globl _SDA
                                     53 	.globl _back
                                     54 	.globl _next
                                     55 	.globl _down
                                     56 	.globl _up
                                     57 	.globl _alarm
                                     58 	.globl _clock
                                     59 	.globl _RESET
                                     60 	.globl _LCD_D7
                                     61 	.globl _LCD_D6
                                     62 	.globl _LCD_D5
                                     63 	.globl _LCD_D4
                                     64 	.globl _LCD_EN
                                     65 	.globl _LCD_RW
                                     66 	.globl _LCD_RS
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _FL
                                     74 	.globl _P
                                     75 	.globl _TF2
                                     76 	.globl _EXF2
                                     77 	.globl _RCLK
                                     78 	.globl _TCLK
                                     79 	.globl _EXEN2
                                     80 	.globl _TR2
                                     81 	.globl _C_T2
                                     82 	.globl _CP_RL2
                                     83 	.globl _T2CON_7
                                     84 	.globl _T2CON_6
                                     85 	.globl _T2CON_5
                                     86 	.globl _T2CON_4
                                     87 	.globl _T2CON_3
                                     88 	.globl _T2CON_2
                                     89 	.globl _T2CON_1
                                     90 	.globl _T2CON_0
                                     91 	.globl _PT2
                                     92 	.globl _PS
                                     93 	.globl _PT1
                                     94 	.globl _PX1
                                     95 	.globl _PT0
                                     96 	.globl _PX0
                                     97 	.globl _RD
                                     98 	.globl _WR
                                     99 	.globl _T1
                                    100 	.globl _T0
                                    101 	.globl _INT1
                                    102 	.globl _INT0
                                    103 	.globl _TXD
                                    104 	.globl _RXD
                                    105 	.globl _P3_7
                                    106 	.globl _P3_6
                                    107 	.globl _P3_5
                                    108 	.globl _P3_4
                                    109 	.globl _P3_3
                                    110 	.globl _P3_2
                                    111 	.globl _P3_1
                                    112 	.globl _P3_0
                                    113 	.globl _EA
                                    114 	.globl _ET2
                                    115 	.globl _ES
                                    116 	.globl _ET1
                                    117 	.globl _EX1
                                    118 	.globl _ET0
                                    119 	.globl _EX0
                                    120 	.globl _P2_7
                                    121 	.globl _P2_6
                                    122 	.globl _P2_5
                                    123 	.globl _P2_4
                                    124 	.globl _P2_3
                                    125 	.globl _P2_2
                                    126 	.globl _P2_1
                                    127 	.globl _P2_0
                                    128 	.globl _SM0
                                    129 	.globl _SM1
                                    130 	.globl _SM2
                                    131 	.globl _REN
                                    132 	.globl _TB8
                                    133 	.globl _RB8
                                    134 	.globl _TI
                                    135 	.globl _RI
                                    136 	.globl _T2EX
                                    137 	.globl _T2
                                    138 	.globl _P1_7
                                    139 	.globl _P1_6
                                    140 	.globl _P1_5
                                    141 	.globl _P1_4
                                    142 	.globl _P1_3
                                    143 	.globl _P1_2
                                    144 	.globl _P1_1
                                    145 	.globl _P1_0
                                    146 	.globl _TF1
                                    147 	.globl _TR1
                                    148 	.globl _TF0
                                    149 	.globl _TR0
                                    150 	.globl _IE1
                                    151 	.globl _IT1
                                    152 	.globl _IE0
                                    153 	.globl _IT0
                                    154 	.globl _P0_7
                                    155 	.globl _P0_6
                                    156 	.globl _P0_5
                                    157 	.globl _P0_4
                                    158 	.globl _P0_3
                                    159 	.globl _P0_2
                                    160 	.globl _P0_1
                                    161 	.globl _P0_0
                                    162 	.globl _B
                                    163 	.globl _A
                                    164 	.globl _ACC
                                    165 	.globl _PSW
                                    166 	.globl _TH2
                                    167 	.globl _TL2
                                    168 	.globl _RCAP2H
                                    169 	.globl _RCAP2L
                                    170 	.globl _T2MOD
                                    171 	.globl _T2CON
                                    172 	.globl _IP
                                    173 	.globl _P3
                                    174 	.globl _IE
                                    175 	.globl _P2
                                    176 	.globl _SBUF
                                    177 	.globl _SCON
                                    178 	.globl _P1
                                    179 	.globl _TH1
                                    180 	.globl _TH0
                                    181 	.globl _TL1
                                    182 	.globl _TL0
                                    183 	.globl _TMOD
                                    184 	.globl _TCON
                                    185 	.globl _PCON
                                    186 	.globl _DPH
                                    187 	.globl _DPL
                                    188 	.globl _SP
                                    189 	.globl _P0
                                    190 	.globl _alarm_check
                                    191 	.globl _clock_check
                                    192 	.globl _touch_sensor
                                    193 	.globl _edit_mode
                                    194 	.globl _min_vals
                                    195 	.globl _max_vals
                                    196 	.globl _alarm_minutes
                                    197 	.globl _alarm_hours
                                    198 	.globl _check_alarms_PARM_3
                                    199 	.globl _check_alarms_PARM_2
                                    200 	.globl _write_alarm_to_ds1307_PARM_3
                                    201 	.globl _write_alarm_to_ds1307_PARM_2
                                    202 	.globl _ds1307_write_ram_PARM_2
                                    203 	.globl _display_PARM_7
                                    204 	.globl _display_PARM_6
                                    205 	.globl _display_PARM_5
                                    206 	.globl _display_PARM_4
                                    207 	.globl _display_PARM_3
                                    208 	.globl _display_PARM_2
                                    209 	.globl _ds1307_get_time_date_PARM_7
                                    210 	.globl _ds1307_get_time_date_PARM_6
                                    211 	.globl _ds1307_get_time_date_PARM_5
                                    212 	.globl _ds1307_get_time_date_PARM_4
                                    213 	.globl _ds1307_get_time_date_PARM_3
                                    214 	.globl _ds1307_get_time_date_PARM_2
                                    215 	.globl _ds1307_set_time_date_PARM_7
                                    216 	.globl _ds1307_set_time_date_PARM_6
                                    217 	.globl _ds1307_set_time_date_PARM_5
                                    218 	.globl _ds1307_set_time_date_PARM_4
                                    219 	.globl _ds1307_set_time_date_PARM_3
                                    220 	.globl _ds1307_set_time_date_PARM_2
                                    221 	.globl _lcd_goto_PARM_2
                                    222 	.globl _count_down
                                    223 	.globl _min
                                    224 	.globl _hr
                                    225 	.globl _buf
                                    226 	.globl _date_str
                                    227 	.globl _time_str
                                    228 	.globl _index
                                    229 	.globl _alarm_index
                                    230 	.globl _day
                                    231 	.globl _y
                                    232 	.globl _mo
                                    233 	.globl _d
                                    234 	.globl _s
                                    235 	.globl _m
                                    236 	.globl _h
                                    237 	.globl _idle_counter
                                    238 	.globl _num_alarms
                                    239 	.globl _time_date
                                    240 	.globl _dummy
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           000080   246 _P0	=	0x0080
                           000081   247 _SP	=	0x0081
                           000082   248 _DPL	=	0x0082
                           000083   249 _DPH	=	0x0083
                           000087   250 _PCON	=	0x0087
                           000088   251 _TCON	=	0x0088
                           000089   252 _TMOD	=	0x0089
                           00008A   253 _TL0	=	0x008a
                           00008B   254 _TL1	=	0x008b
                           00008C   255 _TH0	=	0x008c
                           00008D   256 _TH1	=	0x008d
                           000090   257 _P1	=	0x0090
                           000098   258 _SCON	=	0x0098
                           000099   259 _SBUF	=	0x0099
                           0000A0   260 _P2	=	0x00a0
                           0000A8   261 _IE	=	0x00a8
                           0000B0   262 _P3	=	0x00b0
                           0000B8   263 _IP	=	0x00b8
                           0000C8   264 _T2CON	=	0x00c8
                           0000C9   265 _T2MOD	=	0x00c9
                           0000CA   266 _RCAP2L	=	0x00ca
                           0000CB   267 _RCAP2H	=	0x00cb
                           0000CC   268 _TL2	=	0x00cc
                           0000CD   269 _TH2	=	0x00cd
                           0000D0   270 _PSW	=	0x00d0
                           0000E0   271 _ACC	=	0x00e0
                           0000E0   272 _A	=	0x00e0
                           0000F0   273 _B	=	0x00f0
                                    274 ;--------------------------------------------------------
                                    275 ; special function bits
                                    276 ;--------------------------------------------------------
                                    277 	.area RSEG    (ABS,DATA)
      000000                        278 	.org 0x0000
                           000080   279 _P0_0	=	0x0080
                           000081   280 _P0_1	=	0x0081
                           000082   281 _P0_2	=	0x0082
                           000083   282 _P0_3	=	0x0083
                           000084   283 _P0_4	=	0x0084
                           000085   284 _P0_5	=	0x0085
                           000086   285 _P0_6	=	0x0086
                           000087   286 _P0_7	=	0x0087
                           000088   287 _IT0	=	0x0088
                           000089   288 _IE0	=	0x0089
                           00008A   289 _IT1	=	0x008a
                           00008B   290 _IE1	=	0x008b
                           00008C   291 _TR0	=	0x008c
                           00008D   292 _TF0	=	0x008d
                           00008E   293 _TR1	=	0x008e
                           00008F   294 _TF1	=	0x008f
                           000090   295 _P1_0	=	0x0090
                           000091   296 _P1_1	=	0x0091
                           000092   297 _P1_2	=	0x0092
                           000093   298 _P1_3	=	0x0093
                           000094   299 _P1_4	=	0x0094
                           000095   300 _P1_5	=	0x0095
                           000096   301 _P1_6	=	0x0096
                           000097   302 _P1_7	=	0x0097
                           000090   303 _T2	=	0x0090
                           000091   304 _T2EX	=	0x0091
                           000098   305 _RI	=	0x0098
                           000099   306 _TI	=	0x0099
                           00009A   307 _RB8	=	0x009a
                           00009B   308 _TB8	=	0x009b
                           00009C   309 _REN	=	0x009c
                           00009D   310 _SM2	=	0x009d
                           00009E   311 _SM1	=	0x009e
                           00009F   312 _SM0	=	0x009f
                           0000A0   313 _P2_0	=	0x00a0
                           0000A1   314 _P2_1	=	0x00a1
                           0000A2   315 _P2_2	=	0x00a2
                           0000A3   316 _P2_3	=	0x00a3
                           0000A4   317 _P2_4	=	0x00a4
                           0000A5   318 _P2_5	=	0x00a5
                           0000A6   319 _P2_6	=	0x00a6
                           0000A7   320 _P2_7	=	0x00a7
                           0000A8   321 _EX0	=	0x00a8
                           0000A9   322 _ET0	=	0x00a9
                           0000AA   323 _EX1	=	0x00aa
                           0000AB   324 _ET1	=	0x00ab
                           0000AC   325 _ES	=	0x00ac
                           0000AD   326 _ET2	=	0x00ad
                           0000AF   327 _EA	=	0x00af
                           0000B0   328 _P3_0	=	0x00b0
                           0000B1   329 _P3_1	=	0x00b1
                           0000B2   330 _P3_2	=	0x00b2
                           0000B3   331 _P3_3	=	0x00b3
                           0000B4   332 _P3_4	=	0x00b4
                           0000B5   333 _P3_5	=	0x00b5
                           0000B6   334 _P3_6	=	0x00b6
                           0000B7   335 _P3_7	=	0x00b7
                           0000B0   336 _RXD	=	0x00b0
                           0000B1   337 _TXD	=	0x00b1
                           0000B2   338 _INT0	=	0x00b2
                           0000B3   339 _INT1	=	0x00b3
                           0000B4   340 _T0	=	0x00b4
                           0000B5   341 _T1	=	0x00b5
                           0000B6   342 _WR	=	0x00b6
                           0000B7   343 _RD	=	0x00b7
                           0000B8   344 _PX0	=	0x00b8
                           0000B9   345 _PT0	=	0x00b9
                           0000BA   346 _PX1	=	0x00ba
                           0000BB   347 _PT1	=	0x00bb
                           0000BC   348 _PS	=	0x00bc
                           0000BD   349 _PT2	=	0x00bd
                           0000C8   350 _T2CON_0	=	0x00c8
                           0000C9   351 _T2CON_1	=	0x00c9
                           0000CA   352 _T2CON_2	=	0x00ca
                           0000CB   353 _T2CON_3	=	0x00cb
                           0000CC   354 _T2CON_4	=	0x00cc
                           0000CD   355 _T2CON_5	=	0x00cd
                           0000CE   356 _T2CON_6	=	0x00ce
                           0000CF   357 _T2CON_7	=	0x00cf
                           0000C8   358 _CP_RL2	=	0x00c8
                           0000C9   359 _C_T2	=	0x00c9
                           0000CA   360 _TR2	=	0x00ca
                           0000CB   361 _EXEN2	=	0x00cb
                           0000CC   362 _TCLK	=	0x00cc
                           0000CD   363 _RCLK	=	0x00cd
                           0000CE   364 _EXF2	=	0x00ce
                           0000CF   365 _TF2	=	0x00cf
                           0000D0   366 _P	=	0x00d0
                           0000D1   367 _FL	=	0x00d1
                           0000D2   368 _OV	=	0x00d2
                           0000D3   369 _RS0	=	0x00d3
                           0000D4   370 _RS1	=	0x00d4
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 _CY	=	0x00d7
                           000090   374 _LCD_RS	=	0x0090
                           000091   375 _LCD_RW	=	0x0091
                           000092   376 _LCD_EN	=	0x0092
                           000093   377 _LCD_D4	=	0x0093
                           000094   378 _LCD_D5	=	0x0094
                           000095   379 _LCD_D6	=	0x0095
                           000096   380 _LCD_D7	=	0x0096
                           000097   381 _RESET	=	0x0097
                           0000B2   382 _clock	=	0x00b2
                           0000B3   383 _alarm	=	0x00b3
                           0000B4   384 _up	=	0x00b4
                           0000B5   385 _down	=	0x00b5
                           0000B6   386 _next	=	0x00b6
                           0000B7   387 _back	=	0x00b7
                           0000B1   388 _SDA	=	0x00b1
                           0000B0   389 _SCL	=	0x00b0
                           0000A1   390 _IN1	=	0x00a1
                           0000A2   391 _IN2	=	0x00a2
                           0000A3   392 _IN3	=	0x00a3
                           0000A4   393 _IN4	=	0x00a4
                           0000A0   394 _BUZZER	=	0x00a0
                                    395 ;--------------------------------------------------------
                                    396 ; overlayable register banks
                                    397 ;--------------------------------------------------------
                                    398 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        399 	.ds 8
                                    400 ;--------------------------------------------------------
                                    401 ; internal ram data
                                    402 ;--------------------------------------------------------
                                    403 	.area DSEG    (DATA)
      000021                        404 _dummy::
      000021                        405 	.ds 1
      000022                        406 _time_date::
      000022                        407 	.ds 7
      000029                        408 _num_alarms::
      000029                        409 	.ds 1
      00002A                        410 _idle_counter::
      00002A                        411 	.ds 2
      00002C                        412 _h::
      00002C                        413 	.ds 1
      00002D                        414 _m::
      00002D                        415 	.ds 1
      00002E                        416 _s::
      00002E                        417 	.ds 1
      00002F                        418 _d::
      00002F                        419 	.ds 1
      000030                        420 _mo::
      000030                        421 	.ds 1
      000031                        422 _y::
      000031                        423 	.ds 1
      000032                        424 _day::
      000032                        425 	.ds 1
      000033                        426 _alarm_index::
      000033                        427 	.ds 2
      000035                        428 _index::
      000035                        429 	.ds 2
      000037                        430 _time_str::
      000037                        431 	.ds 9
      000040                        432 _date_str::
      000040                        433 	.ds 13
      00004D                        434 _buf::
      00004D                        435 	.ds 3
      000050                        436 _hr::
      000050                        437 	.ds 1
      000051                        438 _min::
      000051                        439 	.ds 1
      000052                        440 _count_down::
      000052                        441 	.ds 2
      000054                        442 _lcd_goto_PARM_2:
      000054                        443 	.ds 1
      000055                        444 _ds1307_set_time_date_PARM_2:
      000055                        445 	.ds 1
      000056                        446 _ds1307_set_time_date_PARM_3:
      000056                        447 	.ds 1
      000057                        448 _ds1307_set_time_date_PARM_4:
      000057                        449 	.ds 1
      000058                        450 _ds1307_set_time_date_PARM_5:
      000058                        451 	.ds 1
      000059                        452 _ds1307_set_time_date_PARM_6:
      000059                        453 	.ds 1
      00005A                        454 _ds1307_set_time_date_PARM_7:
      00005A                        455 	.ds 1
      00005B                        456 _ds1307_get_time_date_PARM_2:
      00005B                        457 	.ds 3
      00005E                        458 _ds1307_get_time_date_PARM_3:
      00005E                        459 	.ds 3
      000061                        460 _ds1307_get_time_date_PARM_4:
      000061                        461 	.ds 3
      000064                        462 _ds1307_get_time_date_PARM_5:
      000064                        463 	.ds 3
      000067                        464 _ds1307_get_time_date_PARM_6:
      000067                        465 	.ds 3
      00006A                        466 _ds1307_get_time_date_PARM_7:
      00006A                        467 	.ds 3
      00006D                        468 _display_PARM_2:
      00006D                        469 	.ds 1
      00006E                        470 _display_PARM_3:
      00006E                        471 	.ds 1
      00006F                        472 _display_PARM_4:
      00006F                        473 	.ds 1
      000070                        474 _display_PARM_5:
      000070                        475 	.ds 1
      000071                        476 _display_PARM_6:
      000071                        477 	.ds 1
      000072                        478 _display_PARM_7:
      000072                        479 	.ds 1
      000073                        480 _ds1307_write_ram_PARM_2:
      000073                        481 	.ds 1
      000074                        482 _write_alarm_to_ds1307_PARM_2:
      000074                        483 	.ds 1
      000075                        484 _write_alarm_to_ds1307_PARM_3:
      000075                        485 	.ds 1
      000076                        486 _check_alarms_PARM_2:
      000076                        487 	.ds 1
      000077                        488 _check_alarms_PARM_3:
      000077                        489 	.ds 1
      000078                        490 _check_alarms_j_10000_125:
      000078                        491 	.ds 1
      000079                        492 _main_checker_10001_141:
      000079                        493 	.ds 4
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable items in internal ram
                                    496 ;--------------------------------------------------------
                                    497 	.area	OSEG    (OVR,DATA)
                                    498 	.area	OSEG    (OVR,DATA)
                                    499 	.area	OSEG    (OVR,DATA)
      000008                        500 _int_to_str_PARM_2:
      000008                        501 	.ds 3
                                    502 	.area	OSEG    (OVR,DATA)
                                    503 	.area	OSEG    (OVR,DATA)
                                    504 ;--------------------------------------------------------
                                    505 ; Stack segment in internal ram
                                    506 ;--------------------------------------------------------
                                    507 	.area SSEG
      00009B                        508 __start__stack:
      00009B                        509 	.ds	1
                                    510 
                                    511 ;--------------------------------------------------------
                                    512 ; indirectly addressable internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area ISEG    (DATA)
      00007D                        515 _alarm_hours::
      00007D                        516 	.ds 8
      000085                        517 _alarm_minutes::
      000085                        518 	.ds 8
      00008D                        519 _max_vals::
      00008D                        520 	.ds 7
      000094                        521 _min_vals::
      000094                        522 	.ds 7
                                    523 ;--------------------------------------------------------
                                    524 ; absolute internal ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area IABS    (ABS,DATA)
                                    527 	.area IABS    (ABS,DATA)
                                    528 ;--------------------------------------------------------
                                    529 ; bit data
                                    530 ;--------------------------------------------------------
                                    531 	.area BSEG    (BIT)
      000000                        532 _edit_mode::
      000000                        533 	.ds 1
      000001                        534 _touch_sensor::
      000001                        535 	.ds 1
      000002                        536 _clock_check::
      000002                        537 	.ds 1
      000003                        538 _alarm_check::
      000003                        539 	.ds 1
      000004                        540 _i2c_read_sloc0_1_0:
      000004                        541 	.ds 1
                                    542 ;--------------------------------------------------------
                                    543 ; paged external ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area PSEG    (PAG,XDATA)
                                    546 ;--------------------------------------------------------
                                    547 ; uninitialized external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area XSEG    (XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; absolute external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XABS    (ABS,XDATA)
                                    554 ;--------------------------------------------------------
                                    555 ; initialized external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area XISEG   (XDATA)
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT0 (CODE)
                                    560 	.area GSINIT1 (CODE)
                                    561 	.area GSINIT2 (CODE)
                                    562 	.area GSINIT3 (CODE)
                                    563 	.area GSINIT4 (CODE)
                                    564 	.area GSINIT5 (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 	.area GSFINAL (CODE)
                                    567 	.area CSEG    (CODE)
                                    568 ;--------------------------------------------------------
                                    569 ; interrupt vector
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
      000000                        572 __interrupt_vect:
      000000 02 00 5C         [24]  573 	ljmp	__sdcc_gsinit_startup
      000003 02 07 06         [24]  574 	ljmp	_Settings
      000006                        575 	.ds	5
      00000B 32               [24]  576 	reti
      00000C                        577 	.ds	7
      000013 02 0B FA         [24]  578 	ljmp	_touch
                                    579 ; restartable atomic support routines
      000016                        580 	.ds	2
      000018                        581 sdcc_atomic_exchange_rollback_start::
      000018 00               [12]  582 	nop
      000019 00               [12]  583 	nop
      00001A                        584 sdcc_atomic_exchange_pdata_impl:
      00001A E2               [24]  585 	movx	a, @r0
      00001B FB               [12]  586 	mov	r3, a
      00001C EA               [12]  587 	mov	a, r2
      00001D F2               [24]  588 	movx	@r0, a
      00001E 80 2C            [24]  589 	sjmp	sdcc_atomic_exchange_exit
      000020 00               [12]  590 	nop
      000021 00               [12]  591 	nop
      000022                        592 sdcc_atomic_exchange_xdata_impl:
      000022 E0               [24]  593 	movx	a, @dptr
      000023 FB               [12]  594 	mov	r3, a
      000024 EA               [12]  595 	mov	a, r2
      000025 F0               [24]  596 	movx	@dptr, a
      000026 80 24            [24]  597 	sjmp	sdcc_atomic_exchange_exit
      000028                        598 sdcc_atomic_compare_exchange_idata_impl:
      000028 E6               [12]  599 	mov	a, @r0
      000029 B5 02 02         [24]  600 	cjne	a, ar2, .+#5
      00002C EB               [12]  601 	mov	a, r3
      00002D F6               [12]  602 	mov	@r0, a
      00002E 22               [24]  603 	ret
      00002F 00               [12]  604 	nop
      000030                        605 sdcc_atomic_compare_exchange_pdata_impl:
      000030 E2               [24]  606 	movx	a, @r0
      000031 B5 02 02         [24]  607 	cjne	a, ar2, .+#5
      000034 EB               [12]  608 	mov	a, r3
      000035 F2               [24]  609 	movx	@r0, a
      000036 22               [24]  610 	ret
      000037 00               [12]  611 	nop
      000038                        612 sdcc_atomic_compare_exchange_xdata_impl:
      000038 E0               [24]  613 	movx	a, @dptr
      000039 B5 02 02         [24]  614 	cjne	a, ar2, .+#5
      00003C EB               [12]  615 	mov	a, r3
      00003D F0               [24]  616 	movx	@dptr, a
      00003E 22               [24]  617 	ret
      00003F                        618 sdcc_atomic_exchange_rollback_end::
                                    619 
      00003F                        620 sdcc_atomic_exchange_gptr_impl::
      00003F 30 F6 E0         [24]  621 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000042 A8 82            [24]  622 	mov	r0, dpl
      000044 20 F5 D3         [24]  623 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000047                        624 sdcc_atomic_exchange_idata_impl:
      000047 EA               [12]  625 	mov	a, r2
      000048 C6               [12]  626 	xch	a, @r0
      000049 F5 82            [12]  627 	mov	dpl, a
      00004B 22               [24]  628 	ret
      00004C                        629 sdcc_atomic_exchange_exit:
      00004C 8B 82            [24]  630 	mov	dpl, r3
      00004E 22               [24]  631 	ret
      00004F                        632 sdcc_atomic_compare_exchange_gptr_impl::
      00004F 30 F6 E6         [24]  633 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000052 A8 82            [24]  634 	mov	r0, dpl
      000054 20 F5 D9         [24]  635 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000057 80 CF            [24]  636 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    637 ;--------------------------------------------------------
                                    638 ; global & static initialisations
                                    639 ;--------------------------------------------------------
                                    640 	.area HOME    (CODE)
                                    641 	.area GSINIT  (CODE)
                                    642 	.area GSFINAL (CODE)
                                    643 	.area GSINIT  (CODE)
                                    644 	.globl __sdcc_gsinit_startup
                                    645 	.globl __sdcc_program_startup
                                    646 	.globl __start__stack
                                    647 	.globl __mcs51_genXINIT
                                    648 	.globl __mcs51_genXRAMCLEAR
                                    649 	.globl __mcs51_genRAMCLEAR
                                    650 ;	main.c:21: unsigned char time_date[7] = {0,0,0,0,1,1,25};  //starting time
      0000B5 75 22 00         [24]  651 	mov	_time_date,#0x00
      0000B8 75 23 00         [24]  652 	mov	(_time_date + 0x0001),#0x00
      0000BB 75 24 00         [24]  653 	mov	(_time_date + 0x0002),#0x00
      0000BE 75 25 00         [24]  654 	mov	(_time_date + 0x0003),#0x00
      0000C1 75 26 01         [24]  655 	mov	(_time_date + 0x0004),#0x01
      0000C4 75 27 01         [24]  656 	mov	(_time_date + 0x0005),#0x01
      0000C7 75 28 19         [24]  657 	mov	(_time_date + 0x0006),#0x19
                                    658 ;	main.c:23: unsigned char num_alarms = 1;
      0000CA 75 29 01         [24]  659 	mov	_num_alarms,#0x01
                                    660 ;	main.c:24: unsigned int idle_counter = 0;
      0000CD E4               [12]  661 	clr	a
      0000CE F5 2A            [12]  662 	mov	_idle_counter,a
      0000D0 F5 2B            [12]  663 	mov	(_idle_counter + 1),a
                                    664 ;	main.c:27: const unsigned char __idata max_vals[] = {24, 60, 60, 7, 31, 12, 100};
      0000D2 78 8D            [12]  665 	mov	r0,#_max_vals
      0000D4 76 18            [12]  666 	mov	@r0,#0x18
      0000D6 78 8E            [12]  667 	mov	r0,#(_max_vals + 0x0001)
      0000D8 76 3C            [12]  668 	mov	@r0,#0x3c
      0000DA 78 8F            [12]  669 	mov	r0,#(_max_vals + 0x0002)
      0000DC 76 3C            [12]  670 	mov	@r0,#0x3c
      0000DE 78 90            [12]  671 	mov	r0,#(_max_vals + 0x0003)
      0000E0 76 07            [12]  672 	mov	@r0,#0x07
      0000E2 78 91            [12]  673 	mov	r0,#(_max_vals + 0x0004)
      0000E4 76 1F            [12]  674 	mov	@r0,#0x1f
      0000E6 78 92            [12]  675 	mov	r0,#(_max_vals + 0x0005)
      0000E8 76 0C            [12]  676 	mov	@r0,#0x0c
      0000EA 78 93            [12]  677 	mov	r0,#(_max_vals + 0x0006)
      0000EC 76 64            [12]  678 	mov	@r0,#0x64
                                    679 ;	main.c:28: const unsigned char __idata min_vals[] = {0, 0, 0, 0, 1, 1, 0};
      0000EE 78 94            [12]  680 	mov	r0,#_min_vals
      0000F0 76 00            [12]  681 	mov	@r0,#0x00
      0000F2 78 95            [12]  682 	mov	r0,#(_min_vals + 0x0001)
      0000F4 76 00            [12]  683 	mov	@r0,#0x00
      0000F6 78 96            [12]  684 	mov	r0,#(_min_vals + 0x0002)
      0000F8 76 00            [12]  685 	mov	@r0,#0x00
      0000FA 78 97            [12]  686 	mov	r0,#(_min_vals + 0x0003)
      0000FC 76 00            [12]  687 	mov	@r0,#0x00
      0000FE 78 98            [12]  688 	mov	r0,#(_min_vals + 0x0004)
      000100 76 01            [12]  689 	mov	@r0,#0x01
      000102 78 99            [12]  690 	mov	r0,#(_min_vals + 0x0005)
      000104 76 01            [12]  691 	mov	@r0,#0x01
      000106 78 9A            [12]  692 	mov	r0,#(_min_vals + 0x0006)
      000108 76 00            [12]  693 	mov	@r0,#0x00
                                    694 ;	main.c:15: volatile __bit edit_mode = 0;  // Global flag to enter clock-edit mode
                                    695 ;	assignBit
      00010A C2 00            [12]  696 	clr	_edit_mode
                                    697 ;	main.c:16: volatile __bit touch_sensor = 0;  // global flag to enter alarm settings
                                    698 ;	assignBit
      00010C C2 01            [12]  699 	clr	_touch_sensor
                                    700 ;	main.c:34: volatile __bit clock_check = 0;
                                    701 ;	assignBit
      00010E C2 02            [12]  702 	clr	_clock_check
                                    703 ;	main.c:35: volatile __bit alarm_check = 0;
                                    704 ;	assignBit
      000110 C2 03            [12]  705 	clr	_alarm_check
                                    706 	.area GSFINAL (CODE)
      000112 02 00 59         [24]  707 	ljmp	__sdcc_program_startup
                                    708 ;--------------------------------------------------------
                                    709 ; Home
                                    710 ;--------------------------------------------------------
                                    711 	.area HOME    (CODE)
                                    712 	.area HOME    (CODE)
      000059                        713 __sdcc_program_startup:
      000059 02 0D 40         [24]  714 	ljmp	_main
                                    715 ;	return from main will return to caller
                                    716 ;--------------------------------------------------------
                                    717 ; code
                                    718 ;--------------------------------------------------------
                                    719 	.area CSEG    (CODE)
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'delay'
                                    722 ;------------------------------------------------------------
                                    723 ;cycles        Allocated to registers r6 r7 
                                    724 ;i             Allocated to registers r4 r5 
                                    725 ;j             Allocated to registers r2 r3 
                                    726 ;------------------------------------------------------------
                                    727 ;	main.c:71: void delay(unsigned int cycles) {
                                    728 ;	-----------------------------------------
                                    729 ;	 function delay
                                    730 ;	-----------------------------------------
      000115                        731 _delay:
                           000007   732 	ar7 = 0x07
                           000006   733 	ar6 = 0x06
                           000005   734 	ar5 = 0x05
                           000004   735 	ar4 = 0x04
                           000003   736 	ar3 = 0x03
                           000002   737 	ar2 = 0x02
                           000001   738 	ar1 = 0x01
                           000000   739 	ar0 = 0x00
      000115 AE 82            [24]  740 	mov	r6, dpl
      000117 AF 83            [24]  741 	mov	r7, dph
                                    742 ;	main.c:73: for(i = 0; i < cycles; i++)
      000119 7C 00            [12]  743 	mov	r4,#0x00
      00011B 7D 00            [12]  744 	mov	r5,#0x00
      00011D                        745 00107$:
      00011D C3               [12]  746 	clr	c
      00011E EC               [12]  747 	mov	a,r4
      00011F 9E               [12]  748 	subb	a,r6
      000120 ED               [12]  749 	mov	a,r5
      000121 9F               [12]  750 	subb	a,r7
      000122 50 14            [24]  751 	jnc	00109$
                                    752 ;	main.c:74: for(j = 0; j < 5; j++);
      000124 7A 05            [12]  753 	mov	r2,#0x05
      000126 7B 00            [12]  754 	mov	r3,#0x00
      000128                        755 00105$:
      000128 1A               [12]  756 	dec	r2
      000129 BA FF 01         [24]  757 	cjne	r2,#0xff,00138$
      00012C 1B               [12]  758 	dec	r3
      00012D                        759 00138$:
      00012D EA               [12]  760 	mov	a,r2
      00012E 4B               [12]  761 	orl	a,r3
      00012F 70 F7            [24]  762 	jnz	00105$
                                    763 ;	main.c:73: for(i = 0; i < cycles; i++)
      000131 0C               [12]  764 	inc	r4
      000132 BC 00 E8         [24]  765 	cjne	r4,#0x00,00107$
      000135 0D               [12]  766 	inc	r5
      000136 80 E5            [24]  767 	sjmp	00107$
      000138                        768 00109$:
                                    769 ;	main.c:75: }
      000138 22               [24]  770 	ret
                                    771 ;------------------------------------------------------------
                                    772 ;Allocation info for local variables in function 'delay_ms'
                                    773 ;------------------------------------------------------------
                                    774 ;ms            Allocated to registers r6 r7 
                                    775 ;i             Allocated to registers r4 r5 
                                    776 ;j             Allocated to registers r2 r3 
                                    777 ;------------------------------------------------------------
                                    778 ;	main.c:77: void delay_ms(unsigned int ms) {
                                    779 ;	-----------------------------------------
                                    780 ;	 function delay_ms
                                    781 ;	-----------------------------------------
      000139                        782 _delay_ms:
      000139 AE 82            [24]  783 	mov	r6, dpl
      00013B AF 83            [24]  784 	mov	r7, dph
                                    785 ;	main.c:79: for(i=0; i<ms; i++)
      00013D 7C 00            [12]  786 	mov	r4,#0x00
      00013F 7D 00            [12]  787 	mov	r5,#0x00
      000141                        788 00107$:
      000141 C3               [12]  789 	clr	c
      000142 EC               [12]  790 	mov	a,r4
      000143 9E               [12]  791 	subb	a,r6
      000144 ED               [12]  792 	mov	a,r5
      000145 9F               [12]  793 	subb	a,r7
      000146 50 14            [24]  794 	jnc	00109$
                                    795 ;	main.c:80: for(j=0; j<1275; j++);
      000148 7A FB            [12]  796 	mov	r2,#0xfb
      00014A 7B 04            [12]  797 	mov	r3,#0x04
      00014C                        798 00105$:
      00014C 1A               [12]  799 	dec	r2
      00014D BA FF 01         [24]  800 	cjne	r2,#0xff,00138$
      000150 1B               [12]  801 	dec	r3
      000151                        802 00138$:
      000151 EA               [12]  803 	mov	a,r2
      000152 4B               [12]  804 	orl	a,r3
      000153 70 F7            [24]  805 	jnz	00105$
                                    806 ;	main.c:79: for(i=0; i<ms; i++)
      000155 0C               [12]  807 	inc	r4
      000156 BC 00 E8         [24]  808 	cjne	r4,#0x00,00107$
      000159 0D               [12]  809 	inc	r5
      00015A 80 E5            [24]  810 	sjmp	00107$
      00015C                        811 00109$:
                                    812 ;	main.c:81: }
      00015C 22               [24]  813 	ret
                                    814 ;------------------------------------------------------------
                                    815 ;Allocation info for local variables in function 'pulse_enable'
                                    816 ;------------------------------------------------------------
                                    817 ;	main.c:83: void pulse_enable() {
                                    818 ;	-----------------------------------------
                                    819 ;	 function pulse_enable
                                    820 ;	-----------------------------------------
      00015D                        821 _pulse_enable:
                                    822 ;	main.c:84: LCD_EN = 1;
                                    823 ;	assignBit
      00015D D2 92            [12]  824 	setb	_LCD_EN
                                    825 ;	main.c:85: delay(1);
      00015F 90 00 01         [24]  826 	mov	dptr,#0x0001
      000162 12 01 15         [24]  827 	lcall	_delay
                                    828 ;	main.c:86: LCD_EN = 0;
                                    829 ;	assignBit
      000165 C2 92            [12]  830 	clr	_LCD_EN
                                    831 ;	main.c:87: delay(1);
      000167 90 00 01         [24]  832 	mov	dptr,#0x0001
                                    833 ;	main.c:88: }
      00016A 02 01 15         [24]  834 	ljmp	_delay
                                    835 ;------------------------------------------------------------
                                    836 ;Allocation info for local variables in function 'send_nibble'
                                    837 ;------------------------------------------------------------
                                    838 ;nibble        Allocated to registers r7 
                                    839 ;------------------------------------------------------------
                                    840 ;	main.c:90: void send_nibble(unsigned char nibble) {
                                    841 ;	-----------------------------------------
                                    842 ;	 function send_nibble
                                    843 ;	-----------------------------------------
      00016D                        844 _send_nibble:
                                    845 ;	main.c:91: LCD_D4 = (nibble >> 0) & 1;
      00016D E5 82            [12]  846 	mov	a,dpl
      00016F FF               [12]  847 	mov	r7,a
      000170 54 01            [12]  848 	anl	a,#0x01
                                    849 ;	assignBit
      000172 24 FF            [12]  850 	add	a,#0xff
      000174 92 93            [24]  851 	mov	_LCD_D4,c
                                    852 ;	main.c:92: LCD_D5 = (nibble >> 1) & 1;
      000176 EF               [12]  853 	mov	a,r7
      000177 03               [12]  854 	rr	a
      000178 54 01            [12]  855 	anl	a,#0x01
                                    856 ;	assignBit
      00017A 24 FF            [12]  857 	add	a,#0xff
      00017C 92 94            [24]  858 	mov	_LCD_D5,c
                                    859 ;	main.c:93: LCD_D6 = (nibble >> 2) & 1;
      00017E EF               [12]  860 	mov	a,r7
      00017F 03               [12]  861 	rr	a
      000180 03               [12]  862 	rr	a
      000181 54 01            [12]  863 	anl	a,#0x01
                                    864 ;	assignBit
      000183 24 FF            [12]  865 	add	a,#0xff
      000185 92 95            [24]  866 	mov	_LCD_D6,c
                                    867 ;	main.c:94: LCD_D7 = (nibble >> 3) & 1;
      000187 EF               [12]  868 	mov	a,r7
      000188 A2 E3            [12]  869 	mov	c,acc.3
      00018A E4               [12]  870 	clr	a
      00018B 33               [12]  871 	rlc	a
                                    872 ;	assignBit
      00018C 24 FF            [12]  873 	add	a,#0xff
      00018E 92 96            [24]  874 	mov	_LCD_D7,c
                                    875 ;	main.c:95: pulse_enable();
                                    876 ;	main.c:96: }
      000190 02 01 5D         [24]  877 	ljmp	_pulse_enable
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'lcd_cmd'
                                    880 ;------------------------------------------------------------
                                    881 ;cmd           Allocated to registers r7 
                                    882 ;------------------------------------------------------------
                                    883 ;	main.c:98: void lcd_cmd(unsigned char cmd) {
                                    884 ;	-----------------------------------------
                                    885 ;	 function lcd_cmd
                                    886 ;	-----------------------------------------
      000193                        887 _lcd_cmd:
      000193 AF 82            [24]  888 	mov	r7, dpl
                                    889 ;	main.c:99: LCD_RS = 0;
                                    890 ;	assignBit
      000195 C2 90            [12]  891 	clr	_LCD_RS
                                    892 ;	main.c:100: LCD_RW = 0;
                                    893 ;	assignBit
      000197 C2 91            [12]  894 	clr	_LCD_RW
                                    895 ;	main.c:101: send_nibble(cmd >> 4);
      000199 EF               [12]  896 	mov	a,r7
      00019A C4               [12]  897 	swap	a
      00019B 54 0F            [12]  898 	anl	a,#0x0f
      00019D F5 82            [12]  899 	mov	dpl,a
      00019F C0 07            [24]  900 	push	ar7
      0001A1 12 01 6D         [24]  901 	lcall	_send_nibble
      0001A4 D0 07            [24]  902 	pop	ar7
                                    903 ;	main.c:102: send_nibble(cmd & 0x0F);
      0001A6 74 0F            [12]  904 	mov	a,#0x0f
      0001A8 5F               [12]  905 	anl	a,r7
      0001A9 F5 82            [12]  906 	mov	dpl,a
      0001AB 12 01 6D         [24]  907 	lcall	_send_nibble
                                    908 ;	main.c:103: delay(2);
      0001AE 90 00 02         [24]  909 	mov	dptr,#0x0002
                                    910 ;	main.c:104: }
      0001B1 02 01 15         [24]  911 	ljmp	_delay
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'lcd_char'
                                    914 ;------------------------------------------------------------
                                    915 ;ch            Allocated to registers r7 
                                    916 ;------------------------------------------------------------
                                    917 ;	main.c:106: void lcd_char(unsigned char ch) {
                                    918 ;	-----------------------------------------
                                    919 ;	 function lcd_char
                                    920 ;	-----------------------------------------
      0001B4                        921 _lcd_char:
      0001B4 AF 82            [24]  922 	mov	r7, dpl
                                    923 ;	main.c:107: LCD_RS = 1;
                                    924 ;	assignBit
      0001B6 D2 90            [12]  925 	setb	_LCD_RS
                                    926 ;	main.c:108: LCD_RW = 0;
                                    927 ;	assignBit
      0001B8 C2 91            [12]  928 	clr	_LCD_RW
                                    929 ;	main.c:109: send_nibble(ch >> 4);
      0001BA EF               [12]  930 	mov	a,r7
      0001BB C4               [12]  931 	swap	a
      0001BC 54 0F            [12]  932 	anl	a,#0x0f
      0001BE F5 82            [12]  933 	mov	dpl,a
      0001C0 C0 07            [24]  934 	push	ar7
      0001C2 12 01 6D         [24]  935 	lcall	_send_nibble
      0001C5 D0 07            [24]  936 	pop	ar7
                                    937 ;	main.c:110: send_nibble(ch & 0x0F);
      0001C7 74 0F            [12]  938 	mov	a,#0x0f
      0001C9 5F               [12]  939 	anl	a,r7
      0001CA F5 82            [12]  940 	mov	dpl,a
      0001CC 12 01 6D         [24]  941 	lcall	_send_nibble
                                    942 ;	main.c:111: delay(2);
      0001CF 90 00 02         [24]  943 	mov	dptr,#0x0002
                                    944 ;	main.c:112: }
      0001D2 02 01 15         [24]  945 	ljmp	_delay
                                    946 ;------------------------------------------------------------
                                    947 ;Allocation info for local variables in function 'lcd_string'
                                    948 ;------------------------------------------------------------
                                    949 ;str           Allocated to registers 
                                    950 ;------------------------------------------------------------
                                    951 ;	main.c:114: void lcd_string(char *str) {
                                    952 ;	-----------------------------------------
                                    953 ;	 function lcd_string
                                    954 ;	-----------------------------------------
      0001D5                        955 _lcd_string:
      0001D5 AD 82            [24]  956 	mov	r5, dpl
      0001D7 AE 83            [24]  957 	mov	r6, dph
      0001D9 AF F0            [24]  958 	mov	r7, b
                                    959 ;	main.c:115: while(*str) {
      0001DB                        960 00101$:
      0001DB 8D 82            [24]  961 	mov	dpl,r5
      0001DD 8E 83            [24]  962 	mov	dph,r6
      0001DF 8F F0            [24]  963 	mov	b,r7
      0001E1 12 0F 8D         [24]  964 	lcall	__gptrget
      0001E4 FC               [12]  965 	mov	r4,a
      0001E5 60 18            [24]  966 	jz	00104$
                                    967 ;	main.c:116: lcd_char(*str++);
      0001E7 8C 82            [24]  968 	mov	dpl,r4
      0001E9 0D               [12]  969 	inc	r5
      0001EA BD 00 01         [24]  970 	cjne	r5,#0x00,00120$
      0001ED 0E               [12]  971 	inc	r6
      0001EE                        972 00120$:
      0001EE C0 07            [24]  973 	push	ar7
      0001F0 C0 06            [24]  974 	push	ar6
      0001F2 C0 05            [24]  975 	push	ar5
      0001F4 12 01 B4         [24]  976 	lcall	_lcd_char
      0001F7 D0 05            [24]  977 	pop	ar5
      0001F9 D0 06            [24]  978 	pop	ar6
      0001FB D0 07            [24]  979 	pop	ar7
      0001FD 80 DC            [24]  980 	sjmp	00101$
      0001FF                        981 00104$:
                                    982 ;	main.c:118: }
      0001FF 22               [24]  983 	ret
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'lcd_clear'
                                    986 ;------------------------------------------------------------
                                    987 ;	main.c:120: void lcd_clear() {
                                    988 ;	-----------------------------------------
                                    989 ;	 function lcd_clear
                                    990 ;	-----------------------------------------
      000200                        991 _lcd_clear:
                                    992 ;	main.c:121: lcd_cmd(0x01);
      000200 75 82 01         [24]  993 	mov	dpl, #0x01
      000203 12 01 93         [24]  994 	lcall	_lcd_cmd
                                    995 ;	main.c:122: delay(2);
      000206 90 00 02         [24]  996 	mov	dptr,#0x0002
                                    997 ;	main.c:123: }
      000209 02 01 15         [24]  998 	ljmp	_delay
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'lcd_goto'
                                   1001 ;------------------------------------------------------------
                                   1002 ;col           Allocated with name '_lcd_goto_PARM_2'
                                   1003 ;row           Allocated to registers r7 
                                   1004 ;address       Allocated to registers 
                                   1005 ;------------------------------------------------------------
                                   1006 ;	main.c:125: void lcd_goto(unsigned char row, unsigned char col) {
                                   1007 ;	-----------------------------------------
                                   1008 ;	 function lcd_goto
                                   1009 ;	-----------------------------------------
      00020C                       1010 _lcd_goto:
                                   1011 ;	main.c:126: unsigned char address = (row == 0) ? (0x80 + col) : (0xC0 + col);
      00020C E5 82            [12] 1012 	mov	a,dpl
      00020E 70 08            [24] 1013 	jnz	00103$
      000210 AF 54            [24] 1014 	mov	r7,_lcd_goto_PARM_2
      000212 74 80            [12] 1015 	mov	a,#0x80
      000214 2F               [12] 1016 	add	a, r7
      000215 FF               [12] 1017 	mov	r7,a
      000216 80 06            [24] 1018 	sjmp	00104$
      000218                       1019 00103$:
      000218 AE 54            [24] 1020 	mov	r6,_lcd_goto_PARM_2
      00021A 74 C0            [12] 1021 	mov	a,#0xc0
      00021C 2E               [12] 1022 	add	a, r6
      00021D FF               [12] 1023 	mov	r7,a
      00021E                       1024 00104$:
      00021E 8F 82            [24] 1025 	mov	dpl,r7
                                   1026 ;	main.c:127: lcd_cmd(address);
                                   1027 ;	main.c:128: }
      000220 02 01 93         [24] 1028 	ljmp	_lcd_cmd
                                   1029 ;------------------------------------------------------------
                                   1030 ;Allocation info for local variables in function 'lcd_init'
                                   1031 ;------------------------------------------------------------
                                   1032 ;	main.c:131: void lcd_init() {
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function lcd_init
                                   1035 ;	-----------------------------------------
      000223                       1036 _lcd_init:
                                   1037 ;	main.c:132: LCD_RS = 0;
                                   1038 ;	assignBit
      000223 C2 90            [12] 1039 	clr	_LCD_RS
                                   1040 ;	main.c:133: LCD_RW = 0;
                                   1041 ;	assignBit
      000225 C2 91            [12] 1042 	clr	_LCD_RW
                                   1043 ;	main.c:134: LCD_EN = 0;
                                   1044 ;	assignBit
      000227 C2 92            [12] 1045 	clr	_LCD_EN
                                   1046 ;	main.c:136: delay(20);
      000229 90 00 14         [24] 1047 	mov	dptr,#0x0014
      00022C 12 01 15         [24] 1048 	lcall	_delay
                                   1049 ;	main.c:138: send_nibble(0x03);
      00022F 75 82 03         [24] 1050 	mov	dpl, #0x03
      000232 12 01 6D         [24] 1051 	lcall	_send_nibble
                                   1052 ;	main.c:139: delay(5);
      000235 90 00 05         [24] 1053 	mov	dptr,#0x0005
      000238 12 01 15         [24] 1054 	lcall	_delay
                                   1055 ;	main.c:140: send_nibble(0x03);
      00023B 75 82 03         [24] 1056 	mov	dpl, #0x03
      00023E 12 01 6D         [24] 1057 	lcall	_send_nibble
                                   1058 ;	main.c:141: delay(5);
      000241 90 00 05         [24] 1059 	mov	dptr,#0x0005
      000244 12 01 15         [24] 1060 	lcall	_delay
                                   1061 ;	main.c:142: send_nibble(0x03);
      000247 75 82 03         [24] 1062 	mov	dpl, #0x03
      00024A 12 01 6D         [24] 1063 	lcall	_send_nibble
                                   1064 ;	main.c:143: delay(5);
      00024D 90 00 05         [24] 1065 	mov	dptr,#0x0005
      000250 12 01 15         [24] 1066 	lcall	_delay
                                   1067 ;	main.c:144: send_nibble(0x02);
      000253 75 82 02         [24] 1068 	mov	dpl, #0x02
      000256 12 01 6D         [24] 1069 	lcall	_send_nibble
                                   1070 ;	main.c:146: lcd_cmd(0x28);
      000259 75 82 28         [24] 1071 	mov	dpl, #0x28
      00025C 12 01 93         [24] 1072 	lcall	_lcd_cmd
                                   1073 ;	main.c:147: lcd_cmd(0x0C);
      00025F 75 82 0C         [24] 1074 	mov	dpl, #0x0c
      000262 12 01 93         [24] 1075 	lcall	_lcd_cmd
                                   1076 ;	main.c:148: lcd_cmd(0x06);
      000265 75 82 06         [24] 1077 	mov	dpl, #0x06
      000268 12 01 93         [24] 1078 	lcall	_lcd_cmd
                                   1079 ;	main.c:149: lcd_cmd(0x01);
      00026B 75 82 01         [24] 1080 	mov	dpl, #0x01
      00026E 12 01 93         [24] 1081 	lcall	_lcd_cmd
                                   1082 ;	main.c:150: delay(2);
      000271 90 00 02         [24] 1083 	mov	dptr,#0x0002
                                   1084 ;	main.c:151: }
      000274 02 01 15         [24] 1085 	ljmp	_delay
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'int_to_str'
                                   1088 ;------------------------------------------------------------
                                   1089 ;str           Allocated with name '_int_to_str_PARM_2'
                                   1090 ;val           Allocated to registers r7 
                                   1091 ;------------------------------------------------------------
                                   1092 ;	main.c:153: void int_to_str(unsigned char val, char *str) {
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function int_to_str
                                   1095 ;	-----------------------------------------
      000277                       1096 _int_to_str:
      000277 AF 82            [24] 1097 	mov	r7, dpl
                                   1098 ;	main.c:154: str[0] = (val / 10) + '0';
      000279 AC 08            [24] 1099 	mov	r4,_int_to_str_PARM_2
      00027B AD 09            [24] 1100 	mov	r5,(_int_to_str_PARM_2 + 1)
      00027D AE 0A            [24] 1101 	mov	r6,(_int_to_str_PARM_2 + 2)
      00027F 8F 03            [24] 1102 	mov	ar3,r7
      000281 75 F0 0A         [24] 1103 	mov	b,#0x0a
      000284 EB               [12] 1104 	mov	a,r3
      000285 84               [48] 1105 	div	ab
      000286 24 30            [12] 1106 	add	a,#0x30
      000288 8C 82            [24] 1107 	mov	dpl,r4
      00028A 8D 83            [24] 1108 	mov	dph,r5
      00028C 8E F0            [24] 1109 	mov	b,r6
      00028E 12 0F 08         [24] 1110 	lcall	__gptrput
                                   1111 ;	main.c:155: str[1] = (val % 10) + '0';
      000291 74 01            [12] 1112 	mov	a,#0x01
      000293 2C               [12] 1113 	add	a, r4
      000294 F9               [12] 1114 	mov	r1,a
      000295 E4               [12] 1115 	clr	a
      000296 3D               [12] 1116 	addc	a, r5
      000297 FA               [12] 1117 	mov	r2,a
      000298 8E 03            [24] 1118 	mov	ar3,r6
      00029A 75 F0 0A         [24] 1119 	mov	b,#0x0a
      00029D EF               [12] 1120 	mov	a,r7
      00029E 84               [48] 1121 	div	ab
      00029F AF F0            [24] 1122 	mov	r7,b
      0002A1 74 30            [12] 1123 	mov	a,#0x30
      0002A3 2F               [12] 1124 	add	a, r7
      0002A4 89 82            [24] 1125 	mov	dpl,r1
      0002A6 8A 83            [24] 1126 	mov	dph,r2
      0002A8 8B F0            [24] 1127 	mov	b,r3
      0002AA 12 0F 08         [24] 1128 	lcall	__gptrput
                                   1129 ;	main.c:156: str[2] = '\0';
      0002AD 74 02            [12] 1130 	mov	a,#0x02
      0002AF 2C               [12] 1131 	add	a, r4
      0002B0 FC               [12] 1132 	mov	r4,a
      0002B1 E4               [12] 1133 	clr	a
      0002B2 3D               [12] 1134 	addc	a, r5
      0002B3 FD               [12] 1135 	mov	r5,a
      0002B4 8C 82            [24] 1136 	mov	dpl,r4
      0002B6 8D 83            [24] 1137 	mov	dph,r5
      0002B8 8E F0            [24] 1138 	mov	b,r6
      0002BA E4               [12] 1139 	clr	a
                                   1140 ;	main.c:157: }
      0002BB 02 0F 08         [24] 1141 	ljmp	__gptrput
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'i2c_init'
                                   1144 ;------------------------------------------------------------
                                   1145 ;	main.c:159: void i2c_init() {
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function i2c_init
                                   1148 ;	-----------------------------------------
      0002BE                       1149 _i2c_init:
                                   1150 ;	main.c:160: SDA = 1;
                                   1151 ;	assignBit
      0002BE D2 B1            [12] 1152 	setb	_SDA
                                   1153 ;	main.c:161: SCL = 1;
                                   1154 ;	assignBit
      0002C0 D2 B0            [12] 1155 	setb	_SCL
                                   1156 ;	main.c:162: delay(1);
      0002C2 90 00 01         [24] 1157 	mov	dptr,#0x0001
                                   1158 ;	main.c:163: }
      0002C5 02 01 15         [24] 1159 	ljmp	_delay
                                   1160 ;------------------------------------------------------------
                                   1161 ;Allocation info for local variables in function 'i2c_start'
                                   1162 ;------------------------------------------------------------
                                   1163 ;	main.c:165: void i2c_start() {
                                   1164 ;	-----------------------------------------
                                   1165 ;	 function i2c_start
                                   1166 ;	-----------------------------------------
      0002C8                       1167 _i2c_start:
                                   1168 ;	main.c:166: SDA = 1;
                                   1169 ;	assignBit
      0002C8 D2 B1            [12] 1170 	setb	_SDA
                                   1171 ;	main.c:167: SCL = 1;
                                   1172 ;	assignBit
      0002CA D2 B0            [12] 1173 	setb	_SCL
                                   1174 ;	main.c:168: delay(1);
      0002CC 90 00 01         [24] 1175 	mov	dptr,#0x0001
      0002CF 12 01 15         [24] 1176 	lcall	_delay
                                   1177 ;	main.c:169: SDA = 0;
                                   1178 ;	assignBit
      0002D2 C2 B1            [12] 1179 	clr	_SDA
                                   1180 ;	main.c:170: delay(1);
      0002D4 90 00 01         [24] 1181 	mov	dptr,#0x0001
      0002D7 12 01 15         [24] 1182 	lcall	_delay
                                   1183 ;	main.c:171: SCL = 0;
                                   1184 ;	assignBit
      0002DA C2 B0            [12] 1185 	clr	_SCL
                                   1186 ;	main.c:172: }
      0002DC 22               [24] 1187 	ret
                                   1188 ;------------------------------------------------------------
                                   1189 ;Allocation info for local variables in function 'i2c_stop'
                                   1190 ;------------------------------------------------------------
                                   1191 ;	main.c:174: void i2c_stop() {
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function i2c_stop
                                   1194 ;	-----------------------------------------
      0002DD                       1195 _i2c_stop:
                                   1196 ;	main.c:175: SDA = 0;
                                   1197 ;	assignBit
      0002DD C2 B1            [12] 1198 	clr	_SDA
                                   1199 ;	main.c:176: SCL = 1;
                                   1200 ;	assignBit
      0002DF D2 B0            [12] 1201 	setb	_SCL
                                   1202 ;	main.c:177: delay(1);
      0002E1 90 00 01         [24] 1203 	mov	dptr,#0x0001
      0002E4 12 01 15         [24] 1204 	lcall	_delay
                                   1205 ;	main.c:178: SDA = 1;
                                   1206 ;	assignBit
      0002E7 D2 B1            [12] 1207 	setb	_SDA
                                   1208 ;	main.c:179: delay(1);
      0002E9 90 00 01         [24] 1209 	mov	dptr,#0x0001
                                   1210 ;	main.c:180: }
      0002EC 02 01 15         [24] 1211 	ljmp	_delay
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'i2c_write'
                                   1214 ;------------------------------------------------------------
                                   1215 ;value         Allocated to registers r7 
                                   1216 ;i             Allocated to registers r6 
                                   1217 ;------------------------------------------------------------
                                   1218 ;	main.c:182: __bit i2c_write(unsigned char value) {
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function i2c_write
                                   1221 ;	-----------------------------------------
      0002EF                       1222 _i2c_write:
      0002EF AF 82            [24] 1223 	mov	r7, dpl
                                   1224 ;	main.c:186: for (i = 0; i < 8; i++) {
      0002F1 7E 00            [12] 1225 	mov	r6,#0x00
      0002F3                       1226 00102$:
                                   1227 ;	main.c:187: SDA = (value & 0x80) ? 1 : 0;
      0002F3 8F 05            [24] 1228 	mov	ar5,r7
      0002F5 53 05 80         [24] 1229 	anl	ar5,#0x80
                                   1230 ;	assignBit
      0002F8 ED               [12] 1231 	mov	a,r5
      0002F9 24 FF            [12] 1232 	add	a,#0xff
      0002FB 92 B1            [24] 1233 	mov	_SDA,c
                                   1234 ;	main.c:188: SCL = 1;
                                   1235 ;	assignBit
      0002FD D2 B0            [12] 1236 	setb	_SCL
                                   1237 ;	main.c:189: delay(1);
      0002FF 90 00 01         [24] 1238 	mov	dptr,#0x0001
      000302 C0 07            [24] 1239 	push	ar7
      000304 C0 06            [24] 1240 	push	ar6
      000306 12 01 15         [24] 1241 	lcall	_delay
      000309 D0 06            [24] 1242 	pop	ar6
      00030B D0 07            [24] 1243 	pop	ar7
                                   1244 ;	main.c:190: SCL = 0;
                                   1245 ;	assignBit
      00030D C2 B0            [12] 1246 	clr	_SCL
                                   1247 ;	main.c:191: value <<= 1;
      00030F EF               [12] 1248 	mov	a,r7
      000310 2F               [12] 1249 	add	a,r7
      000311 FF               [12] 1250 	mov	r7,a
                                   1251 ;	main.c:186: for (i = 0; i < 8; i++) {
      000312 0E               [12] 1252 	inc	r6
      000313 BE 08 00         [24] 1253 	cjne	r6,#0x08,00119$
      000316                       1254 00119$:
      000316 40 DB            [24] 1255 	jc	00102$
                                   1256 ;	main.c:194: SDA = 1;
                                   1257 ;	assignBit
      000318 D2 B1            [12] 1258 	setb	_SDA
                                   1259 ;	main.c:195: SCL = 1;
                                   1260 ;	assignBit
      00031A D2 B0            [12] 1261 	setb	_SCL
                                   1262 ;	main.c:196: delay(1);
      00031C 90 00 01         [24] 1263 	mov	dptr,#0x0001
      00031F 12 01 15         [24] 1264 	lcall	_delay
                                   1265 ;	main.c:197: ack = SDA;
      000322 A2 B1            [12] 1266 	mov	c,_SDA
                                   1267 ;	main.c:198: SCL = 0;
                                   1268 ;	assignBit
      000324 C2 B0            [12] 1269 	clr	_SCL
                                   1270 ;	main.c:199: return ~ack;
      000326 D3               [12] 1271 	setb	c
                                   1272 ;	main.c:200: }
      000327 22               [24] 1273 	ret
                                   1274 ;------------------------------------------------------------
                                   1275 ;Allocation info for local variables in function 'i2c_read'
                                   1276 ;------------------------------------------------------------
                                   1277 ;ack           Allocated to registers r7 
                                   1278 ;i             Allocated to registers r5 
                                   1279 ;value         Allocated to registers r6 
                                   1280 ;------------------------------------------------------------
                                   1281 ;	main.c:202: unsigned char i2c_read(unsigned char ack) {
                                   1282 ;	-----------------------------------------
                                   1283 ;	 function i2c_read
                                   1284 ;	-----------------------------------------
      000328                       1285 _i2c_read:
      000328 AF 82            [24] 1286 	mov	r7, dpl
                                   1287 ;	main.c:203: unsigned char i, value = 0;
      00032A 7E 00            [12] 1288 	mov	r6,#0x00
                                   1289 ;	main.c:205: SDA = 1;
                                   1290 ;	assignBit
      00032C D2 B1            [12] 1291 	setb	_SDA
                                   1292 ;	main.c:207: for (i = 0; i < 8; i++) {
      00032E 7D 00            [12] 1293 	mov	r5,#0x00
      000330                       1294 00104$:
                                   1295 ;	main.c:208: value <<= 1;
      000330 EE               [12] 1296 	mov	a,r6
      000331 2E               [12] 1297 	add	a,r6
      000332 FE               [12] 1298 	mov	r6,a
                                   1299 ;	main.c:209: SCL = 1;
                                   1300 ;	assignBit
      000333 D2 B0            [12] 1301 	setb	_SCL
                                   1302 ;	main.c:210: delay(1);
      000335 90 00 01         [24] 1303 	mov	dptr,#0x0001
      000338 C0 07            [24] 1304 	push	ar7
      00033A C0 06            [24] 1305 	push	ar6
      00033C C0 05            [24] 1306 	push	ar5
      00033E 12 01 15         [24] 1307 	lcall	_delay
      000341 D0 05            [24] 1308 	pop	ar5
      000343 D0 06            [24] 1309 	pop	ar6
      000345 D0 07            [24] 1310 	pop	ar7
                                   1311 ;	main.c:211: if (SDA)
      000347 30 B1 03         [24] 1312 	jnb	_SDA,00102$
                                   1313 ;	main.c:212: value |= 1;
      00034A 43 06 01         [24] 1314 	orl	ar6,#0x01
      00034D                       1315 00102$:
                                   1316 ;	main.c:213: SCL = 0;
                                   1317 ;	assignBit
      00034D C2 B0            [12] 1318 	clr	_SCL
                                   1319 ;	main.c:214: delay(1);
      00034F 90 00 01         [24] 1320 	mov	dptr,#0x0001
      000352 C0 07            [24] 1321 	push	ar7
      000354 C0 06            [24] 1322 	push	ar6
      000356 C0 05            [24] 1323 	push	ar5
      000358 12 01 15         [24] 1324 	lcall	_delay
      00035B D0 05            [24] 1325 	pop	ar5
      00035D D0 06            [24] 1326 	pop	ar6
      00035F D0 07            [24] 1327 	pop	ar7
                                   1328 ;	main.c:207: for (i = 0; i < 8; i++) {
      000361 0D               [12] 1329 	inc	r5
      000362 BD 08 00         [24] 1330 	cjne	r5,#0x08,00128$
      000365                       1331 00128$:
      000365 40 C9            [24] 1332 	jc	00104$
                                   1333 ;	main.c:217: SDA = (ack) ? 0 : 1;
      000367 EF               [12] 1334 	mov	a,r7
      000368 B4 01 00         [24] 1335 	cjne	a,#0x01,00130$
      00036B                       1336 00130$:
      00036B 92 04            [24] 1337 	mov  _i2c_read_sloc0_1_0,c
      00036D E4               [12] 1338 	clr	a
      00036E 33               [12] 1339 	rlc	a
      00036F 24 FF            [12] 1340 	add	a,#0xff
      000371 92 B1            [24] 1341 	mov	_SDA,c
                                   1342 ;	main.c:218: SCL = 1;
                                   1343 ;	assignBit
      000373 D2 B0            [12] 1344 	setb	_SCL
                                   1345 ;	main.c:219: delay(1);
      000375 90 00 01         [24] 1346 	mov	dptr,#0x0001
      000378 C0 06            [24] 1347 	push	ar6
      00037A 12 01 15         [24] 1348 	lcall	_delay
      00037D D0 06            [24] 1349 	pop	ar6
                                   1350 ;	main.c:220: SCL = 0;
                                   1351 ;	assignBit
      00037F C2 B0            [12] 1352 	clr	_SCL
                                   1353 ;	main.c:221: SDA = 1;
                                   1354 ;	assignBit
      000381 D2 B1            [12] 1355 	setb	_SDA
                                   1356 ;	main.c:222: return value;
      000383 8E 82            [24] 1357 	mov	dpl, r6
                                   1358 ;	main.c:223: }
      000385 22               [24] 1359 	ret
                                   1360 ;------------------------------------------------------------
                                   1361 ;Allocation info for local variables in function 'dec_to_bcd'
                                   1362 ;------------------------------------------------------------
                                   1363 ;val           Allocated to registers r7 
                                   1364 ;------------------------------------------------------------
                                   1365 ;	main.c:225: unsigned char dec_to_bcd(unsigned char val) {
                                   1366 ;	-----------------------------------------
                                   1367 ;	 function dec_to_bcd
                                   1368 ;	-----------------------------------------
      000386                       1369 _dec_to_bcd:
      000386 AF 82            [24] 1370 	mov	r7, dpl
                                   1371 ;	main.c:226: return ((val / 10) << 4) | (val % 10);
      000388 8F 06            [24] 1372 	mov	ar6,r7
      00038A 75 F0 0A         [24] 1373 	mov	b,#0x0a
      00038D EE               [12] 1374 	mov	a,r6
      00038E 84               [48] 1375 	div	ab
      00038F C4               [12] 1376 	swap	a
      000390 54 F0            [12] 1377 	anl	a,#0xf0
      000392 FE               [12] 1378 	mov	r6,a
      000393 75 F0 0A         [24] 1379 	mov	b,#0x0a
      000396 EF               [12] 1380 	mov	a,r7
      000397 84               [48] 1381 	div	ab
      000398 E5 F0            [12] 1382 	mov	a,b
      00039A 4E               [12] 1383 	orl	a,r6
      00039B F5 82            [12] 1384 	mov	dpl,a
                                   1385 ;	main.c:227: }
      00039D 22               [24] 1386 	ret
                                   1387 ;------------------------------------------------------------
                                   1388 ;Allocation info for local variables in function 'bcd_to_dec'
                                   1389 ;------------------------------------------------------------
                                   1390 ;val           Allocated to registers r7 
                                   1391 ;------------------------------------------------------------
                                   1392 ;	main.c:229: unsigned char bcd_to_dec(unsigned char val) {
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function bcd_to_dec
                                   1395 ;	-----------------------------------------
      00039E                       1396 _bcd_to_dec:
                                   1397 ;	main.c:230: return ((val >> 4) * 10) + (val & 0x0F);
      00039E E5 82            [12] 1398 	mov	a,dpl
      0003A0 FF               [12] 1399 	mov	r7,a
      0003A1 C4               [12] 1400 	swap	a
      0003A2 54 0F            [12] 1401 	anl	a,#0x0f
      0003A4 75 F0 0A         [24] 1402 	mov	b,#0x0a
      0003A7 A4               [48] 1403 	mul	ab
      0003A8 FE               [12] 1404 	mov	r6,a
      0003A9 74 0F            [12] 1405 	mov	a,#0x0f
      0003AB 5F               [12] 1406 	anl	a,r7
      0003AC 2E               [12] 1407 	add	a, r6
      0003AD F5 82            [12] 1408 	mov	dpl,a
                                   1409 ;	main.c:231: }
      0003AF 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'ds1307_init'
                                   1413 ;------------------------------------------------------------
                                   1414 ;	main.c:233: void ds1307_init(void) {
                                   1415 ;	-----------------------------------------
                                   1416 ;	 function ds1307_init
                                   1417 ;	-----------------------------------------
      0003B0                       1418 _ds1307_init:
                                   1419 ;	main.c:234: i2c_start();
      0003B0 12 02 C8         [24] 1420 	lcall	_i2c_start
                                   1421 ;	main.c:235: i2c_write((DS1307_ADDRESS << 1) | 0); // Write mode
      0003B3 75 82 D0         [24] 1422 	mov	dpl, #0xd0
      0003B6 12 02 EF         [24] 1423 	lcall	_i2c_write
                                   1424 ;	main.c:236: i2c_write(0x00); // Point to seconds register
      0003B9 75 82 00         [24] 1425 	mov	dpl, #0x00
      0003BC 12 02 EF         [24] 1426 	lcall	_i2c_write
                                   1427 ;	main.c:237: i2c_write(0x00); // Start oscillator (CH = 0)
      0003BF 75 82 00         [24] 1428 	mov	dpl, #0x00
      0003C2 12 02 EF         [24] 1429 	lcall	_i2c_write
                                   1430 ;	main.c:238: i2c_stop();
                                   1431 ;	main.c:239: }
      0003C5 02 02 DD         [24] 1432 	ljmp	_i2c_stop
                                   1433 ;------------------------------------------------------------
                                   1434 ;Allocation info for local variables in function 'ds1307_set_time_date'
                                   1435 ;------------------------------------------------------------
                                   1436 ;min           Allocated with name '_ds1307_set_time_date_PARM_2'
                                   1437 ;sec           Allocated with name '_ds1307_set_time_date_PARM_3'
                                   1438 ;day           Allocated with name '_ds1307_set_time_date_PARM_4'
                                   1439 ;date          Allocated with name '_ds1307_set_time_date_PARM_5'
                                   1440 ;month         Allocated with name '_ds1307_set_time_date_PARM_6'
                                   1441 ;year          Allocated with name '_ds1307_set_time_date_PARM_7'
                                   1442 ;hrs           Allocated to registers r7 
                                   1443 ;------------------------------------------------------------
                                   1444 ;	main.c:241: void ds1307_set_time_date(unsigned char hrs, unsigned char min, unsigned char sec, unsigned char day, unsigned char date, unsigned char month, unsigned char year) {
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function ds1307_set_time_date
                                   1447 ;	-----------------------------------------
      0003C8                       1448 _ds1307_set_time_date:
      0003C8 AF 82            [24] 1449 	mov	r7, dpl
                                   1450 ;	main.c:242: i2c_start();
      0003CA C0 07            [24] 1451 	push	ar7
      0003CC 12 02 C8         [24] 1452 	lcall	_i2c_start
                                   1453 ;	main.c:243: i2c_write((DS1307_ADDRESS << 1) | 0);
      0003CF 75 82 D0         [24] 1454 	mov	dpl, #0xd0
      0003D2 12 02 EF         [24] 1455 	lcall	_i2c_write
                                   1456 ;	main.c:244: i2c_write(0x00);
      0003D5 75 82 00         [24] 1457 	mov	dpl, #0x00
      0003D8 12 02 EF         [24] 1458 	lcall	_i2c_write
                                   1459 ;	main.c:245: i2c_write(dec_to_bcd(sec));
      0003DB 85 56 82         [24] 1460 	mov	dpl, _ds1307_set_time_date_PARM_3
      0003DE 12 03 86         [24] 1461 	lcall	_dec_to_bcd
      0003E1 12 02 EF         [24] 1462 	lcall	_i2c_write
                                   1463 ;	main.c:246: i2c_write(dec_to_bcd(min));
      0003E4 85 55 82         [24] 1464 	mov	dpl, _ds1307_set_time_date_PARM_2
      0003E7 12 03 86         [24] 1465 	lcall	_dec_to_bcd
      0003EA 12 02 EF         [24] 1466 	lcall	_i2c_write
      0003ED D0 07            [24] 1467 	pop	ar7
                                   1468 ;	main.c:247: i2c_write(dec_to_bcd(hrs));
      0003EF 8F 82            [24] 1469 	mov	dpl, r7
      0003F1 12 03 86         [24] 1470 	lcall	_dec_to_bcd
      0003F4 12 02 EF         [24] 1471 	lcall	_i2c_write
                                   1472 ;	main.c:248: i2c_write(dec_to_bcd(day));
      0003F7 85 57 82         [24] 1473 	mov	dpl, _ds1307_set_time_date_PARM_4
      0003FA 12 03 86         [24] 1474 	lcall	_dec_to_bcd
      0003FD 12 02 EF         [24] 1475 	lcall	_i2c_write
                                   1476 ;	main.c:249: i2c_write(dec_to_bcd(date));
      000400 85 58 82         [24] 1477 	mov	dpl, _ds1307_set_time_date_PARM_5
      000403 12 03 86         [24] 1478 	lcall	_dec_to_bcd
      000406 12 02 EF         [24] 1479 	lcall	_i2c_write
                                   1480 ;	main.c:250: i2c_write(dec_to_bcd(month));
      000409 85 59 82         [24] 1481 	mov	dpl, _ds1307_set_time_date_PARM_6
      00040C 12 03 86         [24] 1482 	lcall	_dec_to_bcd
      00040F 12 02 EF         [24] 1483 	lcall	_i2c_write
                                   1484 ;	main.c:251: i2c_write(dec_to_bcd(year));
      000412 85 5A 82         [24] 1485 	mov	dpl, _ds1307_set_time_date_PARM_7
      000415 12 03 86         [24] 1486 	lcall	_dec_to_bcd
      000418 12 02 EF         [24] 1487 	lcall	_i2c_write
                                   1488 ;	main.c:252: i2c_stop();
                                   1489 ;	main.c:253: }
      00041B 02 02 DD         [24] 1490 	ljmp	_i2c_stop
                                   1491 ;------------------------------------------------------------
                                   1492 ;Allocation info for local variables in function 'ds1307_get_time_date'
                                   1493 ;------------------------------------------------------------
                                   1494 ;min           Allocated with name '_ds1307_get_time_date_PARM_2'
                                   1495 ;sec           Allocated with name '_ds1307_get_time_date_PARM_3'
                                   1496 ;day           Allocated with name '_ds1307_get_time_date_PARM_4'
                                   1497 ;date          Allocated with name '_ds1307_get_time_date_PARM_5'
                                   1498 ;month         Allocated with name '_ds1307_get_time_date_PARM_6'
                                   1499 ;year          Allocated with name '_ds1307_get_time_date_PARM_7'
                                   1500 ;hrs           Allocated to registers r5 r6 r7 
                                   1501 ;------------------------------------------------------------
                                   1502 ;	main.c:255: void ds1307_get_time_date(unsigned char *hrs, unsigned char *min, unsigned char *sec, unsigned char *day, unsigned char *date, unsigned char *month, unsigned char *year) {
                                   1503 ;	-----------------------------------------
                                   1504 ;	 function ds1307_get_time_date
                                   1505 ;	-----------------------------------------
      00041E                       1506 _ds1307_get_time_date:
      00041E AD 82            [24] 1507 	mov	r5, dpl
      000420 AE 83            [24] 1508 	mov	r6, dph
      000422 AF F0            [24] 1509 	mov	r7, b
                                   1510 ;	main.c:256: i2c_start();
      000424 C0 07            [24] 1511 	push	ar7
      000426 C0 06            [24] 1512 	push	ar6
      000428 C0 05            [24] 1513 	push	ar5
      00042A 12 02 C8         [24] 1514 	lcall	_i2c_start
                                   1515 ;	main.c:257: i2c_write((DS1307_ADDRESS << 1) | 0);
      00042D 75 82 D0         [24] 1516 	mov	dpl, #0xd0
      000430 12 02 EF         [24] 1517 	lcall	_i2c_write
                                   1518 ;	main.c:258: i2c_write(0x00);
      000433 75 82 00         [24] 1519 	mov	dpl, #0x00
      000436 12 02 EF         [24] 1520 	lcall	_i2c_write
                                   1521 ;	main.c:259: i2c_stop();
      000439 12 02 DD         [24] 1522 	lcall	_i2c_stop
                                   1523 ;	main.c:261: i2c_start();
      00043C 12 02 C8         [24] 1524 	lcall	_i2c_start
                                   1525 ;	main.c:262: i2c_write((DS1307_ADDRESS << 1) | 1);
      00043F 75 82 D1         [24] 1526 	mov	dpl, #0xd1
      000442 12 02 EF         [24] 1527 	lcall	_i2c_write
                                   1528 ;	main.c:263: *sec   = bcd_to_dec(i2c_read(1));
      000445 AA 5E            [24] 1529 	mov	r2,_ds1307_get_time_date_PARM_3
      000447 AB 5F            [24] 1530 	mov	r3,(_ds1307_get_time_date_PARM_3 + 1)
      000449 AC 60            [24] 1531 	mov	r4,(_ds1307_get_time_date_PARM_3 + 2)
      00044B 75 82 01         [24] 1532 	mov	dpl, #0x01
      00044E C0 04            [24] 1533 	push	ar4
      000450 C0 03            [24] 1534 	push	ar3
      000452 C0 02            [24] 1535 	push	ar2
      000454 12 03 28         [24] 1536 	lcall	_i2c_read
      000457 12 03 9E         [24] 1537 	lcall	_bcd_to_dec
      00045A A9 82            [24] 1538 	mov	r1, dpl
      00045C D0 02            [24] 1539 	pop	ar2
      00045E D0 03            [24] 1540 	pop	ar3
      000460 D0 04            [24] 1541 	pop	ar4
      000462 8A 82            [24] 1542 	mov	dpl,r2
      000464 8B 83            [24] 1543 	mov	dph,r3
      000466 8C F0            [24] 1544 	mov	b,r4
      000468 E9               [12] 1545 	mov	a,r1
      000469 12 0F 08         [24] 1546 	lcall	__gptrput
                                   1547 ;	main.c:264: *min   = bcd_to_dec(i2c_read(1));
      00046C AA 5B            [24] 1548 	mov	r2,_ds1307_get_time_date_PARM_2
      00046E AB 5C            [24] 1549 	mov	r3,(_ds1307_get_time_date_PARM_2 + 1)
      000470 AC 5D            [24] 1550 	mov	r4,(_ds1307_get_time_date_PARM_2 + 2)
      000472 75 82 01         [24] 1551 	mov	dpl, #0x01
      000475 C0 04            [24] 1552 	push	ar4
      000477 C0 03            [24] 1553 	push	ar3
      000479 C0 02            [24] 1554 	push	ar2
      00047B 12 03 28         [24] 1555 	lcall	_i2c_read
      00047E 12 03 9E         [24] 1556 	lcall	_bcd_to_dec
      000481 A9 82            [24] 1557 	mov	r1, dpl
      000483 D0 02            [24] 1558 	pop	ar2
      000485 D0 03            [24] 1559 	pop	ar3
      000487 D0 04            [24] 1560 	pop	ar4
      000489 8A 82            [24] 1561 	mov	dpl,r2
      00048B 8B 83            [24] 1562 	mov	dph,r3
      00048D 8C F0            [24] 1563 	mov	b,r4
      00048F E9               [12] 1564 	mov	a,r1
      000490 12 0F 08         [24] 1565 	lcall	__gptrput
                                   1566 ;	main.c:265: *hrs   = bcd_to_dec(i2c_read(1));
      000493 75 82 01         [24] 1567 	mov	dpl, #0x01
      000496 12 03 28         [24] 1568 	lcall	_i2c_read
      000499 12 03 9E         [24] 1569 	lcall	_bcd_to_dec
      00049C AC 82            [24] 1570 	mov	r4, dpl
      00049E D0 05            [24] 1571 	pop	ar5
      0004A0 D0 06            [24] 1572 	pop	ar6
      0004A2 D0 07            [24] 1573 	pop	ar7
      0004A4 8D 82            [24] 1574 	mov	dpl,r5
      0004A6 8E 83            [24] 1575 	mov	dph,r6
      0004A8 8F F0            [24] 1576 	mov	b,r7
      0004AA EC               [12] 1577 	mov	a,r4
      0004AB 12 0F 08         [24] 1578 	lcall	__gptrput
                                   1579 ;	main.c:266: *day   = bcd_to_dec(i2c_read(1));
      0004AE AD 61            [24] 1580 	mov	r5,_ds1307_get_time_date_PARM_4
      0004B0 AE 62            [24] 1581 	mov	r6,(_ds1307_get_time_date_PARM_4 + 1)
      0004B2 AF 63            [24] 1582 	mov	r7,(_ds1307_get_time_date_PARM_4 + 2)
      0004B4 75 82 01         [24] 1583 	mov	dpl, #0x01
      0004B7 C0 07            [24] 1584 	push	ar7
      0004B9 C0 06            [24] 1585 	push	ar6
      0004BB C0 05            [24] 1586 	push	ar5
      0004BD 12 03 28         [24] 1587 	lcall	_i2c_read
      0004C0 12 03 9E         [24] 1588 	lcall	_bcd_to_dec
      0004C3 AC 82            [24] 1589 	mov	r4, dpl
      0004C5 D0 05            [24] 1590 	pop	ar5
      0004C7 D0 06            [24] 1591 	pop	ar6
      0004C9 D0 07            [24] 1592 	pop	ar7
      0004CB 8D 82            [24] 1593 	mov	dpl,r5
      0004CD 8E 83            [24] 1594 	mov	dph,r6
      0004CF 8F F0            [24] 1595 	mov	b,r7
      0004D1 EC               [12] 1596 	mov	a,r4
      0004D2 12 0F 08         [24] 1597 	lcall	__gptrput
                                   1598 ;	main.c:267: *date  = bcd_to_dec(i2c_read(1));
      0004D5 AD 64            [24] 1599 	mov	r5,_ds1307_get_time_date_PARM_5
      0004D7 AE 65            [24] 1600 	mov	r6,(_ds1307_get_time_date_PARM_5 + 1)
      0004D9 AF 66            [24] 1601 	mov	r7,(_ds1307_get_time_date_PARM_5 + 2)
      0004DB 75 82 01         [24] 1602 	mov	dpl, #0x01
      0004DE C0 07            [24] 1603 	push	ar7
      0004E0 C0 06            [24] 1604 	push	ar6
      0004E2 C0 05            [24] 1605 	push	ar5
      0004E4 12 03 28         [24] 1606 	lcall	_i2c_read
      0004E7 12 03 9E         [24] 1607 	lcall	_bcd_to_dec
      0004EA AC 82            [24] 1608 	mov	r4, dpl
      0004EC D0 05            [24] 1609 	pop	ar5
      0004EE D0 06            [24] 1610 	pop	ar6
      0004F0 D0 07            [24] 1611 	pop	ar7
      0004F2 8D 82            [24] 1612 	mov	dpl,r5
      0004F4 8E 83            [24] 1613 	mov	dph,r6
      0004F6 8F F0            [24] 1614 	mov	b,r7
      0004F8 EC               [12] 1615 	mov	a,r4
      0004F9 12 0F 08         [24] 1616 	lcall	__gptrput
                                   1617 ;	main.c:268: *month = bcd_to_dec(i2c_read(1));
      0004FC AD 67            [24] 1618 	mov	r5,_ds1307_get_time_date_PARM_6
      0004FE AE 68            [24] 1619 	mov	r6,(_ds1307_get_time_date_PARM_6 + 1)
      000500 AF 69            [24] 1620 	mov	r7,(_ds1307_get_time_date_PARM_6 + 2)
      000502 75 82 01         [24] 1621 	mov	dpl, #0x01
      000505 C0 07            [24] 1622 	push	ar7
      000507 C0 06            [24] 1623 	push	ar6
      000509 C0 05            [24] 1624 	push	ar5
      00050B 12 03 28         [24] 1625 	lcall	_i2c_read
      00050E 12 03 9E         [24] 1626 	lcall	_bcd_to_dec
      000511 AC 82            [24] 1627 	mov	r4, dpl
      000513 D0 05            [24] 1628 	pop	ar5
      000515 D0 06            [24] 1629 	pop	ar6
      000517 D0 07            [24] 1630 	pop	ar7
      000519 8D 82            [24] 1631 	mov	dpl,r5
      00051B 8E 83            [24] 1632 	mov	dph,r6
      00051D 8F F0            [24] 1633 	mov	b,r7
      00051F EC               [12] 1634 	mov	a,r4
      000520 12 0F 08         [24] 1635 	lcall	__gptrput
                                   1636 ;	main.c:269: *year  = bcd_to_dec(i2c_read(0));
      000523 AD 6A            [24] 1637 	mov	r5,_ds1307_get_time_date_PARM_7
      000525 AE 6B            [24] 1638 	mov	r6,(_ds1307_get_time_date_PARM_7 + 1)
      000527 AF 6C            [24] 1639 	mov	r7,(_ds1307_get_time_date_PARM_7 + 2)
      000529 75 82 00         [24] 1640 	mov	dpl, #0x00
      00052C C0 07            [24] 1641 	push	ar7
      00052E C0 06            [24] 1642 	push	ar6
      000530 C0 05            [24] 1643 	push	ar5
      000532 12 03 28         [24] 1644 	lcall	_i2c_read
      000535 12 03 9E         [24] 1645 	lcall	_bcd_to_dec
      000538 AC 82            [24] 1646 	mov	r4, dpl
      00053A D0 05            [24] 1647 	pop	ar5
      00053C D0 06            [24] 1648 	pop	ar6
      00053E D0 07            [24] 1649 	pop	ar7
      000540 8D 82            [24] 1650 	mov	dpl,r5
      000542 8E 83            [24] 1651 	mov	dph,r6
      000544 8F F0            [24] 1652 	mov	b,r7
      000546 EC               [12] 1653 	mov	a,r4
      000547 12 0F 08         [24] 1654 	lcall	__gptrput
                                   1655 ;	main.c:270: i2c_stop();
                                   1656 ;	main.c:271: }
      00054A 02 02 DD         [24] 1657 	ljmp	_i2c_stop
                                   1658 ;------------------------------------------------------------
                                   1659 ;Allocation info for local variables in function 'display'
                                   1660 ;------------------------------------------------------------
                                   1661 ;m             Allocated with name '_display_PARM_2'
                                   1662 ;s             Allocated with name '_display_PARM_3'
                                   1663 ;d             Allocated with name '_display_PARM_4'
                                   1664 ;mo            Allocated with name '_display_PARM_5'
                                   1665 ;y             Allocated with name '_display_PARM_6'
                                   1666 ;day           Allocated with name '_display_PARM_7'
                                   1667 ;h             Allocated to registers r7 
                                   1668 ;------------------------------------------------------------
                                   1669 ;	main.c:274: void display(unsigned char h, unsigned char m, unsigned char s, unsigned char d, unsigned char mo, unsigned char y, unsigned char day ) {
                                   1670 ;	-----------------------------------------
                                   1671 ;	 function display
                                   1672 ;	-----------------------------------------
      00054D                       1673 _display:
      00054D AF 82            [24] 1674 	mov	r7, dpl
                                   1675 ;	main.c:275: int_to_str(h, buf);
      00054F 75 08 4D         [24] 1676 	mov	_int_to_str_PARM_2,#_buf
      000552 75 09 00         [24] 1677 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000555 75 0A 40         [24] 1678 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000558 8F 82            [24] 1679 	mov	dpl, r7
      00055A 12 02 77         [24] 1680 	lcall	_int_to_str
                                   1681 ;	main.c:276: time_str[0] = buf[0];
      00055D 85 4D 37         [24] 1682 	mov	_time_str,_buf
                                   1683 ;	main.c:277: time_str[1] = buf[1];
      000560 85 4E 38         [24] 1684 	mov	(_time_str + 0x0001),(_buf + 0x0001)
                                   1685 ;	main.c:278: time_str[2] = ':';
      000563 75 39 3A         [24] 1686 	mov	(_time_str + 0x0002),#0x3a
                                   1687 ;	main.c:279: int_to_str(m, buf);
      000566 75 08 4D         [24] 1688 	mov	_int_to_str_PARM_2,#_buf
      000569 75 09 00         [24] 1689 	mov	(_int_to_str_PARM_2 + 1),#0x00
      00056C 75 0A 40         [24] 1690 	mov	(_int_to_str_PARM_2 + 2),#0x40
      00056F 85 6D 82         [24] 1691 	mov	dpl, _display_PARM_2
      000572 12 02 77         [24] 1692 	lcall	_int_to_str
                                   1693 ;	main.c:280: time_str[3] = buf[0];
      000575 85 4D 3A         [24] 1694 	mov	(_time_str + 0x0003),_buf
                                   1695 ;	main.c:281: time_str[4] = buf[1];
      000578 85 4E 3B         [24] 1696 	mov	(_time_str + 0x0004),(_buf + 0x0001)
                                   1697 ;	main.c:282: time_str[5] = ':';
      00057B 75 3C 3A         [24] 1698 	mov	(_time_str + 0x0005),#0x3a
                                   1699 ;	main.c:283: int_to_str(s, buf);
      00057E 75 08 4D         [24] 1700 	mov	_int_to_str_PARM_2,#_buf
      000581 75 09 00         [24] 1701 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000584 75 0A 40         [24] 1702 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000587 85 6E 82         [24] 1703 	mov	dpl, _display_PARM_3
      00058A 12 02 77         [24] 1704 	lcall	_int_to_str
                                   1705 ;	main.c:284: time_str[6] = buf[0];
      00058D 85 4D 3D         [24] 1706 	mov	(_time_str + 0x0006),_buf
                                   1707 ;	main.c:285: time_str[7] = buf[1];
      000590 85 4E 3E         [24] 1708 	mov	(_time_str + 0x0007),(_buf + 0x0001)
                                   1709 ;	main.c:286: time_str[8] = '\0';
      000593 75 3F 00         [24] 1710 	mov	(_time_str + 0x0008),#0x00
                                   1711 ;	main.c:289: int_to_str(d, buf);
      000596 75 08 4D         [24] 1712 	mov	_int_to_str_PARM_2,#_buf
      000599 75 09 00         [24] 1713 	mov	(_int_to_str_PARM_2 + 1),#0x00
      00059C 75 0A 40         [24] 1714 	mov	(_int_to_str_PARM_2 + 2),#0x40
      00059F 85 6F 82         [24] 1715 	mov	dpl, _display_PARM_4
      0005A2 12 02 77         [24] 1716 	lcall	_int_to_str
                                   1717 ;	main.c:290: date_str[0] = buf[0];
      0005A5 85 4D 40         [24] 1718 	mov	_date_str,_buf
                                   1719 ;	main.c:291: date_str[1] = buf[1];
      0005A8 85 4E 41         [24] 1720 	mov	(_date_str + 0x0001),(_buf + 0x0001)
                                   1721 ;	main.c:292: date_str[2] = ':';
      0005AB 75 42 3A         [24] 1722 	mov	(_date_str + 0x0002),#0x3a
                                   1723 ;	main.c:293: int_to_str(mo, buf);
      0005AE 75 08 4D         [24] 1724 	mov	_int_to_str_PARM_2,#_buf
      0005B1 75 09 00         [24] 1725 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005B4 75 0A 40         [24] 1726 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005B7 85 70 82         [24] 1727 	mov	dpl, _display_PARM_5
      0005BA 12 02 77         [24] 1728 	lcall	_int_to_str
                                   1729 ;	main.c:294: date_str[3] = buf[0];
      0005BD 85 4D 43         [24] 1730 	mov	(_date_str + 0x0003),_buf
                                   1731 ;	main.c:295: date_str[4] = buf[1];
      0005C0 85 4E 44         [24] 1732 	mov	(_date_str + 0x0004),(_buf + 0x0001)
                                   1733 ;	main.c:296: date_str[5] = ':';
      0005C3 75 45 3A         [24] 1734 	mov	(_date_str + 0x0005),#0x3a
                                   1735 ;	main.c:297: int_to_str(y, buf);
      0005C6 75 08 4D         [24] 1736 	mov	_int_to_str_PARM_2,#_buf
      0005C9 75 09 00         [24] 1737 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005CC 75 0A 40         [24] 1738 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005CF 85 71 82         [24] 1739 	mov	dpl, _display_PARM_6
      0005D2 12 02 77         [24] 1740 	lcall	_int_to_str
                                   1741 ;	main.c:298: date_str[6] = buf[0];
      0005D5 85 4D 46         [24] 1742 	mov	(_date_str + 0x0006),_buf
                                   1743 ;	main.c:299: date_str[7] = buf[1];
      0005D8 85 4E 47         [24] 1744 	mov	(_date_str + 0x0007),(_buf + 0x0001)
                                   1745 ;	main.c:300: date_str[8] = ' ';
      0005DB 75 48 20         [24] 1746 	mov	(_date_str + 0x0008),#0x20
                                   1747 ;	main.c:302: switch(day) {
      0005DE E5 72            [12] 1748 	mov	a,_display_PARM_7
      0005E0 24 F8            [12] 1749 	add	a,#0xff - 0x07
      0005E2 40 6B            [24] 1750 	jc	00108$
      0005E4 E5 72            [12] 1751 	mov	a,_display_PARM_7
      0005E6 24 0B            [12] 1752 	add	a,#(00118$-3-.)
      0005E8 83               [24] 1753 	movc	a,@a+pc
      0005E9 F5 82            [12] 1754 	mov	dpl,a
      0005EB E5 72            [12] 1755 	mov	a,_display_PARM_7
      0005ED 24 0C            [12] 1756 	add	a,#(00119$-3-.)
      0005EF 83               [24] 1757 	movc	a,@a+pc
      0005F0 F5 83            [12] 1758 	mov	dph,a
      0005F2 E4               [12] 1759 	clr	a
      0005F3 73               [24] 1760 	jmp	@a+dptr
      0005F4                       1761 00118$:
      0005F4 4F                    1762 	.db	00108$
      0005F5 04                    1763 	.db	00101$
      0005F6 0F                    1764 	.db	00102$
      0005F7 1A                    1765 	.db	00103$
      0005F8 25                    1766 	.db	00104$
      0005F9 30                    1767 	.db	00105$
      0005FA 3B                    1768 	.db	00106$
      0005FB 46                    1769 	.db	00107$
      0005FC                       1770 00119$:
      0005FC 06                    1771 	.db	00108$>>8
      0005FD 06                    1772 	.db	00101$>>8
      0005FE 06                    1773 	.db	00102$>>8
      0005FF 06                    1774 	.db	00103$>>8
      000600 06                    1775 	.db	00104$>>8
      000601 06                    1776 	.db	00105$>>8
      000602 06                    1777 	.db	00106$>>8
      000603 06                    1778 	.db	00107$>>8
                                   1779 ;	main.c:303: case 1:
      000604                       1780 00101$:
                                   1781 ;	main.c:304: buf[0] = 'S';
      000604 75 4D 53         [24] 1782 	mov	_buf,#0x53
                                   1783 ;	main.c:305: buf[1] = 'u';
      000607 75 4E 75         [24] 1784 	mov	(_buf + 0x0001),#0x75
                                   1785 ;	main.c:306: buf[2] = 'n';
      00060A 75 4F 6E         [24] 1786 	mov	(_buf + 0x0002),#0x6e
                                   1787 ;	main.c:307: break;
                                   1788 ;	main.c:308: case 2:
      00060D 80 40            [24] 1789 	sjmp	00108$
      00060F                       1790 00102$:
                                   1791 ;	main.c:309: buf[0] = 'M';
      00060F 75 4D 4D         [24] 1792 	mov	_buf,#0x4d
                                   1793 ;	main.c:310: buf[1] = 'o';
      000612 75 4E 6F         [24] 1794 	mov	(_buf + 0x0001),#0x6f
                                   1795 ;	main.c:311: buf[2] = 'n';
      000615 75 4F 6E         [24] 1796 	mov	(_buf + 0x0002),#0x6e
                                   1797 ;	main.c:312: break;
                                   1798 ;	main.c:313: case 3:
      000618 80 35            [24] 1799 	sjmp	00108$
      00061A                       1800 00103$:
                                   1801 ;	main.c:314: buf[0] = 'T';
      00061A 75 4D 54         [24] 1802 	mov	_buf,#0x54
                                   1803 ;	main.c:315: buf[1] = 'u';
      00061D 75 4E 75         [24] 1804 	mov	(_buf + 0x0001),#0x75
                                   1805 ;	main.c:316: buf[2] = 'e';
      000620 75 4F 65         [24] 1806 	mov	(_buf + 0x0002),#0x65
                                   1807 ;	main.c:317: break;
                                   1808 ;	main.c:318: case 4:
      000623 80 2A            [24] 1809 	sjmp	00108$
      000625                       1810 00104$:
                                   1811 ;	main.c:319: buf[0] = 'W';
      000625 75 4D 57         [24] 1812 	mov	_buf,#0x57
                                   1813 ;	main.c:320: buf[1] = 'e';
      000628 75 4E 65         [24] 1814 	mov	(_buf + 0x0001),#0x65
                                   1815 ;	main.c:321: buf[2] = 'd';
      00062B 75 4F 64         [24] 1816 	mov	(_buf + 0x0002),#0x64
                                   1817 ;	main.c:322: break;
                                   1818 ;	main.c:323: case 5:
      00062E 80 1F            [24] 1819 	sjmp	00108$
      000630                       1820 00105$:
                                   1821 ;	main.c:324: buf[0] = 'T';
      000630 75 4D 54         [24] 1822 	mov	_buf,#0x54
                                   1823 ;	main.c:325: buf[1] = 'h';
      000633 75 4E 68         [24] 1824 	mov	(_buf + 0x0001),#0x68
                                   1825 ;	main.c:326: buf[2] = 'u';
      000636 75 4F 75         [24] 1826 	mov	(_buf + 0x0002),#0x75
                                   1827 ;	main.c:327: break;
                                   1828 ;	main.c:328: case 6:
      000639 80 14            [24] 1829 	sjmp	00108$
      00063B                       1830 00106$:
                                   1831 ;	main.c:329: buf[0] = 'F';
      00063B 75 4D 46         [24] 1832 	mov	_buf,#0x46
                                   1833 ;	main.c:330: buf[1] = 'r';
      00063E 75 4E 72         [24] 1834 	mov	(_buf + 0x0001),#0x72
                                   1835 ;	main.c:331: buf[2] = 'i';
      000641 75 4F 69         [24] 1836 	mov	(_buf + 0x0002),#0x69
                                   1837 ;	main.c:332: break;
                                   1838 ;	main.c:333: case 7:
      000644 80 09            [24] 1839 	sjmp	00108$
      000646                       1840 00107$:
                                   1841 ;	main.c:334: buf[0] = 'S';
      000646 75 4D 53         [24] 1842 	mov	_buf,#0x53
                                   1843 ;	main.c:335: buf[1] = 'a';
      000649 75 4E 61         [24] 1844 	mov	(_buf + 0x0001),#0x61
                                   1845 ;	main.c:336: buf[2] = 't';
      00064C 75 4F 74         [24] 1846 	mov	(_buf + 0x0002),#0x74
                                   1847 ;	main.c:338: }
      00064F                       1848 00108$:
                                   1849 ;	main.c:339: date_str[9] = buf[0];
      00064F 85 4D 49         [24] 1850 	mov	(_date_str + 0x0009),_buf
                                   1851 ;	main.c:340: date_str[10] = buf[1];
      000652 85 4E 4A         [24] 1852 	mov	(_date_str + 0x000a),(_buf + 0x0001)
                                   1853 ;	main.c:341: date_str[11] = buf[2];
      000655 85 4F 4B         [24] 1854 	mov	(_date_str + 0x000b),(_buf + 0x0002)
                                   1855 ;	main.c:342: date_str[12] = '\0';
      000658 75 4C 00         [24] 1856 	mov	(_date_str + 0x000c),#0x00
                                   1857 ;	main.c:345: lcd_goto(0, 0);
      00065B 75 54 00         [24] 1858 	mov	_lcd_goto_PARM_2,#0x00
      00065E 75 82 00         [24] 1859 	mov	dpl, #0x00
      000661 12 02 0C         [24] 1860 	lcall	_lcd_goto
                                   1861 ;	main.c:346: lcd_string(time_str);
      000664 90 00 37         [24] 1862 	mov	dptr,#_time_str
      000667 75 F0 40         [24] 1863 	mov	b, #0x40
      00066A 12 01 D5         [24] 1864 	lcall	_lcd_string
                                   1865 ;	main.c:347: lcd_goto(1, 0);
      00066D 75 54 00         [24] 1866 	mov	_lcd_goto_PARM_2,#0x00
      000670 75 82 01         [24] 1867 	mov	dpl, #0x01
      000673 12 02 0C         [24] 1868 	lcall	_lcd_goto
                                   1869 ;	main.c:348: lcd_string(date_str);
      000676 90 00 40         [24] 1870 	mov	dptr,#_date_str
      000679 75 F0 40         [24] 1871 	mov	b, #0x40
                                   1872 ;	main.c:349: }
      00067C 02 01 D5         [24] 1873 	ljmp	_lcd_string
                                   1874 ;------------------------------------------------------------
                                   1875 ;Allocation info for local variables in function 'step_motor'
                                   1876 ;------------------------------------------------------------
                                   1877 ;step          Allocated to registers r6 r7 
                                   1878 ;------------------------------------------------------------
                                   1879 ;	main.c:351: void step_motor(int step) {
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function step_motor
                                   1882 ;	-----------------------------------------
      00067F                       1883 _step_motor:
                                   1884 ;	main.c:352: switch(step % 8) {
      00067F 75 08 08         [24] 1885 	mov	__modsint_PARM_2,#0x08
      000682 75 09 00         [24] 1886 	mov	(__modsint_PARM_2 + 1),#0x00
      000685 12 0F A9         [24] 1887 	lcall	__modsint
      000688 AE 82            [24] 1888 	mov	r6, dpl
      00068A E5 83            [12] 1889 	mov	a,dph
      00068C FF               [12] 1890 	mov	r7,a
      00068D 30 E7 01         [24] 1891 	jnb	acc.7,00124$
      000690 22               [24] 1892 	ret
      000691                       1893 00124$:
      000691 C3               [12] 1894 	clr	c
      000692 74 07            [12] 1895 	mov	a,#0x07
      000694 9E               [12] 1896 	subb	a,r6
      000695 74 80            [12] 1897 	mov	a,#(0x00 ^ 0x80)
      000697 8F F0            [24] 1898 	mov	b,r7
      000699 63 F0 80         [24] 1899 	xrl	b,#0x80
      00069C 95 F0            [12] 1900 	subb	a,b
      00069E 40 65            [24] 1901 	jc	00110$
      0006A0 EE               [12] 1902 	mov	a,r6
      0006A1 24 0A            [12] 1903 	add	a,#(00126$-3-.)
      0006A3 83               [24] 1904 	movc	a,@a+pc
      0006A4 F5 82            [12] 1905 	mov	dpl,a
      0006A6 EE               [12] 1906 	mov	a,r6
      0006A7 24 0C            [12] 1907 	add	a,#(00127$-3-.)
      0006A9 83               [24] 1908 	movc	a,@a+pc
      0006AA F5 83            [12] 1909 	mov	dph,a
      0006AC E4               [12] 1910 	clr	a
      0006AD 73               [24] 1911 	jmp	@a+dptr
      0006AE                       1912 00126$:
      0006AE BE                    1913 	.db	00101$
      0006AF C7                    1914 	.db	00102$
      0006B0 D0                    1915 	.db	00103$
      0006B1 D9                    1916 	.db	00104$
      0006B2 E2                    1917 	.db	00105$
      0006B3 EB                    1918 	.db	00106$
      0006B4 F4                    1919 	.db	00107$
      0006B5 FD                    1920 	.db	00108$
      0006B6                       1921 00127$:
      0006B6 06                    1922 	.db	00101$>>8
      0006B7 06                    1923 	.db	00102$>>8
      0006B8 06                    1924 	.db	00103$>>8
      0006B9 06                    1925 	.db	00104$>>8
      0006BA 06                    1926 	.db	00105$>>8
      0006BB 06                    1927 	.db	00106$>>8
      0006BC 06                    1928 	.db	00107$>>8
      0006BD 06                    1929 	.db	00108$>>8
                                   1930 ;	main.c:353: case 0:
      0006BE                       1931 00101$:
                                   1932 ;	main.c:354: IN1=1;
                                   1933 ;	assignBit
      0006BE D2 A1            [12] 1934 	setb	_IN1
                                   1935 ;	main.c:355: IN2=0;
                                   1936 ;	assignBit
      0006C0 C2 A2            [12] 1937 	clr	_IN2
                                   1938 ;	main.c:356: IN3=0;
                                   1939 ;	assignBit
      0006C2 C2 A3            [12] 1940 	clr	_IN3
                                   1941 ;	main.c:357: IN4=0;
                                   1942 ;	assignBit
      0006C4 C2 A4            [12] 1943 	clr	_IN4
                                   1944 ;	main.c:358: break;
                                   1945 ;	main.c:359: case 1:
      0006C6 22               [24] 1946 	ret
      0006C7                       1947 00102$:
                                   1948 ;	main.c:360: IN1=1;
                                   1949 ;	assignBit
      0006C7 D2 A1            [12] 1950 	setb	_IN1
                                   1951 ;	main.c:361: IN2=1;
                                   1952 ;	assignBit
      0006C9 D2 A2            [12] 1953 	setb	_IN2
                                   1954 ;	main.c:362: IN3=0;
                                   1955 ;	assignBit
      0006CB C2 A3            [12] 1956 	clr	_IN3
                                   1957 ;	main.c:363: IN4=0;
                                   1958 ;	assignBit
      0006CD C2 A4            [12] 1959 	clr	_IN4
                                   1960 ;	main.c:364: break;
                                   1961 ;	main.c:365: case 2:
      0006CF 22               [24] 1962 	ret
      0006D0                       1963 00103$:
                                   1964 ;	main.c:366: IN1=0;
                                   1965 ;	assignBit
      0006D0 C2 A1            [12] 1966 	clr	_IN1
                                   1967 ;	main.c:367: IN2=1;
                                   1968 ;	assignBit
      0006D2 D2 A2            [12] 1969 	setb	_IN2
                                   1970 ;	main.c:368: IN3=0;
                                   1971 ;	assignBit
      0006D4 C2 A3            [12] 1972 	clr	_IN3
                                   1973 ;	main.c:369: IN4=0;
                                   1974 ;	assignBit
      0006D6 C2 A4            [12] 1975 	clr	_IN4
                                   1976 ;	main.c:370: break;
                                   1977 ;	main.c:371: case 3:
      0006D8 22               [24] 1978 	ret
      0006D9                       1979 00104$:
                                   1980 ;	main.c:372: IN1=0;
                                   1981 ;	assignBit
      0006D9 C2 A1            [12] 1982 	clr	_IN1
                                   1983 ;	main.c:373: IN2=1;
                                   1984 ;	assignBit
      0006DB D2 A2            [12] 1985 	setb	_IN2
                                   1986 ;	main.c:374: IN3=1;
                                   1987 ;	assignBit
      0006DD D2 A3            [12] 1988 	setb	_IN3
                                   1989 ;	main.c:375: IN4=0;
                                   1990 ;	assignBit
      0006DF C2 A4            [12] 1991 	clr	_IN4
                                   1992 ;	main.c:376: break;
                                   1993 ;	main.c:377: case 4:
      0006E1 22               [24] 1994 	ret
      0006E2                       1995 00105$:
                                   1996 ;	main.c:378: IN1=0;
                                   1997 ;	assignBit
      0006E2 C2 A1            [12] 1998 	clr	_IN1
                                   1999 ;	main.c:379: IN2=0;
                                   2000 ;	assignBit
      0006E4 C2 A2            [12] 2001 	clr	_IN2
                                   2002 ;	main.c:380: IN3=1;
                                   2003 ;	assignBit
      0006E6 D2 A3            [12] 2004 	setb	_IN3
                                   2005 ;	main.c:381: IN4=0;
                                   2006 ;	assignBit
      0006E8 C2 A4            [12] 2007 	clr	_IN4
                                   2008 ;	main.c:382: break;
                                   2009 ;	main.c:383: case 5:
      0006EA 22               [24] 2010 	ret
      0006EB                       2011 00106$:
                                   2012 ;	main.c:384: IN1=0;
                                   2013 ;	assignBit
      0006EB C2 A1            [12] 2014 	clr	_IN1
                                   2015 ;	main.c:385: IN2=0;
                                   2016 ;	assignBit
      0006ED C2 A2            [12] 2017 	clr	_IN2
                                   2018 ;	main.c:386: IN3=1;
                                   2019 ;	assignBit
      0006EF D2 A3            [12] 2020 	setb	_IN3
                                   2021 ;	main.c:387: IN4=1;
                                   2022 ;	assignBit
      0006F1 D2 A4            [12] 2023 	setb	_IN4
                                   2024 ;	main.c:388: break;
                                   2025 ;	main.c:389: case 6:
      0006F3 22               [24] 2026 	ret
      0006F4                       2027 00107$:
                                   2028 ;	main.c:390: IN1=0;
                                   2029 ;	assignBit
      0006F4 C2 A1            [12] 2030 	clr	_IN1
                                   2031 ;	main.c:391: IN2=0;
                                   2032 ;	assignBit
      0006F6 C2 A2            [12] 2033 	clr	_IN2
                                   2034 ;	main.c:392: IN3=0;
                                   2035 ;	assignBit
      0006F8 C2 A3            [12] 2036 	clr	_IN3
                                   2037 ;	main.c:393: IN4=1;
                                   2038 ;	assignBit
      0006FA D2 A4            [12] 2039 	setb	_IN4
                                   2040 ;	main.c:394: break;
                                   2041 ;	main.c:395: case 7:
      0006FC 22               [24] 2042 	ret
      0006FD                       2043 00108$:
                                   2044 ;	main.c:396: IN1=1;
                                   2045 ;	assignBit
      0006FD D2 A1            [12] 2046 	setb	_IN1
                                   2047 ;	main.c:397: IN2=0;
                                   2048 ;	assignBit
      0006FF C2 A2            [12] 2049 	clr	_IN2
                                   2050 ;	main.c:398: IN3=0;
                                   2051 ;	assignBit
      000701 C2 A3            [12] 2052 	clr	_IN3
                                   2053 ;	main.c:399: IN4=1;
                                   2054 ;	assignBit
      000703 D2 A4            [12] 2055 	setb	_IN4
                                   2056 ;	main.c:401: }
      000705                       2057 00110$:
                                   2058 ;	main.c:402: }
      000705 22               [24] 2059 	ret
                                   2060 ;------------------------------------------------------------
                                   2061 ;Allocation info for local variables in function 'Settings'
                                   2062 ;------------------------------------------------------------
                                   2063 ;	main.c:405: void Settings(void) __interrupt(0) {
                                   2064 ;	-----------------------------------------
                                   2065 ;	 function Settings
                                   2066 ;	-----------------------------------------
      000706                       2067 _Settings:
                                   2068 ;	main.c:406: EX0 = 0;          // Disable external interrupt
                                   2069 ;	assignBit
      000706 C2 A8            [12] 2070 	clr	_EX0
                                   2071 ;	main.c:407: edit_mode = 1;    // Signal main loop to enter edit mode
                                   2072 ;	assignBit
      000708 D2 00            [12] 2073 	setb	_edit_mode
                                   2074 ;	main.c:408: EX0 = 1;          // Re-enable interrupt
                                   2075 ;	assignBit
      00070A D2 A8            [12] 2076 	setb	_EX0
                                   2077 ;	main.c:409: }
      00070C 32               [24] 2078 	reti
                                   2079 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2080 ;	eliminated unneeded push/pop not_psw
                                   2081 ;	eliminated unneeded push/pop dpl
                                   2082 ;	eliminated unneeded push/pop dph
                                   2083 ;	eliminated unneeded push/pop b
                                   2084 ;	eliminated unneeded push/pop acc
                                   2085 ;------------------------------------------------------------
                                   2086 ;Allocation info for local variables in function 'ds1307_write_ram'
                                   2087 ;------------------------------------------------------------
                                   2088 ;value         Allocated with name '_ds1307_write_ram_PARM_2'
                                   2089 ;addr          Allocated to registers r7 
                                   2090 ;------------------------------------------------------------
                                   2091 ;	main.c:411: void ds1307_write_ram(unsigned char addr, unsigned char value) {
                                   2092 ;	-----------------------------------------
                                   2093 ;	 function ds1307_write_ram
                                   2094 ;	-----------------------------------------
      00070D                       2095 _ds1307_write_ram:
      00070D AF 82            [24] 2096 	mov	r7, dpl
                                   2097 ;	main.c:413: if (addr < 0x08 || addr > 0x3F) return;
      00070F BF 08 00         [24] 2098 	cjne	r7,#0x08,00112$
      000712                       2099 00112$:
      000712 40 05            [24] 2100 	jc	00101$
      000714 EF               [12] 2101 	mov	a,r7
      000715 24 C0            [12] 2102 	add	a,#0xff - 0x3f
      000717 50 01            [24] 2103 	jnc	00102$
      000719                       2104 00101$:
      000719 22               [24] 2105 	ret
      00071A                       2106 00102$:
                                   2107 ;	main.c:415: i2c_start();
      00071A C0 07            [24] 2108 	push	ar7
      00071C 12 02 C8         [24] 2109 	lcall	_i2c_start
                                   2110 ;	main.c:416: i2c_write((DS1307_ADDRESS << 1) | 0);  // Write mode
      00071F 75 82 D0         [24] 2111 	mov	dpl, #0xd0
      000722 12 02 EF         [24] 2112 	lcall	_i2c_write
      000725 D0 07            [24] 2113 	pop	ar7
                                   2114 ;	main.c:417: i2c_write(addr);                       // RAM address
      000727 8F 82            [24] 2115 	mov	dpl, r7
      000729 12 02 EF         [24] 2116 	lcall	_i2c_write
                                   2117 ;	main.c:418: i2c_write(value);                      // Data
      00072C 85 73 82         [24] 2118 	mov	dpl, _ds1307_write_ram_PARM_2
      00072F 12 02 EF         [24] 2119 	lcall	_i2c_write
                                   2120 ;	main.c:419: i2c_stop();
                                   2121 ;	main.c:420: }
      000732 02 02 DD         [24] 2122 	ljmp	_i2c_stop
                                   2123 ;------------------------------------------------------------
                                   2124 ;Allocation info for local variables in function 'ds1307_read_ram'
                                   2125 ;------------------------------------------------------------
                                   2126 ;addr          Allocated to registers r7 
                                   2127 ;data          Allocated to registers r7 
                                   2128 ;------------------------------------------------------------
                                   2129 ;	main.c:423: unsigned char ds1307_read_ram(unsigned char addr) {
                                   2130 ;	-----------------------------------------
                                   2131 ;	 function ds1307_read_ram
                                   2132 ;	-----------------------------------------
      000735                       2133 _ds1307_read_ram:
      000735 AF 82            [24] 2134 	mov	r7, dpl
                                   2135 ;	main.c:426: if (addr < 0x08 || addr > 0x3F) return 0xFF; // Return invalid value if out of range
      000737 BF 08 00         [24] 2136 	cjne	r7,#0x08,00112$
      00073A                       2137 00112$:
      00073A 40 05            [24] 2138 	jc	00101$
      00073C EF               [12] 2139 	mov	a,r7
      00073D 24 C0            [12] 2140 	add	a,#0xff - 0x3f
      00073F 50 04            [24] 2141 	jnc	00102$
      000741                       2142 00101$:
      000741 75 82 FF         [24] 2143 	mov	dpl, #0xff
      000744 22               [24] 2144 	ret
      000745                       2145 00102$:
                                   2146 ;	main.c:428: i2c_start();
      000745 C0 07            [24] 2147 	push	ar7
      000747 12 02 C8         [24] 2148 	lcall	_i2c_start
                                   2149 ;	main.c:429: i2c_write((DS1307_ADDRESS << 1) | 0);  // Write mode to set address pointer
      00074A 75 82 D0         [24] 2150 	mov	dpl, #0xd0
      00074D 12 02 EF         [24] 2151 	lcall	_i2c_write
      000750 D0 07            [24] 2152 	pop	ar7
                                   2153 ;	main.c:430: i2c_write(addr);
      000752 8F 82            [24] 2154 	mov	dpl, r7
      000754 12 02 EF         [24] 2155 	lcall	_i2c_write
                                   2156 ;	main.c:432: i2c_start();                           // Repeated start
      000757 12 02 C8         [24] 2157 	lcall	_i2c_start
                                   2158 ;	main.c:433: i2c_write((DS1307_ADDRESS << 1) | 1);  // Read mode
      00075A 75 82 D1         [24] 2159 	mov	dpl, #0xd1
      00075D 12 02 EF         [24] 2160 	lcall	_i2c_write
                                   2161 ;	main.c:434: data = i2c_read(0);                    // No ACK
      000760 75 82 00         [24] 2162 	mov	dpl, #0x00
      000763 12 03 28         [24] 2163 	lcall	_i2c_read
      000766 AF 82            [24] 2164 	mov	r7, dpl
                                   2165 ;	main.c:435: i2c_stop();
      000768 C0 07            [24] 2166 	push	ar7
      00076A 12 02 DD         [24] 2167 	lcall	_i2c_stop
      00076D D0 07            [24] 2168 	pop	ar7
                                   2169 ;	main.c:437: return data;
      00076F 8F 82            [24] 2170 	mov	dpl, r7
                                   2171 ;	main.c:438: }
      000771 22               [24] 2172 	ret
                                   2173 ;------------------------------------------------------------
                                   2174 ;Allocation info for local variables in function 'write_alarm_to_ds1307'
                                   2175 ;------------------------------------------------------------
                                   2176 ;h             Allocated with name '_write_alarm_to_ds1307_PARM_2'
                                   2177 ;m             Allocated with name '_write_alarm_to_ds1307_PARM_3'
                                   2178 ;index         Allocated to registers r7 
                                   2179 ;------------------------------------------------------------
                                   2180 ;	main.c:441: void write_alarm_to_ds1307(unsigned char index, unsigned char h, unsigned char m) {
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function write_alarm_to_ds1307
                                   2183 ;	-----------------------------------------
      000772                       2184 _write_alarm_to_ds1307:
                                   2185 ;	main.c:442: ds1307_write_ram(ALARM_RAM_BASE + (index * 2) + 1, h);
      000772 E5 82            [12] 2186 	mov	a,dpl
      000774 25 82            [12] 2187 	add	a,dpl
      000776 FF               [12] 2188 	mov	r7,a
      000777 24 09            [12] 2189 	add	a,#0x09
      000779 F5 82            [12] 2190 	mov	dpl,a
      00077B 85 74 73         [24] 2191 	mov	_ds1307_write_ram_PARM_2,_write_alarm_to_ds1307_PARM_2
      00077E C0 07            [24] 2192 	push	ar7
      000780 12 07 0D         [24] 2193 	lcall	_ds1307_write_ram
      000783 D0 07            [24] 2194 	pop	ar7
                                   2195 ;	main.c:443: ds1307_write_ram(ALARM_RAM_BASE + (index * 2) + 2, m);
      000785 74 0A            [12] 2196 	mov	a,#0x0a
      000787 2F               [12] 2197 	add	a, r7
      000788 F5 82            [12] 2198 	mov	dpl,a
      00078A 85 75 73         [24] 2199 	mov	_ds1307_write_ram_PARM_2,_write_alarm_to_ds1307_PARM_3
                                   2200 ;	main.c:444: }
      00078D 02 07 0D         [24] 2201 	ljmp	_ds1307_write_ram
                                   2202 ;------------------------------------------------------------
                                   2203 ;Allocation info for local variables in function 'load_alarms_from_ds1307'
                                   2204 ;------------------------------------------------------------
                                   2205 ;count_        Allocated to registers r7 
                                   2206 ;i             Allocated to registers r6 
                                   2207 ;------------------------------------------------------------
                                   2208 ;	main.c:446: void load_alarms_from_ds1307(unsigned char count_) {
                                   2209 ;	-----------------------------------------
                                   2210 ;	 function load_alarms_from_ds1307
                                   2211 ;	-----------------------------------------
      000790                       2212 _load_alarms_from_ds1307:
      000790 AF 82            [24] 2213 	mov	r7, dpl
                                   2214 ;	main.c:447: for (unsigned char i = 0; i < count_; i++) {
      000792 7E 00            [12] 2215 	mov	r6,#0x00
      000794                       2216 00103$:
      000794 C3               [12] 2217 	clr	c
      000795 EE               [12] 2218 	mov	a,r6
      000796 9F               [12] 2219 	subb	a,r7
      000797 50 3D            [24] 2220 	jnc	00105$
                                   2221 ;	main.c:448: alarm_hours[i] = ds1307_read_ram(ALARM_RAM_BASE + (i * 2) + 1);
      000799 EE               [12] 2222 	mov	a,r6
      00079A 24 7D            [12] 2223 	add	a, #_alarm_hours
      00079C F9               [12] 2224 	mov	r1,a
      00079D 8E 05            [24] 2225 	mov	ar5,r6
      00079F ED               [12] 2226 	mov	a,r5
      0007A0 2D               [12] 2227 	add	a,r5
      0007A1 FD               [12] 2228 	mov	r5,a
      0007A2 24 09            [12] 2229 	add	a,#0x09
      0007A4 F5 82            [12] 2230 	mov	dpl,a
      0007A6 C0 07            [24] 2231 	push	ar7
      0007A8 C0 06            [24] 2232 	push	ar6
      0007AA C0 05            [24] 2233 	push	ar5
      0007AC C0 01            [24] 2234 	push	ar1
      0007AE 12 07 35         [24] 2235 	lcall	_ds1307_read_ram
      0007B1 E5 82            [12] 2236 	mov	a, dpl
      0007B3 D0 01            [24] 2237 	pop	ar1
      0007B5 D0 05            [24] 2238 	pop	ar5
      0007B7 D0 06            [24] 2239 	pop	ar6
      0007B9 F7               [12] 2240 	mov	@r1,a
                                   2241 ;	main.c:449: alarm_minutes[i] = ds1307_read_ram(ALARM_RAM_BASE + (i * 2) + 2);
      0007BA EE               [12] 2242 	mov	a,r6
      0007BB 24 85            [12] 2243 	add	a, #_alarm_minutes
      0007BD F9               [12] 2244 	mov	r1,a
      0007BE 74 0A            [12] 2245 	mov	a,#0x0a
      0007C0 2D               [12] 2246 	add	a, r5
      0007C1 F5 82            [12] 2247 	mov	dpl,a
      0007C3 C0 06            [24] 2248 	push	ar6
      0007C5 C0 01            [24] 2249 	push	ar1
      0007C7 12 07 35         [24] 2250 	lcall	_ds1307_read_ram
      0007CA E5 82            [12] 2251 	mov	a, dpl
      0007CC D0 01            [24] 2252 	pop	ar1
      0007CE D0 06            [24] 2253 	pop	ar6
      0007D0 D0 07            [24] 2254 	pop	ar7
      0007D2 F7               [12] 2255 	mov	@r1,a
                                   2256 ;	main.c:447: for (unsigned char i = 0; i < count_; i++) {
      0007D3 0E               [12] 2257 	inc	r6
      0007D4 80 BE            [24] 2258 	sjmp	00103$
      0007D6                       2259 00105$:
                                   2260 ;	main.c:451: }
      0007D6 22               [24] 2261 	ret
                                   2262 ;------------------------------------------------------------
                                   2263 ;Allocation info for local variables in function 'set_clock'
                                   2264 ;------------------------------------------------------------
                                   2265 ;	main.c:453: void set_clock() {
                                   2266 ;	-----------------------------------------
                                   2267 ;	 function set_clock
                                   2268 ;	-----------------------------------------
      0007D7                       2269 _set_clock:
                                   2270 ;	main.c:454: index = 0;
      0007D7 E4               [12] 2271 	clr	a
      0007D8 F5 35            [12] 2272 	mov	_index,a
      0007DA F5 36            [12] 2273 	mov	(_index + 1),a
                                   2274 ;	main.c:455: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      0007DC 85 22 82         [24] 2275 	mov	dpl,_time_date
      0007DF 85 23 6D         [24] 2276 	mov	_display_PARM_2,(_time_date + 0x0001)
      0007E2 85 24 6E         [24] 2277 	mov	_display_PARM_3,(_time_date + 0x0002)
      0007E5 85 26 6F         [24] 2278 	mov	_display_PARM_4,(_time_date + 0x0004)
      0007E8 85 27 70         [24] 2279 	mov	_display_PARM_5,(_time_date + 0x0005)
      0007EB 85 28 71         [24] 2280 	mov	_display_PARM_6,(_time_date + 0x0006)
      0007EE E5 25            [12] 2281 	mov	a,(_time_date + 0x0003)
      0007F0 04               [12] 2282 	inc	a
      0007F1 F5 72            [12] 2283 	mov	_display_PARM_7,a
      0007F3 12 05 4D         [24] 2284 	lcall	_display
                                   2285 ;	main.c:457: while (index < 7) {
      0007F6                       2286 00116$:
      0007F6 C3               [12] 2287 	clr	c
      0007F7 E5 35            [12] 2288 	mov	a,_index
      0007F9 94 07            [12] 2289 	subb	a,#0x07
      0007FB E5 36            [12] 2290 	mov	a,(_index + 1)
      0007FD 64 80            [12] 2291 	xrl	a,#0x80
      0007FF 94 80            [12] 2292 	subb	a,#0x80
      000801 40 03            [24] 2293 	jc	00177$
      000803 02 08 E1         [24] 2294 	ljmp	00118$
      000806                       2295 00177$:
                                   2296 ;	main.c:458: delay(10000);
      000806 90 27 10         [24] 2297 	mov	dptr,#0x2710
      000809 12 01 15         [24] 2298 	lcall	_delay
                                   2299 ;	main.c:459: if (!up) {
      00080C 20 B4 48         [24] 2300 	jb	_up,00104$
                                   2301 ;	main.c:460: delay(10000); // debounce
      00080F 90 27 10         [24] 2302 	mov	dptr,#0x2710
      000812 12 01 15         [24] 2303 	lcall	_delay
                                   2304 ;	main.c:461: time_date[index]++;
      000815 E5 35            [12] 2305 	mov	a,_index
      000817 24 22            [12] 2306 	add	a, #_time_date
      000819 F9               [12] 2307 	mov	r1,a
      00081A 07               [12] 2308 	inc	@r1
      00081B E7               [12] 2309 	mov	a,@r1
                                   2310 ;	main.c:462: if (time_date[index] >= max_vals[index]) {
      00081C E5 35            [12] 2311 	mov	a,_index
      00081E 24 22            [12] 2312 	add	a, #_time_date
      000820 F9               [12] 2313 	mov	r1,a
      000821 87 07            [24] 2314 	mov	ar7,@r1
      000823 E5 35            [12] 2315 	mov	a,_index
      000825 24 8D            [12] 2316 	add	a, #_max_vals
      000827 F8               [12] 2317 	mov	r0,a
      000828 86 06            [24] 2318 	mov	ar6,@r0
      00082A C3               [12] 2319 	clr	c
      00082B EF               [12] 2320 	mov	a,r7
      00082C 9E               [12] 2321 	subb	a,r6
      00082D 40 09            [24] 2322 	jc	00102$
                                   2323 ;	main.c:463: time_date[index] = min_vals[index];
      00082F E5 35            [12] 2324 	mov	a,_index
      000831 24 94            [12] 2325 	add	a, #_min_vals
      000833 F8               [12] 2326 	mov	r0,a
      000834 86 07            [24] 2327 	mov	ar7,@r0
      000836 A7 07            [24] 2328 	mov	@r1,ar7
      000838                       2329 00102$:
                                   2330 ;	main.c:465: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      000838 85 22 82         [24] 2331 	mov	dpl,_time_date
      00083B 85 23 6D         [24] 2332 	mov	_display_PARM_2,(_time_date + 0x0001)
      00083E 85 24 6E         [24] 2333 	mov	_display_PARM_3,(_time_date + 0x0002)
      000841 85 26 6F         [24] 2334 	mov	_display_PARM_4,(_time_date + 0x0004)
      000844 85 27 70         [24] 2335 	mov	_display_PARM_5,(_time_date + 0x0005)
      000847 85 28 71         [24] 2336 	mov	_display_PARM_6,(_time_date + 0x0006)
      00084A E5 25            [12] 2337 	mov	a,(_time_date + 0x0003)
      00084C 04               [12] 2338 	inc	a
      00084D F5 72            [12] 2339 	mov	_display_PARM_7,a
      00084F 12 05 4D         [24] 2340 	lcall	_display
                                   2341 ;	main.c:466: idle_counter = 0;
      000852 E4               [12] 2342 	clr	a
      000853 F5 2A            [12] 2343 	mov	_idle_counter,a
      000855 F5 2B            [12] 2344 	mov	(_idle_counter + 1),a
      000857                       2345 00104$:
                                   2346 ;	main.c:469: if (!down) {
      000857 20 B5 45         [24] 2347 	jb	_down,00109$
                                   2348 ;	main.c:470: delay(10000); // debounce
      00085A 90 27 10         [24] 2349 	mov	dptr,#0x2710
      00085D 12 01 15         [24] 2350 	lcall	_delay
                                   2351 ;	main.c:471: if (time_date[index] <= min_vals[index]) {
      000860 E5 35            [12] 2352 	mov	a,_index
      000862 24 22            [12] 2353 	add	a, #_time_date
      000864 F9               [12] 2354 	mov	r1,a
      000865 87 07            [24] 2355 	mov	ar7,@r1
      000867 E5 35            [12] 2356 	mov	a,_index
      000869 24 94            [12] 2357 	add	a, #_min_vals
      00086B F8               [12] 2358 	mov	r0,a
      00086C 86 06            [24] 2359 	mov	ar6,@r0
      00086E C3               [12] 2360 	clr	c
      00086F EE               [12] 2361 	mov	a,r6
      000870 9F               [12] 2362 	subb	a,r7
      000871 40 0A            [24] 2363 	jc	00106$
                                   2364 ;	main.c:472: time_date[index] = max_vals[index] - 1;
      000873 E5 35            [12] 2365 	mov	a,_index
      000875 24 8D            [12] 2366 	add	a, #_max_vals
      000877 F8               [12] 2367 	mov	r0,a
      000878 E6               [12] 2368 	mov	a,@r0
      000879 14               [12] 2369 	dec	a
      00087A F7               [12] 2370 	mov	@r1,a
      00087B 80 03            [24] 2371 	sjmp	00107$
      00087D                       2372 00106$:
                                   2373 ;	main.c:474: time_date[index]--;
      00087D E7               [12] 2374 	mov	a,@r1
      00087E 14               [12] 2375 	dec	a
      00087F F7               [12] 2376 	mov	@r1,a
      000880                       2377 00107$:
                                   2378 ;	main.c:476: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      000880 85 22 82         [24] 2379 	mov	dpl,_time_date
      000883 85 23 6D         [24] 2380 	mov	_display_PARM_2,(_time_date + 0x0001)
      000886 85 24 6E         [24] 2381 	mov	_display_PARM_3,(_time_date + 0x0002)
      000889 85 26 6F         [24] 2382 	mov	_display_PARM_4,(_time_date + 0x0004)
      00088C 85 27 70         [24] 2383 	mov	_display_PARM_5,(_time_date + 0x0005)
      00088F 85 28 71         [24] 2384 	mov	_display_PARM_6,(_time_date + 0x0006)
      000892 E5 25            [12] 2385 	mov	a,(_time_date + 0x0003)
      000894 04               [12] 2386 	inc	a
      000895 F5 72            [12] 2387 	mov	_display_PARM_7,a
      000897 12 05 4D         [24] 2388 	lcall	_display
                                   2389 ;	main.c:477: idle_counter = 0;
      00089A E4               [12] 2390 	clr	a
      00089B F5 2A            [12] 2391 	mov	_idle_counter,a
      00089D F5 2B            [12] 2392 	mov	(_idle_counter + 1),a
      00089F                       2393 00109$:
                                   2394 ;	main.c:480: if (!next) {
      00089F 20 B6 13         [24] 2395 	jb	_next,00111$
                                   2396 ;	main.c:481: delay(10000); // debounce
      0008A2 90 27 10         [24] 2397 	mov	dptr,#0x2710
      0008A5 12 01 15         [24] 2398 	lcall	_delay
                                   2399 ;	main.c:482: index = index+1;
      0008A8 05 35            [12] 2400 	inc	_index
      0008AA E4               [12] 2401 	clr	a
      0008AB B5 35 02         [24] 2402 	cjne	a,_index,00183$
      0008AE 05 36            [12] 2403 	inc	(_index + 1)
      0008B0                       2404 00183$:
                                   2405 ;	main.c:483: idle_counter = 0;
      0008B0 E4               [12] 2406 	clr	a
      0008B1 F5 2A            [12] 2407 	mov	_idle_counter,a
      0008B3 F5 2B            [12] 2408 	mov	(_idle_counter + 1),a
      0008B5                       2409 00111$:
                                   2410 ;	main.c:486: if (!back) {
      0008B5 20 B7 14         [24] 2411 	jb	_back,00113$
                                   2412 ;	main.c:487: delay(10000); // debounce
      0008B8 90 27 10         [24] 2413 	mov	dptr,#0x2710
      0008BB 12 01 15         [24] 2414 	lcall	_delay
                                   2415 ;	main.c:488: index = index-1;
      0008BE 15 35            [12] 2416 	dec	_index
      0008C0 74 FF            [12] 2417 	mov	a,#0xff
      0008C2 B5 35 02         [24] 2418 	cjne	a,_index,00185$
      0008C5 15 36            [12] 2419 	dec	(_index + 1)
      0008C7                       2420 00185$:
                                   2421 ;	main.c:489: idle_counter = 0;
      0008C7 E4               [12] 2422 	clr	a
      0008C8 F5 2A            [12] 2423 	mov	_idle_counter,a
      0008CA F5 2B            [12] 2424 	mov	(_idle_counter + 1),a
      0008CC                       2425 00113$:
                                   2426 ;	main.c:491: if (++idle_counter >30) {
      0008CC 05 2A            [12] 2427 	inc	_idle_counter
      0008CE E4               [12] 2428 	clr	a
      0008CF B5 2A 02         [24] 2429 	cjne	a,_idle_counter,00186$
      0008D2 05 2B            [12] 2430 	inc	(_idle_counter + 1)
      0008D4                       2431 00186$:
      0008D4 C3               [12] 2432 	clr	c
      0008D5 74 1E            [12] 2433 	mov	a,#0x1e
      0008D7 95 2A            [12] 2434 	subb	a,_idle_counter
      0008D9 E4               [12] 2435 	clr	a
      0008DA 95 2B            [12] 2436 	subb	a,(_idle_counter + 1)
      0008DC 40 03            [24] 2437 	jc	00187$
      0008DE 02 07 F6         [24] 2438 	ljmp	00116$
      0008E1                       2439 00187$:
                                   2440 ;	main.c:492: break;
      0008E1                       2441 00118$:
                                   2442 ;	main.c:495: if (idle_counter <= 30) {
      0008E1 C3               [12] 2443 	clr	c
      0008E2 74 1E            [12] 2444 	mov	a,#0x1e
      0008E4 95 2A            [12] 2445 	subb	a,_idle_counter
      0008E6 E4               [12] 2446 	clr	a
      0008E7 95 2B            [12] 2447 	subb	a,(_idle_counter + 1)
      0008E9 40 1A            [24] 2448 	jc	00120$
                                   2449 ;	main.c:496: ds1307_set_time_date(time_date[0], time_date[1], time_date[2], time_date[3] + 1, time_date[4], time_date[5], time_date[6]);
      0008EB 85 22 82         [24] 2450 	mov	dpl,_time_date
      0008EE 85 23 55         [24] 2451 	mov	_ds1307_set_time_date_PARM_2,(_time_date + 0x0001)
      0008F1 85 24 56         [24] 2452 	mov	_ds1307_set_time_date_PARM_3,(_time_date + 0x0002)
      0008F4 E5 25            [12] 2453 	mov	a,(_time_date + 0x0003)
      0008F6 04               [12] 2454 	inc	a
      0008F7 F5 57            [12] 2455 	mov	_ds1307_set_time_date_PARM_4,a
      0008F9 85 26 58         [24] 2456 	mov	_ds1307_set_time_date_PARM_5,(_time_date + 0x0004)
      0008FC 85 27 59         [24] 2457 	mov	_ds1307_set_time_date_PARM_6,(_time_date + 0x0005)
      0008FF 85 28 5A         [24] 2458 	mov	_ds1307_set_time_date_PARM_7,(_time_date + 0x0006)
      000902 12 03 C8         [24] 2459 	lcall	_ds1307_set_time_date
      000905                       2460 00120$:
                                   2461 ;	main.c:499: idle_counter = 0;
      000905 E4               [12] 2462 	clr	a
      000906 F5 2A            [12] 2463 	mov	_idle_counter,a
      000908 F5 2B            [12] 2464 	mov	(_idle_counter + 1),a
                                   2465 ;	main.c:500: }
      00090A 22               [24] 2466 	ret
                                   2467 ;------------------------------------------------------------
                                   2468 ;Allocation info for local variables in function 'set_alarms'
                                   2469 ;------------------------------------------------------------
                                   2470 ;i             Allocated to registers r7 
                                   2471 ;------------------------------------------------------------
                                   2472 ;	main.c:503: void set_alarms() {
                                   2473 ;	-----------------------------------------
                                   2474 ;	 function set_alarms
                                   2475 ;	-----------------------------------------
      00090B                       2476 _set_alarms:
                                   2477 ;	main.c:505: lcd_clear();
      00090B 12 02 00         [24] 2478 	lcall	_lcd_clear
                                   2479 ;	main.c:506: lcd_goto(0, 0);
      00090E 75 54 00         [24] 2480 	mov	_lcd_goto_PARM_2,#0x00
      000911 75 82 00         [24] 2481 	mov	dpl, #0x00
      000914 12 02 0C         [24] 2482 	lcall	_lcd_goto
                                   2483 ;	main.c:507: lcd_string(" How many alarms");
      000917 90 0F E3         [24] 2484 	mov	dptr,#___str_0
      00091A 75 F0 80         [24] 2485 	mov	b, #0x80
      00091D 12 01 D5         [24] 2486 	lcall	_lcd_string
                                   2487 ;	main.c:508: while (1) {
      000920                       2488 00114$:
                                   2489 ;	main.c:509: lcd_goto(1, 6);
      000920 75 54 06         [24] 2490 	mov	_lcd_goto_PARM_2,#0x06
      000923 75 82 01         [24] 2491 	mov	dpl, #0x01
      000926 12 02 0C         [24] 2492 	lcall	_lcd_goto
                                   2493 ;	main.c:510: lcd_char(num_alarms + '0');
      000929 AF 29            [24] 2494 	mov	r7,_num_alarms
      00092B 74 30            [12] 2495 	mov	a,#0x30
      00092D 2F               [12] 2496 	add	a, r7
      00092E F5 82            [12] 2497 	mov	dpl,a
      000930 12 01 B4         [24] 2498 	lcall	_lcd_char
                                   2499 ;	main.c:511: delay(10000);
      000933 90 27 10         [24] 2500 	mov	dptr,#0x2710
      000936 12 01 15         [24] 2501 	lcall	_delay
                                   2502 ;	main.c:513: if (!up) {
      000939 20 B4 13         [24] 2503 	jb	_up,00104$
                                   2504 ;	main.c:514: delay(10000);
      00093C 90 27 10         [24] 2505 	mov	dptr,#0x2710
      00093F 12 01 15         [24] 2506 	lcall	_delay
                                   2507 ;	main.c:515: if (num_alarms < NUM_ALARMS) num_alarms++;
      000942 74 F8            [12] 2508 	mov	a,#0x100 - 0x08
      000944 25 29            [12] 2509 	add	a,_num_alarms
      000946 40 02            [24] 2510 	jc	00102$
      000948 05 29            [12] 2511 	inc	_num_alarms
      00094A                       2512 00102$:
                                   2513 ;	main.c:516: idle_counter = 0;
      00094A E4               [12] 2514 	clr	a
      00094B F5 2A            [12] 2515 	mov	_idle_counter,a
      00094D F5 2B            [12] 2516 	mov	(_idle_counter + 1),a
      00094F                       2517 00104$:
                                   2518 ;	main.c:519: if (!down) {
      00094F 20 B5 13         [24] 2519 	jb	_down,00108$
                                   2520 ;	main.c:520: delay(10000);
      000952 90 27 10         [24] 2521 	mov	dptr,#0x2710
      000955 12 01 15         [24] 2522 	lcall	_delay
                                   2523 ;	main.c:521: if (num_alarms > 1) num_alarms--;
      000958 E5 29            [12] 2524 	mov	a,_num_alarms
      00095A 24 FE            [12] 2525 	add	a,#0xff - 0x01
      00095C 50 02            [24] 2526 	jnc	00106$
      00095E 15 29            [12] 2527 	dec	_num_alarms
      000960                       2528 00106$:
                                   2529 ;	main.c:522: idle_counter = 0;
      000960 E4               [12] 2530 	clr	a
      000961 F5 2A            [12] 2531 	mov	_idle_counter,a
      000963 F5 2B            [12] 2532 	mov	(_idle_counter + 1),a
      000965                       2533 00108$:
                                   2534 ;	main.c:525: if (!next) {
      000965 20 B6 11         [24] 2535 	jb	_next,00110$
                                   2536 ;	main.c:526: delay(10000);
      000968 90 27 10         [24] 2537 	mov	dptr,#0x2710
      00096B 12 01 15         [24] 2538 	lcall	_delay
                                   2539 ;	main.c:527: ds1307_write_ram(0x08, num_alarms);
      00096E 85 29 73         [24] 2540 	mov	_ds1307_write_ram_PARM_2,_num_alarms
      000971 75 82 08         [24] 2541 	mov	dpl, #0x08
      000974 12 07 0D         [24] 2542 	lcall	_ds1307_write_ram
                                   2543 ;	main.c:528: break;
      000977 80 36            [24] 2544 	sjmp	00174$
      000979                       2545 00110$:
                                   2546 ;	main.c:531: if (++idle_counter > 30) {
      000979 05 2A            [12] 2547 	inc	_idle_counter
      00097B E4               [12] 2548 	clr	a
      00097C B5 2A 02         [24] 2549 	cjne	a,_idle_counter,00295$
      00097F 05 2B            [12] 2550 	inc	(_idle_counter + 1)
      000981                       2551 00295$:
      000981 C3               [12] 2552 	clr	c
      000982 74 1E            [12] 2553 	mov	a,#0x1e
      000984 95 2A            [12] 2554 	subb	a,_idle_counter
      000986 E4               [12] 2555 	clr	a
      000987 95 2B            [12] 2556 	subb	a,(_idle_counter + 1)
      000989 50 95            [24] 2557 	jnc	00114$
                                   2558 ;	main.c:532: lcd_clear();
      00098B 12 02 00         [24] 2559 	lcall	_lcd_clear
                                   2560 ;	main.c:533: lcd_goto(0,0);
      00098E 75 54 00         [24] 2561 	mov	_lcd_goto_PARM_2,#0x00
      000991 75 82 00         [24] 2562 	mov	dpl, #0x00
      000994 12 02 0C         [24] 2563 	lcall	_lcd_goto
                                   2564 ;	main.c:534: lcd_string(" Time limit exc!");
      000997 90 0F F4         [24] 2565 	mov	dptr,#___str_1
      00099A 75 F0 80         [24] 2566 	mov	b, #0x80
      00099D 12 01 D5         [24] 2567 	lcall	_lcd_string
                                   2568 ;	main.c:535: delay_ms(3000);
      0009A0 90 0B B8         [24] 2569 	mov	dptr,#0x0bb8
      0009A3 12 01 39         [24] 2570 	lcall	_delay_ms
                                   2571 ;	main.c:536: lcd_clear();
      0009A6 12 02 00         [24] 2572 	lcall	_lcd_clear
                                   2573 ;	main.c:537: idle_counter = 0;
      0009A9 E4               [12] 2574 	clr	a
      0009AA F5 2A            [12] 2575 	mov	_idle_counter,a
      0009AC F5 2B            [12] 2576 	mov	(_idle_counter + 1),a
                                   2577 ;	main.c:538: return;  //time exceeded
      0009AE 22               [24] 2578 	ret
                                   2579 ;	main.c:543: for (unsigned char i = 0; i < num_alarms; i++) {
      0009AF                       2580 00174$:
      0009AF 7F 00            [12] 2581 	mov	r7,#0x00
      0009B1                       2582 00144$:
      0009B1 C3               [12] 2583 	clr	c
      0009B2 EF               [12] 2584 	mov	a,r7
      0009B3 95 29            [12] 2585 	subb	a,_num_alarms
      0009B5 40 03            [24] 2586 	jc	00297$
      0009B7 02 0B E5         [24] 2587 	ljmp	00142$
      0009BA                       2588 00297$:
                                   2589 ;	main.c:544: idle_counter = 0;
      0009BA E4               [12] 2590 	clr	a
      0009BB F5 2A            [12] 2591 	mov	_idle_counter,a
      0009BD F5 2B            [12] 2592 	mov	(_idle_counter + 1),a
                                   2593 ;	main.c:547: lcd_clear();
      0009BF C0 07            [24] 2594 	push	ar7
      0009C1 12 02 00         [24] 2595 	lcall	_lcd_clear
                                   2596 ;	main.c:548: lcd_goto(0, 0);
      0009C4 75 54 00         [24] 2597 	mov	_lcd_goto_PARM_2,#0x00
      0009C7 75 82 00         [24] 2598 	mov	dpl, #0x00
      0009CA 12 02 0C         [24] 2599 	lcall	_lcd_goto
                                   2600 ;	main.c:549: lcd_string(" Set Hour Alarm ");
      0009CD 90 10 05         [24] 2601 	mov	dptr,#___str_2
      0009D0 75 F0 80         [24] 2602 	mov	b, #0x80
      0009D3 12 01 D5         [24] 2603 	lcall	_lcd_string
                                   2604 ;	main.c:550: lcd_goto(1, 0);
      0009D6 75 54 00         [24] 2605 	mov	_lcd_goto_PARM_2,#0x00
      0009D9 75 82 01         [24] 2606 	mov	dpl, #0x01
      0009DC 12 02 0C         [24] 2607 	lcall	_lcd_goto
                                   2608 ;	main.c:551: lcd_string("Alarm ");
      0009DF 90 10 16         [24] 2609 	mov	dptr,#___str_3
      0009E2 75 F0 80         [24] 2610 	mov	b, #0x80
      0009E5 12 01 D5         [24] 2611 	lcall	_lcd_string
      0009E8 D0 07            [24] 2612 	pop	ar7
                                   2613 ;	main.c:552: lcd_char('1' + i);
      0009EA 8F 06            [24] 2614 	mov	ar6,r7
      0009EC 74 31            [12] 2615 	mov	a,#0x31
      0009EE 2E               [12] 2616 	add	a, r6
      0009EF F5 82            [12] 2617 	mov	dpl,a
      0009F1 C0 07            [24] 2618 	push	ar7
      0009F3 12 01 B4         [24] 2619 	lcall	_lcd_char
      0009F6 D0 07            [24] 2620 	pop	ar7
                                   2621 ;	main.c:554: while (1) {
      0009F8                       2622 00127$:
                                   2623 ;	main.c:555: lcd_goto(1, 9);
      0009F8 75 54 09         [24] 2624 	mov	_lcd_goto_PARM_2,#0x09
      0009FB 75 82 01         [24] 2625 	mov	dpl, #0x01
      0009FE C0 07            [24] 2626 	push	ar7
      000A00 12 02 0C         [24] 2627 	lcall	_lcd_goto
                                   2628 ;	main.c:556: int_to_str(hr, buf);
      000A03 75 08 4D         [24] 2629 	mov	_int_to_str_PARM_2,#_buf
      000A06 75 09 00         [24] 2630 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000A09 75 0A 40         [24] 2631 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000A0C 85 50 82         [24] 2632 	mov	dpl, _hr
      000A0F 12 02 77         [24] 2633 	lcall	_int_to_str
                                   2634 ;	main.c:557: lcd_string(buf);
      000A12 90 00 4D         [24] 2635 	mov	dptr,#_buf
      000A15 75 F0 40         [24] 2636 	mov	b, #0x40
      000A18 12 01 D5         [24] 2637 	lcall	_lcd_string
                                   2638 ;	main.c:558: delay(10000);
      000A1B 90 27 10         [24] 2639 	mov	dptr,#0x2710
      000A1E 12 01 15         [24] 2640 	lcall	_delay
      000A21 D0 07            [24] 2641 	pop	ar7
                                   2642 ;	main.c:560: if (!up) {
      000A23 20 B4 24         [24] 2643 	jb	_up,00117$
                                   2644 ;	main.c:561: delay(10000);
      000A26 90 27 10         [24] 2645 	mov	dptr,#0x2710
      000A29 C0 07            [24] 2646 	push	ar7
      000A2B 12 01 15         [24] 2647 	lcall	_delay
                                   2648 ;	main.c:562: hr = (hr + 1) % 24;
      000A2E AD 50            [24] 2649 	mov	r5,_hr
      000A30 7E 00            [12] 2650 	mov	r6,#0x00
      000A32 8D 82            [24] 2651 	mov	dpl,r5
      000A34 8E 83            [24] 2652 	mov	dph,r6
      000A36 A3               [24] 2653 	inc	dptr
      000A37 75 08 18         [24] 2654 	mov	__modsint_PARM_2,#0x18
      000A3A 8E 09            [24] 2655 	mov	(__modsint_PARM_2 + 1),r6
      000A3C 12 0F A9         [24] 2656 	lcall	__modsint
      000A3F AD 82            [24] 2657 	mov	r5, dpl
      000A41 D0 07            [24] 2658 	pop	ar7
      000A43 8D 50            [24] 2659 	mov	_hr,r5
                                   2660 ;	main.c:563: idle_counter = 0;
      000A45 E4               [12] 2661 	clr	a
      000A46 F5 2A            [12] 2662 	mov	_idle_counter,a
      000A48 F5 2B            [12] 2663 	mov	(_idle_counter + 1),a
      000A4A                       2664 00117$:
                                   2665 ;	main.c:565: if (!down) {
      000A4A 20 B5 21         [24] 2666 	jb	_down,00119$
                                   2667 ;	main.c:566: delay(10000);
      000A4D 90 27 10         [24] 2668 	mov	dptr,#0x2710
      000A50 C0 07            [24] 2669 	push	ar7
      000A52 12 01 15         [24] 2670 	lcall	_delay
      000A55 D0 07            [24] 2671 	pop	ar7
                                   2672 ;	main.c:567: hr = (hr == 0) ? 23 : hr - 1;
      000A57 E5 50            [12] 2673 	mov	a,_hr
      000A59 70 04            [24] 2674 	jnz	00148$
      000A5B 7D 17            [12] 2675 	mov	r5,#0x17
      000A5D 80 08            [24] 2676 	sjmp	00149$
      000A5F                       2677 00148$:
      000A5F AC 50            [24] 2678 	mov	r4,_hr
      000A61 1C               [12] 2679 	dec	r4
      000A62 EC               [12] 2680 	mov	a,r4
      000A63 FD               [12] 2681 	mov	r5,a
      000A64 33               [12] 2682 	rlc	a
      000A65 95 E0            [12] 2683 	subb	a,acc
      000A67                       2684 00149$:
      000A67 8D 50            [24] 2685 	mov	_hr,r5
                                   2686 ;	main.c:568: idle_counter = 0;
      000A69 E4               [12] 2687 	clr	a
      000A6A F5 2A            [12] 2688 	mov	_idle_counter,a
      000A6C F5 2B            [12] 2689 	mov	(_idle_counter + 1),a
      000A6E                       2690 00119$:
                                   2691 ;	main.c:570: if (!next) {
      000A6E 20 B6 0C         [24] 2692 	jb	_next,00121$
                                   2693 ;	main.c:571: delay(10000);
      000A71 90 27 10         [24] 2694 	mov	dptr,#0x2710
      000A74 C0 07            [24] 2695 	push	ar7
      000A76 12 01 15         [24] 2696 	lcall	_delay
      000A79 D0 07            [24] 2697 	pop	ar7
                                   2698 ;	main.c:572: break;
      000A7B 80 3A            [24] 2699 	sjmp	00128$
      000A7D                       2700 00121$:
                                   2701 ;	main.c:574: if (!back) return;
      000A7D 20 B7 01         [24] 2702 	jb	_back,00123$
      000A80 22               [24] 2703 	ret
      000A81                       2704 00123$:
                                   2705 ;	main.c:576: if (++idle_counter > 30) {
      000A81 05 2A            [12] 2706 	inc	_idle_counter
      000A83 E4               [12] 2707 	clr	a
      000A84 B5 2A 02         [24] 2708 	cjne	a,_idle_counter,00303$
      000A87 05 2B            [12] 2709 	inc	(_idle_counter + 1)
      000A89                       2710 00303$:
      000A89 C3               [12] 2711 	clr	c
      000A8A 74 1E            [12] 2712 	mov	a,#0x1e
      000A8C 95 2A            [12] 2713 	subb	a,_idle_counter
      000A8E E4               [12] 2714 	clr	a
      000A8F 95 2B            [12] 2715 	subb	a,(_idle_counter + 1)
      000A91 40 03            [24] 2716 	jc	00304$
      000A93 02 09 F8         [24] 2717 	ljmp	00127$
      000A96                       2718 00304$:
                                   2719 ;	main.c:577: lcd_clear();
      000A96 12 02 00         [24] 2720 	lcall	_lcd_clear
                                   2721 ;	main.c:578: lcd_goto(0,0);
      000A99 75 54 00         [24] 2722 	mov	_lcd_goto_PARM_2,#0x00
      000A9C 75 82 00         [24] 2723 	mov	dpl, #0x00
      000A9F 12 02 0C         [24] 2724 	lcall	_lcd_goto
                                   2725 ;	main.c:579: lcd_string(" Time limit exc!");
      000AA2 90 0F F4         [24] 2726 	mov	dptr,#___str_1
      000AA5 75 F0 80         [24] 2727 	mov	b, #0x80
      000AA8 12 01 D5         [24] 2728 	lcall	_lcd_string
                                   2729 ;	main.c:580: delay_ms(3000);
      000AAB 90 0B B8         [24] 2730 	mov	dptr,#0x0bb8
      000AAE 12 01 39         [24] 2731 	lcall	_delay_ms
                                   2732 ;	main.c:581: idle_counter = 0;
      000AB1 E4               [12] 2733 	clr	a
      000AB2 F5 2A            [12] 2734 	mov	_idle_counter,a
      000AB4 F5 2B            [12] 2735 	mov	(_idle_counter + 1),a
                                   2736 ;	main.c:582: return;  //time exceeded
      000AB6 22               [24] 2737 	ret
      000AB7                       2738 00128$:
                                   2739 ;	main.c:587: idle_counter = 0;
      000AB7 E4               [12] 2740 	clr	a
      000AB8 F5 2A            [12] 2741 	mov	_idle_counter,a
      000ABA F5 2B            [12] 2742 	mov	(_idle_counter + 1),a
                                   2743 ;	main.c:588: lcd_clear();
      000ABC C0 07            [24] 2744 	push	ar7
      000ABE 12 02 00         [24] 2745 	lcall	_lcd_clear
                                   2746 ;	main.c:589: lcd_goto(0, 0);
      000AC1 75 54 00         [24] 2747 	mov	_lcd_goto_PARM_2,#0x00
      000AC4 75 82 00         [24] 2748 	mov	dpl, #0x00
      000AC7 12 02 0C         [24] 2749 	lcall	_lcd_goto
                                   2750 ;	main.c:590: lcd_string(" Set Min Alarm ");
      000ACA 90 10 1D         [24] 2751 	mov	dptr,#___str_4
      000ACD 75 F0 80         [24] 2752 	mov	b, #0x80
      000AD0 12 01 D5         [24] 2753 	lcall	_lcd_string
                                   2754 ;	main.c:591: lcd_goto(1, 0);
      000AD3 75 54 00         [24] 2755 	mov	_lcd_goto_PARM_2,#0x00
      000AD6 75 82 01         [24] 2756 	mov	dpl, #0x01
      000AD9 12 02 0C         [24] 2757 	lcall	_lcd_goto
                                   2758 ;	main.c:592: lcd_string("Alarm ");
      000ADC 90 10 16         [24] 2759 	mov	dptr,#___str_3
      000ADF 75 F0 80         [24] 2760 	mov	b, #0x80
      000AE2 12 01 D5         [24] 2761 	lcall	_lcd_string
      000AE5 D0 07            [24] 2762 	pop	ar7
                                   2763 ;	main.c:593: lcd_char('1' + i);
      000AE7 8F 06            [24] 2764 	mov	ar6,r7
      000AE9 74 31            [12] 2765 	mov	a,#0x31
      000AEB 2E               [12] 2766 	add	a, r6
      000AEC F5 82            [12] 2767 	mov	dpl,a
      000AEE C0 07            [24] 2768 	push	ar7
      000AF0 12 01 B4         [24] 2769 	lcall	_lcd_char
      000AF3 D0 07            [24] 2770 	pop	ar7
                                   2771 ;	main.c:595: while (1) {
      000AF5                       2772 00140$:
                                   2773 ;	main.c:596: lcd_goto(1, 9);
      000AF5 75 54 09         [24] 2774 	mov	_lcd_goto_PARM_2,#0x09
      000AF8 75 82 01         [24] 2775 	mov	dpl, #0x01
      000AFB C0 07            [24] 2776 	push	ar7
      000AFD 12 02 0C         [24] 2777 	lcall	_lcd_goto
                                   2778 ;	main.c:597: int_to_str(min, buf);
      000B00 75 08 4D         [24] 2779 	mov	_int_to_str_PARM_2,#_buf
      000B03 75 09 00         [24] 2780 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000B06 75 0A 40         [24] 2781 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000B09 85 51 82         [24] 2782 	mov	dpl, _min
      000B0C 12 02 77         [24] 2783 	lcall	_int_to_str
                                   2784 ;	main.c:598: lcd_string(buf);
      000B0F 90 00 4D         [24] 2785 	mov	dptr,#_buf
      000B12 75 F0 40         [24] 2786 	mov	b, #0x40
      000B15 12 01 D5         [24] 2787 	lcall	_lcd_string
                                   2788 ;	main.c:599: delay(10000);
      000B18 90 27 10         [24] 2789 	mov	dptr,#0x2710
      000B1B 12 01 15         [24] 2790 	lcall	_delay
      000B1E D0 07            [24] 2791 	pop	ar7
                                   2792 ;	main.c:601: if (!up) {
      000B20 20 B4 24         [24] 2793 	jb	_up,00130$
                                   2794 ;	main.c:602: delay(10000);
      000B23 90 27 10         [24] 2795 	mov	dptr,#0x2710
      000B26 C0 07            [24] 2796 	push	ar7
      000B28 12 01 15         [24] 2797 	lcall	_delay
                                   2798 ;	main.c:603: min = (min + 1) % 60;
      000B2B AD 51            [24] 2799 	mov	r5,_min
      000B2D 7E 00            [12] 2800 	mov	r6,#0x00
      000B2F 8D 82            [24] 2801 	mov	dpl,r5
      000B31 8E 83            [24] 2802 	mov	dph,r6
      000B33 A3               [24] 2803 	inc	dptr
      000B34 75 08 3C         [24] 2804 	mov	__modsint_PARM_2,#0x3c
      000B37 8E 09            [24] 2805 	mov	(__modsint_PARM_2 + 1),r6
      000B39 12 0F A9         [24] 2806 	lcall	__modsint
      000B3C AD 82            [24] 2807 	mov	r5, dpl
      000B3E D0 07            [24] 2808 	pop	ar7
      000B40 8D 51            [24] 2809 	mov	_min,r5
                                   2810 ;	main.c:604: idle_counter = 0;
      000B42 E4               [12] 2811 	clr	a
      000B43 F5 2A            [12] 2812 	mov	_idle_counter,a
      000B45 F5 2B            [12] 2813 	mov	(_idle_counter + 1),a
      000B47                       2814 00130$:
                                   2815 ;	main.c:606: if (!down) {
      000B47 20 B5 21         [24] 2816 	jb	_down,00132$
                                   2817 ;	main.c:607: delay(10000);
      000B4A 90 27 10         [24] 2818 	mov	dptr,#0x2710
      000B4D C0 07            [24] 2819 	push	ar7
      000B4F 12 01 15         [24] 2820 	lcall	_delay
      000B52 D0 07            [24] 2821 	pop	ar7
                                   2822 ;	main.c:608: min = (min == 0) ? 59 : min - 1;
      000B54 E5 51            [12] 2823 	mov	a,_min
      000B56 70 04            [24] 2824 	jnz	00150$
      000B58 7D 3B            [12] 2825 	mov	r5,#0x3b
      000B5A 80 08            [24] 2826 	sjmp	00151$
      000B5C                       2827 00150$:
      000B5C AC 51            [24] 2828 	mov	r4,_min
      000B5E 1C               [12] 2829 	dec	r4
      000B5F EC               [12] 2830 	mov	a,r4
      000B60 FD               [12] 2831 	mov	r5,a
      000B61 33               [12] 2832 	rlc	a
      000B62 95 E0            [12] 2833 	subb	a,acc
      000B64                       2834 00151$:
      000B64 8D 51            [24] 2835 	mov	_min,r5
                                   2836 ;	main.c:609: idle_counter = 0;
      000B66 E4               [12] 2837 	clr	a
      000B67 F5 2A            [12] 2838 	mov	_idle_counter,a
      000B69 F5 2B            [12] 2839 	mov	(_idle_counter + 1),a
      000B6B                       2840 00132$:
                                   2841 ;	main.c:611: if (!next) {
      000B6B 20 B6 0C         [24] 2842 	jb	_next,00134$
                                   2843 ;	main.c:612: delay(10000);
      000B6E 90 27 10         [24] 2844 	mov	dptr,#0x2710
      000B71 C0 07            [24] 2845 	push	ar7
      000B73 12 01 15         [24] 2846 	lcall	_delay
      000B76 D0 07            [24] 2847 	pop	ar7
                                   2848 ;	main.c:613: break;
      000B78 80 3A            [24] 2849 	sjmp	00141$
      000B7A                       2850 00134$:
                                   2851 ;	main.c:615: if (!back) return;
      000B7A 20 B7 01         [24] 2852 	jb	_back,00136$
      000B7D 22               [24] 2853 	ret
      000B7E                       2854 00136$:
                                   2855 ;	main.c:617: if (++idle_counter > 30) {
      000B7E 05 2A            [12] 2856 	inc	_idle_counter
      000B80 E4               [12] 2857 	clr	a
      000B81 B5 2A 02         [24] 2858 	cjne	a,_idle_counter,00310$
      000B84 05 2B            [12] 2859 	inc	(_idle_counter + 1)
      000B86                       2860 00310$:
      000B86 C3               [12] 2861 	clr	c
      000B87 74 1E            [12] 2862 	mov	a,#0x1e
      000B89 95 2A            [12] 2863 	subb	a,_idle_counter
      000B8B E4               [12] 2864 	clr	a
      000B8C 95 2B            [12] 2865 	subb	a,(_idle_counter + 1)
      000B8E 40 03            [24] 2866 	jc	00311$
      000B90 02 0A F5         [24] 2867 	ljmp	00140$
      000B93                       2868 00311$:
                                   2869 ;	main.c:618: lcd_clear();
      000B93 12 02 00         [24] 2870 	lcall	_lcd_clear
                                   2871 ;	main.c:619: lcd_goto(0,0);
      000B96 75 54 00         [24] 2872 	mov	_lcd_goto_PARM_2,#0x00
      000B99 75 82 00         [24] 2873 	mov	dpl, #0x00
      000B9C 12 02 0C         [24] 2874 	lcall	_lcd_goto
                                   2875 ;	main.c:620: lcd_string(" Time limit exc!");
      000B9F 90 0F F4         [24] 2876 	mov	dptr,#___str_1
      000BA2 75 F0 80         [24] 2877 	mov	b, #0x80
      000BA5 12 01 D5         [24] 2878 	lcall	_lcd_string
                                   2879 ;	main.c:621: delay_ms(3000);
      000BA8 90 0B B8         [24] 2880 	mov	dptr,#0x0bb8
      000BAB 12 01 39         [24] 2881 	lcall	_delay_ms
                                   2882 ;	main.c:622: idle_counter = 0;
      000BAE E4               [12] 2883 	clr	a
      000BAF F5 2A            [12] 2884 	mov	_idle_counter,a
      000BB1 F5 2B            [12] 2885 	mov	(_idle_counter + 1),a
                                   2886 ;	main.c:623: return;
      000BB3 22               [24] 2887 	ret
      000BB4                       2888 00141$:
                                   2889 ;	main.c:627: alarm_hours[i] = hr;
      000BB4 EF               [12] 2890 	mov	a,r7
      000BB5 24 7D            [12] 2891 	add	a, #_alarm_hours
      000BB7 F8               [12] 2892 	mov	r0,a
      000BB8 A6 50            [24] 2893 	mov	@r0,_hr
                                   2894 ;	main.c:628: alarm_minutes[i] = min;
      000BBA EF               [12] 2895 	mov	a,r7
      000BBB 24 85            [12] 2896 	add	a, #_alarm_minutes
      000BBD F8               [12] 2897 	mov	r0,a
      000BBE A6 51            [24] 2898 	mov	@r0,_min
                                   2899 ;	main.c:629: write_alarm_to_ds1307(i, hr, min);
      000BC0 85 50 74         [24] 2900 	mov	_write_alarm_to_ds1307_PARM_2,_hr
      000BC3 85 51 75         [24] 2901 	mov	_write_alarm_to_ds1307_PARM_3,_min
      000BC6 8F 82            [24] 2902 	mov	dpl, r7
      000BC8 C0 07            [24] 2903 	push	ar7
      000BCA 12 07 72         [24] 2904 	lcall	_write_alarm_to_ds1307
                                   2905 ;	main.c:631: lcd_clear();
      000BCD 12 02 00         [24] 2906 	lcall	_lcd_clear
                                   2907 ;	main.c:632: lcd_string(" Alarm Saved");
      000BD0 90 10 2D         [24] 2908 	mov	dptr,#___str_5
      000BD3 75 F0 80         [24] 2909 	mov	b, #0x80
      000BD6 12 01 D5         [24] 2910 	lcall	_lcd_string
                                   2911 ;	main.c:633: delay(25000);
      000BD9 90 61 A8         [24] 2912 	mov	dptr,#0x61a8
      000BDC 12 01 15         [24] 2913 	lcall	_delay
      000BDF D0 07            [24] 2914 	pop	ar7
                                   2915 ;	main.c:543: for (unsigned char i = 0; i < num_alarms; i++) {
      000BE1 0F               [12] 2916 	inc	r7
      000BE2 02 09 B1         [24] 2917 	ljmp	00144$
      000BE5                       2918 00142$:
                                   2919 ;	main.c:636: lcd_clear();
      000BE5 12 02 00         [24] 2920 	lcall	_lcd_clear
                                   2921 ;	main.c:637: lcd_string(" All Alarms Saved");
      000BE8 90 10 3A         [24] 2922 	mov	dptr,#___str_6
      000BEB 75 F0 80         [24] 2923 	mov	b, #0x80
      000BEE 12 01 D5         [24] 2924 	lcall	_lcd_string
                                   2925 ;	main.c:638: delay(25000);
      000BF1 90 61 A8         [24] 2926 	mov	dptr,#0x61a8
      000BF4 12 01 15         [24] 2927 	lcall	_delay
                                   2928 ;	main.c:639: lcd_clear();
                                   2929 ;	main.c:640: }
      000BF7 02 02 00         [24] 2930 	ljmp	_lcd_clear
                                   2931 ;------------------------------------------------------------
                                   2932 ;Allocation info for local variables in function 'touch'
                                   2933 ;------------------------------------------------------------
                                   2934 ;	main.c:642: void touch(void) __interrupt(2) {
                                   2935 ;	-----------------------------------------
                                   2936 ;	 function touch
                                   2937 ;	-----------------------------------------
      000BFA                       2938 _touch:
                                   2939 ;	main.c:643: EX1 = 0;
                                   2940 ;	assignBit
      000BFA C2 AA            [12] 2941 	clr	_EX1
                                   2942 ;	main.c:644: touch_sensor = 1;
                                   2943 ;	assignBit
      000BFC D2 01            [12] 2944 	setb	_touch_sensor
                                   2945 ;	main.c:645: EX1 = 1;
                                   2946 ;	assignBit
      000BFE D2 AA            [12] 2947 	setb	_EX1
                                   2948 ;	main.c:646: }
      000C00 32               [24] 2949 	reti
                                   2950 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2951 ;	eliminated unneeded push/pop not_psw
                                   2952 ;	eliminated unneeded push/pop dpl
                                   2953 ;	eliminated unneeded push/pop dph
                                   2954 ;	eliminated unneeded push/pop b
                                   2955 ;	eliminated unneeded push/pop acc
                                   2956 ;------------------------------------------------------------
                                   2957 ;Allocation info for local variables in function 'check_alarms'
                                   2958 ;------------------------------------------------------------
                                   2959 ;m             Allocated with name '_check_alarms_PARM_2'
                                   2960 ;s             Allocated with name '_check_alarms_PARM_3'
                                   2961 ;h             Allocated to registers r7 
                                   2962 ;i             Allocated to registers r6 
                                   2963 ;j             Allocated with name '_check_alarms_j_10000_125'
                                   2964 ;k             Allocated to registers 
                                   2965 ;timeout       Allocated to registers r2 r3 
                                   2966 ;------------------------------------------------------------
                                   2967 ;	main.c:648: void check_alarms(unsigned char h, unsigned char m, unsigned char s) {
                                   2968 ;	-----------------------------------------
                                   2969 ;	 function check_alarms
                                   2970 ;	-----------------------------------------
      000C01                       2971 _check_alarms:
      000C01 AF 82            [24] 2972 	mov	r7, dpl
                                   2973 ;	main.c:651: for (i = 0; i < NUM_ALARMS; i++) {
      000C03 7E 00            [12] 2974 	mov	r6,#0x00
      000C05 C3               [12] 2975 	clr	c
      000C06 E5 77            [12] 2976 	mov	a,_check_alarms_PARM_3
      000C08 94 02            [12] 2977 	subb	a,#0x02
      000C0A E4               [12] 2978 	clr	a
      000C0B 33               [12] 2979 	rlc	a
      000C0C FD               [12] 2980 	mov	r5,a
      000C0D 7C 00            [12] 2981 	mov	r4,#0x00
      000C0F                       2982 00113$:
                                   2983 ;	main.c:652: if (h == alarm_hours[i] && m == alarm_minutes[i] && s < 2) {
      000C0F EC               [12] 2984 	mov	a,r4
      000C10 24 7D            [12] 2985 	add	a, #_alarm_hours
      000C12 F9               [12] 2986 	mov	r1,a
      000C13 87 03            [24] 2987 	mov	ar3,@r1
      000C15 EF               [12] 2988 	mov	a,r7
      000C16 B5 03 02         [24] 2989 	cjne	a,ar3,00173$
      000C19 80 03            [24] 2990 	sjmp	00174$
      000C1B                       2991 00173$:
      000C1B 02 0C C6         [24] 2992 	ljmp	00114$
      000C1E                       2993 00174$:
      000C1E EC               [12] 2994 	mov	a,r4
      000C1F 24 85            [12] 2995 	add	a, #_alarm_minutes
      000C21 F9               [12] 2996 	mov	r1,a
      000C22 E7               [12] 2997 	mov	a,@r1
      000C23 B5 76 02         [24] 2998 	cjne	a,_check_alarms_PARM_2,00175$
      000C26 80 03            [24] 2999 	sjmp	00176$
      000C28                       3000 00175$:
      000C28 02 0C C6         [24] 3001 	ljmp	00114$
      000C2B                       3002 00176$:
      000C2B ED               [12] 3003 	mov	a,r5
      000C2C 70 03            [24] 3004 	jnz	00177$
      000C2E 02 0C C6         [24] 3005 	ljmp	00114$
      000C31                       3006 00177$:
                                   3007 ;	main.c:653: lcd_clear();
      000C31 C0 06            [24] 3008 	push	ar6
      000C33 12 02 00         [24] 3009 	lcall	_lcd_clear
                                   3010 ;	main.c:654: lcd_goto(0, 0);
      000C36 75 54 00         [24] 3011 	mov	_lcd_goto_PARM_2,#0x00
      000C39 75 82 00         [24] 3012 	mov	dpl, #0x00
      000C3C 12 02 0C         [24] 3013 	lcall	_lcd_goto
                                   3014 ;	main.c:655: lcd_string(" Alarm ");
      000C3F 90 10 4C         [24] 3015 	mov	dptr,#___str_7
      000C42 75 F0 80         [24] 3016 	mov	b, #0x80
      000C45 12 01 D5         [24] 3017 	lcall	_lcd_string
      000C48 D0 06            [24] 3018 	pop	ar6
                                   3019 ;	main.c:656: lcd_char('1' + i);  // Optional: Show which alarm triggered
      000C4A 8E 03            [24] 3020 	mov	ar3,r6
      000C4C 74 31            [12] 3021 	mov	a,#0x31
      000C4E 2B               [12] 3022 	add	a, r3
      000C4F F5 82            [12] 3023 	mov	dpl,a
      000C51 12 01 B4         [24] 3024 	lcall	_lcd_char
                                   3025 ;	main.c:657: lcd_goto(1, 0);
      000C54 75 54 00         [24] 3026 	mov	_lcd_goto_PARM_2,#0x00
      000C57 75 82 01         [24] 3027 	mov	dpl, #0x01
      000C5A 12 02 0C         [24] 3028 	lcall	_lcd_goto
                                   3029 ;	main.c:658: lcd_string("Take Medicine");
      000C5D 90 10 54         [24] 3030 	mov	dptr,#___str_8
      000C60 75 F0 80         [24] 3031 	mov	b, #0x80
      000C63 12 01 D5         [24] 3032 	lcall	_lcd_string
                                   3033 ;	main.c:659: BUZZER = 1;
                                   3034 ;	assignBit
      000C66 D2 A0            [12] 3035 	setb	_BUZZER
                                   3036 ;	main.c:660: k = ds1307_read_ram(0x3F);
      000C68 75 82 3F         [24] 3037 	mov	dpl, #0x3f
      000C6B 12 07 35         [24] 3038 	lcall	_ds1307_read_ram
                                   3039 ;	main.c:662: ds1307_write_ram(0x3F, j);
      000C6E 75 73 00         [24] 3040 	mov	_ds1307_write_ram_PARM_2,#0x00
      000C71 75 82 3F         [24] 3041 	mov	dpl, #0x3f
      000C74 12 07 0D         [24] 3042 	lcall	_ds1307_write_ram
                                   3043 ;	main.c:663: for(j = 0; j < STEPS; j++) {
      000C77 75 78 00         [24] 3044 	mov	_check_alarms_j_10000_125,#0x00
      000C7A                       3045 00111$:
                                   3046 ;	main.c:664: step_motor(j);
      000C7A AA 78            [24] 3047 	mov	r2,_check_alarms_j_10000_125
      000C7C 7B 00            [12] 3048 	mov	r3,#0x00
      000C7E 8A 82            [24] 3049 	mov	dpl, r2
      000C80 8B 83            [24] 3050 	mov	dph, r3
      000C82 12 06 7F         [24] 3051 	lcall	_step_motor
                                   3052 ;	main.c:665: delay_ms(3);  // Adjust delay for speed
      000C85 90 00 03         [24] 3053 	mov	dptr,#0x0003
      000C88 12 01 39         [24] 3054 	lcall	_delay_ms
                                   3055 ;	main.c:663: for(j = 0; j < STEPS; j++) {
      000C8B 05 78            [12] 3056 	inc	_check_alarms_j_10000_125
      000C8D 74 77            [12] 3057 	mov	a,#0x100 - 0x89
      000C8F 25 78            [12] 3058 	add	a,_check_alarms_j_10000_125
      000C91 50 E7            [24] 3059 	jnc	00111$
                                   3060 ;	main.c:667: IN1=0;
                                   3061 ;	assignBit
      000C93 C2 A1            [12] 3062 	clr	_IN1
                                   3063 ;	main.c:668: IN2=0;
                                   3064 ;	assignBit
      000C95 C2 A2            [12] 3065 	clr	_IN2
                                   3066 ;	main.c:669: IN3=0;
                                   3067 ;	assignBit
      000C97 C2 A3            [12] 3068 	clr	_IN3
                                   3069 ;	main.c:670: IN4=0; // to save power
                                   3070 ;	assignBit
      000C99 C2 A4            [12] 3071 	clr	_IN4
                                   3072 ;	main.c:674: while (down && timeout < 5000) {  // ~5 sec timeout
      000C9B 7A 00            [12] 3073 	mov	r2,#0x00
      000C9D 7B 00            [12] 3074 	mov	r3,#0x00
      000C9F                       3075 00103$:
      000C9F 30 B5 1E         [24] 3076 	jnb	_down,00105$
      000CA2 C3               [12] 3077 	clr	c
      000CA3 EA               [12] 3078 	mov	a,r2
      000CA4 94 88            [12] 3079 	subb	a,#0x88
      000CA6 EB               [12] 3080 	mov	a,r3
      000CA7 94 13            [12] 3081 	subb	a,#0x13
      000CA9 50 15            [24] 3082 	jnc	00105$
                                   3083 ;	main.c:675: delay_ms(1);
      000CAB 90 00 01         [24] 3084 	mov	dptr,#0x0001
      000CAE C0 03            [24] 3085 	push	ar3
      000CB0 C0 02            [24] 3086 	push	ar2
      000CB2 12 01 39         [24] 3087 	lcall	_delay_ms
      000CB5 D0 02            [24] 3088 	pop	ar2
      000CB7 D0 03            [24] 3089 	pop	ar3
                                   3090 ;	main.c:676: timeout++;
      000CB9 0A               [12] 3091 	inc	r2
      000CBA BA 00 E2         [24] 3092 	cjne	r2,#0x00,00103$
      000CBD 0B               [12] 3093 	inc	r3
      000CBE 80 DF            [24] 3094 	sjmp	00103$
      000CC0                       3095 00105$:
                                   3096 ;	main.c:679: lcd_clear();
      000CC0 12 02 00         [24] 3097 	lcall	_lcd_clear
                                   3098 ;	main.c:680: BUZZER = 0;
                                   3099 ;	assignBit
      000CC3 C2 A0            [12] 3100 	clr	_BUZZER
                                   3101 ;	main.c:681: break;  // Prevent multiple alarms triggering at once
      000CC5 22               [24] 3102 	ret
      000CC6                       3103 00114$:
                                   3104 ;	main.c:651: for (i = 0; i < NUM_ALARMS; i++) {
      000CC6 0C               [12] 3105 	inc	r4
      000CC7 8C 06            [24] 3106 	mov	ar6,r4
      000CC9 BC 08 00         [24] 3107 	cjne	r4,#0x08,00182$
      000CCC                       3108 00182$:
      000CCC 50 03            [24] 3109 	jnc	00183$
      000CCE 02 0C 0F         [24] 3110 	ljmp	00113$
      000CD1                       3111 00183$:
                                   3112 ;	main.c:684: }
      000CD1 22               [24] 3113 	ret
                                   3114 ;------------------------------------------------------------
                                   3115 ;Allocation info for local variables in function 'reset_motor_position'
                                   3116 ;------------------------------------------------------------
                                   3117 ;count         Allocated to registers 
                                   3118 ;total_steps   Allocated to registers 
                                   3119 ;correction_steps Allocated to registers r6 r7 
                                   3120 ;remainder     Allocated to registers r4 r5 
                                   3121 ;ii            Allocated to registers r4 r5 
                                   3122 ;------------------------------------------------------------
                                   3123 ;	main.c:686: void reset_motor_position(void) {
                                   3124 ;	-----------------------------------------
                                   3125 ;	 function reset_motor_position
                                   3126 ;	-----------------------------------------
      000CD2                       3127 _reset_motor_position:
                                   3128 ;	main.c:691: count = ds1307_read_ram(0x3F);
      000CD2 75 82 3F         [24] 3129 	mov	dpl, #0x3f
      000CD5 12 07 35         [24] 3130 	lcall	_ds1307_read_ram
      000CD8 AF 82            [24] 3131 	mov	r7, dpl
                                   3132 ;	main.c:694: total_steps = (unsigned long)count * 137;
      000CDA 8F 08            [24] 3133 	mov	__mulint_PARM_2,r7
      000CDC 75 09 00         [24] 3134 	mov	(__mulint_PARM_2 + 1),#0x00
      000CDF 90 00 89         [24] 3135 	mov	dptr,#0x0089
      000CE2 12 0F 23         [24] 3136 	lcall	__mulint
      000CE5 E5 82            [12] 3137 	mov	a, dpl
      000CE7 85 83 F0         [24] 3138 	mov	b, dph
                                   3139 ;	main.c:697: remainder = total_steps % 4096;
      000CEA FE               [12] 3140 	mov	r6,a
      000CEB 53 F0 0F         [24] 3141 	anl	b,#0x0f
      000CEE AF F0            [24] 3142 	mov	r7,b
      000CF0 8E 04            [24] 3143 	mov	ar4,r6
      000CF2 8F 05            [24] 3144 	mov	ar5,r7
                                   3145 ;	main.c:700: if (remainder != 0) {
      000CF4 EE               [12] 3146 	mov	a,r6
      000CF5 4F               [12] 3147 	orl	a,r7
      000CF6 60 3F            [24] 3148 	jz	00103$
                                   3149 ;	main.c:701: correction_steps = 4096 - remainder;
      000CF8 E4               [12] 3150 	clr	a
      000CF9 C3               [12] 3151 	clr	c
      000CFA 9C               [12] 3152 	subb	a,r4
      000CFB FE               [12] 3153 	mov	r6,a
      000CFC 74 10            [12] 3154 	mov	a,#0x10
      000CFE 9D               [12] 3155 	subb	a,r5
      000CFF FF               [12] 3156 	mov	r7,a
                                   3157 ;	main.c:704: for(ii=0; ii<correction_steps; ii++) {
      000D00 7C 00            [12] 3158 	mov	r4,#0x00
      000D02 7D 00            [12] 3159 	mov	r5,#0x00
      000D04                       3160 00105$:
      000D04 C3               [12] 3161 	clr	c
      000D05 EC               [12] 3162 	mov	a,r4
      000D06 9E               [12] 3163 	subb	a,r6
      000D07 ED               [12] 3164 	mov	a,r5
      000D08 9F               [12] 3165 	subb	a,r7
      000D09 50 24            [24] 3166 	jnc	00101$
                                   3167 ;	main.c:705: step_motor(ii);
      000D0B 8C 82            [24] 3168 	mov	dpl, r4
      000D0D 8D 83            [24] 3169 	mov	dph, r5
      000D0F C0 07            [24] 3170 	push	ar7
      000D11 C0 06            [24] 3171 	push	ar6
      000D13 C0 05            [24] 3172 	push	ar5
      000D15 C0 04            [24] 3173 	push	ar4
      000D17 12 06 7F         [24] 3174 	lcall	_step_motor
                                   3175 ;	main.c:706: delay_ms(3);
      000D1A 90 00 03         [24] 3176 	mov	dptr,#0x0003
      000D1D 12 01 39         [24] 3177 	lcall	_delay_ms
      000D20 D0 04            [24] 3178 	pop	ar4
      000D22 D0 05            [24] 3179 	pop	ar5
      000D24 D0 06            [24] 3180 	pop	ar6
      000D26 D0 07            [24] 3181 	pop	ar7
                                   3182 ;	main.c:704: for(ii=0; ii<correction_steps; ii++) {
      000D28 0C               [12] 3183 	inc	r4
      000D29 BC 00 D8         [24] 3184 	cjne	r4,#0x00,00105$
      000D2C 0D               [12] 3185 	inc	r5
      000D2D 80 D5            [24] 3186 	sjmp	00105$
      000D2F                       3187 00101$:
                                   3188 ;	main.c:708: IN1 = 0;
                                   3189 ;	assignBit
      000D2F C2 A1            [12] 3190 	clr	_IN1
                                   3191 ;	main.c:709: IN2 = 0;
                                   3192 ;	assignBit
      000D31 C2 A2            [12] 3193 	clr	_IN2
                                   3194 ;	main.c:710: IN3 = 0;
                                   3195 ;	assignBit
      000D33 C2 A3            [12] 3196 	clr	_IN3
                                   3197 ;	main.c:711: IN4 = 0;
                                   3198 ;	assignBit
      000D35 C2 A4            [12] 3199 	clr	_IN4
      000D37                       3200 00103$:
                                   3201 ;	main.c:715: ds1307_write_ram(0x3F, 0);
      000D37 75 73 00         [24] 3202 	mov	_ds1307_write_ram_PARM_2,#0x00
      000D3A 75 82 3F         [24] 3203 	mov	dpl, #0x3f
                                   3204 ;	main.c:716: }
      000D3D 02 07 0D         [24] 3205 	ljmp	_ds1307_write_ram
                                   3206 ;------------------------------------------------------------
                                   3207 ;Allocation info for local variables in function 'main'
                                   3208 ;------------------------------------------------------------
                                   3209 ;checker       Allocated with name '_main_checker_10001_141'
                                   3210 ;------------------------------------------------------------
                                   3211 ;	main.c:719: void main() {
                                   3212 ;	-----------------------------------------
                                   3213 ;	 function main
                                   3214 ;	-----------------------------------------
      000D40                       3215 _main:
                                   3216 ;	main.c:720: EA  = 1;   // Enable global interrupts
                                   3217 ;	assignBit
      000D40 D2 AF            [12] 3218 	setb	_EA
                                   3219 ;	main.c:721: EX0 = 1;   // Enable INT0 (P3.2)
                                   3220 ;	assignBit
      000D42 D2 A8            [12] 3221 	setb	_EX0
                                   3222 ;	main.c:722: IT0 = 1;   // Set INT0 to edge-triggered
                                   3223 ;	assignBit
      000D44 D2 88            [12] 3224 	setb	_IT0
                                   3225 ;	main.c:723: EX1 = 1;   // Enable INT1 (P3.3)
                                   3226 ;	assignBit
      000D46 D2 AA            [12] 3227 	setb	_EX1
                                   3228 ;	main.c:724: IT1 = 1;   // Set INT1 to edge-triggered
                                   3229 ;	assignBit
      000D48 D2 8A            [12] 3230 	setb	_IT1
                                   3231 ;	main.c:726: lcd_init();  // initialize lcd
      000D4A 12 02 23         [24] 3232 	lcall	_lcd_init
                                   3233 ;	main.c:727: i2c_init();  // initialize i2c communication prototcol
      000D4D 12 02 BE         [24] 3234 	lcall	_i2c_init
                                   3235 ;	main.c:728: ds1307_init();  //initialize ds1307 rtc
      000D50 12 03 B0         [24] 3236 	lcall	_ds1307_init
                                   3237 ;	main.c:729: num_alarms = ds1307_read_ram(0x08);
      000D53 75 82 08         [24] 3238 	mov	dpl, #0x08
      000D56 12 07 35         [24] 3239 	lcall	_ds1307_read_ram
                                   3240 ;	main.c:730: load_alarms_from_ds1307(num_alarms);
      000D59 85 82 29         [24] 3241 	mov  _num_alarms,dpl
      000D5C 12 07 90         [24] 3242 	lcall	_load_alarms_from_ds1307
                                   3243 ;	main.c:731: BUZZER = 0;
                                   3244 ;	assignBit
      000D5F C2 A0            [12] 3245 	clr	_BUZZER
                                   3246 ;	main.c:734: checker[0] = ds1307_read_ram(0x3B);
      000D61 75 82 3B         [24] 3247 	mov	dpl, #0x3b
      000D64 12 07 35         [24] 3248 	lcall	_ds1307_read_ram
      000D67 E5 82            [12] 3249 	mov	a, dpl
      000D69 F5 79            [12] 3250 	mov	_main_checker_10001_141,a
                                   3251 ;	main.c:735: checker[1] = ds1307_read_ram(0x3C);
      000D6B 75 82 3C         [24] 3252 	mov	dpl, #0x3c
      000D6E 12 07 35         [24] 3253 	lcall	_ds1307_read_ram
      000D71 E5 82            [12] 3254 	mov	a, dpl
      000D73 F5 7A            [12] 3255 	mov	(_main_checker_10001_141 + 0x0001),a
                                   3256 ;	main.c:736: checker[2] = ds1307_read_ram(0x3D);
      000D75 75 82 3D         [24] 3257 	mov	dpl, #0x3d
      000D78 12 07 35         [24] 3258 	lcall	_ds1307_read_ram
      000D7B E5 82            [12] 3259 	mov	a, dpl
      000D7D F5 7B            [12] 3260 	mov	(_main_checker_10001_141 + 0x0002),a
                                   3261 ;	main.c:737: checker[3] = ds1307_read_ram(0x3E);
      000D7F 75 82 3E         [24] 3262 	mov	dpl, #0x3e
      000D82 12 07 35         [24] 3263 	lcall	_ds1307_read_ram
      000D85 E5 82            [12] 3264 	mov	a, dpl
      000D87 F5 7C            [12] 3265 	mov	(_main_checker_10001_141 + 0x0003),a
                                   3266 ;	main.c:739: if(!(checker[0] == 'I' && checker[1] == 'N' && checker[2] == 'I' && checker[3] == 'T')) {
      000D89 74 49            [12] 3267 	mov	a,#0x49
      000D8B B5 79 11         [24] 3268 	cjne	a,_main_checker_10001_141,00101$
      000D8E 74 4E            [12] 3269 	mov	a,#0x4e
      000D90 B5 7A 0C         [24] 3270 	cjne	a,(_main_checker_10001_141 + 0x0001),00101$
      000D93 74 49            [12] 3271 	mov	a,#0x49
      000D95 B5 7B 07         [24] 3272 	cjne	a,(_main_checker_10001_141 + 0x0002),00101$
      000D98 74 54            [12] 3273 	mov	a,#0x54
      000D9A B5 7C 02         [24] 3274 	cjne	a,(_main_checker_10001_141 + 0x0003),00230$
      000D9D 80 2D            [24] 3275 	sjmp	00130$
      000D9F                       3276 00230$:
      000D9F                       3277 00101$:
                                   3278 ;	main.c:740: ds1307_write_ram(0x3B, 'I');
      000D9F 75 73 49         [24] 3279 	mov	_ds1307_write_ram_PARM_2,#0x49
      000DA2 75 82 3B         [24] 3280 	mov	dpl, #0x3b
      000DA5 12 07 0D         [24] 3281 	lcall	_ds1307_write_ram
                                   3282 ;	main.c:741: ds1307_write_ram(0x3C, 'N');
      000DA8 75 73 4E         [24] 3283 	mov	_ds1307_write_ram_PARM_2,#0x4e
      000DAB 75 82 3C         [24] 3284 	mov	dpl, #0x3c
      000DAE 12 07 0D         [24] 3285 	lcall	_ds1307_write_ram
                                   3286 ;	main.c:742: ds1307_write_ram(0x3D, 'I');
      000DB1 75 73 49         [24] 3287 	mov	_ds1307_write_ram_PARM_2,#0x49
      000DB4 75 82 3D         [24] 3288 	mov	dpl, #0x3d
      000DB7 12 07 0D         [24] 3289 	lcall	_ds1307_write_ram
                                   3290 ;	main.c:743: ds1307_write_ram(0x3E, 'T');
      000DBA 75 73 54         [24] 3291 	mov	_ds1307_write_ram_PARM_2,#0x54
      000DBD 75 82 3E         [24] 3292 	mov	dpl, #0x3e
      000DC0 12 07 0D         [24] 3293 	lcall	_ds1307_write_ram
                                   3294 ;	main.c:744: ds1307_write_ram(0x3F, 0x0);
      000DC3 75 73 00         [24] 3295 	mov	_ds1307_write_ram_PARM_2,#0x00
      000DC6 75 82 3F         [24] 3296 	mov	dpl, #0x3f
      000DC9 12 07 0D         [24] 3297 	lcall	_ds1307_write_ram
                                   3298 ;	main.c:748: while (1) {
      000DCC                       3299 00130$:
                                   3300 ;	main.c:750: if (!RESET) {
      000DCC 20 97 03         [24] 3301 	jb	_RESET,00107$
                                   3302 ;	main.c:751: reset_motor_position();
      000DCF 12 0C D2         [24] 3303 	lcall	_reset_motor_position
      000DD2                       3304 00107$:
                                   3305 ;	main.c:755: if (!edit_mode && !touch_sensor) {
      000DD2 20 00 50         [24] 3306 	jb	_edit_mode,00126$
      000DD5 20 01 4D         [24] 3307 	jb	_touch_sensor,00126$
                                   3308 ;	main.c:756: ds1307_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
      000DD8 75 5B 2D         [24] 3309 	mov	_ds1307_get_time_date_PARM_2,#_m
      000DDB 75 5C 00         [24] 3310 	mov	(_ds1307_get_time_date_PARM_2 + 1),#0x00
      000DDE 75 5D 40         [24] 3311 	mov	(_ds1307_get_time_date_PARM_2 + 2),#0x40
      000DE1 75 5E 2E         [24] 3312 	mov	_ds1307_get_time_date_PARM_3,#_s
      000DE4 75 5F 00         [24] 3313 	mov	(_ds1307_get_time_date_PARM_3 + 1),#0x00
      000DE7 75 60 40         [24] 3314 	mov	(_ds1307_get_time_date_PARM_3 + 2),#0x40
      000DEA 75 61 32         [24] 3315 	mov	_ds1307_get_time_date_PARM_4,#_day
      000DED 75 62 00         [24] 3316 	mov	(_ds1307_get_time_date_PARM_4 + 1),#0x00
      000DF0 75 63 40         [24] 3317 	mov	(_ds1307_get_time_date_PARM_4 + 2),#0x40
      000DF3 75 64 2F         [24] 3318 	mov	_ds1307_get_time_date_PARM_5,#_d
      000DF6 75 65 00         [24] 3319 	mov	(_ds1307_get_time_date_PARM_5 + 1),#0x00
      000DF9 75 66 40         [24] 3320 	mov	(_ds1307_get_time_date_PARM_5 + 2),#0x40
      000DFC 75 67 30         [24] 3321 	mov	_ds1307_get_time_date_PARM_6,#_mo
      000DFF 75 68 00         [24] 3322 	mov	(_ds1307_get_time_date_PARM_6 + 1),#0x00
      000E02 75 69 40         [24] 3323 	mov	(_ds1307_get_time_date_PARM_6 + 2),#0x40
      000E05 75 6A 31         [24] 3324 	mov	_ds1307_get_time_date_PARM_7,#_y
      000E08 75 6B 00         [24] 3325 	mov	(_ds1307_get_time_date_PARM_7 + 1),#0x00
      000E0B 75 6C 40         [24] 3326 	mov	(_ds1307_get_time_date_PARM_7 + 2),#0x40
      000E0E 90 00 2C         [24] 3327 	mov	dptr,#_h
      000E11 75 F0 40         [24] 3328 	mov	b, #0x40
      000E14 12 04 1E         [24] 3329 	lcall	_ds1307_get_time_date
                                   3330 ;	main.c:758: check_alarms(h, m, s);
      000E17 85 2D 76         [24] 3331 	mov	_check_alarms_PARM_2,_m
      000E1A 85 2E 77         [24] 3332 	mov	_check_alarms_PARM_3,_s
      000E1D 85 2C 82         [24] 3333 	mov	dpl, _h
      000E20 12 0C 01         [24] 3334 	lcall	_check_alarms
      000E23 80 A7            [24] 3335 	sjmp	00130$
      000E25                       3336 00126$:
                                   3337 ;	main.c:762: else if (edit_mode) {
      000E25 30 00 58         [24] 3338 	jnb	_edit_mode,00123$
                                   3339 ;	main.c:763: lcd_clear();
      000E28 12 02 00         [24] 3340 	lcall	_lcd_clear
                                   3341 ;	main.c:764: lcd_goto(0,0);
      000E2B 75 54 00         [24] 3342 	mov	_lcd_goto_PARM_2,#0x00
      000E2E 75 82 00         [24] 3343 	mov	dpl, #0x00
      000E31 12 02 0C         [24] 3344 	lcall	_lcd_goto
                                   3345 ;	main.c:765: lcd_string(" -> to set clock");
      000E34 90 10 62         [24] 3346 	mov	dptr,#___str_9
      000E37 75 F0 80         [24] 3347 	mov	b, #0x80
      000E3A 12 01 D5         [24] 3348 	lcall	_lcd_string
                                   3349 ;	main.c:766: lcd_goto(1,0);
      000E3D 75 54 00         [24] 3350 	mov	_lcd_goto_PARM_2,#0x00
      000E40 75 82 01         [24] 3351 	mov	dpl, #0x01
      000E43 12 02 0C         [24] 3352 	lcall	_lcd_goto
                                   3353 ;	main.c:767: lcd_string(" <- to set alarm");
      000E46 90 10 73         [24] 3354 	mov	dptr,#___str_10
      000E49 75 F0 80         [24] 3355 	mov	b, #0x80
      000E4C 12 01 D5         [24] 3356 	lcall	_lcd_string
                                   3357 ;	main.c:768: while(next && back);
      000E4F                       3358 00109$:
      000E4F 30 B6 03         [24] 3359 	jnb	_next,00111$
      000E52 20 B7 FA         [24] 3360 	jb	_back,00109$
      000E55                       3361 00111$:
                                   3362 ;	main.c:769: lcd_clear();
      000E55 12 02 00         [24] 3363 	lcall	_lcd_clear
                                   3364 ;	main.c:770: lcd_goto(0,0);
      000E58 75 54 00         [24] 3365 	mov	_lcd_goto_PARM_2,#0x00
      000E5B 75 82 00         [24] 3366 	mov	dpl, #0x00
      000E5E 12 02 0C         [24] 3367 	lcall	_lcd_goto
                                   3368 ;	main.c:771: if (!next) {
      000E61 20 B6 0B         [24] 3369 	jb	_next,00115$
                                   3370 ;	main.c:772: delay(10000);
      000E64 90 27 10         [24] 3371 	mov	dptr,#0x2710
      000E67 12 01 15         [24] 3372 	lcall	_delay
                                   3373 ;	main.c:773: set_clock();
      000E6A 12 07 D7         [24] 3374 	lcall	_set_clock
      000E6D 80 0C            [24] 3375 	sjmp	00116$
      000E6F                       3376 00115$:
                                   3377 ;	main.c:775: else if (!back) {
      000E6F 20 B7 09         [24] 3378 	jb	_back,00116$
                                   3379 ;	main.c:776: delay(10000);
      000E72 90 27 10         [24] 3380 	mov	dptr,#0x2710
      000E75 12 01 15         [24] 3381 	lcall	_delay
                                   3382 ;	main.c:777: set_alarms();
      000E78 12 09 0B         [24] 3383 	lcall	_set_alarms
      000E7B                       3384 00116$:
                                   3385 ;	main.c:779: edit_mode = 0;
                                   3386 ;	assignBit
      000E7B C2 00            [12] 3387 	clr	_edit_mode
      000E7D 02 0D CC         [24] 3388 	ljmp	00130$
      000E80                       3389 00123$:
                                   3390 ;	main.c:782: else if(touch_sensor) {
      000E80 20 01 03         [24] 3391 	jb	_touch_sensor,00239$
      000E83 02 0D CC         [24] 3392 	ljmp	00130$
      000E86                       3393 00239$:
                                   3394 ;	main.c:783: idle_counter = 0;
      000E86 E4               [12] 3395 	clr	a
      000E87 F5 2A            [12] 3396 	mov	_idle_counter,a
      000E89 F5 2B            [12] 3397 	mov	(_idle_counter + 1),a
                                   3398 ;	main.c:784: while(++idle_counter < 1000) {
      000E8B                       3399 00117$:
      000E8B 05 2A            [12] 3400 	inc	_idle_counter
      000E8D E4               [12] 3401 	clr	a
      000E8E B5 2A 02         [24] 3402 	cjne	a,_idle_counter,00240$
      000E91 05 2B            [12] 3403 	inc	(_idle_counter + 1)
      000E93                       3404 00240$:
      000E93 C3               [12] 3405 	clr	c
      000E94 E5 2A            [12] 3406 	mov	a,_idle_counter
      000E96 94 E8            [12] 3407 	subb	a,#0xe8
      000E98 E5 2B            [12] 3408 	mov	a,(_idle_counter + 1)
      000E9A 94 03            [12] 3409 	subb	a,#0x03
      000E9C 50 65            [24] 3410 	jnc	00119$
                                   3411 ;	main.c:785: ds1307_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
      000E9E 75 5B 2D         [24] 3412 	mov	_ds1307_get_time_date_PARM_2,#_m
      000EA1 75 5C 00         [24] 3413 	mov	(_ds1307_get_time_date_PARM_2 + 1),#0x00
      000EA4 75 5D 40         [24] 3414 	mov	(_ds1307_get_time_date_PARM_2 + 2),#0x40
      000EA7 75 5E 2E         [24] 3415 	mov	_ds1307_get_time_date_PARM_3,#_s
      000EAA 75 5F 00         [24] 3416 	mov	(_ds1307_get_time_date_PARM_3 + 1),#0x00
      000EAD 75 60 40         [24] 3417 	mov	(_ds1307_get_time_date_PARM_3 + 2),#0x40
      000EB0 75 61 32         [24] 3418 	mov	_ds1307_get_time_date_PARM_4,#_day
      000EB3 75 62 00         [24] 3419 	mov	(_ds1307_get_time_date_PARM_4 + 1),#0x00
      000EB6 75 63 40         [24] 3420 	mov	(_ds1307_get_time_date_PARM_4 + 2),#0x40
      000EB9 75 64 2F         [24] 3421 	mov	_ds1307_get_time_date_PARM_5,#_d
      000EBC 75 65 00         [24] 3422 	mov	(_ds1307_get_time_date_PARM_5 + 1),#0x00
      000EBF 75 66 40         [24] 3423 	mov	(_ds1307_get_time_date_PARM_5 + 2),#0x40
      000EC2 75 67 30         [24] 3424 	mov	_ds1307_get_time_date_PARM_6,#_mo
      000EC5 75 68 00         [24] 3425 	mov	(_ds1307_get_time_date_PARM_6 + 1),#0x00
      000EC8 75 69 40         [24] 3426 	mov	(_ds1307_get_time_date_PARM_6 + 2),#0x40
      000ECB 75 6A 31         [24] 3427 	mov	_ds1307_get_time_date_PARM_7,#_y
      000ECE 75 6B 00         [24] 3428 	mov	(_ds1307_get_time_date_PARM_7 + 1),#0x00
      000ED1 75 6C 40         [24] 3429 	mov	(_ds1307_get_time_date_PARM_7 + 2),#0x40
      000ED4 90 00 2C         [24] 3430 	mov	dptr,#_h
      000ED7 75 F0 40         [24] 3431 	mov	b, #0x40
      000EDA 12 04 1E         [24] 3432 	lcall	_ds1307_get_time_date
                                   3433 ;	main.c:786: display(h, m, s, d, mo, y, day);
      000EDD 85 2D 6D         [24] 3434 	mov	_display_PARM_2,_m
      000EE0 85 2E 6E         [24] 3435 	mov	_display_PARM_3,_s
      000EE3 85 2F 6F         [24] 3436 	mov	_display_PARM_4,_d
      000EE6 85 30 70         [24] 3437 	mov	_display_PARM_5,_mo
      000EE9 85 31 71         [24] 3438 	mov	_display_PARM_6,_y
      000EEC 85 32 72         [24] 3439 	mov	_display_PARM_7,_day
      000EEF 85 2C 82         [24] 3440 	mov	dpl, _h
      000EF2 12 05 4D         [24] 3441 	lcall	_display
                                   3442 ;	main.c:789: check_alarms(h, m, s);
      000EF5 85 2D 76         [24] 3443 	mov	_check_alarms_PARM_2,_m
      000EF8 85 2E 77         [24] 3444 	mov	_check_alarms_PARM_3,_s
      000EFB 85 2C 82         [24] 3445 	mov	dpl, _h
      000EFE 12 0C 01         [24] 3446 	lcall	_check_alarms
      000F01 80 88            [24] 3447 	sjmp	00117$
      000F03                       3448 00119$:
                                   3449 ;	main.c:791: touch_sensor = 0;
                                   3450 ;	assignBit
      000F03 C2 01            [12] 3451 	clr	_touch_sensor
                                   3452 ;	main.c:795: }
      000F05 02 0D CC         [24] 3453 	ljmp	00130$
                                   3454 	.area CSEG    (CODE)
                                   3455 	.area CONST   (CODE)
                                   3456 	.area CONST   (CODE)
      000FE3                       3457 ___str_0:
      000FE3 20 48 6F 77 20 6D 61  3458 	.ascii " How many alarms"
             6E 79 20 61 6C 61 72
             6D 73
      000FF3 00                    3459 	.db 0x00
                                   3460 	.area CSEG    (CODE)
                                   3461 	.area CONST   (CODE)
      000FF4                       3462 ___str_1:
      000FF4 20 54 69 6D 65 20 6C  3463 	.ascii " Time limit exc!"
             69 6D 69 74 20 65 78
             63 21
      001004 00                    3464 	.db 0x00
                                   3465 	.area CSEG    (CODE)
                                   3466 	.area CONST   (CODE)
      001005                       3467 ___str_2:
      001005 20 53 65 74 20 48 6F  3468 	.ascii " Set Hour Alarm "
             75 72 20 41 6C 61 72
             6D 20
      001015 00                    3469 	.db 0x00
                                   3470 	.area CSEG    (CODE)
                                   3471 	.area CONST   (CODE)
      001016                       3472 ___str_3:
      001016 41 6C 61 72 6D 20     3473 	.ascii "Alarm "
      00101C 00                    3474 	.db 0x00
                                   3475 	.area CSEG    (CODE)
                                   3476 	.area CONST   (CODE)
      00101D                       3477 ___str_4:
      00101D 20 53 65 74 20 4D 69  3478 	.ascii " Set Min Alarm "
             6E 20 41 6C 61 72 6D
             20
      00102C 00                    3479 	.db 0x00
                                   3480 	.area CSEG    (CODE)
                                   3481 	.area CONST   (CODE)
      00102D                       3482 ___str_5:
      00102D 20 41 6C 61 72 6D 20  3483 	.ascii " Alarm Saved"
             53 61 76 65 64
      001039 00                    3484 	.db 0x00
                                   3485 	.area CSEG    (CODE)
                                   3486 	.area CONST   (CODE)
      00103A                       3487 ___str_6:
      00103A 20 41 6C 6C 20 41 6C  3488 	.ascii " All Alarms Saved"
             61 72 6D 73 20 53 61
             76 65 64
      00104B 00                    3489 	.db 0x00
                                   3490 	.area CSEG    (CODE)
                                   3491 	.area CONST   (CODE)
      00104C                       3492 ___str_7:
      00104C 20 41 6C 61 72 6D 20  3493 	.ascii " Alarm "
      001053 00                    3494 	.db 0x00
                                   3495 	.area CSEG    (CODE)
                                   3496 	.area CONST   (CODE)
      001054                       3497 ___str_8:
      001054 54 61 6B 65 20 4D 65  3498 	.ascii "Take Medicine"
             64 69 63 69 6E 65
      001061 00                    3499 	.db 0x00
                                   3500 	.area CSEG    (CODE)
                                   3501 	.area CONST   (CODE)
      001062                       3502 ___str_9:
      001062 20 2D 3E 20 74 6F 20  3503 	.ascii " -> to set clock"
             73 65 74 20 63 6C 6F
             63 6B
      001072 00                    3504 	.db 0x00
                                   3505 	.area CSEG    (CODE)
                                   3506 	.area CONST   (CODE)
      001073                       3507 ___str_10:
      001073 20 3C 2D 20 74 6F 20  3508 	.ascii " <- to set alarm"
             73 65 74 20 61 6C 61
             72 6D
      001083 00                    3509 	.db 0x00
                                   3510 	.area CSEG    (CODE)
                                   3511 	.area XINIT   (CODE)
                                   3512 	.area CABS    (ABS,CODE)

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
                                     11 	.globl _alarm_arranger_PARM_3
                                     12 	.globl _alarm_arranger_PARM_2
                                     13 	.globl _int_to_str_PARM_2
                                     14 	.globl _main
                                     15 	.globl _configuration
                                     16 	.globl _alarm_triggered
                                     17 	.globl _set_alarms
                                     18 	.globl _set_clock
                                     19 	.globl _ds3232_set_alarm1
                                     20 	.globl _alarm_arranger
                                     21 	.globl _write_alarm_to_eeprom
                                     22 	.globl _read_eeprom
                                     23 	.globl _write_eeprom
                                     24 	.globl _step_motor
                                     25 	.globl _display
                                     26 	.globl _ds3232_get_time_date
                                     27 	.globl _ds3232_set_time_date
                                     28 	.globl _ds3232_init
                                     29 	.globl _bcd_to_dec
                                     30 	.globl _dec_to_bcd
                                     31 	.globl _i2c_read
                                     32 	.globl _i2c_write
                                     33 	.globl _i2c_stop
                                     34 	.globl _i2c_start
                                     35 	.globl _i2c_init
                                     36 	.globl _int_to_str
                                     37 	.globl _lcd_init
                                     38 	.globl _lcd_goto
                                     39 	.globl _lcd_clear
                                     40 	.globl _lcd_string
                                     41 	.globl _lcd_char
                                     42 	.globl _lcd_cmd
                                     43 	.globl _send_nibble
                                     44 	.globl _pulse_enable
                                     45 	.globl _delay_ms
                                     46 	.globl _delay
                                     47 	.globl _POWER_PULSE
                                     48 	.globl _BUZZER
                                     49 	.globl _IN4
                                     50 	.globl _IN3
                                     51 	.globl _IN2
                                     52 	.globl _IN1
                                     53 	.globl _SCL
                                     54 	.globl _SDA
                                     55 	.globl _back
                                     56 	.globl _next
                                     57 	.globl _down
                                     58 	.globl _up
                                     59 	.globl _LCD_D7
                                     60 	.globl _LCD_D6
                                     61 	.globl _LCD_D5
                                     62 	.globl _LCD_D4
                                     63 	.globl _LCD_EN
                                     64 	.globl _LCD_RW
                                     65 	.globl _LCD_RS
                                     66 	.globl _CY
                                     67 	.globl _AC
                                     68 	.globl _F0
                                     69 	.globl _RS1
                                     70 	.globl _RS0
                                     71 	.globl _OV
                                     72 	.globl _FL
                                     73 	.globl _P
                                     74 	.globl _TF2
                                     75 	.globl _EXF2
                                     76 	.globl _RCLK
                                     77 	.globl _TCLK
                                     78 	.globl _EXEN2
                                     79 	.globl _TR2
                                     80 	.globl _C_T2
                                     81 	.globl _CP_RL2
                                     82 	.globl _T2CON_7
                                     83 	.globl _T2CON_6
                                     84 	.globl _T2CON_5
                                     85 	.globl _T2CON_4
                                     86 	.globl _T2CON_3
                                     87 	.globl _T2CON_2
                                     88 	.globl _T2CON_1
                                     89 	.globl _T2CON_0
                                     90 	.globl _PT2
                                     91 	.globl _PS
                                     92 	.globl _PT1
                                     93 	.globl _PX1
                                     94 	.globl _PT0
                                     95 	.globl _PX0
                                     96 	.globl _RD
                                     97 	.globl _WR
                                     98 	.globl _T1
                                     99 	.globl _T0
                                    100 	.globl _INT1
                                    101 	.globl _INT0
                                    102 	.globl _TXD
                                    103 	.globl _RXD
                                    104 	.globl _P3_7
                                    105 	.globl _P3_6
                                    106 	.globl _P3_5
                                    107 	.globl _P3_4
                                    108 	.globl _P3_3
                                    109 	.globl _P3_2
                                    110 	.globl _P3_1
                                    111 	.globl _P3_0
                                    112 	.globl _EA
                                    113 	.globl _ET2
                                    114 	.globl _ES
                                    115 	.globl _ET1
                                    116 	.globl _EX1
                                    117 	.globl _ET0
                                    118 	.globl _EX0
                                    119 	.globl _P2_7
                                    120 	.globl _P2_6
                                    121 	.globl _P2_5
                                    122 	.globl _P2_4
                                    123 	.globl _P2_3
                                    124 	.globl _P2_2
                                    125 	.globl _P2_1
                                    126 	.globl _P2_0
                                    127 	.globl _SM0
                                    128 	.globl _SM1
                                    129 	.globl _SM2
                                    130 	.globl _REN
                                    131 	.globl _TB8
                                    132 	.globl _RB8
                                    133 	.globl _TI
                                    134 	.globl _RI
                                    135 	.globl _T2EX
                                    136 	.globl _T2
                                    137 	.globl _P1_7
                                    138 	.globl _P1_6
                                    139 	.globl _P1_5
                                    140 	.globl _P1_4
                                    141 	.globl _P1_3
                                    142 	.globl _P1_2
                                    143 	.globl _P1_1
                                    144 	.globl _P1_0
                                    145 	.globl _TF1
                                    146 	.globl _TR1
                                    147 	.globl _TF0
                                    148 	.globl _TR0
                                    149 	.globl _IE1
                                    150 	.globl _IT1
                                    151 	.globl _IE0
                                    152 	.globl _IT0
                                    153 	.globl _P0_7
                                    154 	.globl _P0_6
                                    155 	.globl _P0_5
                                    156 	.globl _P0_4
                                    157 	.globl _P0_3
                                    158 	.globl _P0_2
                                    159 	.globl _P0_1
                                    160 	.globl _P0_0
                                    161 	.globl _B
                                    162 	.globl _A
                                    163 	.globl _ACC
                                    164 	.globl _PSW
                                    165 	.globl _TH2
                                    166 	.globl _TL2
                                    167 	.globl _RCAP2H
                                    168 	.globl _RCAP2L
                                    169 	.globl _T2MOD
                                    170 	.globl _T2CON
                                    171 	.globl _IP
                                    172 	.globl _P3
                                    173 	.globl _IE
                                    174 	.globl _P2
                                    175 	.globl _SBUF
                                    176 	.globl _SCON
                                    177 	.globl _P1
                                    178 	.globl _TH1
                                    179 	.globl _TH0
                                    180 	.globl _TL1
                                    181 	.globl _TL0
                                    182 	.globl _TMOD
                                    183 	.globl _TCON
                                    184 	.globl _PCON
                                    185 	.globl _DPH
                                    186 	.globl _DPL
                                    187 	.globl _SP
                                    188 	.globl _P0
                                    189 	.globl _min_vals
                                    190 	.globl _max_vals
                                    191 	.globl _alarm_minutes
                                    192 	.globl _alarm_hours
                                    193 	.globl _ds3232_set_alarm1_PARM_3
                                    194 	.globl _ds3232_set_alarm1_PARM_2
                                    195 	.globl _write_alarm_to_eeprom_PARM_3
                                    196 	.globl _write_alarm_to_eeprom_PARM_2
                                    197 	.globl _write_eeprom_PARM_2
                                    198 	.globl _display_PARM_7
                                    199 	.globl _display_PARM_6
                                    200 	.globl _display_PARM_5
                                    201 	.globl _display_PARM_4
                                    202 	.globl _display_PARM_3
                                    203 	.globl _display_PARM_2
                                    204 	.globl _ds3232_get_time_date_PARM_7
                                    205 	.globl _ds3232_get_time_date_PARM_6
                                    206 	.globl _ds3232_get_time_date_PARM_5
                                    207 	.globl _ds3232_get_time_date_PARM_4
                                    208 	.globl _ds3232_get_time_date_PARM_3
                                    209 	.globl _ds3232_get_time_date_PARM_2
                                    210 	.globl _ds3232_set_time_date_PARM_7
                                    211 	.globl _ds3232_set_time_date_PARM_6
                                    212 	.globl _ds3232_set_time_date_PARM_5
                                    213 	.globl _ds3232_set_time_date_PARM_4
                                    214 	.globl _ds3232_set_time_date_PARM_3
                                    215 	.globl _ds3232_set_time_date_PARM_2
                                    216 	.globl _lcd_goto_PARM_2
                                    217 	.globl _min
                                    218 	.globl _hr
                                    219 	.globl _buf
                                    220 	.globl _date_str
                                    221 	.globl _time_str
                                    222 	.globl _index
                                    223 	.globl _alarm_index
                                    224 	.globl _day
                                    225 	.globl _y
                                    226 	.globl _mo
                                    227 	.globl _d
                                    228 	.globl _s
                                    229 	.globl _m
                                    230 	.globl _h
                                    231 	.globl _idle_counter
                                    232 	.globl _num_alarms
                                    233 	.globl _time_date
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           000080   239 _P0	=	0x0080
                           000081   240 _SP	=	0x0081
                           000082   241 _DPL	=	0x0082
                           000083   242 _DPH	=	0x0083
                           000087   243 _PCON	=	0x0087
                           000088   244 _TCON	=	0x0088
                           000089   245 _TMOD	=	0x0089
                           00008A   246 _TL0	=	0x008a
                           00008B   247 _TL1	=	0x008b
                           00008C   248 _TH0	=	0x008c
                           00008D   249 _TH1	=	0x008d
                           000090   250 _P1	=	0x0090
                           000098   251 _SCON	=	0x0098
                           000099   252 _SBUF	=	0x0099
                           0000A0   253 _P2	=	0x00a0
                           0000A8   254 _IE	=	0x00a8
                           0000B0   255 _P3	=	0x00b0
                           0000B8   256 _IP	=	0x00b8
                           0000C8   257 _T2CON	=	0x00c8
                           0000C9   258 _T2MOD	=	0x00c9
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           0000D0   263 _PSW	=	0x00d0
                           0000E0   264 _ACC	=	0x00e0
                           0000E0   265 _A	=	0x00e0
                           0000F0   266 _B	=	0x00f0
                                    267 ;--------------------------------------------------------
                                    268 ; special function bits
                                    269 ;--------------------------------------------------------
                                    270 	.area RSEG    (ABS,DATA)
      000000                        271 	.org 0x0000
                           000080   272 _P0_0	=	0x0080
                           000081   273 _P0_1	=	0x0081
                           000082   274 _P0_2	=	0x0082
                           000083   275 _P0_3	=	0x0083
                           000084   276 _P0_4	=	0x0084
                           000085   277 _P0_5	=	0x0085
                           000086   278 _P0_6	=	0x0086
                           000087   279 _P0_7	=	0x0087
                           000088   280 _IT0	=	0x0088
                           000089   281 _IE0	=	0x0089
                           00008A   282 _IT1	=	0x008a
                           00008B   283 _IE1	=	0x008b
                           00008C   284 _TR0	=	0x008c
                           00008D   285 _TF0	=	0x008d
                           00008E   286 _TR1	=	0x008e
                           00008F   287 _TF1	=	0x008f
                           000090   288 _P1_0	=	0x0090
                           000091   289 _P1_1	=	0x0091
                           000092   290 _P1_2	=	0x0092
                           000093   291 _P1_3	=	0x0093
                           000094   292 _P1_4	=	0x0094
                           000095   293 _P1_5	=	0x0095
                           000096   294 _P1_6	=	0x0096
                           000097   295 _P1_7	=	0x0097
                           000090   296 _T2	=	0x0090
                           000091   297 _T2EX	=	0x0091
                           000098   298 _RI	=	0x0098
                           000099   299 _TI	=	0x0099
                           00009A   300 _RB8	=	0x009a
                           00009B   301 _TB8	=	0x009b
                           00009C   302 _REN	=	0x009c
                           00009D   303 _SM2	=	0x009d
                           00009E   304 _SM1	=	0x009e
                           00009F   305 _SM0	=	0x009f
                           0000A0   306 _P2_0	=	0x00a0
                           0000A1   307 _P2_1	=	0x00a1
                           0000A2   308 _P2_2	=	0x00a2
                           0000A3   309 _P2_3	=	0x00a3
                           0000A4   310 _P2_4	=	0x00a4
                           0000A5   311 _P2_5	=	0x00a5
                           0000A6   312 _P2_6	=	0x00a6
                           0000A7   313 _P2_7	=	0x00a7
                           0000A8   314 _EX0	=	0x00a8
                           0000A9   315 _ET0	=	0x00a9
                           0000AA   316 _EX1	=	0x00aa
                           0000AB   317 _ET1	=	0x00ab
                           0000AC   318 _ES	=	0x00ac
                           0000AD   319 _ET2	=	0x00ad
                           0000AF   320 _EA	=	0x00af
                           0000B0   321 _P3_0	=	0x00b0
                           0000B1   322 _P3_1	=	0x00b1
                           0000B2   323 _P3_2	=	0x00b2
                           0000B3   324 _P3_3	=	0x00b3
                           0000B4   325 _P3_4	=	0x00b4
                           0000B5   326 _P3_5	=	0x00b5
                           0000B6   327 _P3_6	=	0x00b6
                           0000B7   328 _P3_7	=	0x00b7
                           0000B0   329 _RXD	=	0x00b0
                           0000B1   330 _TXD	=	0x00b1
                           0000B2   331 _INT0	=	0x00b2
                           0000B3   332 _INT1	=	0x00b3
                           0000B4   333 _T0	=	0x00b4
                           0000B5   334 _T1	=	0x00b5
                           0000B6   335 _WR	=	0x00b6
                           0000B7   336 _RD	=	0x00b7
                           0000B8   337 _PX0	=	0x00b8
                           0000B9   338 _PT0	=	0x00b9
                           0000BA   339 _PX1	=	0x00ba
                           0000BB   340 _PT1	=	0x00bb
                           0000BC   341 _PS	=	0x00bc
                           0000BD   342 _PT2	=	0x00bd
                           0000C8   343 _T2CON_0	=	0x00c8
                           0000C9   344 _T2CON_1	=	0x00c9
                           0000CA   345 _T2CON_2	=	0x00ca
                           0000CB   346 _T2CON_3	=	0x00cb
                           0000CC   347 _T2CON_4	=	0x00cc
                           0000CD   348 _T2CON_5	=	0x00cd
                           0000CE   349 _T2CON_6	=	0x00ce
                           0000CF   350 _T2CON_7	=	0x00cf
                           0000C8   351 _CP_RL2	=	0x00c8
                           0000C9   352 _C_T2	=	0x00c9
                           0000CA   353 _TR2	=	0x00ca
                           0000CB   354 _EXEN2	=	0x00cb
                           0000CC   355 _TCLK	=	0x00cc
                           0000CD   356 _RCLK	=	0x00cd
                           0000CE   357 _EXF2	=	0x00ce
                           0000CF   358 _TF2	=	0x00cf
                           0000D0   359 _P	=	0x00d0
                           0000D1   360 _FL	=	0x00d1
                           0000D2   361 _OV	=	0x00d2
                           0000D3   362 _RS0	=	0x00d3
                           0000D4   363 _RS1	=	0x00d4
                           0000D5   364 _F0	=	0x00d5
                           0000D6   365 _AC	=	0x00d6
                           0000D7   366 _CY	=	0x00d7
                           000090   367 _LCD_RS	=	0x0090
                           000091   368 _LCD_RW	=	0x0091
                           000092   369 _LCD_EN	=	0x0092
                           000093   370 _LCD_D4	=	0x0093
                           000094   371 _LCD_D5	=	0x0094
                           000095   372 _LCD_D6	=	0x0095
                           000096   373 _LCD_D7	=	0x0096
                           0000B4   374 _up	=	0x00b4
                           0000B5   375 _down	=	0x00b5
                           0000B6   376 _next	=	0x00b6
                           0000B7   377 _back	=	0x00b7
                           0000B1   378 _SDA	=	0x00b1
                           0000B0   379 _SCL	=	0x00b0
                           0000A4   380 _IN1	=	0x00a4
                           0000A3   381 _IN2	=	0x00a3
                           0000A2   382 _IN3	=	0x00a2
                           0000A1   383 _IN4	=	0x00a1
                           0000A0   384 _BUZZER	=	0x00a0
                           0000A7   385 _POWER_PULSE	=	0x00a7
                                    386 ;--------------------------------------------------------
                                    387 ; overlayable register banks
                                    388 ;--------------------------------------------------------
                                    389 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        390 	.ds 8
                                    391 ;--------------------------------------------------------
                                    392 ; overlayable bit register bank
                                    393 ;--------------------------------------------------------
                                    394 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        395 bits:
      000021                        396 	.ds 1
                           008000   397 	b0 = bits[0]
                           008100   398 	b1 = bits[1]
                           008200   399 	b2 = bits[2]
                           008300   400 	b3 = bits[3]
                           008400   401 	b4 = bits[4]
                           008500   402 	b5 = bits[5]
                           008600   403 	b6 = bits[6]
                           008700   404 	b7 = bits[7]
                                    405 ;--------------------------------------------------------
                                    406 ; internal ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area DSEG    (DATA)
      000022                        409 _time_date::
      000022                        410 	.ds 7
      000029                        411 _num_alarms::
      000029                        412 	.ds 1
      00002A                        413 _idle_counter::
      00002A                        414 	.ds 2
      00002C                        415 _h::
      00002C                        416 	.ds 1
      00002D                        417 _m::
      00002D                        418 	.ds 1
      00002E                        419 _s::
      00002E                        420 	.ds 1
      00002F                        421 _d::
      00002F                        422 	.ds 1
      000030                        423 _mo::
      000030                        424 	.ds 1
      000031                        425 _y::
      000031                        426 	.ds 1
      000032                        427 _day::
      000032                        428 	.ds 1
      000033                        429 _alarm_index::
      000033                        430 	.ds 2
      000035                        431 _index::
      000035                        432 	.ds 2
      000037                        433 _time_str::
      000037                        434 	.ds 9
      000040                        435 _date_str::
      000040                        436 	.ds 13
      00004D                        437 _buf::
      00004D                        438 	.ds 3
      000050                        439 _hr::
      000050                        440 	.ds 1
      000051                        441 _min::
      000051                        442 	.ds 1
      000052                        443 _lcd_goto_PARM_2:
      000052                        444 	.ds 1
      000053                        445 _ds3232_set_time_date_PARM_2:
      000053                        446 	.ds 1
      000054                        447 _ds3232_set_time_date_PARM_3:
      000054                        448 	.ds 1
      000055                        449 _ds3232_set_time_date_PARM_4:
      000055                        450 	.ds 1
      000056                        451 _ds3232_set_time_date_PARM_5:
      000056                        452 	.ds 1
      000057                        453 _ds3232_set_time_date_PARM_6:
      000057                        454 	.ds 1
      000058                        455 _ds3232_set_time_date_PARM_7:
      000058                        456 	.ds 1
      000059                        457 _ds3232_get_time_date_PARM_2:
      000059                        458 	.ds 3
      00005C                        459 _ds3232_get_time_date_PARM_3:
      00005C                        460 	.ds 3
      00005F                        461 _ds3232_get_time_date_PARM_4:
      00005F                        462 	.ds 3
      000062                        463 _ds3232_get_time_date_PARM_5:
      000062                        464 	.ds 3
      000065                        465 _ds3232_get_time_date_PARM_6:
      000065                        466 	.ds 3
      000068                        467 _ds3232_get_time_date_PARM_7:
      000068                        468 	.ds 3
      00006B                        469 _display_PARM_2:
      00006B                        470 	.ds 1
      00006C                        471 _display_PARM_3:
      00006C                        472 	.ds 1
      00006D                        473 _display_PARM_4:
      00006D                        474 	.ds 1
      00006E                        475 _display_PARM_5:
      00006E                        476 	.ds 1
      00006F                        477 _display_PARM_6:
      00006F                        478 	.ds 1
      000070                        479 _display_PARM_7:
      000070                        480 	.ds 1
      000071                        481 _write_eeprom_PARM_2:
      000071                        482 	.ds 1
      000072                        483 _write_alarm_to_eeprom_PARM_2:
      000072                        484 	.ds 1
      000073                        485 _write_alarm_to_eeprom_PARM_3:
      000073                        486 	.ds 1
      000074                        487 _ds3232_set_alarm1_PARM_2:
      000074                        488 	.ds 1
      000075                        489 _ds3232_set_alarm1_PARM_3:
      000075                        490 	.ds 1
      000076                        491 _set_alarms_total_mins_10002_135:
      000076                        492 	.ds 2
      000078                        493 _set_alarms_total_mins1_50002_140:
      000078                        494 	.ds 2
      00007A                        495 _set_alarms_sloc0_1_0:
      00007A                        496 	.ds 2
      00007C                        497 _main_checker_10001_169:
      00007C                        498 	.ds 4
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable items in internal ram
                                    501 ;--------------------------------------------------------
                                    502 	.area	OSEG    (OVR,DATA)
                                    503 	.area	OSEG    (OVR,DATA)
                                    504 	.area	OSEG    (OVR,DATA)
      000008                        505 _int_to_str_PARM_2:
      000008                        506 	.ds 3
                                    507 	.area	OSEG    (OVR,DATA)
                                    508 	.area	OSEG    (OVR,DATA)
                                    509 	.area	OSEG    (OVR,DATA)
      000008                        510 _alarm_arranger_PARM_2:
      000008                        511 	.ds 3
      00000B                        512 _alarm_arranger_PARM_3:
      00000B                        513 	.ds 3
      00000E                        514 _alarm_arranger_hours_10000_63:
      00000E                        515 	.ds 3
      000011                        516 _alarm_arranger_i_10000_64:
      000011                        517 	.ds 1
      000012                        518 _alarm_arranger_min_idx_10000_64:
      000012                        519 	.ds 1
      000013                        520 _alarm_arranger_temp_30001_71:
      000013                        521 	.ds 2
      000015                        522 _alarm_arranger___index_10001_72:
      000015                        523 	.ds 2
      000017                        524 _alarm_arranger_sloc0_1_0:
      000017                        525 	.ds 1
      000018                        526 _alarm_arranger_sloc1_1_0:
      000018                        527 	.ds 3
                                    528 ;--------------------------------------------------------
                                    529 ; Stack segment in internal ram
                                    530 ;--------------------------------------------------------
                                    531 	.area SSEG
      00009E                        532 __start__stack:
      00009E                        533 	.ds	1
                                    534 
                                    535 ;--------------------------------------------------------
                                    536 ; indirectly addressable internal ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area ISEG    (DATA)
      000080                        539 _alarm_hours::
      000080                        540 	.ds 8
      000088                        541 _alarm_minutes::
      000088                        542 	.ds 8
      000090                        543 _max_vals::
      000090                        544 	.ds 7
      000097                        545 _min_vals::
      000097                        546 	.ds 7
                                    547 ;--------------------------------------------------------
                                    548 ; absolute internal ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area IABS    (ABS,DATA)
                                    551 	.area IABS    (ABS,DATA)
                                    552 ;--------------------------------------------------------
                                    553 ; bit data
                                    554 ;--------------------------------------------------------
                                    555 	.area BSEG    (BIT)
      000000                        556 _i2c_write_ack_10000_29:
      000000                        557 	.ds 1
      000001                        558 _i2c_read_sloc0_1_0:
      000001                        559 	.ds 1
                                    560 ;--------------------------------------------------------
                                    561 ; paged external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area PSEG    (PAG,XDATA)
                                    564 ;--------------------------------------------------------
                                    565 ; uninitialized external ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area XSEG    (XDATA)
                                    568 ;--------------------------------------------------------
                                    569 ; absolute external ram data
                                    570 ;--------------------------------------------------------
                                    571 	.area XABS    (ABS,XDATA)
                                    572 ;--------------------------------------------------------
                                    573 ; initialized external ram data
                                    574 ;--------------------------------------------------------
                                    575 	.area XISEG   (XDATA)
                                    576 	.area HOME    (CODE)
                                    577 	.area GSINIT0 (CODE)
                                    578 	.area GSINIT1 (CODE)
                                    579 	.area GSINIT2 (CODE)
                                    580 	.area GSINIT3 (CODE)
                                    581 	.area GSINIT4 (CODE)
                                    582 	.area GSINIT5 (CODE)
                                    583 	.area GSINIT  (CODE)
                                    584 	.area GSFINAL (CODE)
                                    585 	.area CSEG    (CODE)
                                    586 ;--------------------------------------------------------
                                    587 ; interrupt vector
                                    588 ;--------------------------------------------------------
                                    589 	.area HOME    (CODE)
      000000                        590 __interrupt_vect:
      000000 02 00 86         [24]  591 	ljmp	__sdcc_gsinit_startup
      000003 02 10 FB         [24]  592 	ljmp	_alarm_triggered
      000006                        593 	.ds	5
      00000B 32               [24]  594 	reti
      00000C                        595 	.ds	7
      000013 02 12 24         [24]  596 	ljmp	_configuration
                                    597 ; restartable atomic support routines
      000016                        598 	.ds	2
      000018                        599 sdcc_atomic_exchange_rollback_start::
      000018 00               [12]  600 	nop
      000019 00               [12]  601 	nop
      00001A                        602 sdcc_atomic_exchange_pdata_impl:
      00001A E2               [24]  603 	movx	a, @r0
      00001B FB               [12]  604 	mov	r3, a
      00001C EA               [12]  605 	mov	a, r2
      00001D F2               [24]  606 	movx	@r0, a
      00001E 80 2C            [24]  607 	sjmp	sdcc_atomic_exchange_exit
      000020 00               [12]  608 	nop
      000021 00               [12]  609 	nop
      000022                        610 sdcc_atomic_exchange_xdata_impl:
      000022 E0               [24]  611 	movx	a, @dptr
      000023 FB               [12]  612 	mov	r3, a
      000024 EA               [12]  613 	mov	a, r2
      000025 F0               [24]  614 	movx	@dptr, a
      000026 80 24            [24]  615 	sjmp	sdcc_atomic_exchange_exit
      000028                        616 sdcc_atomic_compare_exchange_idata_impl:
      000028 E6               [12]  617 	mov	a, @r0
      000029 B5 02 02         [24]  618 	cjne	a, ar2, .+#5
      00002C EB               [12]  619 	mov	a, r3
      00002D F6               [12]  620 	mov	@r0, a
      00002E 22               [24]  621 	ret
      00002F 00               [12]  622 	nop
      000030                        623 sdcc_atomic_compare_exchange_pdata_impl:
      000030 E2               [24]  624 	movx	a, @r0
      000031 B5 02 02         [24]  625 	cjne	a, ar2, .+#5
      000034 EB               [12]  626 	mov	a, r3
      000035 F2               [24]  627 	movx	@r0, a
      000036 22               [24]  628 	ret
      000037 00               [12]  629 	nop
      000038                        630 sdcc_atomic_compare_exchange_xdata_impl:
      000038 E0               [24]  631 	movx	a, @dptr
      000039 B5 02 02         [24]  632 	cjne	a, ar2, .+#5
      00003C EB               [12]  633 	mov	a, r3
      00003D F0               [24]  634 	movx	@dptr, a
      00003E 22               [24]  635 	ret
      00003F                        636 sdcc_atomic_exchange_rollback_end::
                                    637 
      00003F                        638 sdcc_atomic_exchange_gptr_impl::
      00003F 30 F6 E0         [24]  639 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000042 A8 82            [24]  640 	mov	r0, dpl
      000044 20 F5 D3         [24]  641 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000047                        642 sdcc_atomic_exchange_idata_impl:
      000047 EA               [12]  643 	mov	a, r2
      000048 C6               [12]  644 	xch	a, @r0
      000049 F5 82            [12]  645 	mov	dpl, a
      00004B 22               [24]  646 	ret
      00004C                        647 sdcc_atomic_exchange_exit:
      00004C 8B 82            [24]  648 	mov	dpl, r3
      00004E 22               [24]  649 	ret
      00004F                        650 sdcc_atomic_compare_exchange_gptr_impl::
      00004F 30 F6 E6         [24]  651 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000052 A8 82            [24]  652 	mov	r0, dpl
      000054 20 F5 D9         [24]  653 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000057 80 CF            [24]  654 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    655 ;--------------------------------------------------------
                                    656 ; global & static initialisations
                                    657 ;--------------------------------------------------------
                                    658 	.area HOME    (CODE)
                                    659 	.area GSINIT  (CODE)
                                    660 	.area GSFINAL (CODE)
                                    661 	.area GSINIT  (CODE)
                                    662 	.globl __sdcc_gsinit_startup
                                    663 	.globl __sdcc_program_startup
                                    664 	.globl __start__stack
                                    665 	.globl __mcs51_genXINIT
                                    666 	.globl __mcs51_genXRAMCLEAR
                                    667 	.globl __mcs51_genRAMCLEAR
                                    668 ;	main.c:19: unsigned char time_date[7] = {0,0,0,0,1,1,25};  //starting time
      0000DF 75 22 00         [24]  669 	mov	_time_date,#0x00
      0000E2 75 23 00         [24]  670 	mov	(_time_date + 0x0001),#0x00
      0000E5 75 24 00         [24]  671 	mov	(_time_date + 0x0002),#0x00
      0000E8 75 25 00         [24]  672 	mov	(_time_date + 0x0003),#0x00
      0000EB 75 26 01         [24]  673 	mov	(_time_date + 0x0004),#0x01
      0000EE 75 27 01         [24]  674 	mov	(_time_date + 0x0005),#0x01
      0000F1 75 28 19         [24]  675 	mov	(_time_date + 0x0006),#0x19
                                    676 ;	main.c:21: unsigned char num_alarms = 1;
      0000F4 75 29 01         [24]  677 	mov	_num_alarms,#0x01
                                    678 ;	main.c:22: unsigned int idle_counter = 0;
      0000F7 E4               [12]  679 	clr	a
      0000F8 F5 2A            [12]  680 	mov	_idle_counter,a
      0000FA F5 2B            [12]  681 	mov	(_idle_counter + 1),a
                                    682 ;	main.c:25: const unsigned char __idata max_vals[] = {24, 60, 60, 7, 31, 12, 100};
      0000FC 78 90            [12]  683 	mov	r0,#_max_vals
      0000FE 76 18            [12]  684 	mov	@r0,#0x18
      000100 78 91            [12]  685 	mov	r0,#(_max_vals + 0x0001)
      000102 76 3C            [12]  686 	mov	@r0,#0x3c
      000104 78 92            [12]  687 	mov	r0,#(_max_vals + 0x0002)
      000106 76 3C            [12]  688 	mov	@r0,#0x3c
      000108 78 93            [12]  689 	mov	r0,#(_max_vals + 0x0003)
      00010A 76 07            [12]  690 	mov	@r0,#0x07
      00010C 78 94            [12]  691 	mov	r0,#(_max_vals + 0x0004)
      00010E 76 1F            [12]  692 	mov	@r0,#0x1f
      000110 78 95            [12]  693 	mov	r0,#(_max_vals + 0x0005)
      000112 76 0C            [12]  694 	mov	@r0,#0x0c
      000114 78 96            [12]  695 	mov	r0,#(_max_vals + 0x0006)
      000116 76 64            [12]  696 	mov	@r0,#0x64
                                    697 ;	main.c:26: const unsigned char __idata min_vals[] = {0, 0, 0, 0, 1, 1, 0};
      000118 78 97            [12]  698 	mov	r0,#_min_vals
      00011A 76 00            [12]  699 	mov	@r0,#0x00
      00011C 78 98            [12]  700 	mov	r0,#(_min_vals + 0x0001)
      00011E 76 00            [12]  701 	mov	@r0,#0x00
      000120 78 99            [12]  702 	mov	r0,#(_min_vals + 0x0002)
      000122 76 00            [12]  703 	mov	@r0,#0x00
      000124 78 9A            [12]  704 	mov	r0,#(_min_vals + 0x0003)
      000126 76 00            [12]  705 	mov	@r0,#0x00
      000128 78 9B            [12]  706 	mov	r0,#(_min_vals + 0x0004)
      00012A 76 01            [12]  707 	mov	@r0,#0x01
      00012C 78 9C            [12]  708 	mov	r0,#(_min_vals + 0x0005)
      00012E 76 01            [12]  709 	mov	@r0,#0x01
      000130 78 9D            [12]  710 	mov	r0,#(_min_vals + 0x0006)
      000132 76 00            [12]  711 	mov	@r0,#0x00
                                    712 	.area GSFINAL (CODE)
      000134 02 00 59         [24]  713 	ljmp	__sdcc_program_startup
                                    714 ;--------------------------------------------------------
                                    715 ; Home
                                    716 ;--------------------------------------------------------
                                    717 	.area HOME    (CODE)
                                    718 	.area HOME    (CODE)
      000059                        719 __sdcc_program_startup:
      000059 02 13 C1         [24]  720 	ljmp	_main
                                    721 ;	return from main will return to caller
                                    722 ;--------------------------------------------------------
                                    723 ; code
                                    724 ;--------------------------------------------------------
                                    725 	.area CSEG    (CODE)
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'delay'
                                    728 ;------------------------------------------------------------
                                    729 ;cycles        Allocated to registers r6 r7 
                                    730 ;i             Allocated to registers r4 r5 
                                    731 ;j             Allocated to registers r2 r3 
                                    732 ;------------------------------------------------------------
                                    733 ;	main.c:65: void delay(unsigned int cycles) {
                                    734 ;	-----------------------------------------
                                    735 ;	 function delay
                                    736 ;	-----------------------------------------
      000137                        737 _delay:
                           000007   738 	ar7 = 0x07
                           000006   739 	ar6 = 0x06
                           000005   740 	ar5 = 0x05
                           000004   741 	ar4 = 0x04
                           000003   742 	ar3 = 0x03
                           000002   743 	ar2 = 0x02
                           000001   744 	ar1 = 0x01
                           000000   745 	ar0 = 0x00
      000137 AE 82            [24]  746 	mov	r6, dpl
      000139 AF 83            [24]  747 	mov	r7, dph
                                    748 ;	main.c:67: for(i = 0; i < cycles; i++)
      00013B 7C 00            [12]  749 	mov	r4,#0x00
      00013D 7D 00            [12]  750 	mov	r5,#0x00
      00013F                        751 00107$:
      00013F C3               [12]  752 	clr	c
      000140 EC               [12]  753 	mov	a,r4
      000141 9E               [12]  754 	subb	a,r6
      000142 ED               [12]  755 	mov	a,r5
      000143 9F               [12]  756 	subb	a,r7
      000144 50 14            [24]  757 	jnc	00109$
                                    758 ;	main.c:68: for(j = 0; j < 5; j++);
      000146 7A 05            [12]  759 	mov	r2,#0x05
      000148 7B 00            [12]  760 	mov	r3,#0x00
      00014A                        761 00105$:
      00014A 1A               [12]  762 	dec	r2
      00014B BA FF 01         [24]  763 	cjne	r2,#0xff,00138$
      00014E 1B               [12]  764 	dec	r3
      00014F                        765 00138$:
      00014F EA               [12]  766 	mov	a,r2
      000150 4B               [12]  767 	orl	a,r3
      000151 70 F7            [24]  768 	jnz	00105$
                                    769 ;	main.c:67: for(i = 0; i < cycles; i++)
      000153 0C               [12]  770 	inc	r4
      000154 BC 00 E8         [24]  771 	cjne	r4,#0x00,00107$
      000157 0D               [12]  772 	inc	r5
      000158 80 E5            [24]  773 	sjmp	00107$
      00015A                        774 00109$:
                                    775 ;	main.c:69: }
      00015A 22               [24]  776 	ret
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'delay_ms'
                                    779 ;------------------------------------------------------------
                                    780 ;ms            Allocated to registers r6 r7 
                                    781 ;i             Allocated to registers r4 r5 
                                    782 ;j             Allocated to registers r2 r3 
                                    783 ;------------------------------------------------------------
                                    784 ;	main.c:71: void delay_ms(unsigned int ms) {
                                    785 ;	-----------------------------------------
                                    786 ;	 function delay_ms
                                    787 ;	-----------------------------------------
      00015B                        788 _delay_ms:
      00015B AE 82            [24]  789 	mov	r6, dpl
      00015D AF 83            [24]  790 	mov	r7, dph
                                    791 ;	main.c:73: for(i=0; i<ms; i++)
      00015F 7C 00            [12]  792 	mov	r4,#0x00
      000161 7D 00            [12]  793 	mov	r5,#0x00
      000163                        794 00107$:
      000163 C3               [12]  795 	clr	c
      000164 EC               [12]  796 	mov	a,r4
      000165 9E               [12]  797 	subb	a,r6
      000166 ED               [12]  798 	mov	a,r5
      000167 9F               [12]  799 	subb	a,r7
      000168 50 14            [24]  800 	jnc	00109$
                                    801 ;	main.c:74: for(j=0; j<1275; j++);
      00016A 7A FB            [12]  802 	mov	r2,#0xfb
      00016C 7B 04            [12]  803 	mov	r3,#0x04
      00016E                        804 00105$:
      00016E 1A               [12]  805 	dec	r2
      00016F BA FF 01         [24]  806 	cjne	r2,#0xff,00138$
      000172 1B               [12]  807 	dec	r3
      000173                        808 00138$:
      000173 EA               [12]  809 	mov	a,r2
      000174 4B               [12]  810 	orl	a,r3
      000175 70 F7            [24]  811 	jnz	00105$
                                    812 ;	main.c:73: for(i=0; i<ms; i++)
      000177 0C               [12]  813 	inc	r4
      000178 BC 00 E8         [24]  814 	cjne	r4,#0x00,00107$
      00017B 0D               [12]  815 	inc	r5
      00017C 80 E5            [24]  816 	sjmp	00107$
      00017E                        817 00109$:
                                    818 ;	main.c:75: }
      00017E 22               [24]  819 	ret
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'pulse_enable'
                                    822 ;------------------------------------------------------------
                                    823 ;	main.c:77: void pulse_enable() {
                                    824 ;	-----------------------------------------
                                    825 ;	 function pulse_enable
                                    826 ;	-----------------------------------------
      00017F                        827 _pulse_enable:
                                    828 ;	main.c:78: LCD_EN = 1;
                                    829 ;	assignBit
      00017F D2 92            [12]  830 	setb	_LCD_EN
                                    831 ;	main.c:79: delay(50);
      000181 90 00 32         [24]  832 	mov	dptr,#0x0032
      000184 12 01 37         [24]  833 	lcall	_delay
                                    834 ;	main.c:80: LCD_EN = 0;
                                    835 ;	assignBit
      000187 C2 92            [12]  836 	clr	_LCD_EN
                                    837 ;	main.c:81: delay(50);
      000189 90 00 32         [24]  838 	mov	dptr,#0x0032
                                    839 ;	main.c:82: }
      00018C 02 01 37         [24]  840 	ljmp	_delay
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'send_nibble'
                                    843 ;------------------------------------------------------------
                                    844 ;nibble        Allocated to registers r7 
                                    845 ;------------------------------------------------------------
                                    846 ;	main.c:84: void send_nibble(unsigned char nibble) {
                                    847 ;	-----------------------------------------
                                    848 ;	 function send_nibble
                                    849 ;	-----------------------------------------
      00018F                        850 _send_nibble:
                                    851 ;	main.c:85: LCD_D4 = (nibble >> 0) & 1;
      00018F E5 82            [12]  852 	mov	a,dpl
      000191 FF               [12]  853 	mov	r7,a
      000192 54 01            [12]  854 	anl	a,#0x01
                                    855 ;	assignBit
      000194 24 FF            [12]  856 	add	a,#0xff
      000196 92 93            [24]  857 	mov	_LCD_D4,c
                                    858 ;	main.c:86: LCD_D5 = (nibble >> 1) & 1;
      000198 EF               [12]  859 	mov	a,r7
      000199 03               [12]  860 	rr	a
      00019A 54 01            [12]  861 	anl	a,#0x01
                                    862 ;	assignBit
      00019C 24 FF            [12]  863 	add	a,#0xff
      00019E 92 94            [24]  864 	mov	_LCD_D5,c
                                    865 ;	main.c:87: LCD_D6 = (nibble >> 2) & 1;
      0001A0 EF               [12]  866 	mov	a,r7
      0001A1 03               [12]  867 	rr	a
      0001A2 03               [12]  868 	rr	a
      0001A3 54 01            [12]  869 	anl	a,#0x01
                                    870 ;	assignBit
      0001A5 24 FF            [12]  871 	add	a,#0xff
      0001A7 92 95            [24]  872 	mov	_LCD_D6,c
                                    873 ;	main.c:88: LCD_D7 = (nibble >> 3) & 1;
      0001A9 EF               [12]  874 	mov	a,r7
      0001AA A2 E3            [12]  875 	mov	c,acc.3
      0001AC E4               [12]  876 	clr	a
      0001AD 33               [12]  877 	rlc	a
                                    878 ;	assignBit
      0001AE 24 FF            [12]  879 	add	a,#0xff
      0001B0 92 96            [24]  880 	mov	_LCD_D7,c
                                    881 ;	main.c:89: pulse_enable();
                                    882 ;	main.c:90: }
      0001B2 02 01 7F         [24]  883 	ljmp	_pulse_enable
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'lcd_cmd'
                                    886 ;------------------------------------------------------------
                                    887 ;cmd           Allocated to registers r7 
                                    888 ;------------------------------------------------------------
                                    889 ;	main.c:92: void lcd_cmd(unsigned char cmd) {
                                    890 ;	-----------------------------------------
                                    891 ;	 function lcd_cmd
                                    892 ;	-----------------------------------------
      0001B5                        893 _lcd_cmd:
      0001B5 AF 82            [24]  894 	mov	r7, dpl
                                    895 ;	main.c:93: LCD_RS = 0;
                                    896 ;	assignBit
      0001B7 C2 90            [12]  897 	clr	_LCD_RS
                                    898 ;	main.c:94: LCD_RW = 0;
                                    899 ;	assignBit
      0001B9 C2 91            [12]  900 	clr	_LCD_RW
                                    901 ;	main.c:95: send_nibble(cmd >> 4);
      0001BB EF               [12]  902 	mov	a,r7
      0001BC C4               [12]  903 	swap	a
      0001BD 54 0F            [12]  904 	anl	a,#0x0f
      0001BF F5 82            [12]  905 	mov	dpl,a
      0001C1 C0 07            [24]  906 	push	ar7
      0001C3 12 01 8F         [24]  907 	lcall	_send_nibble
      0001C6 D0 07            [24]  908 	pop	ar7
                                    909 ;	main.c:96: send_nibble(cmd & 0x0F);
      0001C8 74 0F            [12]  910 	mov	a,#0x0f
      0001CA 5F               [12]  911 	anl	a,r7
      0001CB F5 82            [12]  912 	mov	dpl,a
      0001CD 12 01 8F         [24]  913 	lcall	_send_nibble
                                    914 ;	main.c:97: delay(50);
      0001D0 90 00 32         [24]  915 	mov	dptr,#0x0032
                                    916 ;	main.c:98: }
      0001D3 02 01 37         [24]  917 	ljmp	_delay
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'lcd_char'
                                    920 ;------------------------------------------------------------
                                    921 ;ch            Allocated to registers r7 
                                    922 ;------------------------------------------------------------
                                    923 ;	main.c:100: void lcd_char(unsigned char ch) {
                                    924 ;	-----------------------------------------
                                    925 ;	 function lcd_char
                                    926 ;	-----------------------------------------
      0001D6                        927 _lcd_char:
      0001D6 AF 82            [24]  928 	mov	r7, dpl
                                    929 ;	main.c:101: LCD_RS = 1;
                                    930 ;	assignBit
      0001D8 D2 90            [12]  931 	setb	_LCD_RS
                                    932 ;	main.c:102: LCD_RW = 0;
                                    933 ;	assignBit
      0001DA C2 91            [12]  934 	clr	_LCD_RW
                                    935 ;	main.c:103: send_nibble(ch >> 4);
      0001DC EF               [12]  936 	mov	a,r7
      0001DD C4               [12]  937 	swap	a
      0001DE 54 0F            [12]  938 	anl	a,#0x0f
      0001E0 F5 82            [12]  939 	mov	dpl,a
      0001E2 C0 07            [24]  940 	push	ar7
      0001E4 12 01 8F         [24]  941 	lcall	_send_nibble
      0001E7 D0 07            [24]  942 	pop	ar7
                                    943 ;	main.c:104: send_nibble(ch & 0x0F);
      0001E9 74 0F            [12]  944 	mov	a,#0x0f
      0001EB 5F               [12]  945 	anl	a,r7
      0001EC F5 82            [12]  946 	mov	dpl,a
      0001EE 12 01 8F         [24]  947 	lcall	_send_nibble
                                    948 ;	main.c:105: delay(50);
      0001F1 90 00 32         [24]  949 	mov	dptr,#0x0032
                                    950 ;	main.c:106: }
      0001F4 02 01 37         [24]  951 	ljmp	_delay
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 'lcd_string'
                                    954 ;------------------------------------------------------------
                                    955 ;str           Allocated to registers 
                                    956 ;------------------------------------------------------------
                                    957 ;	main.c:108: void lcd_string(char *str) {
                                    958 ;	-----------------------------------------
                                    959 ;	 function lcd_string
                                    960 ;	-----------------------------------------
      0001F7                        961 _lcd_string:
      0001F7 AD 82            [24]  962 	mov	r5, dpl
      0001F9 AE 83            [24]  963 	mov	r6, dph
      0001FB AF F0            [24]  964 	mov	r7, b
                                    965 ;	main.c:109: while(*str) {
      0001FD                        966 00101$:
      0001FD 8D 82            [24]  967 	mov	dpl,r5
      0001FF 8E 83            [24]  968 	mov	dph,r6
      000201 8F F0            [24]  969 	mov	b,r7
      000203 12 15 29         [24]  970 	lcall	__gptrget
      000206 FC               [12]  971 	mov	r4,a
      000207 60 18            [24]  972 	jz	00104$
                                    973 ;	main.c:110: lcd_char(*str++);
      000209 8C 82            [24]  974 	mov	dpl,r4
      00020B 0D               [12]  975 	inc	r5
      00020C BD 00 01         [24]  976 	cjne	r5,#0x00,00120$
      00020F 0E               [12]  977 	inc	r6
      000210                        978 00120$:
      000210 C0 07            [24]  979 	push	ar7
      000212 C0 06            [24]  980 	push	ar6
      000214 C0 05            [24]  981 	push	ar5
      000216 12 01 D6         [24]  982 	lcall	_lcd_char
      000219 D0 05            [24]  983 	pop	ar5
      00021B D0 06            [24]  984 	pop	ar6
      00021D D0 07            [24]  985 	pop	ar7
      00021F 80 DC            [24]  986 	sjmp	00101$
      000221                        987 00104$:
                                    988 ;	main.c:112: }
      000221 22               [24]  989 	ret
                                    990 ;------------------------------------------------------------
                                    991 ;Allocation info for local variables in function 'lcd_clear'
                                    992 ;------------------------------------------------------------
                                    993 ;	main.c:114: void lcd_clear() {
                                    994 ;	-----------------------------------------
                                    995 ;	 function lcd_clear
                                    996 ;	-----------------------------------------
      000222                        997 _lcd_clear:
                                    998 ;	main.c:115: lcd_cmd(0x01);
      000222 75 82 01         [24]  999 	mov	dpl, #0x01
      000225 12 01 B5         [24] 1000 	lcall	_lcd_cmd
                                   1001 ;	main.c:116: delay(50);
      000228 90 00 32         [24] 1002 	mov	dptr,#0x0032
                                   1003 ;	main.c:117: }
      00022B 02 01 37         [24] 1004 	ljmp	_delay
                                   1005 ;------------------------------------------------------------
                                   1006 ;Allocation info for local variables in function 'lcd_goto'
                                   1007 ;------------------------------------------------------------
                                   1008 ;col           Allocated with name '_lcd_goto_PARM_2'
                                   1009 ;row           Allocated to registers r7 
                                   1010 ;address       Allocated to registers 
                                   1011 ;------------------------------------------------------------
                                   1012 ;	main.c:119: void lcd_goto(unsigned char row, unsigned char col) {
                                   1013 ;	-----------------------------------------
                                   1014 ;	 function lcd_goto
                                   1015 ;	-----------------------------------------
      00022E                       1016 _lcd_goto:
                                   1017 ;	main.c:120: unsigned char address = (row == 0) ? (0x80 + col) : (0xC0 + col);
      00022E E5 82            [12] 1018 	mov	a,dpl
      000230 70 08            [24] 1019 	jnz	00103$
      000232 AF 52            [24] 1020 	mov	r7,_lcd_goto_PARM_2
      000234 74 80            [12] 1021 	mov	a,#0x80
      000236 2F               [12] 1022 	add	a, r7
      000237 FF               [12] 1023 	mov	r7,a
      000238 80 06            [24] 1024 	sjmp	00104$
      00023A                       1025 00103$:
      00023A AE 52            [24] 1026 	mov	r6,_lcd_goto_PARM_2
      00023C 74 C0            [12] 1027 	mov	a,#0xc0
      00023E 2E               [12] 1028 	add	a, r6
      00023F FF               [12] 1029 	mov	r7,a
      000240                       1030 00104$:
      000240 8F 82            [24] 1031 	mov	dpl,r7
                                   1032 ;	main.c:121: lcd_cmd(address);
                                   1033 ;	main.c:122: }
      000242 02 01 B5         [24] 1034 	ljmp	_lcd_cmd
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'lcd_init'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	main.c:124: void lcd_init() {
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function lcd_init
                                   1041 ;	-----------------------------------------
      000245                       1042 _lcd_init:
                                   1043 ;	main.c:125: LCD_RS = 0;
                                   1044 ;	assignBit
      000245 C2 90            [12] 1045 	clr	_LCD_RS
                                   1046 ;	main.c:126: LCD_RW = 0;
                                   1047 ;	assignBit
      000247 C2 91            [12] 1048 	clr	_LCD_RW
                                   1049 ;	main.c:127: LCD_EN = 0;
                                   1050 ;	assignBit
      000249 C2 92            [12] 1051 	clr	_LCD_EN
                                   1052 ;	main.c:129: delay(20);
      00024B 90 00 14         [24] 1053 	mov	dptr,#0x0014
      00024E 12 01 37         [24] 1054 	lcall	_delay
                                   1055 ;	main.c:131: send_nibble(0x03);
      000251 75 82 03         [24] 1056 	mov	dpl, #0x03
      000254 12 01 8F         [24] 1057 	lcall	_send_nibble
                                   1058 ;	main.c:132: delay(5);
      000257 90 00 05         [24] 1059 	mov	dptr,#0x0005
      00025A 12 01 37         [24] 1060 	lcall	_delay
                                   1061 ;	main.c:133: send_nibble(0x03);
      00025D 75 82 03         [24] 1062 	mov	dpl, #0x03
      000260 12 01 8F         [24] 1063 	lcall	_send_nibble
                                   1064 ;	main.c:134: delay(5);
      000263 90 00 05         [24] 1065 	mov	dptr,#0x0005
      000266 12 01 37         [24] 1066 	lcall	_delay
                                   1067 ;	main.c:135: send_nibble(0x03);
      000269 75 82 03         [24] 1068 	mov	dpl, #0x03
      00026C 12 01 8F         [24] 1069 	lcall	_send_nibble
                                   1070 ;	main.c:136: delay(5);
      00026F 90 00 05         [24] 1071 	mov	dptr,#0x0005
      000272 12 01 37         [24] 1072 	lcall	_delay
                                   1073 ;	main.c:137: send_nibble(0x02);
      000275 75 82 02         [24] 1074 	mov	dpl, #0x02
      000278 12 01 8F         [24] 1075 	lcall	_send_nibble
                                   1076 ;	main.c:139: lcd_cmd(0x28);
      00027B 75 82 28         [24] 1077 	mov	dpl, #0x28
      00027E 12 01 B5         [24] 1078 	lcall	_lcd_cmd
                                   1079 ;	main.c:140: lcd_cmd(0x0C);
      000281 75 82 0C         [24] 1080 	mov	dpl, #0x0c
      000284 12 01 B5         [24] 1081 	lcall	_lcd_cmd
                                   1082 ;	main.c:141: lcd_cmd(0x06);
      000287 75 82 06         [24] 1083 	mov	dpl, #0x06
      00028A 12 01 B5         [24] 1084 	lcall	_lcd_cmd
                                   1085 ;	main.c:142: lcd_cmd(0x01);
      00028D 75 82 01         [24] 1086 	mov	dpl, #0x01
      000290 12 01 B5         [24] 1087 	lcall	_lcd_cmd
                                   1088 ;	main.c:143: delay(2);
      000293 90 00 02         [24] 1089 	mov	dptr,#0x0002
                                   1090 ;	main.c:144: }
      000296 02 01 37         [24] 1091 	ljmp	_delay
                                   1092 ;------------------------------------------------------------
                                   1093 ;Allocation info for local variables in function 'int_to_str'
                                   1094 ;------------------------------------------------------------
                                   1095 ;str           Allocated with name '_int_to_str_PARM_2'
                                   1096 ;val           Allocated to registers r7 
                                   1097 ;------------------------------------------------------------
                                   1098 ;	main.c:146: void int_to_str(unsigned char val, char *str) {
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function int_to_str
                                   1101 ;	-----------------------------------------
      000299                       1102 _int_to_str:
      000299 AF 82            [24] 1103 	mov	r7, dpl
                                   1104 ;	main.c:147: str[0] = (val / 10) + '0';
      00029B AC 08            [24] 1105 	mov	r4,_int_to_str_PARM_2
      00029D AD 09            [24] 1106 	mov	r5,(_int_to_str_PARM_2 + 1)
      00029F AE 0A            [24] 1107 	mov	r6,(_int_to_str_PARM_2 + 2)
      0002A1 8F 03            [24] 1108 	mov	ar3,r7
      0002A3 75 F0 0A         [24] 1109 	mov	b,#0x0a
      0002A6 EB               [12] 1110 	mov	a,r3
      0002A7 84               [48] 1111 	div	ab
      0002A8 24 30            [12] 1112 	add	a,#0x30
      0002AA 8C 82            [24] 1113 	mov	dpl,r4
      0002AC 8D 83            [24] 1114 	mov	dph,r5
      0002AE 8E F0            [24] 1115 	mov	b,r6
      0002B0 12 14 A4         [24] 1116 	lcall	__gptrput
                                   1117 ;	main.c:148: str[1] = (val % 10) + '0';
      0002B3 74 01            [12] 1118 	mov	a,#0x01
      0002B5 2C               [12] 1119 	add	a, r4
      0002B6 F9               [12] 1120 	mov	r1,a
      0002B7 E4               [12] 1121 	clr	a
      0002B8 3D               [12] 1122 	addc	a, r5
      0002B9 FA               [12] 1123 	mov	r2,a
      0002BA 8E 03            [24] 1124 	mov	ar3,r6
      0002BC 75 F0 0A         [24] 1125 	mov	b,#0x0a
      0002BF EF               [12] 1126 	mov	a,r7
      0002C0 84               [48] 1127 	div	ab
      0002C1 AF F0            [24] 1128 	mov	r7,b
      0002C3 74 30            [12] 1129 	mov	a,#0x30
      0002C5 2F               [12] 1130 	add	a, r7
      0002C6 89 82            [24] 1131 	mov	dpl,r1
      0002C8 8A 83            [24] 1132 	mov	dph,r2
      0002CA 8B F0            [24] 1133 	mov	b,r3
      0002CC 12 14 A4         [24] 1134 	lcall	__gptrput
                                   1135 ;	main.c:149: str[2] = '\0';
      0002CF 74 02            [12] 1136 	mov	a,#0x02
      0002D1 2C               [12] 1137 	add	a, r4
      0002D2 FC               [12] 1138 	mov	r4,a
      0002D3 E4               [12] 1139 	clr	a
      0002D4 3D               [12] 1140 	addc	a, r5
      0002D5 FD               [12] 1141 	mov	r5,a
      0002D6 8C 82            [24] 1142 	mov	dpl,r4
      0002D8 8D 83            [24] 1143 	mov	dph,r5
      0002DA 8E F0            [24] 1144 	mov	b,r6
      0002DC E4               [12] 1145 	clr	a
                                   1146 ;	main.c:150: }
      0002DD 02 14 A4         [24] 1147 	ljmp	__gptrput
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'i2c_init'
                                   1150 ;------------------------------------------------------------
                                   1151 ;	main.c:152: void i2c_init() {
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function i2c_init
                                   1154 ;	-----------------------------------------
      0002E0                       1155 _i2c_init:
                                   1156 ;	main.c:153: SDA = 1;
                                   1157 ;	assignBit
      0002E0 D2 B1            [12] 1158 	setb	_SDA
                                   1159 ;	main.c:154: SCL = 1;
                                   1160 ;	assignBit
      0002E2 D2 B0            [12] 1161 	setb	_SCL
                                   1162 ;	main.c:155: delay(1);
      0002E4 90 00 01         [24] 1163 	mov	dptr,#0x0001
                                   1164 ;	main.c:156: }
      0002E7 02 01 37         [24] 1165 	ljmp	_delay
                                   1166 ;------------------------------------------------------------
                                   1167 ;Allocation info for local variables in function 'i2c_start'
                                   1168 ;------------------------------------------------------------
                                   1169 ;	main.c:158: void i2c_start() {
                                   1170 ;	-----------------------------------------
                                   1171 ;	 function i2c_start
                                   1172 ;	-----------------------------------------
      0002EA                       1173 _i2c_start:
                                   1174 ;	main.c:159: SDA = 1;
                                   1175 ;	assignBit
      0002EA D2 B1            [12] 1176 	setb	_SDA
                                   1177 ;	main.c:160: SCL = 1;
                                   1178 ;	assignBit
      0002EC D2 B0            [12] 1179 	setb	_SCL
                                   1180 ;	main.c:161: delay(1);
      0002EE 90 00 01         [24] 1181 	mov	dptr,#0x0001
      0002F1 12 01 37         [24] 1182 	lcall	_delay
                                   1183 ;	main.c:162: SDA = 0;
                                   1184 ;	assignBit
      0002F4 C2 B1            [12] 1185 	clr	_SDA
                                   1186 ;	main.c:163: delay(1);
      0002F6 90 00 01         [24] 1187 	mov	dptr,#0x0001
      0002F9 12 01 37         [24] 1188 	lcall	_delay
                                   1189 ;	main.c:164: SCL = 0;
                                   1190 ;	assignBit
      0002FC C2 B0            [12] 1191 	clr	_SCL
                                   1192 ;	main.c:165: }
      0002FE 22               [24] 1193 	ret
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'i2c_stop'
                                   1196 ;------------------------------------------------------------
                                   1197 ;	main.c:167: void i2c_stop() {
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function i2c_stop
                                   1200 ;	-----------------------------------------
      0002FF                       1201 _i2c_stop:
                                   1202 ;	main.c:168: SDA = 0;
                                   1203 ;	assignBit
      0002FF C2 B1            [12] 1204 	clr	_SDA
                                   1205 ;	main.c:169: SCL = 1;
                                   1206 ;	assignBit
      000301 D2 B0            [12] 1207 	setb	_SCL
                                   1208 ;	main.c:170: delay(1);
      000303 90 00 01         [24] 1209 	mov	dptr,#0x0001
      000306 12 01 37         [24] 1210 	lcall	_delay
                                   1211 ;	main.c:171: SDA = 1;
                                   1212 ;	assignBit
      000309 D2 B1            [12] 1213 	setb	_SDA
                                   1214 ;	main.c:172: delay(1);
      00030B 90 00 01         [24] 1215 	mov	dptr,#0x0001
                                   1216 ;	main.c:173: }
      00030E 02 01 37         [24] 1217 	ljmp	_delay
                                   1218 ;------------------------------------------------------------
                                   1219 ;Allocation info for local variables in function 'i2c_write'
                                   1220 ;------------------------------------------------------------
                                   1221 ;value         Allocated to registers r7 
                                   1222 ;i             Allocated to registers r6 
                                   1223 ;------------------------------------------------------------
                                   1224 ;	main.c:175: __bit i2c_write(unsigned char value) {
                                   1225 ;	-----------------------------------------
                                   1226 ;	 function i2c_write
                                   1227 ;	-----------------------------------------
      000311                       1228 _i2c_write:
      000311 AF 82            [24] 1229 	mov	r7, dpl
                                   1230 ;	main.c:179: for (i = 0; i < 8; i++) {
      000313 7E 00            [12] 1231 	mov	r6,#0x00
      000315                       1232 00102$:
                                   1233 ;	main.c:180: SDA = (value & 0x80) ? 1 : 0;
      000315 8F 05            [24] 1234 	mov	ar5,r7
      000317 53 05 80         [24] 1235 	anl	ar5,#0x80
                                   1236 ;	assignBit
      00031A ED               [12] 1237 	mov	a,r5
      00031B 24 FF            [12] 1238 	add	a,#0xff
      00031D 92 B1            [24] 1239 	mov	_SDA,c
                                   1240 ;	main.c:181: SCL = 1;
                                   1241 ;	assignBit
      00031F D2 B0            [12] 1242 	setb	_SCL
                                   1243 ;	main.c:182: delay(1);
      000321 90 00 01         [24] 1244 	mov	dptr,#0x0001
      000324 C0 07            [24] 1245 	push	ar7
      000326 C0 06            [24] 1246 	push	ar6
      000328 12 01 37         [24] 1247 	lcall	_delay
      00032B D0 06            [24] 1248 	pop	ar6
      00032D D0 07            [24] 1249 	pop	ar7
                                   1250 ;	main.c:183: SCL = 0;
                                   1251 ;	assignBit
      00032F C2 B0            [12] 1252 	clr	_SCL
                                   1253 ;	main.c:184: value <<= 1;
      000331 EF               [12] 1254 	mov	a,r7
      000332 2F               [12] 1255 	add	a,r7
      000333 FF               [12] 1256 	mov	r7,a
                                   1257 ;	main.c:179: for (i = 0; i < 8; i++) {
      000334 0E               [12] 1258 	inc	r6
      000335 BE 08 00         [24] 1259 	cjne	r6,#0x08,00119$
      000338                       1260 00119$:
      000338 40 DB            [24] 1261 	jc	00102$
                                   1262 ;	main.c:187: SDA = 1;
                                   1263 ;	assignBit
      00033A D2 B1            [12] 1264 	setb	_SDA
                                   1265 ;	main.c:188: SCL = 1;
                                   1266 ;	assignBit
      00033C D2 B0            [12] 1267 	setb	_SCL
                                   1268 ;	main.c:189: delay(1);
      00033E 90 00 01         [24] 1269 	mov	dptr,#0x0001
      000341 12 01 37         [24] 1270 	lcall	_delay
                                   1271 ;	main.c:190: ack = SDA;
                                   1272 ;	assignBit
      000344 A2 B1            [12] 1273 	mov	c,_SDA
      000346 92 00            [24] 1274 	mov	_i2c_write_ack_10000_29,c
                                   1275 ;	main.c:191: SCL = 0;
                                   1276 ;	assignBit
      000348 C2 B0            [12] 1277 	clr	_SCL
                                   1278 ;	main.c:192: return !ack;
      00034A A2 00            [12] 1279 	mov	c,_i2c_write_ack_10000_29
      00034C B3               [12] 1280 	cpl	c
                                   1281 ;	main.c:193: }
      00034D 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'i2c_read'
                                   1285 ;------------------------------------------------------------
                                   1286 ;ack           Allocated to registers r7 
                                   1287 ;i             Allocated to registers r5 
                                   1288 ;value         Allocated to registers r6 
                                   1289 ;------------------------------------------------------------
                                   1290 ;	main.c:195: unsigned char i2c_read(unsigned char ack) {
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function i2c_read
                                   1293 ;	-----------------------------------------
      00034E                       1294 _i2c_read:
      00034E AF 82            [24] 1295 	mov	r7, dpl
                                   1296 ;	main.c:196: unsigned char i, value = 0;
      000350 7E 00            [12] 1297 	mov	r6,#0x00
                                   1298 ;	main.c:198: SDA = 1;
                                   1299 ;	assignBit
      000352 D2 B1            [12] 1300 	setb	_SDA
                                   1301 ;	main.c:200: for (i = 0; i < 8; i++) {
      000354 7D 00            [12] 1302 	mov	r5,#0x00
      000356                       1303 00104$:
                                   1304 ;	main.c:201: value <<= 1;
      000356 EE               [12] 1305 	mov	a,r6
      000357 2E               [12] 1306 	add	a,r6
      000358 FE               [12] 1307 	mov	r6,a
                                   1308 ;	main.c:202: SCL = 1;
                                   1309 ;	assignBit
      000359 D2 B0            [12] 1310 	setb	_SCL
                                   1311 ;	main.c:203: delay(1);
      00035B 90 00 01         [24] 1312 	mov	dptr,#0x0001
      00035E C0 07            [24] 1313 	push	ar7
      000360 C0 06            [24] 1314 	push	ar6
      000362 C0 05            [24] 1315 	push	ar5
      000364 12 01 37         [24] 1316 	lcall	_delay
      000367 D0 05            [24] 1317 	pop	ar5
      000369 D0 06            [24] 1318 	pop	ar6
      00036B D0 07            [24] 1319 	pop	ar7
                                   1320 ;	main.c:204: if (SDA)
      00036D 30 B1 03         [24] 1321 	jnb	_SDA,00102$
                                   1322 ;	main.c:205: value |= 1;
      000370 43 06 01         [24] 1323 	orl	ar6,#0x01
      000373                       1324 00102$:
                                   1325 ;	main.c:206: SCL = 0;
                                   1326 ;	assignBit
      000373 C2 B0            [12] 1327 	clr	_SCL
                                   1328 ;	main.c:207: delay(1);
      000375 90 00 01         [24] 1329 	mov	dptr,#0x0001
      000378 C0 07            [24] 1330 	push	ar7
      00037A C0 06            [24] 1331 	push	ar6
      00037C C0 05            [24] 1332 	push	ar5
      00037E 12 01 37         [24] 1333 	lcall	_delay
      000381 D0 05            [24] 1334 	pop	ar5
      000383 D0 06            [24] 1335 	pop	ar6
      000385 D0 07            [24] 1336 	pop	ar7
                                   1337 ;	main.c:200: for (i = 0; i < 8; i++) {
      000387 0D               [12] 1338 	inc	r5
      000388 BD 08 00         [24] 1339 	cjne	r5,#0x08,00128$
      00038B                       1340 00128$:
      00038B 40 C9            [24] 1341 	jc	00104$
                                   1342 ;	main.c:210: SDA = (ack) ? 0 : 1;
      00038D EF               [12] 1343 	mov	a,r7
      00038E B4 01 00         [24] 1344 	cjne	a,#0x01,00130$
      000391                       1345 00130$:
      000391 92 01            [24] 1346 	mov  _i2c_read_sloc0_1_0,c
      000393 E4               [12] 1347 	clr	a
      000394 33               [12] 1348 	rlc	a
      000395 24 FF            [12] 1349 	add	a,#0xff
      000397 92 B1            [24] 1350 	mov	_SDA,c
                                   1351 ;	main.c:211: SCL = 1;
                                   1352 ;	assignBit
      000399 D2 B0            [12] 1353 	setb	_SCL
                                   1354 ;	main.c:212: delay(1);
      00039B 90 00 01         [24] 1355 	mov	dptr,#0x0001
      00039E C0 06            [24] 1356 	push	ar6
      0003A0 12 01 37         [24] 1357 	lcall	_delay
      0003A3 D0 06            [24] 1358 	pop	ar6
                                   1359 ;	main.c:213: SCL = 0;
                                   1360 ;	assignBit
      0003A5 C2 B0            [12] 1361 	clr	_SCL
                                   1362 ;	main.c:214: SDA = 1;
                                   1363 ;	assignBit
      0003A7 D2 B1            [12] 1364 	setb	_SDA
                                   1365 ;	main.c:215: return value;
      0003A9 8E 82            [24] 1366 	mov	dpl, r6
                                   1367 ;	main.c:216: }
      0003AB 22               [24] 1368 	ret
                                   1369 ;------------------------------------------------------------
                                   1370 ;Allocation info for local variables in function 'dec_to_bcd'
                                   1371 ;------------------------------------------------------------
                                   1372 ;val           Allocated to registers r7 
                                   1373 ;------------------------------------------------------------
                                   1374 ;	main.c:218: unsigned char dec_to_bcd(unsigned char val) {
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function dec_to_bcd
                                   1377 ;	-----------------------------------------
      0003AC                       1378 _dec_to_bcd:
      0003AC AF 82            [24] 1379 	mov	r7, dpl
                                   1380 ;	main.c:219: return ((val / 10) << 4) | (val % 10);
      0003AE 8F 06            [24] 1381 	mov	ar6,r7
      0003B0 75 F0 0A         [24] 1382 	mov	b,#0x0a
      0003B3 EE               [12] 1383 	mov	a,r6
      0003B4 84               [48] 1384 	div	ab
      0003B5 C4               [12] 1385 	swap	a
      0003B6 54 F0            [12] 1386 	anl	a,#0xf0
      0003B8 FE               [12] 1387 	mov	r6,a
      0003B9 75 F0 0A         [24] 1388 	mov	b,#0x0a
      0003BC EF               [12] 1389 	mov	a,r7
      0003BD 84               [48] 1390 	div	ab
      0003BE E5 F0            [12] 1391 	mov	a,b
      0003C0 4E               [12] 1392 	orl	a,r6
      0003C1 F5 82            [12] 1393 	mov	dpl,a
                                   1394 ;	main.c:220: }
      0003C3 22               [24] 1395 	ret
                                   1396 ;------------------------------------------------------------
                                   1397 ;Allocation info for local variables in function 'bcd_to_dec'
                                   1398 ;------------------------------------------------------------
                                   1399 ;val           Allocated to registers r7 
                                   1400 ;------------------------------------------------------------
                                   1401 ;	main.c:222: unsigned char bcd_to_dec(unsigned char val) {
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function bcd_to_dec
                                   1404 ;	-----------------------------------------
      0003C4                       1405 _bcd_to_dec:
                                   1406 ;	main.c:223: return ((val >> 4) * 10) + (val & 0x0F);
      0003C4 E5 82            [12] 1407 	mov	a,dpl
      0003C6 FF               [12] 1408 	mov	r7,a
      0003C7 C4               [12] 1409 	swap	a
      0003C8 54 0F            [12] 1410 	anl	a,#0x0f
      0003CA 75 F0 0A         [24] 1411 	mov	b,#0x0a
      0003CD A4               [48] 1412 	mul	ab
      0003CE FE               [12] 1413 	mov	r6,a
      0003CF 74 0F            [12] 1414 	mov	a,#0x0f
      0003D1 5F               [12] 1415 	anl	a,r7
      0003D2 2E               [12] 1416 	add	a, r6
      0003D3 F5 82            [12] 1417 	mov	dpl,a
                                   1418 ;	main.c:224: }
      0003D5 22               [24] 1419 	ret
                                   1420 ;------------------------------------------------------------
                                   1421 ;Allocation info for local variables in function 'ds3232_init'
                                   1422 ;------------------------------------------------------------
                                   1423 ;	main.c:226: void ds3232_init(void) {
                                   1424 ;	-----------------------------------------
                                   1425 ;	 function ds3232_init
                                   1426 ;	-----------------------------------------
      0003D6                       1427 _ds3232_init:
                                   1428 ;	main.c:227: i2c_start();
      0003D6 12 02 EA         [24] 1429 	lcall	_i2c_start
                                   1430 ;	main.c:228: i2c_write((DS3232_ADDRESS << 1) | 0); // Write mode
      0003D9 75 82 D0         [24] 1431 	mov	dpl, #0xd0
      0003DC 12 03 11         [24] 1432 	lcall	_i2c_write
                                   1433 ;	main.c:229: i2c_write(0x00); // Point to seconds register
      0003DF 75 82 00         [24] 1434 	mov	dpl, #0x00
      0003E2 12 03 11         [24] 1435 	lcall	_i2c_write
                                   1436 ;	main.c:230: i2c_write(0x00); // Start oscillator (CH = 0)
      0003E5 75 82 00         [24] 1437 	mov	dpl, #0x00
      0003E8 12 03 11         [24] 1438 	lcall	_i2c_write
                                   1439 ;	main.c:231: i2c_stop();
                                   1440 ;	main.c:232: }
      0003EB 02 02 FF         [24] 1441 	ljmp	_i2c_stop
                                   1442 ;------------------------------------------------------------
                                   1443 ;Allocation info for local variables in function 'ds3232_set_time_date'
                                   1444 ;------------------------------------------------------------
                                   1445 ;min           Allocated with name '_ds3232_set_time_date_PARM_2'
                                   1446 ;sec           Allocated with name '_ds3232_set_time_date_PARM_3'
                                   1447 ;day           Allocated with name '_ds3232_set_time_date_PARM_4'
                                   1448 ;date          Allocated with name '_ds3232_set_time_date_PARM_5'
                                   1449 ;month         Allocated with name '_ds3232_set_time_date_PARM_6'
                                   1450 ;year          Allocated with name '_ds3232_set_time_date_PARM_7'
                                   1451 ;hrs           Allocated to registers r7 
                                   1452 ;------------------------------------------------------------
                                   1453 ;	main.c:234: void ds3232_set_time_date(unsigned char hrs, unsigned char min, unsigned char sec, unsigned char day, unsigned char date, unsigned char month, unsigned char year) {
                                   1454 ;	-----------------------------------------
                                   1455 ;	 function ds3232_set_time_date
                                   1456 ;	-----------------------------------------
      0003EE                       1457 _ds3232_set_time_date:
      0003EE AF 82            [24] 1458 	mov	r7, dpl
                                   1459 ;	main.c:235: i2c_start();
      0003F0 C0 07            [24] 1460 	push	ar7
      0003F2 12 02 EA         [24] 1461 	lcall	_i2c_start
                                   1462 ;	main.c:236: i2c_write((DS3232_ADDRESS << 1) | 0);
      0003F5 75 82 D0         [24] 1463 	mov	dpl, #0xd0
      0003F8 12 03 11         [24] 1464 	lcall	_i2c_write
                                   1465 ;	main.c:237: i2c_write(0x00);
      0003FB 75 82 00         [24] 1466 	mov	dpl, #0x00
      0003FE 12 03 11         [24] 1467 	lcall	_i2c_write
                                   1468 ;	main.c:238: i2c_write(dec_to_bcd(sec));
      000401 85 54 82         [24] 1469 	mov	dpl, _ds3232_set_time_date_PARM_3
      000404 12 03 AC         [24] 1470 	lcall	_dec_to_bcd
      000407 12 03 11         [24] 1471 	lcall	_i2c_write
                                   1472 ;	main.c:239: i2c_write(dec_to_bcd(min));
      00040A 85 53 82         [24] 1473 	mov	dpl, _ds3232_set_time_date_PARM_2
      00040D 12 03 AC         [24] 1474 	lcall	_dec_to_bcd
      000410 12 03 11         [24] 1475 	lcall	_i2c_write
      000413 D0 07            [24] 1476 	pop	ar7
                                   1477 ;	main.c:240: i2c_write(dec_to_bcd(hrs));
      000415 8F 82            [24] 1478 	mov	dpl, r7
      000417 12 03 AC         [24] 1479 	lcall	_dec_to_bcd
      00041A 12 03 11         [24] 1480 	lcall	_i2c_write
                                   1481 ;	main.c:241: i2c_write(dec_to_bcd(day));
      00041D 85 55 82         [24] 1482 	mov	dpl, _ds3232_set_time_date_PARM_4
      000420 12 03 AC         [24] 1483 	lcall	_dec_to_bcd
      000423 12 03 11         [24] 1484 	lcall	_i2c_write
                                   1485 ;	main.c:242: i2c_write(dec_to_bcd(date));
      000426 85 56 82         [24] 1486 	mov	dpl, _ds3232_set_time_date_PARM_5
      000429 12 03 AC         [24] 1487 	lcall	_dec_to_bcd
      00042C 12 03 11         [24] 1488 	lcall	_i2c_write
                                   1489 ;	main.c:243: i2c_write(dec_to_bcd(month));
      00042F 85 57 82         [24] 1490 	mov	dpl, _ds3232_set_time_date_PARM_6
      000432 12 03 AC         [24] 1491 	lcall	_dec_to_bcd
      000435 12 03 11         [24] 1492 	lcall	_i2c_write
                                   1493 ;	main.c:244: i2c_write(dec_to_bcd(year));
      000438 85 58 82         [24] 1494 	mov	dpl, _ds3232_set_time_date_PARM_7
      00043B 12 03 AC         [24] 1495 	lcall	_dec_to_bcd
      00043E 12 03 11         [24] 1496 	lcall	_i2c_write
                                   1497 ;	main.c:245: i2c_stop();
                                   1498 ;	main.c:246: }
      000441 02 02 FF         [24] 1499 	ljmp	_i2c_stop
                                   1500 ;------------------------------------------------------------
                                   1501 ;Allocation info for local variables in function 'ds3232_get_time_date'
                                   1502 ;------------------------------------------------------------
                                   1503 ;min           Allocated with name '_ds3232_get_time_date_PARM_2'
                                   1504 ;sec           Allocated with name '_ds3232_get_time_date_PARM_3'
                                   1505 ;day           Allocated with name '_ds3232_get_time_date_PARM_4'
                                   1506 ;date          Allocated with name '_ds3232_get_time_date_PARM_5'
                                   1507 ;month         Allocated with name '_ds3232_get_time_date_PARM_6'
                                   1508 ;year          Allocated with name '_ds3232_get_time_date_PARM_7'
                                   1509 ;hrs           Allocated to registers r5 r6 r7 
                                   1510 ;------------------------------------------------------------
                                   1511 ;	main.c:248: void ds3232_get_time_date(unsigned char *hrs, unsigned char *min, unsigned char *sec, unsigned char *day, unsigned char *date, unsigned char *month, unsigned char *year) {
                                   1512 ;	-----------------------------------------
                                   1513 ;	 function ds3232_get_time_date
                                   1514 ;	-----------------------------------------
      000444                       1515 _ds3232_get_time_date:
      000444 AD 82            [24] 1516 	mov	r5, dpl
      000446 AE 83            [24] 1517 	mov	r6, dph
      000448 AF F0            [24] 1518 	mov	r7, b
                                   1519 ;	main.c:249: i2c_start();
      00044A C0 07            [24] 1520 	push	ar7
      00044C C0 06            [24] 1521 	push	ar6
      00044E C0 05            [24] 1522 	push	ar5
      000450 12 02 EA         [24] 1523 	lcall	_i2c_start
                                   1524 ;	main.c:250: i2c_write((DS3232_ADDRESS << 1) | 0);
      000453 75 82 D0         [24] 1525 	mov	dpl, #0xd0
      000456 12 03 11         [24] 1526 	lcall	_i2c_write
                                   1527 ;	main.c:251: i2c_write(0x00);
      000459 75 82 00         [24] 1528 	mov	dpl, #0x00
      00045C 12 03 11         [24] 1529 	lcall	_i2c_write
                                   1530 ;	main.c:252: i2c_stop();
      00045F 12 02 FF         [24] 1531 	lcall	_i2c_stop
                                   1532 ;	main.c:254: i2c_start();
      000462 12 02 EA         [24] 1533 	lcall	_i2c_start
                                   1534 ;	main.c:255: i2c_write((DS3232_ADDRESS << 1) | 1);
      000465 75 82 D1         [24] 1535 	mov	dpl, #0xd1
      000468 12 03 11         [24] 1536 	lcall	_i2c_write
                                   1537 ;	main.c:256: *sec   = bcd_to_dec(i2c_read(1));
      00046B AA 5C            [24] 1538 	mov	r2,_ds3232_get_time_date_PARM_3
      00046D AB 5D            [24] 1539 	mov	r3,(_ds3232_get_time_date_PARM_3 + 1)
      00046F AC 5E            [24] 1540 	mov	r4,(_ds3232_get_time_date_PARM_3 + 2)
      000471 75 82 01         [24] 1541 	mov	dpl, #0x01
      000474 C0 04            [24] 1542 	push	ar4
      000476 C0 03            [24] 1543 	push	ar3
      000478 C0 02            [24] 1544 	push	ar2
      00047A 12 03 4E         [24] 1545 	lcall	_i2c_read
      00047D 12 03 C4         [24] 1546 	lcall	_bcd_to_dec
      000480 A9 82            [24] 1547 	mov	r1, dpl
      000482 D0 02            [24] 1548 	pop	ar2
      000484 D0 03            [24] 1549 	pop	ar3
      000486 D0 04            [24] 1550 	pop	ar4
      000488 8A 82            [24] 1551 	mov	dpl,r2
      00048A 8B 83            [24] 1552 	mov	dph,r3
      00048C 8C F0            [24] 1553 	mov	b,r4
      00048E E9               [12] 1554 	mov	a,r1
      00048F 12 14 A4         [24] 1555 	lcall	__gptrput
                                   1556 ;	main.c:257: *min   = bcd_to_dec(i2c_read(1));
      000492 AA 59            [24] 1557 	mov	r2,_ds3232_get_time_date_PARM_2
      000494 AB 5A            [24] 1558 	mov	r3,(_ds3232_get_time_date_PARM_2 + 1)
      000496 AC 5B            [24] 1559 	mov	r4,(_ds3232_get_time_date_PARM_2 + 2)
      000498 75 82 01         [24] 1560 	mov	dpl, #0x01
      00049B C0 04            [24] 1561 	push	ar4
      00049D C0 03            [24] 1562 	push	ar3
      00049F C0 02            [24] 1563 	push	ar2
      0004A1 12 03 4E         [24] 1564 	lcall	_i2c_read
      0004A4 12 03 C4         [24] 1565 	lcall	_bcd_to_dec
      0004A7 A9 82            [24] 1566 	mov	r1, dpl
      0004A9 D0 02            [24] 1567 	pop	ar2
      0004AB D0 03            [24] 1568 	pop	ar3
      0004AD D0 04            [24] 1569 	pop	ar4
      0004AF 8A 82            [24] 1570 	mov	dpl,r2
      0004B1 8B 83            [24] 1571 	mov	dph,r3
      0004B3 8C F0            [24] 1572 	mov	b,r4
      0004B5 E9               [12] 1573 	mov	a,r1
      0004B6 12 14 A4         [24] 1574 	lcall	__gptrput
                                   1575 ;	main.c:258: *hrs   = bcd_to_dec(i2c_read(1));
      0004B9 75 82 01         [24] 1576 	mov	dpl, #0x01
      0004BC 12 03 4E         [24] 1577 	lcall	_i2c_read
      0004BF 12 03 C4         [24] 1578 	lcall	_bcd_to_dec
      0004C2 AC 82            [24] 1579 	mov	r4, dpl
      0004C4 D0 05            [24] 1580 	pop	ar5
      0004C6 D0 06            [24] 1581 	pop	ar6
      0004C8 D0 07            [24] 1582 	pop	ar7
      0004CA 8D 82            [24] 1583 	mov	dpl,r5
      0004CC 8E 83            [24] 1584 	mov	dph,r6
      0004CE 8F F0            [24] 1585 	mov	b,r7
      0004D0 EC               [12] 1586 	mov	a,r4
      0004D1 12 14 A4         [24] 1587 	lcall	__gptrput
                                   1588 ;	main.c:259: *day   = bcd_to_dec(i2c_read(1));
      0004D4 AD 5F            [24] 1589 	mov	r5,_ds3232_get_time_date_PARM_4
      0004D6 AE 60            [24] 1590 	mov	r6,(_ds3232_get_time_date_PARM_4 + 1)
      0004D8 AF 61            [24] 1591 	mov	r7,(_ds3232_get_time_date_PARM_4 + 2)
      0004DA 75 82 01         [24] 1592 	mov	dpl, #0x01
      0004DD C0 07            [24] 1593 	push	ar7
      0004DF C0 06            [24] 1594 	push	ar6
      0004E1 C0 05            [24] 1595 	push	ar5
      0004E3 12 03 4E         [24] 1596 	lcall	_i2c_read
      0004E6 12 03 C4         [24] 1597 	lcall	_bcd_to_dec
      0004E9 AC 82            [24] 1598 	mov	r4, dpl
      0004EB D0 05            [24] 1599 	pop	ar5
      0004ED D0 06            [24] 1600 	pop	ar6
      0004EF D0 07            [24] 1601 	pop	ar7
      0004F1 8D 82            [24] 1602 	mov	dpl,r5
      0004F3 8E 83            [24] 1603 	mov	dph,r6
      0004F5 8F F0            [24] 1604 	mov	b,r7
      0004F7 EC               [12] 1605 	mov	a,r4
      0004F8 12 14 A4         [24] 1606 	lcall	__gptrput
                                   1607 ;	main.c:260: *date  = bcd_to_dec(i2c_read(1));
      0004FB AD 62            [24] 1608 	mov	r5,_ds3232_get_time_date_PARM_5
      0004FD AE 63            [24] 1609 	mov	r6,(_ds3232_get_time_date_PARM_5 + 1)
      0004FF AF 64            [24] 1610 	mov	r7,(_ds3232_get_time_date_PARM_5 + 2)
      000501 75 82 01         [24] 1611 	mov	dpl, #0x01
      000504 C0 07            [24] 1612 	push	ar7
      000506 C0 06            [24] 1613 	push	ar6
      000508 C0 05            [24] 1614 	push	ar5
      00050A 12 03 4E         [24] 1615 	lcall	_i2c_read
      00050D 12 03 C4         [24] 1616 	lcall	_bcd_to_dec
      000510 AC 82            [24] 1617 	mov	r4, dpl
      000512 D0 05            [24] 1618 	pop	ar5
      000514 D0 06            [24] 1619 	pop	ar6
      000516 D0 07            [24] 1620 	pop	ar7
      000518 8D 82            [24] 1621 	mov	dpl,r5
      00051A 8E 83            [24] 1622 	mov	dph,r6
      00051C 8F F0            [24] 1623 	mov	b,r7
      00051E EC               [12] 1624 	mov	a,r4
      00051F 12 14 A4         [24] 1625 	lcall	__gptrput
                                   1626 ;	main.c:261: *month = bcd_to_dec(i2c_read(1));
      000522 AD 65            [24] 1627 	mov	r5,_ds3232_get_time_date_PARM_6
      000524 AE 66            [24] 1628 	mov	r6,(_ds3232_get_time_date_PARM_6 + 1)
      000526 AF 67            [24] 1629 	mov	r7,(_ds3232_get_time_date_PARM_6 + 2)
      000528 75 82 01         [24] 1630 	mov	dpl, #0x01
      00052B C0 07            [24] 1631 	push	ar7
      00052D C0 06            [24] 1632 	push	ar6
      00052F C0 05            [24] 1633 	push	ar5
      000531 12 03 4E         [24] 1634 	lcall	_i2c_read
      000534 12 03 C4         [24] 1635 	lcall	_bcd_to_dec
      000537 AC 82            [24] 1636 	mov	r4, dpl
      000539 D0 05            [24] 1637 	pop	ar5
      00053B D0 06            [24] 1638 	pop	ar6
      00053D D0 07            [24] 1639 	pop	ar7
      00053F 8D 82            [24] 1640 	mov	dpl,r5
      000541 8E 83            [24] 1641 	mov	dph,r6
      000543 8F F0            [24] 1642 	mov	b,r7
      000545 EC               [12] 1643 	mov	a,r4
      000546 12 14 A4         [24] 1644 	lcall	__gptrput
                                   1645 ;	main.c:262: *year  = bcd_to_dec(i2c_read(0));
      000549 AD 68            [24] 1646 	mov	r5,_ds3232_get_time_date_PARM_7
      00054B AE 69            [24] 1647 	mov	r6,(_ds3232_get_time_date_PARM_7 + 1)
      00054D AF 6A            [24] 1648 	mov	r7,(_ds3232_get_time_date_PARM_7 + 2)
      00054F 75 82 00         [24] 1649 	mov	dpl, #0x00
      000552 C0 07            [24] 1650 	push	ar7
      000554 C0 06            [24] 1651 	push	ar6
      000556 C0 05            [24] 1652 	push	ar5
      000558 12 03 4E         [24] 1653 	lcall	_i2c_read
      00055B 12 03 C4         [24] 1654 	lcall	_bcd_to_dec
      00055E AC 82            [24] 1655 	mov	r4, dpl
      000560 D0 05            [24] 1656 	pop	ar5
      000562 D0 06            [24] 1657 	pop	ar6
      000564 D0 07            [24] 1658 	pop	ar7
      000566 8D 82            [24] 1659 	mov	dpl,r5
      000568 8E 83            [24] 1660 	mov	dph,r6
      00056A 8F F0            [24] 1661 	mov	b,r7
      00056C EC               [12] 1662 	mov	a,r4
      00056D 12 14 A4         [24] 1663 	lcall	__gptrput
                                   1664 ;	main.c:263: i2c_stop();
                                   1665 ;	main.c:264: }
      000570 02 02 FF         [24] 1666 	ljmp	_i2c_stop
                                   1667 ;------------------------------------------------------------
                                   1668 ;Allocation info for local variables in function 'display'
                                   1669 ;------------------------------------------------------------
                                   1670 ;m             Allocated with name '_display_PARM_2'
                                   1671 ;s             Allocated with name '_display_PARM_3'
                                   1672 ;d             Allocated with name '_display_PARM_4'
                                   1673 ;mo            Allocated with name '_display_PARM_5'
                                   1674 ;y             Allocated with name '_display_PARM_6'
                                   1675 ;day           Allocated with name '_display_PARM_7'
                                   1676 ;h             Allocated to registers r7 
                                   1677 ;------------------------------------------------------------
                                   1678 ;	main.c:266: void display(unsigned char h, unsigned char m, unsigned char s, unsigned char d, unsigned char mo, unsigned char y, unsigned char day ) {
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function display
                                   1681 ;	-----------------------------------------
      000573                       1682 _display:
      000573 AF 82            [24] 1683 	mov	r7, dpl
                                   1684 ;	main.c:267: int_to_str(h, buf);
      000575 75 08 4D         [24] 1685 	mov	_int_to_str_PARM_2,#_buf
      000578 75 09 00         [24] 1686 	mov	(_int_to_str_PARM_2 + 1),#0x00
      00057B 75 0A 40         [24] 1687 	mov	(_int_to_str_PARM_2 + 2),#0x40
      00057E 8F 82            [24] 1688 	mov	dpl, r7
      000580 12 02 99         [24] 1689 	lcall	_int_to_str
                                   1690 ;	main.c:268: time_str[0] = buf[0];
      000583 85 4D 37         [24] 1691 	mov	_time_str,_buf
                                   1692 ;	main.c:269: time_str[1] = buf[1];
      000586 85 4E 38         [24] 1693 	mov	(_time_str + 0x0001),(_buf + 0x0001)
                                   1694 ;	main.c:270: time_str[2] = ':';
      000589 75 39 3A         [24] 1695 	mov	(_time_str + 0x0002),#0x3a
                                   1696 ;	main.c:271: int_to_str(m, buf);
      00058C 75 08 4D         [24] 1697 	mov	_int_to_str_PARM_2,#_buf
      00058F 75 09 00         [24] 1698 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000592 75 0A 40         [24] 1699 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000595 85 6B 82         [24] 1700 	mov	dpl, _display_PARM_2
      000598 12 02 99         [24] 1701 	lcall	_int_to_str
                                   1702 ;	main.c:272: time_str[3] = buf[0];
      00059B 85 4D 3A         [24] 1703 	mov	(_time_str + 0x0003),_buf
                                   1704 ;	main.c:273: time_str[4] = buf[1];
      00059E 85 4E 3B         [24] 1705 	mov	(_time_str + 0x0004),(_buf + 0x0001)
                                   1706 ;	main.c:274: time_str[5] = ':';
      0005A1 75 3C 3A         [24] 1707 	mov	(_time_str + 0x0005),#0x3a
                                   1708 ;	main.c:275: int_to_str(s, buf);
      0005A4 75 08 4D         [24] 1709 	mov	_int_to_str_PARM_2,#_buf
      0005A7 75 09 00         [24] 1710 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005AA 75 0A 40         [24] 1711 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005AD 85 6C 82         [24] 1712 	mov	dpl, _display_PARM_3
      0005B0 12 02 99         [24] 1713 	lcall	_int_to_str
                                   1714 ;	main.c:276: time_str[6] = buf[0];
      0005B3 85 4D 3D         [24] 1715 	mov	(_time_str + 0x0006),_buf
                                   1716 ;	main.c:277: time_str[7] = buf[1];
      0005B6 85 4E 3E         [24] 1717 	mov	(_time_str + 0x0007),(_buf + 0x0001)
                                   1718 ;	main.c:278: time_str[8] = '\0';
      0005B9 75 3F 00         [24] 1719 	mov	(_time_str + 0x0008),#0x00
                                   1720 ;	main.c:281: int_to_str(d, buf);
      0005BC 75 08 4D         [24] 1721 	mov	_int_to_str_PARM_2,#_buf
      0005BF 75 09 00         [24] 1722 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005C2 75 0A 40         [24] 1723 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005C5 85 6D 82         [24] 1724 	mov	dpl, _display_PARM_4
      0005C8 12 02 99         [24] 1725 	lcall	_int_to_str
                                   1726 ;	main.c:282: date_str[0] = buf[0];
      0005CB 85 4D 40         [24] 1727 	mov	_date_str,_buf
                                   1728 ;	main.c:283: date_str[1] = buf[1];
      0005CE 85 4E 41         [24] 1729 	mov	(_date_str + 0x0001),(_buf + 0x0001)
                                   1730 ;	main.c:284: date_str[2] = ':';
      0005D1 75 42 3A         [24] 1731 	mov	(_date_str + 0x0002),#0x3a
                                   1732 ;	main.c:285: int_to_str(mo, buf);
      0005D4 75 08 4D         [24] 1733 	mov	_int_to_str_PARM_2,#_buf
      0005D7 75 09 00         [24] 1734 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005DA 75 0A 40         [24] 1735 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005DD 85 6E 82         [24] 1736 	mov	dpl, _display_PARM_5
      0005E0 12 02 99         [24] 1737 	lcall	_int_to_str
                                   1738 ;	main.c:286: date_str[3] = buf[0];
      0005E3 85 4D 43         [24] 1739 	mov	(_date_str + 0x0003),_buf
                                   1740 ;	main.c:287: date_str[4] = buf[1];
      0005E6 85 4E 44         [24] 1741 	mov	(_date_str + 0x0004),(_buf + 0x0001)
                                   1742 ;	main.c:288: date_str[5] = ':';
      0005E9 75 45 3A         [24] 1743 	mov	(_date_str + 0x0005),#0x3a
                                   1744 ;	main.c:289: int_to_str(y, buf);
      0005EC 75 08 4D         [24] 1745 	mov	_int_to_str_PARM_2,#_buf
      0005EF 75 09 00         [24] 1746 	mov	(_int_to_str_PARM_2 + 1),#0x00
      0005F2 75 0A 40         [24] 1747 	mov	(_int_to_str_PARM_2 + 2),#0x40
      0005F5 85 6F 82         [24] 1748 	mov	dpl, _display_PARM_6
      0005F8 12 02 99         [24] 1749 	lcall	_int_to_str
                                   1750 ;	main.c:290: date_str[6] = buf[0];
      0005FB 85 4D 46         [24] 1751 	mov	(_date_str + 0x0006),_buf
                                   1752 ;	main.c:291: date_str[7] = buf[1];
      0005FE 85 4E 47         [24] 1753 	mov	(_date_str + 0x0007),(_buf + 0x0001)
                                   1754 ;	main.c:292: date_str[8] = ' ';
      000601 75 48 20         [24] 1755 	mov	(_date_str + 0x0008),#0x20
                                   1756 ;	main.c:294: switch(day) {
      000604 E5 70            [12] 1757 	mov	a,_display_PARM_7
      000606 24 F8            [12] 1758 	add	a,#0xff - 0x07
      000608 40 6B            [24] 1759 	jc	00108$
      00060A E5 70            [12] 1760 	mov	a,_display_PARM_7
      00060C 24 0B            [12] 1761 	add	a,#(00118$-3-.)
      00060E 83               [24] 1762 	movc	a,@a+pc
      00060F F5 82            [12] 1763 	mov	dpl,a
      000611 E5 70            [12] 1764 	mov	a,_display_PARM_7
      000613 24 0C            [12] 1765 	add	a,#(00119$-3-.)
      000615 83               [24] 1766 	movc	a,@a+pc
      000616 F5 83            [12] 1767 	mov	dph,a
      000618 E4               [12] 1768 	clr	a
      000619 73               [24] 1769 	jmp	@a+dptr
      00061A                       1770 00118$:
      00061A 75                    1771 	.db	00108$
      00061B 2A                    1772 	.db	00101$
      00061C 35                    1773 	.db	00102$
      00061D 40                    1774 	.db	00103$
      00061E 4B                    1775 	.db	00104$
      00061F 56                    1776 	.db	00105$
      000620 61                    1777 	.db	00106$
      000621 6C                    1778 	.db	00107$
      000622                       1779 00119$:
      000622 06                    1780 	.db	00108$>>8
      000623 06                    1781 	.db	00101$>>8
      000624 06                    1782 	.db	00102$>>8
      000625 06                    1783 	.db	00103$>>8
      000626 06                    1784 	.db	00104$>>8
      000627 06                    1785 	.db	00105$>>8
      000628 06                    1786 	.db	00106$>>8
      000629 06                    1787 	.db	00107$>>8
                                   1788 ;	main.c:295: case 1:
      00062A                       1789 00101$:
                                   1790 ;	main.c:296: buf[0] = 'S';
      00062A 75 4D 53         [24] 1791 	mov	_buf,#0x53
                                   1792 ;	main.c:297: buf[1] = 'u';
      00062D 75 4E 75         [24] 1793 	mov	(_buf + 0x0001),#0x75
                                   1794 ;	main.c:298: buf[2] = 'n';
      000630 75 4F 6E         [24] 1795 	mov	(_buf + 0x0002),#0x6e
                                   1796 ;	main.c:299: break;
                                   1797 ;	main.c:300: case 2:
      000633 80 40            [24] 1798 	sjmp	00108$
      000635                       1799 00102$:
                                   1800 ;	main.c:301: buf[0] = 'M';
      000635 75 4D 4D         [24] 1801 	mov	_buf,#0x4d
                                   1802 ;	main.c:302: buf[1] = 'o';
      000638 75 4E 6F         [24] 1803 	mov	(_buf + 0x0001),#0x6f
                                   1804 ;	main.c:303: buf[2] = 'n';
      00063B 75 4F 6E         [24] 1805 	mov	(_buf + 0x0002),#0x6e
                                   1806 ;	main.c:304: break;
                                   1807 ;	main.c:305: case 3:
      00063E 80 35            [24] 1808 	sjmp	00108$
      000640                       1809 00103$:
                                   1810 ;	main.c:306: buf[0] = 'T';
      000640 75 4D 54         [24] 1811 	mov	_buf,#0x54
                                   1812 ;	main.c:307: buf[1] = 'u';
      000643 75 4E 75         [24] 1813 	mov	(_buf + 0x0001),#0x75
                                   1814 ;	main.c:308: buf[2] = 'e';
      000646 75 4F 65         [24] 1815 	mov	(_buf + 0x0002),#0x65
                                   1816 ;	main.c:309: break;
                                   1817 ;	main.c:310: case 4:
      000649 80 2A            [24] 1818 	sjmp	00108$
      00064B                       1819 00104$:
                                   1820 ;	main.c:311: buf[0] = 'W';
      00064B 75 4D 57         [24] 1821 	mov	_buf,#0x57
                                   1822 ;	main.c:312: buf[1] = 'e';
      00064E 75 4E 65         [24] 1823 	mov	(_buf + 0x0001),#0x65
                                   1824 ;	main.c:313: buf[2] = 'd';
      000651 75 4F 64         [24] 1825 	mov	(_buf + 0x0002),#0x64
                                   1826 ;	main.c:314: break;
                                   1827 ;	main.c:315: case 5:
      000654 80 1F            [24] 1828 	sjmp	00108$
      000656                       1829 00105$:
                                   1830 ;	main.c:316: buf[0] = 'T';
      000656 75 4D 54         [24] 1831 	mov	_buf,#0x54
                                   1832 ;	main.c:317: buf[1] = 'h';
      000659 75 4E 68         [24] 1833 	mov	(_buf + 0x0001),#0x68
                                   1834 ;	main.c:318: buf[2] = 'u';
      00065C 75 4F 75         [24] 1835 	mov	(_buf + 0x0002),#0x75
                                   1836 ;	main.c:319: break;
                                   1837 ;	main.c:320: case 6:
      00065F 80 14            [24] 1838 	sjmp	00108$
      000661                       1839 00106$:
                                   1840 ;	main.c:321: buf[0] = 'F';
      000661 75 4D 46         [24] 1841 	mov	_buf,#0x46
                                   1842 ;	main.c:322: buf[1] = 'r';
      000664 75 4E 72         [24] 1843 	mov	(_buf + 0x0001),#0x72
                                   1844 ;	main.c:323: buf[2] = 'i';
      000667 75 4F 69         [24] 1845 	mov	(_buf + 0x0002),#0x69
                                   1846 ;	main.c:324: break;
                                   1847 ;	main.c:325: case 7:
      00066A 80 09            [24] 1848 	sjmp	00108$
      00066C                       1849 00107$:
                                   1850 ;	main.c:326: buf[0] = 'S';
      00066C 75 4D 53         [24] 1851 	mov	_buf,#0x53
                                   1852 ;	main.c:327: buf[1] = 'a';
      00066F 75 4E 61         [24] 1853 	mov	(_buf + 0x0001),#0x61
                                   1854 ;	main.c:328: buf[2] = 't';
      000672 75 4F 74         [24] 1855 	mov	(_buf + 0x0002),#0x74
                                   1856 ;	main.c:330: }
      000675                       1857 00108$:
                                   1858 ;	main.c:331: date_str[9] = buf[0];
      000675 85 4D 49         [24] 1859 	mov	(_date_str + 0x0009),_buf
                                   1860 ;	main.c:332: date_str[10] = buf[1];
      000678 85 4E 4A         [24] 1861 	mov	(_date_str + 0x000a),(_buf + 0x0001)
                                   1862 ;	main.c:333: date_str[11] = buf[2];
      00067B 85 4F 4B         [24] 1863 	mov	(_date_str + 0x000b),(_buf + 0x0002)
                                   1864 ;	main.c:334: date_str[12] = '\0';
      00067E 75 4C 00         [24] 1865 	mov	(_date_str + 0x000c),#0x00
                                   1866 ;	main.c:337: lcd_goto(0, 0);
      000681 75 52 00         [24] 1867 	mov	_lcd_goto_PARM_2,#0x00
      000684 75 82 00         [24] 1868 	mov	dpl, #0x00
      000687 12 02 2E         [24] 1869 	lcall	_lcd_goto
                                   1870 ;	main.c:338: lcd_string(time_str);
      00068A 90 00 37         [24] 1871 	mov	dptr,#_time_str
      00068D 75 F0 40         [24] 1872 	mov	b, #0x40
      000690 12 01 F7         [24] 1873 	lcall	_lcd_string
                                   1874 ;	main.c:339: lcd_goto(1, 0);
      000693 75 52 00         [24] 1875 	mov	_lcd_goto_PARM_2,#0x00
      000696 75 82 01         [24] 1876 	mov	dpl, #0x01
      000699 12 02 2E         [24] 1877 	lcall	_lcd_goto
                                   1878 ;	main.c:340: lcd_string(date_str);
      00069C 90 00 40         [24] 1879 	mov	dptr,#_date_str
      00069F 75 F0 40         [24] 1880 	mov	b, #0x40
                                   1881 ;	main.c:341: }
      0006A2 02 01 F7         [24] 1882 	ljmp	_lcd_string
                                   1883 ;------------------------------------------------------------
                                   1884 ;Allocation info for local variables in function 'step_motor'
                                   1885 ;------------------------------------------------------------
                                   1886 ;step          Allocated to registers r6 r7 
                                   1887 ;------------------------------------------------------------
                                   1888 ;	main.c:343: void step_motor(int step) {
                                   1889 ;	-----------------------------------------
                                   1890 ;	 function step_motor
                                   1891 ;	-----------------------------------------
      0006A5                       1892 _step_motor:
                                   1893 ;	main.c:344: switch(step % 8) {
      0006A5 75 08 08         [24] 1894 	mov	__modsint_PARM_2,#0x08
      0006A8 75 09 00         [24] 1895 	mov	(__modsint_PARM_2 + 1),#0x00
      0006AB 12 15 45         [24] 1896 	lcall	__modsint
      0006AE AE 82            [24] 1897 	mov	r6, dpl
      0006B0 E5 83            [12] 1898 	mov	a,dph
      0006B2 FF               [12] 1899 	mov	r7,a
      0006B3 30 E7 01         [24] 1900 	jnb	acc.7,00124$
      0006B6 22               [24] 1901 	ret
      0006B7                       1902 00124$:
      0006B7 C3               [12] 1903 	clr	c
      0006B8 74 07            [12] 1904 	mov	a,#0x07
      0006BA 9E               [12] 1905 	subb	a,r6
      0006BB 74 80            [12] 1906 	mov	a,#(0x00 ^ 0x80)
      0006BD 8F F0            [24] 1907 	mov	b,r7
      0006BF 63 F0 80         [24] 1908 	xrl	b,#0x80
      0006C2 95 F0            [12] 1909 	subb	a,b
      0006C4 40 65            [24] 1910 	jc	00110$
      0006C6 EE               [12] 1911 	mov	a,r6
      0006C7 24 0A            [12] 1912 	add	a,#(00126$-3-.)
      0006C9 83               [24] 1913 	movc	a,@a+pc
      0006CA F5 82            [12] 1914 	mov	dpl,a
      0006CC EE               [12] 1915 	mov	a,r6
      0006CD 24 0C            [12] 1916 	add	a,#(00127$-3-.)
      0006CF 83               [24] 1917 	movc	a,@a+pc
      0006D0 F5 83            [12] 1918 	mov	dph,a
      0006D2 E4               [12] 1919 	clr	a
      0006D3 73               [24] 1920 	jmp	@a+dptr
      0006D4                       1921 00126$:
      0006D4 E4                    1922 	.db	00101$
      0006D5 ED                    1923 	.db	00102$
      0006D6 F6                    1924 	.db	00103$
      0006D7 FF                    1925 	.db	00104$
      0006D8 08                    1926 	.db	00105$
      0006D9 11                    1927 	.db	00106$
      0006DA 1A                    1928 	.db	00107$
      0006DB 23                    1929 	.db	00108$
      0006DC                       1930 00127$:
      0006DC 06                    1931 	.db	00101$>>8
      0006DD 06                    1932 	.db	00102$>>8
      0006DE 06                    1933 	.db	00103$>>8
      0006DF 06                    1934 	.db	00104$>>8
      0006E0 07                    1935 	.db	00105$>>8
      0006E1 07                    1936 	.db	00106$>>8
      0006E2 07                    1937 	.db	00107$>>8
      0006E3 07                    1938 	.db	00108$>>8
                                   1939 ;	main.c:345: case 0:
      0006E4                       1940 00101$:
                                   1941 ;	main.c:346: IN1=1;
                                   1942 ;	assignBit
      0006E4 D2 A4            [12] 1943 	setb	_IN1
                                   1944 ;	main.c:347: IN2=0;
                                   1945 ;	assignBit
      0006E6 C2 A3            [12] 1946 	clr	_IN2
                                   1947 ;	main.c:348: IN3=0;
                                   1948 ;	assignBit
      0006E8 C2 A2            [12] 1949 	clr	_IN3
                                   1950 ;	main.c:349: IN4=0;
                                   1951 ;	assignBit
      0006EA C2 A1            [12] 1952 	clr	_IN4
                                   1953 ;	main.c:350: break;
                                   1954 ;	main.c:351: case 1:
      0006EC 22               [24] 1955 	ret
      0006ED                       1956 00102$:
                                   1957 ;	main.c:352: IN1=1;
                                   1958 ;	assignBit
      0006ED D2 A4            [12] 1959 	setb	_IN1
                                   1960 ;	main.c:353: IN2=1;
                                   1961 ;	assignBit
      0006EF D2 A3            [12] 1962 	setb	_IN2
                                   1963 ;	main.c:354: IN3=0;
                                   1964 ;	assignBit
      0006F1 C2 A2            [12] 1965 	clr	_IN3
                                   1966 ;	main.c:355: IN4=0;
                                   1967 ;	assignBit
      0006F3 C2 A1            [12] 1968 	clr	_IN4
                                   1969 ;	main.c:356: break;
                                   1970 ;	main.c:357: case 2:
      0006F5 22               [24] 1971 	ret
      0006F6                       1972 00103$:
                                   1973 ;	main.c:358: IN1=0;
                                   1974 ;	assignBit
      0006F6 C2 A4            [12] 1975 	clr	_IN1
                                   1976 ;	main.c:359: IN2=1;
                                   1977 ;	assignBit
      0006F8 D2 A3            [12] 1978 	setb	_IN2
                                   1979 ;	main.c:360: IN3=0;
                                   1980 ;	assignBit
      0006FA C2 A2            [12] 1981 	clr	_IN3
                                   1982 ;	main.c:361: IN4=0;
                                   1983 ;	assignBit
      0006FC C2 A1            [12] 1984 	clr	_IN4
                                   1985 ;	main.c:362: break;
                                   1986 ;	main.c:363: case 3:
      0006FE 22               [24] 1987 	ret
      0006FF                       1988 00104$:
                                   1989 ;	main.c:364: IN1=0;
                                   1990 ;	assignBit
      0006FF C2 A4            [12] 1991 	clr	_IN1
                                   1992 ;	main.c:365: IN2=1;
                                   1993 ;	assignBit
      000701 D2 A3            [12] 1994 	setb	_IN2
                                   1995 ;	main.c:366: IN3=1;
                                   1996 ;	assignBit
      000703 D2 A2            [12] 1997 	setb	_IN3
                                   1998 ;	main.c:367: IN4=0;
                                   1999 ;	assignBit
      000705 C2 A1            [12] 2000 	clr	_IN4
                                   2001 ;	main.c:368: break;
                                   2002 ;	main.c:369: case 4:
      000707 22               [24] 2003 	ret
      000708                       2004 00105$:
                                   2005 ;	main.c:370: IN1=0;
                                   2006 ;	assignBit
      000708 C2 A4            [12] 2007 	clr	_IN1
                                   2008 ;	main.c:371: IN2=0;
                                   2009 ;	assignBit
      00070A C2 A3            [12] 2010 	clr	_IN2
                                   2011 ;	main.c:372: IN3=1;
                                   2012 ;	assignBit
      00070C D2 A2            [12] 2013 	setb	_IN3
                                   2014 ;	main.c:373: IN4=0;
                                   2015 ;	assignBit
      00070E C2 A1            [12] 2016 	clr	_IN4
                                   2017 ;	main.c:374: break;
                                   2018 ;	main.c:375: case 5:
      000710 22               [24] 2019 	ret
      000711                       2020 00106$:
                                   2021 ;	main.c:376: IN1=0;
                                   2022 ;	assignBit
      000711 C2 A4            [12] 2023 	clr	_IN1
                                   2024 ;	main.c:377: IN2=0;
                                   2025 ;	assignBit
      000713 C2 A3            [12] 2026 	clr	_IN2
                                   2027 ;	main.c:378: IN3=1;
                                   2028 ;	assignBit
      000715 D2 A2            [12] 2029 	setb	_IN3
                                   2030 ;	main.c:379: IN4=1;
                                   2031 ;	assignBit
      000717 D2 A1            [12] 2032 	setb	_IN4
                                   2033 ;	main.c:380: break;
                                   2034 ;	main.c:381: case 6:
      000719 22               [24] 2035 	ret
      00071A                       2036 00107$:
                                   2037 ;	main.c:382: IN1=0;
                                   2038 ;	assignBit
      00071A C2 A4            [12] 2039 	clr	_IN1
                                   2040 ;	main.c:383: IN2=0;
                                   2041 ;	assignBit
      00071C C2 A3            [12] 2042 	clr	_IN2
                                   2043 ;	main.c:384: IN3=0;
                                   2044 ;	assignBit
      00071E C2 A2            [12] 2045 	clr	_IN3
                                   2046 ;	main.c:385: IN4=1;
                                   2047 ;	assignBit
      000720 D2 A1            [12] 2048 	setb	_IN4
                                   2049 ;	main.c:386: break;
                                   2050 ;	main.c:387: case 7:
      000722 22               [24] 2051 	ret
      000723                       2052 00108$:
                                   2053 ;	main.c:388: IN1=1;
                                   2054 ;	assignBit
      000723 D2 A4            [12] 2055 	setb	_IN1
                                   2056 ;	main.c:389: IN2=0;
                                   2057 ;	assignBit
      000725 C2 A3            [12] 2058 	clr	_IN2
                                   2059 ;	main.c:390: IN3=0;
                                   2060 ;	assignBit
      000727 C2 A2            [12] 2061 	clr	_IN3
                                   2062 ;	main.c:391: IN4=1;
                                   2063 ;	assignBit
      000729 D2 A1            [12] 2064 	setb	_IN4
                                   2065 ;	main.c:393: }
      00072B                       2066 00110$:
                                   2067 ;	main.c:394: }
      00072B 22               [24] 2068 	ret
                                   2069 ;------------------------------------------------------------
                                   2070 ;Allocation info for local variables in function 'write_eeprom'
                                   2071 ;------------------------------------------------------------
                                   2072 ;value         Allocated with name '_write_eeprom_PARM_2'
                                   2073 ;addr          Allocated to registers r6 r7 
                                   2074 ;------------------------------------------------------------
                                   2075 ;	main.c:396: void write_eeprom(unsigned int addr, unsigned char value) {
                                   2076 ;	-----------------------------------------
                                   2077 ;	 function write_eeprom
                                   2078 ;	-----------------------------------------
      00072C                       2079 _write_eeprom:
      00072C AE 82            [24] 2080 	mov	r6, dpl
      00072E AF 83            [24] 2081 	mov	r7, dph
                                   2082 ;	main.c:398: if (addr > 0x0FFF) return;
      000730 C3               [12] 2083 	clr	c
      000731 74 FF            [12] 2084 	mov	a,#0xff
      000733 9E               [12] 2085 	subb	a,r6
      000734 74 0F            [12] 2086 	mov	a,#0x0f
      000736 9F               [12] 2087 	subb	a,r7
      000737 50 01            [24] 2088 	jnc	00102$
      000739 22               [24] 2089 	ret
      00073A                       2090 00102$:
                                   2091 ;	main.c:400: i2c_start();
      00073A C0 07            [24] 2092 	push	ar7
      00073C C0 06            [24] 2093 	push	ar6
      00073E 12 02 EA         [24] 2094 	lcall	_i2c_start
                                   2095 ;	main.c:401: i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode
      000741 75 82 AE         [24] 2096 	mov	dpl, #0xae
      000744 12 03 11         [24] 2097 	lcall	_i2c_write
      000747 D0 06            [24] 2098 	pop	ar6
      000749 D0 07            [24] 2099 	pop	ar7
                                   2100 ;	main.c:402: i2c_write((addr>>8) & 0xFF);                       // upper byte RAM address
      00074B 8F 82            [24] 2101 	mov	dpl,r7
      00074D C0 07            [24] 2102 	push	ar7
      00074F C0 06            [24] 2103 	push	ar6
      000751 12 03 11         [24] 2104 	lcall	_i2c_write
      000754 D0 06            [24] 2105 	pop	ar6
      000756 D0 07            [24] 2106 	pop	ar7
                                   2107 ;	main.c:403: i2c_write(addr & 0xFF);				  			  // lower byte RAM address
      000758 8E 82            [24] 2108 	mov	dpl,r6
      00075A 12 03 11         [24] 2109 	lcall	_i2c_write
                                   2110 ;	main.c:404: i2c_write(value);                      // Data
      00075D 85 71 82         [24] 2111 	mov	dpl, _write_eeprom_PARM_2
      000760 12 03 11         [24] 2112 	lcall	_i2c_write
                                   2113 ;	main.c:405: i2c_stop();
      000763 12 02 FF         [24] 2114 	lcall	_i2c_stop
                                   2115 ;	main.c:406: delay(5000);
      000766 90 13 88         [24] 2116 	mov	dptr,#0x1388
                                   2117 ;	main.c:407: }
      000769 02 01 37         [24] 2118 	ljmp	_delay
                                   2119 ;------------------------------------------------------------
                                   2120 ;Allocation info for local variables in function 'read_eeprom'
                                   2121 ;------------------------------------------------------------
                                   2122 ;addr          Allocated to registers r6 r7 
                                   2123 ;data          Allocated to registers r7 
                                   2124 ;------------------------------------------------------------
                                   2125 ;	main.c:409: unsigned char read_eeprom(unsigned int addr) {
                                   2126 ;	-----------------------------------------
                                   2127 ;	 function read_eeprom
                                   2128 ;	-----------------------------------------
      00076C                       2129 _read_eeprom:
      00076C AE 82            [24] 2130 	mov	r6, dpl
      00076E AF 83            [24] 2131 	mov	r7, dph
                                   2132 ;	main.c:412: if (addr > 0x0FFF) return 0xFF; // Return invalid value if out of range
      000770 C3               [12] 2133 	clr	c
      000771 74 FF            [12] 2134 	mov	a,#0xff
      000773 9E               [12] 2135 	subb	a,r6
      000774 74 0F            [12] 2136 	mov	a,#0x0f
      000776 9F               [12] 2137 	subb	a,r7
      000777 50 04            [24] 2138 	jnc	00102$
      000779 75 82 FF         [24] 2139 	mov	dpl, #0xff
      00077C 22               [24] 2140 	ret
      00077D                       2141 00102$:
                                   2142 ;	main.c:414: i2c_start();
      00077D C0 07            [24] 2143 	push	ar7
      00077F C0 06            [24] 2144 	push	ar6
      000781 12 02 EA         [24] 2145 	lcall	_i2c_start
                                   2146 ;	main.c:415: i2c_write((AT24C512B_ADDRESS << 1) | 0);  // Write mode to set address pointer
      000784 75 82 AE         [24] 2147 	mov	dpl, #0xae
      000787 12 03 11         [24] 2148 	lcall	_i2c_write
      00078A D0 06            [24] 2149 	pop	ar6
      00078C D0 07            [24] 2150 	pop	ar7
                                   2151 ;	main.c:416: i2c_write((addr>>8) & 0xFF); 
      00078E 8F 82            [24] 2152 	mov	dpl,r7
      000790 C0 07            [24] 2153 	push	ar7
      000792 C0 06            [24] 2154 	push	ar6
      000794 12 03 11         [24] 2155 	lcall	_i2c_write
      000797 D0 06            [24] 2156 	pop	ar6
      000799 D0 07            [24] 2157 	pop	ar7
                                   2158 ;	main.c:417: i2c_write(addr & 0xFF);	
      00079B 8E 82            [24] 2159 	mov	dpl,r6
      00079D 12 03 11         [24] 2160 	lcall	_i2c_write
                                   2161 ;	main.c:419: i2c_start();                           // Repeated start
      0007A0 12 02 EA         [24] 2162 	lcall	_i2c_start
                                   2163 ;	main.c:420: i2c_write((AT24C512B_ADDRESS << 1) | 1);  // Read mode
      0007A3 75 82 AF         [24] 2164 	mov	dpl, #0xaf
      0007A6 12 03 11         [24] 2165 	lcall	_i2c_write
                                   2166 ;	main.c:421: data = i2c_read(0);                    // No ACK
      0007A9 75 82 00         [24] 2167 	mov	dpl, #0x00
      0007AC 12 03 4E         [24] 2168 	lcall	_i2c_read
      0007AF AF 82            [24] 2169 	mov	r7, dpl
                                   2170 ;	main.c:422: i2c_stop();
      0007B1 C0 07            [24] 2171 	push	ar7
      0007B3 12 02 FF         [24] 2172 	lcall	_i2c_stop
      0007B6 D0 07            [24] 2173 	pop	ar7
                                   2174 ;	main.c:423: return data;
      0007B8 8F 82            [24] 2175 	mov	dpl, r7
                                   2176 ;	main.c:424: }
      0007BA 22               [24] 2177 	ret
                                   2178 ;------------------------------------------------------------
                                   2179 ;Allocation info for local variables in function 'write_alarm_to_eeprom'
                                   2180 ;------------------------------------------------------------
                                   2181 ;h             Allocated with name '_write_alarm_to_eeprom_PARM_2'
                                   2182 ;m             Allocated with name '_write_alarm_to_eeprom_PARM_3'
                                   2183 ;index         Allocated to registers r7 
                                   2184 ;------------------------------------------------------------
                                   2185 ;	main.c:426: void write_alarm_to_eeprom(unsigned char index, unsigned char h, unsigned char m) {
                                   2186 ;	-----------------------------------------
                                   2187 ;	 function write_alarm_to_eeprom
                                   2188 ;	-----------------------------------------
      0007BB                       2189 _write_alarm_to_eeprom:
      0007BB AF 82            [24] 2190 	mov	r7, dpl
                                   2191 ;	main.c:427: write_eeprom(EEPROM_BASE + (index * 2) + 1, h);
      0007BD 7E 00            [12] 2192 	mov	r6,#0x00
      0007BF EF               [12] 2193 	mov	a,r7
      0007C0 2F               [12] 2194 	add	a,r7
      0007C1 FF               [12] 2195 	mov	r7,a
      0007C2 EE               [12] 2196 	mov	a,r6
      0007C3 33               [12] 2197 	rlc	a
      0007C4 FE               [12] 2198 	mov	r6,a
      0007C5 8F 82            [24] 2199 	mov	dpl,r7
      0007C7 8E 83            [24] 2200 	mov	dph,r6
      0007C9 A3               [24] 2201 	inc	dptr
      0007CA 85 72 71         [24] 2202 	mov	_write_eeprom_PARM_2,_write_alarm_to_eeprom_PARM_2
      0007CD C0 07            [24] 2203 	push	ar7
      0007CF C0 06            [24] 2204 	push	ar6
      0007D1 12 07 2C         [24] 2205 	lcall	_write_eeprom
      0007D4 D0 06            [24] 2206 	pop	ar6
      0007D6 D0 07            [24] 2207 	pop	ar7
                                   2208 ;	main.c:428: write_eeprom(EEPROM_BASE + (index * 2) + 2, m);
      0007D8 8F 82            [24] 2209 	mov	dpl,r7
      0007DA 8E 83            [24] 2210 	mov	dph,r6
      0007DC A3               [24] 2211 	inc	dptr
      0007DD A3               [24] 2212 	inc	dptr
      0007DE 85 73 71         [24] 2213 	mov	_write_eeprom_PARM_2,_write_alarm_to_eeprom_PARM_3
                                   2214 ;	main.c:429: }
      0007E1 02 07 2C         [24] 2215 	ljmp	_write_eeprom
                                   2216 ;------------------------------------------------------------
                                   2217 ;Allocation info for local variables in function 'alarm_arranger'
                                   2218 ;------------------------------------------------------------
                                   2219 ;minutes       Allocated with name '_alarm_arranger_PARM_2'
                                   2220 ;n             Allocated with name '_alarm_arranger_PARM_3'
                                   2221 ;hours         Allocated with name '_alarm_arranger_hours_10000_63'
                                   2222 ;i             Allocated with name '_alarm_arranger_i_10000_64'
                                   2223 ;j             Allocated to registers 
                                   2224 ;min_idx       Allocated with name '_alarm_arranger_min_idx_10000_64'
                                   2225 ;temp          Allocated with name '_alarm_arranger_temp_30001_71'
                                   2226 ;__index       Allocated with name '_alarm_arranger___index_10001_72'
                                   2227 ;sloc0         Allocated with name '_alarm_arranger_sloc0_1_0'
                                   2228 ;sloc1         Allocated with name '_alarm_arranger_sloc1_1_0'
                                   2229 ;------------------------------------------------------------
                                   2230 ;	main.c:432: void alarm_arranger(unsigned char hours[], unsigned char minutes[], unsigned char *n){
                                   2231 ;	-----------------------------------------
                                   2232 ;	 function alarm_arranger
                                   2233 ;	-----------------------------------------
      0007E4                       2234 _alarm_arranger:
      0007E4 85 82 0E         [24] 2235 	mov	_alarm_arranger_hours_10000_63,dpl
      0007E7 85 83 0F         [24] 2236 	mov	(_alarm_arranger_hours_10000_63 + 1),dph
      0007EA 85 F0 10         [24] 2237 	mov	(_alarm_arranger_hours_10000_63 + 2),b
                                   2238 ;	main.c:436: for (i = 0; i < *n - 1; i++) {
      0007ED AA 0B            [24] 2239 	mov	r2,_alarm_arranger_PARM_3
      0007EF AB 0C            [24] 2240 	mov	r3,(_alarm_arranger_PARM_3 + 1)
      0007F1 AC 0D            [24] 2241 	mov	r4,(_alarm_arranger_PARM_3 + 2)
      0007F3 79 00            [12] 2242 	mov	r1,#0x00
      0007F5                       2243 00115$:
      0007F5 8A 82            [24] 2244 	mov	dpl,r2
      0007F7 8B 83            [24] 2245 	mov	dph,r3
      0007F9 8C F0            [24] 2246 	mov	b,r4
      0007FB 12 15 29         [24] 2247 	lcall	__gptrget
      0007FE F8               [12] 2248 	mov	r0,a
      0007FF 7F 00            [12] 2249 	mov	r7,#0x00
      000801 18               [12] 2250 	dec	r0
      000802 B8 FF 01         [24] 2251 	cjne	r0,#0xff,00188$
      000805 1F               [12] 2252 	dec	r7
      000806                       2253 00188$:
      000806 89 05            [24] 2254 	mov	ar5,r1
      000808 7E 00            [12] 2255 	mov	r6,#0x00
      00080A C3               [12] 2256 	clr	c
      00080B ED               [12] 2257 	mov	a,r5
      00080C 98               [12] 2258 	subb	a,r0
      00080D EE               [12] 2259 	mov	a,r6
      00080E 64 80            [12] 2260 	xrl	a,#0x80
      000810 8F F0            [24] 2261 	mov	b,r7
      000812 63 F0 80         [24] 2262 	xrl	b,#0x80
      000815 95 F0            [12] 2263 	subb	a,b
      000817 40 03            [24] 2264 	jc	00189$
      000819 02 09 4B         [24] 2265 	ljmp	00106$
      00081C                       2266 00189$:
                                   2267 ;	main.c:437: min_idx = i;
      00081C 89 07            [24] 2268 	mov	ar7,r1
                                   2269 ;	main.c:438: for (j = i + 1; j < *n; j++) {
      00081E 89 06            [24] 2270 	mov	ar6,r1
      000820 EE               [12] 2271 	mov	a,r6
      000821 04               [12] 2272 	inc	a
      000822 F5 12            [12] 2273 	mov	_alarm_arranger_min_idx_10000_64,a
      000824                       2274 00112$:
      000824 8A 82            [24] 2275 	mov	dpl,r2
      000826 8B 83            [24] 2276 	mov	dph,r3
      000828 8C F0            [24] 2277 	mov	b,r4
      00082A 12 15 29         [24] 2278 	lcall	__gptrget
      00082D FD               [12] 2279 	mov	r5,a
      00082E C3               [12] 2280 	clr	c
      00082F E5 12            [12] 2281 	mov	a,_alarm_arranger_min_idx_10000_64
      000831 9D               [12] 2282 	subb	a,r5
      000832 40 03            [24] 2283 	jc	00190$
      000834 02 08 B8         [24] 2284 	ljmp	00105$
      000837                       2285 00190$:
                                   2286 ;	main.c:439: if (hours[j] < hours[min_idx] || (hours[j] == hours[min_idx] && minutes[j] < minutes[min_idx])) {
      000837 C0 02            [24] 2287 	push	ar2
      000839 C0 03            [24] 2288 	push	ar3
      00083B C0 04            [24] 2289 	push	ar4
      00083D E5 12            [12] 2290 	mov	a,_alarm_arranger_min_idx_10000_64
      00083F 25 0E            [12] 2291 	add	a, _alarm_arranger_hours_10000_63
      000841 F8               [12] 2292 	mov	r0,a
      000842 E4               [12] 2293 	clr	a
      000843 35 0F            [12] 2294 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      000845 FD               [12] 2295 	mov	r5,a
      000846 AE 10            [24] 2296 	mov	r6,(_alarm_arranger_hours_10000_63 + 2)
      000848 88 82            [24] 2297 	mov	dpl,r0
      00084A 8D 83            [24] 2298 	mov	dph,r5
      00084C 8E F0            [24] 2299 	mov	b,r6
      00084E 12 15 29         [24] 2300 	lcall	__gptrget
      000851 FE               [12] 2301 	mov	r6,a
      000852 EF               [12] 2302 	mov	a,r7
      000853 25 0E            [12] 2303 	add	a, _alarm_arranger_hours_10000_63
      000855 F8               [12] 2304 	mov	r0,a
      000856 E4               [12] 2305 	clr	a
      000857 35 0F            [12] 2306 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      000859 FC               [12] 2307 	mov	r4,a
      00085A AD 10            [24] 2308 	mov	r5,(_alarm_arranger_hours_10000_63 + 2)
      00085C 88 82            [24] 2309 	mov	dpl,r0
      00085E 8C 83            [24] 2310 	mov	dph,r4
      000860 8D F0            [24] 2311 	mov	b,r5
      000862 12 15 29         [24] 2312 	lcall	__gptrget
      000865 F5 17            [12] 2313 	mov	_alarm_arranger_sloc0_1_0,a
      000867 C3               [12] 2314 	clr	c
      000868 EE               [12] 2315 	mov	a,r6
      000869 95 17            [12] 2316 	subb	a,_alarm_arranger_sloc0_1_0
      00086B D0 04            [24] 2317 	pop	ar4
      00086D D0 03            [24] 2318 	pop	ar3
      00086F D0 02            [24] 2319 	pop	ar2
      000871 40 3E            [24] 2320 	jc	00101$
      000873 EE               [12] 2321 	mov	a,r6
      000874 B5 17 3C         [24] 2322 	cjne	a,_alarm_arranger_sloc0_1_0,00113$
      000877 C0 02            [24] 2323 	push	ar2
      000879 C0 03            [24] 2324 	push	ar3
      00087B C0 04            [24] 2325 	push	ar4
      00087D E5 12            [12] 2326 	mov	a,_alarm_arranger_min_idx_10000_64
      00087F 25 08            [12] 2327 	add	a, _alarm_arranger_PARM_2
      000881 F8               [12] 2328 	mov	r0,a
      000882 E4               [12] 2329 	clr	a
      000883 35 09            [12] 2330 	addc	a, (_alarm_arranger_PARM_2 + 1)
      000885 FD               [12] 2331 	mov	r5,a
      000886 AE 0A            [24] 2332 	mov	r6,(_alarm_arranger_PARM_2 + 2)
      000888 88 82            [24] 2333 	mov	dpl,r0
      00088A 8D 83            [24] 2334 	mov	dph,r5
      00088C 8E F0            [24] 2335 	mov	b,r6
      00088E 12 15 29         [24] 2336 	lcall	__gptrget
      000891 F8               [12] 2337 	mov	r0,a
      000892 EF               [12] 2338 	mov	a,r7
      000893 25 08            [12] 2339 	add	a, _alarm_arranger_PARM_2
      000895 FC               [12] 2340 	mov	r4,a
      000896 E4               [12] 2341 	clr	a
      000897 35 09            [12] 2342 	addc	a, (_alarm_arranger_PARM_2 + 1)
      000899 FD               [12] 2343 	mov	r5,a
      00089A AE 0A            [24] 2344 	mov	r6,(_alarm_arranger_PARM_2 + 2)
      00089C 8C 82            [24] 2345 	mov	dpl,r4
      00089E 8D 83            [24] 2346 	mov	dph,r5
      0008A0 8E F0            [24] 2347 	mov	b,r6
      0008A2 12 15 29         [24] 2348 	lcall	__gptrget
      0008A5 FC               [12] 2349 	mov	r4,a
      0008A6 C3               [12] 2350 	clr	c
      0008A7 E8               [12] 2351 	mov	a,r0
      0008A8 9C               [12] 2352 	subb	a,r4
      0008A9 D0 04            [24] 2353 	pop	ar4
      0008AB D0 03            [24] 2354 	pop	ar3
      0008AD D0 02            [24] 2355 	pop	ar2
      0008AF 50 02            [24] 2356 	jnc	00113$
      0008B1                       2357 00101$:
                                   2358 ;	main.c:440: min_idx = j;
      0008B1 AF 12            [24] 2359 	mov	r7,_alarm_arranger_min_idx_10000_64
      0008B3                       2360 00113$:
                                   2361 ;	main.c:438: for (j = i + 1; j < *n; j++) {
      0008B3 05 12            [12] 2362 	inc	_alarm_arranger_min_idx_10000_64
      0008B5 02 08 24         [24] 2363 	ljmp	00112$
      0008B8                       2364 00105$:
                                   2365 ;	main.c:444: unsigned temp = hours[i];
      0008B8 C0 02            [24] 2366 	push	ar2
      0008BA C0 03            [24] 2367 	push	ar3
      0008BC C0 04            [24] 2368 	push	ar4
      0008BE E9               [12] 2369 	mov	a,r1
      0008BF 25 0E            [12] 2370 	add	a, _alarm_arranger_hours_10000_63
      0008C1 F8               [12] 2371 	mov	r0,a
      0008C2 E4               [12] 2372 	clr	a
      0008C3 35 0F            [12] 2373 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      0008C5 FD               [12] 2374 	mov	r5,a
      0008C6 AE 10            [24] 2375 	mov	r6,(_alarm_arranger_hours_10000_63 + 2)
      0008C8 88 82            [24] 2376 	mov	dpl,r0
      0008CA 8D 83            [24] 2377 	mov	dph,r5
      0008CC 8E F0            [24] 2378 	mov	b,r6
      0008CE 12 15 29         [24] 2379 	lcall	__gptrget
      0008D1 F5 17            [12] 2380 	mov	_alarm_arranger_sloc0_1_0, a
                                   2381 ;	main.c:445: hours[i] = hours[min_idx];
      0008D3 EF               [12] 2382 	mov	a,r7
      0008D4 25 0E            [12] 2383 	add	a, _alarm_arranger_hours_10000_63
      0008D6 F5 18            [12] 2384 	mov	_alarm_arranger_sloc1_1_0,a
      0008D8 E4               [12] 2385 	clr	a
      0008D9 35 0F            [12] 2386 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      0008DB F5 19            [12] 2387 	mov	(_alarm_arranger_sloc1_1_0 + 1),a
      0008DD 85 10 1A         [24] 2388 	mov	(_alarm_arranger_sloc1_1_0 + 2),(_alarm_arranger_hours_10000_63 + 2)
      0008E0 85 18 82         [24] 2389 	mov	dpl,_alarm_arranger_sloc1_1_0
      0008E3 85 19 83         [24] 2390 	mov	dph,(_alarm_arranger_sloc1_1_0 + 1)
      0008E6 85 1A F0         [24] 2391 	mov	b,(_alarm_arranger_sloc1_1_0 + 2)
      0008E9 12 15 29         [24] 2392 	lcall	__gptrget
      0008EC 88 82            [24] 2393 	mov	dpl,r0
      0008EE 8D 83            [24] 2394 	mov	dph,r5
      0008F0 8E F0            [24] 2395 	mov	b,r6
      0008F2 12 14 A4         [24] 2396 	lcall	__gptrput
                                   2397 ;	main.c:446: hours[min_idx] = temp;
      0008F5 AC 17            [24] 2398 	mov	r4,_alarm_arranger_sloc0_1_0
      0008F7 85 18 82         [24] 2399 	mov	dpl,_alarm_arranger_sloc1_1_0
      0008FA 85 19 83         [24] 2400 	mov	dph,(_alarm_arranger_sloc1_1_0 + 1)
      0008FD 85 1A F0         [24] 2401 	mov	b,(_alarm_arranger_sloc1_1_0 + 2)
      000900 EC               [12] 2402 	mov	a,r4
      000901 12 14 A4         [24] 2403 	lcall	__gptrput
                                   2404 ;	main.c:449: temp = minutes[i];
      000904 E9               [12] 2405 	mov	a,r1
      000905 25 08            [12] 2406 	add	a, _alarm_arranger_PARM_2
      000907 FC               [12] 2407 	mov	r4,a
      000908 E4               [12] 2408 	clr	a
      000909 35 09            [12] 2409 	addc	a, (_alarm_arranger_PARM_2 + 1)
      00090B FD               [12] 2410 	mov	r5,a
      00090C AE 0A            [24] 2411 	mov	r6,(_alarm_arranger_PARM_2 + 2)
      00090E 8C 82            [24] 2412 	mov	dpl,r4
      000910 8D 83            [24] 2413 	mov	dph,r5
      000912 8E F0            [24] 2414 	mov	b,r6
      000914 12 15 29         [24] 2415 	lcall	__gptrget
      000917 F5 13            [12] 2416 	mov	_alarm_arranger_temp_30001_71, a
                                   2417 ;	main.c:450: minutes[i] = minutes[min_idx];
      000919 EF               [12] 2418 	mov	a,r7
      00091A 25 08            [12] 2419 	add	a, _alarm_arranger_PARM_2
      00091C F8               [12] 2420 	mov	r0,a
      00091D E4               [12] 2421 	clr	a
      00091E 35 09            [12] 2422 	addc	a, (_alarm_arranger_PARM_2 + 1)
      000920 FA               [12] 2423 	mov	r2,a
      000921 AF 0A            [24] 2424 	mov	r7,(_alarm_arranger_PARM_2 + 2)
      000923 88 82            [24] 2425 	mov	dpl,r0
      000925 8A 83            [24] 2426 	mov	dph,r2
      000927 8F F0            [24] 2427 	mov	b,r7
      000929 12 15 29         [24] 2428 	lcall	__gptrget
      00092C 8C 82            [24] 2429 	mov	dpl,r4
      00092E 8D 83            [24] 2430 	mov	dph,r5
      000930 8E F0            [24] 2431 	mov	b,r6
      000932 12 14 A4         [24] 2432 	lcall	__gptrput
                                   2433 ;	main.c:451: minutes[min_idx] = temp;
      000935 AB 13            [24] 2434 	mov	r3,_alarm_arranger_temp_30001_71
      000937 88 82            [24] 2435 	mov	dpl,r0
      000939 8A 83            [24] 2436 	mov	dph,r2
      00093B 8F F0            [24] 2437 	mov	b,r7
      00093D EB               [12] 2438 	mov	a,r3
      00093E 12 14 A4         [24] 2439 	lcall	__gptrput
                                   2440 ;	main.c:436: for (i = 0; i < *n - 1; i++) {
      000941 09               [12] 2441 	inc	r1
      000942 D0 04            [24] 2442 	pop	ar4
      000944 D0 03            [24] 2443 	pop	ar3
      000946 D0 02            [24] 2444 	pop	ar2
      000948 02 07 F5         [24] 2445 	ljmp	00115$
      00094B                       2446 00106$:
                                   2447 ;	main.c:456: for (i = 1; i < *n; i++) {
      00094B 75 15 01         [24] 2448 	mov	_alarm_arranger___index_10001_72,#0x01
      00094E 75 16 00         [24] 2449 	mov	(_alarm_arranger___index_10001_72 + 1),#0x00
      000951 75 11 01         [24] 2450 	mov	_alarm_arranger_i_10000_64,#0x01
      000954                       2451 00118$:
      000954 8A 82            [24] 2452 	mov	dpl,r2
      000956 8B 83            [24] 2453 	mov	dph,r3
      000958 8C F0            [24] 2454 	mov	b,r4
      00095A 12 15 29         [24] 2455 	lcall	__gptrget
      00095D F9               [12] 2456 	mov	r1,a
      00095E C3               [12] 2457 	clr	c
      00095F E5 11            [12] 2458 	mov	a,_alarm_arranger_i_10000_64
      000961 99               [12] 2459 	subb	a,r1
      000962 40 03            [24] 2460 	jc	00195$
      000964 02 0A 42         [24] 2461 	ljmp	00110$
      000967                       2462 00195$:
                                   2463 ;	main.c:457: if (!(hours[i] == hours[__index - 1] && minutes[i] == minutes[__index - 1])) {
      000967 E5 11            [12] 2464 	mov	a,_alarm_arranger_i_10000_64
      000969 25 0E            [12] 2465 	add	a, _alarm_arranger_hours_10000_63
      00096B F8               [12] 2466 	mov	r0,a
      00096C E4               [12] 2467 	clr	a
      00096D 35 0F            [12] 2468 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      00096F F9               [12] 2469 	mov	r1,a
      000970 AF 10            [24] 2470 	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
      000972 88 82            [24] 2471 	mov	dpl,r0
      000974 89 83            [24] 2472 	mov	dph,r1
      000976 8F F0            [24] 2473 	mov	b,r7
      000978 12 15 29         [24] 2474 	lcall	__gptrget
      00097B F8               [12] 2475 	mov	r0,a
      00097C E5 15            [12] 2476 	mov	a,_alarm_arranger___index_10001_72
      00097E 24 FF            [12] 2477 	add	a,#0xff
      000980 FE               [12] 2478 	mov	r6,a
      000981 E5 16            [12] 2479 	mov	a,(_alarm_arranger___index_10001_72 + 1)
      000983 34 FF            [12] 2480 	addc	a,#0xff
      000985 FF               [12] 2481 	mov	r7,a
      000986 EE               [12] 2482 	mov	a,r6
      000987 25 0E            [12] 2483 	add	a, _alarm_arranger_hours_10000_63
      000989 FE               [12] 2484 	mov	r6,a
      00098A EF               [12] 2485 	mov	a,r7
      00098B 35 0F            [12] 2486 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      00098D F9               [12] 2487 	mov	r1,a
      00098E AF 10            [24] 2488 	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
      000990 8E 82            [24] 2489 	mov	dpl,r6
      000992 89 83            [24] 2490 	mov	dph,r1
      000994 8F F0            [24] 2491 	mov	b,r7
      000996 12 15 29         [24] 2492 	lcall	__gptrget
      000999 FE               [12] 2493 	mov	r6,a
      00099A E8               [12] 2494 	mov	a,r0
      00099B B5 06 39         [24] 2495 	cjne	a,ar6,00107$
      00099E E5 11            [12] 2496 	mov	a,_alarm_arranger_i_10000_64
      0009A0 25 08            [12] 2497 	add	a, _alarm_arranger_PARM_2
      0009A2 F9               [12] 2498 	mov	r1,a
      0009A3 E4               [12] 2499 	clr	a
      0009A4 35 09            [12] 2500 	addc	a, (_alarm_arranger_PARM_2 + 1)
      0009A6 FE               [12] 2501 	mov	r6,a
      0009A7 AF 0A            [24] 2502 	mov	r7,(_alarm_arranger_PARM_2 + 2)
      0009A9 89 82            [24] 2503 	mov	dpl,r1
      0009AB 8E 83            [24] 2504 	mov	dph,r6
      0009AD 8F F0            [24] 2505 	mov	b,r7
      0009AF 12 15 29         [24] 2506 	lcall	__gptrget
      0009B2 F9               [12] 2507 	mov	r1,a
      0009B3 E5 15            [12] 2508 	mov	a,_alarm_arranger___index_10001_72
      0009B5 24 FF            [12] 2509 	add	a,#0xff
      0009B7 FE               [12] 2510 	mov	r6,a
      0009B8 E5 16            [12] 2511 	mov	a,(_alarm_arranger___index_10001_72 + 1)
      0009BA 34 FF            [12] 2512 	addc	a,#0xff
      0009BC FF               [12] 2513 	mov	r7,a
      0009BD EE               [12] 2514 	mov	a,r6
      0009BE 25 08            [12] 2515 	add	a, _alarm_arranger_PARM_2
      0009C0 FE               [12] 2516 	mov	r6,a
      0009C1 EF               [12] 2517 	mov	a,r7
      0009C2 35 09            [12] 2518 	addc	a, (_alarm_arranger_PARM_2 + 1)
      0009C4 F8               [12] 2519 	mov	r0,a
      0009C5 AF 0A            [24] 2520 	mov	r7,(_alarm_arranger_PARM_2 + 2)
      0009C7 8E 82            [24] 2521 	mov	dpl,r6
      0009C9 88 83            [24] 2522 	mov	dph,r0
      0009CB 8F F0            [24] 2523 	mov	b,r7
      0009CD 12 15 29         [24] 2524 	lcall	__gptrget
      0009D0 FE               [12] 2525 	mov	r6,a
      0009D1 E9               [12] 2526 	mov	a,r1
      0009D2 B5 06 02         [24] 2527 	cjne	a,ar6,00198$
      0009D5 80 66            [24] 2528 	sjmp	00119$
      0009D7                       2529 00198$:
      0009D7                       2530 00107$:
                                   2531 ;	main.c:458: hours[__index] = hours[i];
      0009D7 C0 02            [24] 2532 	push	ar2
      0009D9 C0 03            [24] 2533 	push	ar3
      0009DB C0 04            [24] 2534 	push	ar4
      0009DD E5 15            [12] 2535 	mov	a,_alarm_arranger___index_10001_72
      0009DF 25 0E            [12] 2536 	add	a, _alarm_arranger_hours_10000_63
      0009E1 F9               [12] 2537 	mov	r1,a
      0009E2 E5 16            [12] 2538 	mov	a,(_alarm_arranger___index_10001_72 + 1)
      0009E4 35 0F            [12] 2539 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      0009E6 FE               [12] 2540 	mov	r6,a
      0009E7 AF 10            [24] 2541 	mov	r7,(_alarm_arranger_hours_10000_63 + 2)
      0009E9 E5 11            [12] 2542 	mov	a,_alarm_arranger_i_10000_64
      0009EB 25 0E            [12] 2543 	add	a, _alarm_arranger_hours_10000_63
      0009ED F8               [12] 2544 	mov	r0,a
      0009EE E4               [12] 2545 	clr	a
      0009EF 35 0F            [12] 2546 	addc	a, (_alarm_arranger_hours_10000_63 + 1)
      0009F1 FC               [12] 2547 	mov	r4,a
      0009F2 AD 10            [24] 2548 	mov	r5,(_alarm_arranger_hours_10000_63 + 2)
      0009F4 88 82            [24] 2549 	mov	dpl,r0
      0009F6 8C 83            [24] 2550 	mov	dph,r4
      0009F8 8D F0            [24] 2551 	mov	b,r5
      0009FA 12 15 29         [24] 2552 	lcall	__gptrget
      0009FD 89 82            [24] 2553 	mov	dpl,r1
      0009FF 8E 83            [24] 2554 	mov	dph,r6
      000A01 8F F0            [24] 2555 	mov	b,r7
      000A03 12 14 A4         [24] 2556 	lcall	__gptrput
                                   2557 ;	main.c:459: minutes[__index] = minutes[i];
      000A06 E5 15            [12] 2558 	mov	a,_alarm_arranger___index_10001_72
      000A08 25 08            [12] 2559 	add	a, _alarm_arranger_PARM_2
      000A0A FD               [12] 2560 	mov	r5,a
      000A0B E5 16            [12] 2561 	mov	a,(_alarm_arranger___index_10001_72 + 1)
      000A0D 35 09            [12] 2562 	addc	a, (_alarm_arranger_PARM_2 + 1)
      000A0F FE               [12] 2563 	mov	r6,a
      000A10 AF 0A            [24] 2564 	mov	r7,(_alarm_arranger_PARM_2 + 2)
      000A12 E5 11            [12] 2565 	mov	a,_alarm_arranger_i_10000_64
      000A14 25 08            [12] 2566 	add	a, _alarm_arranger_PARM_2
      000A16 FA               [12] 2567 	mov	r2,a
      000A17 E4               [12] 2568 	clr	a
      000A18 35 09            [12] 2569 	addc	a, (_alarm_arranger_PARM_2 + 1)
      000A1A FB               [12] 2570 	mov	r3,a
      000A1B AC 0A            [24] 2571 	mov	r4,(_alarm_arranger_PARM_2 + 2)
      000A1D 8A 82            [24] 2572 	mov	dpl,r2
      000A1F 8B 83            [24] 2573 	mov	dph,r3
      000A21 8C F0            [24] 2574 	mov	b,r4
      000A23 12 15 29         [24] 2575 	lcall	__gptrget
      000A26 8D 82            [24] 2576 	mov	dpl,r5
      000A28 8E 83            [24] 2577 	mov	dph,r6
      000A2A 8F F0            [24] 2578 	mov	b,r7
      000A2C 12 14 A4         [24] 2579 	lcall	__gptrput
                                   2580 ;	main.c:460: __index++;
      000A2F 05 15            [12] 2581 	inc	_alarm_arranger___index_10001_72
      000A31 E4               [12] 2582 	clr	a
      000A32 B5 15 02         [24] 2583 	cjne	a,_alarm_arranger___index_10001_72,00199$
      000A35 05 16            [12] 2584 	inc	(_alarm_arranger___index_10001_72 + 1)
      000A37                       2585 00199$:
                                   2586 ;	main.c:465: *n = __index;
      000A37 D0 04            [24] 2587 	pop	ar4
      000A39 D0 03            [24] 2588 	pop	ar3
      000A3B D0 02            [24] 2589 	pop	ar2
                                   2590 ;	main.c:460: __index++;
      000A3D                       2591 00119$:
                                   2592 ;	main.c:456: for (i = 1; i < *n; i++) {
      000A3D 05 11            [12] 2593 	inc	_alarm_arranger_i_10000_64
      000A3F 02 09 54         [24] 2594 	ljmp	00118$
      000A42                       2595 00110$:
                                   2596 ;	main.c:465: *n = __index;
      000A42 AE 15            [24] 2597 	mov	r6,_alarm_arranger___index_10001_72
      000A44 8A 82            [24] 2598 	mov	dpl,r2
      000A46 8B 83            [24] 2599 	mov	dph,r3
      000A48 8C F0            [24] 2600 	mov	b,r4
      000A4A EE               [12] 2601 	mov	a,r6
                                   2602 ;	main.c:467: }
      000A4B 02 14 A4         [24] 2603 	ljmp	__gptrput
                                   2604 ;------------------------------------------------------------
                                   2605 ;Allocation info for local variables in function 'ds3232_set_alarm1'
                                   2606 ;------------------------------------------------------------
                                   2607 ;min           Allocated with name '_ds3232_set_alarm1_PARM_2'
                                   2608 ;sec           Allocated with name '_ds3232_set_alarm1_PARM_3'
                                   2609 ;hrs           Allocated to registers r7 
                                   2610 ;bcd_sec       Allocated to registers r6 
                                   2611 ;bcd_min       Allocated to registers r5 
                                   2612 ;bcd_hrs       Allocated to registers r7 
                                   2613 ;------------------------------------------------------------
                                   2614 ;	main.c:469: void ds3232_set_alarm1(unsigned char hrs, unsigned char min, unsigned char sec) {
                                   2615 ;	-----------------------------------------
                                   2616 ;	 function ds3232_set_alarm1
                                   2617 ;	-----------------------------------------
      000A4E                       2618 _ds3232_set_alarm1:
      000A4E AF 82            [24] 2619 	mov	r7, dpl
                                   2620 ;	main.c:471: unsigned char bcd_sec = dec_to_bcd(sec);
      000A50 85 75 82         [24] 2621 	mov	dpl, _ds3232_set_alarm1_PARM_3
      000A53 C0 07            [24] 2622 	push	ar7
      000A55 12 03 AC         [24] 2623 	lcall	_dec_to_bcd
      000A58 AE 82            [24] 2624 	mov	r6, dpl
                                   2625 ;	main.c:472: unsigned char bcd_min = dec_to_bcd(min);
      000A5A 85 74 82         [24] 2626 	mov	dpl, _ds3232_set_alarm1_PARM_2
      000A5D C0 06            [24] 2627 	push	ar6
      000A5F 12 03 AC         [24] 2628 	lcall	_dec_to_bcd
      000A62 AD 82            [24] 2629 	mov	r5, dpl
      000A64 D0 06            [24] 2630 	pop	ar6
      000A66 D0 07            [24] 2631 	pop	ar7
                                   2632 ;	main.c:473: unsigned char bcd_hrs = dec_to_bcd(hrs);
      000A68 8F 82            [24] 2633 	mov	dpl, r7
      000A6A C0 06            [24] 2634 	push	ar6
      000A6C C0 05            [24] 2635 	push	ar5
      000A6E 12 03 AC         [24] 2636 	lcall	_dec_to_bcd
      000A71 AF 82            [24] 2637 	mov	r7, dpl
      000A73 D0 05            [24] 2638 	pop	ar5
      000A75 D0 06            [24] 2639 	pop	ar6
                                   2640 ;	main.c:476: i2c_start();
      000A77 C0 07            [24] 2641 	push	ar7
      000A79 C0 06            [24] 2642 	push	ar6
      000A7B C0 05            [24] 2643 	push	ar5
      000A7D 12 02 EA         [24] 2644 	lcall	_i2c_start
                                   2645 ;	main.c:477: i2c_write((DS3232_ADDRESS << 1) | 0);  // Write mode
      000A80 75 82 D0         [24] 2646 	mov	dpl, #0xd0
      000A83 12 03 11         [24] 2647 	lcall	_i2c_write
                                   2648 ;	main.c:478: i2c_write(0x07); // Alarm1 register start
      000A86 75 82 07         [24] 2649 	mov	dpl, #0x07
      000A89 12 03 11         [24] 2650 	lcall	_i2c_write
      000A8C D0 05            [24] 2651 	pop	ar5
      000A8E D0 06            [24] 2652 	pop	ar6
                                   2653 ;	main.c:480: i2c_write(bcd_sec & 0x7F);      // A1 Seconds, A1M1 = 0
      000A90 74 7F            [12] 2654 	mov	a,#0x7f
      000A92 5E               [12] 2655 	anl	a,r6
      000A93 F5 82            [12] 2656 	mov	dpl,a
      000A95 C0 05            [24] 2657 	push	ar5
      000A97 12 03 11         [24] 2658 	lcall	_i2c_write
      000A9A D0 05            [24] 2659 	pop	ar5
                                   2660 ;	main.c:481: i2c_write(bcd_min & 0x7F);      // A1 Minutes, A1M2 = 0
      000A9C 74 7F            [12] 2661 	mov	a,#0x7f
      000A9E 5D               [12] 2662 	anl	a,r5
      000A9F F5 82            [12] 2663 	mov	dpl,a
      000AA1 12 03 11         [24] 2664 	lcall	_i2c_write
      000AA4 D0 07            [24] 2665 	pop	ar7
                                   2666 ;	main.c:482: i2c_write(bcd_hrs & 0x7F);      // A1 Hours, A1M3 = 0
      000AA6 74 7F            [12] 2667 	mov	a,#0x7f
      000AA8 5F               [12] 2668 	anl	a,r7
      000AA9 F5 82            [12] 2669 	mov	dpl,a
      000AAB 12 03 11         [24] 2670 	lcall	_i2c_write
                                   2671 ;	main.c:483: i2c_write(0x80);                // A1 Day/Date, A1M4 = 1 (donÃ¢â‚¬â„¢t care about day/date)
      000AAE 75 82 80         [24] 2672 	mov	dpl, #0x80
      000AB1 12 03 11         [24] 2673 	lcall	_i2c_write
                                   2674 ;	main.c:484: i2c_stop();
      000AB4 12 02 FF         [24] 2675 	lcall	_i2c_stop
                                   2676 ;	main.c:487: i2c_start();
      000AB7 12 02 EA         [24] 2677 	lcall	_i2c_start
                                   2678 ;	main.c:488: i2c_write((DS3232_ADDRESS << 1) | 0);
      000ABA 75 82 D0         [24] 2679 	mov	dpl, #0xd0
      000ABD 12 03 11         [24] 2680 	lcall	_i2c_write
                                   2681 ;	main.c:489: i2c_write(0x0E); // Control register
      000AC0 75 82 0E         [24] 2682 	mov	dpl, #0x0e
      000AC3 12 03 11         [24] 2683 	lcall	_i2c_write
                                   2684 ;	main.c:490: i2c_write(0x05); // 00000101 => A1IE = 1, INTCN = 1
      000AC6 75 82 05         [24] 2685 	mov	dpl, #0x05
      000AC9 12 03 11         [24] 2686 	lcall	_i2c_write
                                   2687 ;	main.c:491: i2c_stop();
      000ACC 12 02 FF         [24] 2688 	lcall	_i2c_stop
                                   2689 ;	main.c:494: i2c_start();
      000ACF 12 02 EA         [24] 2690 	lcall	_i2c_start
                                   2691 ;	main.c:495: i2c_write((DS3232_ADDRESS << 1) | 0);
      000AD2 75 82 D0         [24] 2692 	mov	dpl, #0xd0
      000AD5 12 03 11         [24] 2693 	lcall	_i2c_write
                                   2694 ;	main.c:496: i2c_write(0x0F); // Status register
      000AD8 75 82 0F         [24] 2695 	mov	dpl, #0x0f
      000ADB 12 03 11         [24] 2696 	lcall	_i2c_write
                                   2697 ;	main.c:497: i2c_write(0x00); // Clear A1F
      000ADE 75 82 00         [24] 2698 	mov	dpl, #0x00
      000AE1 12 03 11         [24] 2699 	lcall	_i2c_write
                                   2700 ;	main.c:498: i2c_stop();
                                   2701 ;	main.c:499: }
      000AE4 02 02 FF         [24] 2702 	ljmp	_i2c_stop
                                   2703 ;------------------------------------------------------------
                                   2704 ;Allocation info for local variables in function 'set_clock'
                                   2705 ;------------------------------------------------------------
                                   2706 ;	main.c:501: void set_clock() {
                                   2707 ;	-----------------------------------------
                                   2708 ;	 function set_clock
                                   2709 ;	-----------------------------------------
      000AE7                       2710 _set_clock:
                                   2711 ;	main.c:502: idle_counter = 0;
      000AE7 E4               [12] 2712 	clr	a
      000AE8 F5 2A            [12] 2713 	mov	_idle_counter,a
      000AEA F5 2B            [12] 2714 	mov	(_idle_counter + 1),a
                                   2715 ;	main.c:503: index = 0;
      000AEC F5 35            [12] 2716 	mov	_index,a
      000AEE F5 36            [12] 2717 	mov	(_index + 1),a
                                   2718 ;	main.c:504: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      000AF0 85 22 82         [24] 2719 	mov	dpl,_time_date
      000AF3 85 23 6B         [24] 2720 	mov	_display_PARM_2,(_time_date + 0x0001)
      000AF6 85 24 6C         [24] 2721 	mov	_display_PARM_3,(_time_date + 0x0002)
      000AF9 85 26 6D         [24] 2722 	mov	_display_PARM_4,(_time_date + 0x0004)
      000AFC 85 27 6E         [24] 2723 	mov	_display_PARM_5,(_time_date + 0x0005)
      000AFF 85 28 6F         [24] 2724 	mov	_display_PARM_6,(_time_date + 0x0006)
      000B02 E5 25            [12] 2725 	mov	a,(_time_date + 0x0003)
      000B04 04               [12] 2726 	inc	a
      000B05 F5 70            [12] 2727 	mov	_display_PARM_7,a
      000B07 12 05 73         [24] 2728 	lcall	_display
                                   2729 ;	main.c:506: while (index < 7) {
      000B0A                       2730 00116$:
      000B0A C3               [12] 2731 	clr	c
      000B0B E5 35            [12] 2732 	mov	a,_index
      000B0D 94 07            [12] 2733 	subb	a,#0x07
      000B0F E5 36            [12] 2734 	mov	a,(_index + 1)
      000B11 64 80            [12] 2735 	xrl	a,#0x80
      000B13 94 80            [12] 2736 	subb	a,#0x80
      000B15 40 03            [24] 2737 	jc	00177$
      000B17 02 0B F5         [24] 2738 	ljmp	00118$
      000B1A                       2739 00177$:
                                   2740 ;	main.c:507: delay(10000);
      000B1A 90 27 10         [24] 2741 	mov	dptr,#0x2710
      000B1D 12 01 37         [24] 2742 	lcall	_delay
                                   2743 ;	main.c:508: if (!up) {
      000B20 20 B4 48         [24] 2744 	jb	_up,00104$
                                   2745 ;	main.c:509: delay(10000); // debounce
      000B23 90 27 10         [24] 2746 	mov	dptr,#0x2710
      000B26 12 01 37         [24] 2747 	lcall	_delay
                                   2748 ;	main.c:510: time_date[index]++;
      000B29 E5 35            [12] 2749 	mov	a,_index
      000B2B 24 22            [12] 2750 	add	a, #_time_date
      000B2D F9               [12] 2751 	mov	r1,a
      000B2E 07               [12] 2752 	inc	@r1
      000B2F E7               [12] 2753 	mov	a,@r1
                                   2754 ;	main.c:511: if (time_date[index] >= max_vals[index]) {
      000B30 E5 35            [12] 2755 	mov	a,_index
      000B32 24 22            [12] 2756 	add	a, #_time_date
      000B34 F9               [12] 2757 	mov	r1,a
      000B35 87 07            [24] 2758 	mov	ar7,@r1
      000B37 E5 35            [12] 2759 	mov	a,_index
      000B39 24 90            [12] 2760 	add	a, #_max_vals
      000B3B F8               [12] 2761 	mov	r0,a
      000B3C 86 06            [24] 2762 	mov	ar6,@r0
      000B3E C3               [12] 2763 	clr	c
      000B3F EF               [12] 2764 	mov	a,r7
      000B40 9E               [12] 2765 	subb	a,r6
      000B41 40 09            [24] 2766 	jc	00102$
                                   2767 ;	main.c:512: time_date[index] = min_vals[index];
      000B43 E5 35            [12] 2768 	mov	a,_index
      000B45 24 97            [12] 2769 	add	a, #_min_vals
      000B47 F8               [12] 2770 	mov	r0,a
      000B48 86 07            [24] 2771 	mov	ar7,@r0
      000B4A A7 07            [24] 2772 	mov	@r1,ar7
      000B4C                       2773 00102$:
                                   2774 ;	main.c:514: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      000B4C 85 22 82         [24] 2775 	mov	dpl,_time_date
      000B4F 85 23 6B         [24] 2776 	mov	_display_PARM_2,(_time_date + 0x0001)
      000B52 85 24 6C         [24] 2777 	mov	_display_PARM_3,(_time_date + 0x0002)
      000B55 85 26 6D         [24] 2778 	mov	_display_PARM_4,(_time_date + 0x0004)
      000B58 85 27 6E         [24] 2779 	mov	_display_PARM_5,(_time_date + 0x0005)
      000B5B 85 28 6F         [24] 2780 	mov	_display_PARM_6,(_time_date + 0x0006)
      000B5E E5 25            [12] 2781 	mov	a,(_time_date + 0x0003)
      000B60 04               [12] 2782 	inc	a
      000B61 F5 70            [12] 2783 	mov	_display_PARM_7,a
      000B63 12 05 73         [24] 2784 	lcall	_display
                                   2785 ;	main.c:515: idle_counter = 0;
      000B66 E4               [12] 2786 	clr	a
      000B67 F5 2A            [12] 2787 	mov	_idle_counter,a
      000B69 F5 2B            [12] 2788 	mov	(_idle_counter + 1),a
      000B6B                       2789 00104$:
                                   2790 ;	main.c:518: if (!down) {
      000B6B 20 B5 45         [24] 2791 	jb	_down,00109$
                                   2792 ;	main.c:519: delay(10000); // debounce
      000B6E 90 27 10         [24] 2793 	mov	dptr,#0x2710
      000B71 12 01 37         [24] 2794 	lcall	_delay
                                   2795 ;	main.c:520: if (time_date[index] <= min_vals[index]) {
      000B74 E5 35            [12] 2796 	mov	a,_index
      000B76 24 22            [12] 2797 	add	a, #_time_date
      000B78 F9               [12] 2798 	mov	r1,a
      000B79 87 07            [24] 2799 	mov	ar7,@r1
      000B7B E5 35            [12] 2800 	mov	a,_index
      000B7D 24 97            [12] 2801 	add	a, #_min_vals
      000B7F F8               [12] 2802 	mov	r0,a
      000B80 86 06            [24] 2803 	mov	ar6,@r0
      000B82 C3               [12] 2804 	clr	c
      000B83 EE               [12] 2805 	mov	a,r6
      000B84 9F               [12] 2806 	subb	a,r7
      000B85 40 0A            [24] 2807 	jc	00106$
                                   2808 ;	main.c:521: time_date[index] = max_vals[index] - 1;
      000B87 E5 35            [12] 2809 	mov	a,_index
      000B89 24 90            [12] 2810 	add	a, #_max_vals
      000B8B F8               [12] 2811 	mov	r0,a
      000B8C E6               [12] 2812 	mov	a,@r0
      000B8D 14               [12] 2813 	dec	a
      000B8E F7               [12] 2814 	mov	@r1,a
      000B8F 80 03            [24] 2815 	sjmp	00107$
      000B91                       2816 00106$:
                                   2817 ;	main.c:523: time_date[index]--;
      000B91 E7               [12] 2818 	mov	a,@r1
      000B92 14               [12] 2819 	dec	a
      000B93 F7               [12] 2820 	mov	@r1,a
      000B94                       2821 00107$:
                                   2822 ;	main.c:525: display(time_date[0], time_date[1], time_date[2], time_date[4], time_date[5], time_date[6], time_date[3] + 1);
      000B94 85 22 82         [24] 2823 	mov	dpl,_time_date
      000B97 85 23 6B         [24] 2824 	mov	_display_PARM_2,(_time_date + 0x0001)
      000B9A 85 24 6C         [24] 2825 	mov	_display_PARM_3,(_time_date + 0x0002)
      000B9D 85 26 6D         [24] 2826 	mov	_display_PARM_4,(_time_date + 0x0004)
      000BA0 85 27 6E         [24] 2827 	mov	_display_PARM_5,(_time_date + 0x0005)
      000BA3 85 28 6F         [24] 2828 	mov	_display_PARM_6,(_time_date + 0x0006)
      000BA6 E5 25            [12] 2829 	mov	a,(_time_date + 0x0003)
      000BA8 04               [12] 2830 	inc	a
      000BA9 F5 70            [12] 2831 	mov	_display_PARM_7,a
      000BAB 12 05 73         [24] 2832 	lcall	_display
                                   2833 ;	main.c:526: idle_counter = 0;
      000BAE E4               [12] 2834 	clr	a
      000BAF F5 2A            [12] 2835 	mov	_idle_counter,a
      000BB1 F5 2B            [12] 2836 	mov	(_idle_counter + 1),a
      000BB3                       2837 00109$:
                                   2838 ;	main.c:529: if (!next) {
      000BB3 20 B6 13         [24] 2839 	jb	_next,00111$
                                   2840 ;	main.c:530: delay(10000); // debounce
      000BB6 90 27 10         [24] 2841 	mov	dptr,#0x2710
      000BB9 12 01 37         [24] 2842 	lcall	_delay
                                   2843 ;	main.c:531: index = index+1;
      000BBC 05 35            [12] 2844 	inc	_index
      000BBE E4               [12] 2845 	clr	a
      000BBF B5 35 02         [24] 2846 	cjne	a,_index,00183$
      000BC2 05 36            [12] 2847 	inc	(_index + 1)
      000BC4                       2848 00183$:
                                   2849 ;	main.c:532: idle_counter = 0;
      000BC4 E4               [12] 2850 	clr	a
      000BC5 F5 2A            [12] 2851 	mov	_idle_counter,a
      000BC7 F5 2B            [12] 2852 	mov	(_idle_counter + 1),a
      000BC9                       2853 00111$:
                                   2854 ;	main.c:535: if (!back) {
      000BC9 20 B7 14         [24] 2855 	jb	_back,00113$
                                   2856 ;	main.c:536: delay(10000); // debounce
      000BCC 90 27 10         [24] 2857 	mov	dptr,#0x2710
      000BCF 12 01 37         [24] 2858 	lcall	_delay
                                   2859 ;	main.c:537: index = index-1;
      000BD2 15 35            [12] 2860 	dec	_index
      000BD4 74 FF            [12] 2861 	mov	a,#0xff
      000BD6 B5 35 02         [24] 2862 	cjne	a,_index,00185$
      000BD9 15 36            [12] 2863 	dec	(_index + 1)
      000BDB                       2864 00185$:
                                   2865 ;	main.c:538: idle_counter = 0;
      000BDB E4               [12] 2866 	clr	a
      000BDC F5 2A            [12] 2867 	mov	_idle_counter,a
      000BDE F5 2B            [12] 2868 	mov	(_idle_counter + 1),a
      000BE0                       2869 00113$:
                                   2870 ;	main.c:540: if (++idle_counter >30) {
      000BE0 05 2A            [12] 2871 	inc	_idle_counter
      000BE2 E4               [12] 2872 	clr	a
      000BE3 B5 2A 02         [24] 2873 	cjne	a,_idle_counter,00186$
      000BE6 05 2B            [12] 2874 	inc	(_idle_counter + 1)
      000BE8                       2875 00186$:
      000BE8 C3               [12] 2876 	clr	c
      000BE9 74 1E            [12] 2877 	mov	a,#0x1e
      000BEB 95 2A            [12] 2878 	subb	a,_idle_counter
      000BED E4               [12] 2879 	clr	a
      000BEE 95 2B            [12] 2880 	subb	a,(_idle_counter + 1)
      000BF0 40 03            [24] 2881 	jc	00187$
      000BF2 02 0B 0A         [24] 2882 	ljmp	00116$
      000BF5                       2883 00187$:
                                   2884 ;	main.c:541: break;
      000BF5                       2885 00118$:
                                   2886 ;	main.c:544: if (idle_counter <= 30) {
      000BF5 C3               [12] 2887 	clr	c
      000BF6 74 1E            [12] 2888 	mov	a,#0x1e
      000BF8 95 2A            [12] 2889 	subb	a,_idle_counter
      000BFA E4               [12] 2890 	clr	a
      000BFB 95 2B            [12] 2891 	subb	a,(_idle_counter + 1)
      000BFD 40 1A            [24] 2892 	jc	00120$
                                   2893 ;	main.c:545: ds3232_set_time_date(time_date[0], time_date[1], time_date[2], time_date[3] + 1, time_date[4], time_date[5], time_date[6]);
      000BFF 85 22 82         [24] 2894 	mov	dpl,_time_date
      000C02 85 23 53         [24] 2895 	mov	_ds3232_set_time_date_PARM_2,(_time_date + 0x0001)
      000C05 85 24 54         [24] 2896 	mov	_ds3232_set_time_date_PARM_3,(_time_date + 0x0002)
      000C08 E5 25            [12] 2897 	mov	a,(_time_date + 0x0003)
      000C0A 04               [12] 2898 	inc	a
      000C0B F5 55            [12] 2899 	mov	_ds3232_set_time_date_PARM_4,a
      000C0D 85 26 56         [24] 2900 	mov	_ds3232_set_time_date_PARM_5,(_time_date + 0x0004)
      000C10 85 27 57         [24] 2901 	mov	_ds3232_set_time_date_PARM_6,(_time_date + 0x0005)
      000C13 85 28 58         [24] 2902 	mov	_ds3232_set_time_date_PARM_7,(_time_date + 0x0006)
      000C16 12 03 EE         [24] 2903 	lcall	_ds3232_set_time_date
      000C19                       2904 00120$:
                                   2905 ;	main.c:548: idle_counter = 0;
      000C19 E4               [12] 2906 	clr	a
      000C1A F5 2A            [12] 2907 	mov	_idle_counter,a
      000C1C F5 2B            [12] 2908 	mov	(_idle_counter + 1),a
                                   2909 ;	main.c:549: }
      000C1E 22               [24] 2910 	ret
                                   2911 ;------------------------------------------------------------
                                   2912 ;Allocation info for local variables in function 'set_alarms'
                                   2913 ;------------------------------------------------------------
                                   2914 ;i             Allocated to registers r7 
                                   2915 ;total_mins    Allocated with name '_set_alarms_total_mins_10002_135'
                                   2916 ;total_mins1   Allocated with name '_set_alarms_total_mins1_50002_140'
                                   2917 ;total_mins2   Allocated to registers r6 r4 
                                   2918 ;sloc0         Allocated with name '_set_alarms_sloc0_1_0'
                                   2919 ;------------------------------------------------------------
                                   2920 ;	main.c:551: void set_alarms() {
                                   2921 ;	-----------------------------------------
                                   2922 ;	 function set_alarms
                                   2923 ;	-----------------------------------------
      000C1F                       2924 _set_alarms:
                                   2925 ;	main.c:552: idle_counter = 0;
      000C1F E4               [12] 2926 	clr	a
      000C20 F5 2A            [12] 2927 	mov	_idle_counter,a
      000C22 F5 2B            [12] 2928 	mov	(_idle_counter + 1),a
                                   2929 ;	main.c:555: lcd_clear();
      000C24 12 02 22         [24] 2930 	lcall	_lcd_clear
                                   2931 ;	main.c:556: lcd_goto(0, 0);
      000C27 75 52 00         [24] 2932 	mov	_lcd_goto_PARM_2,#0x00
      000C2A 75 82 00         [24] 2933 	mov	dpl, #0x00
      000C2D 12 02 2E         [24] 2934 	lcall	_lcd_goto
                                   2935 ;	main.c:557: lcd_string(" How many alarms");
      000C30 90 15 7F         [24] 2936 	mov	dptr,#___str_0
      000C33 75 F0 80         [24] 2937 	mov	b, #0x80
      000C36 12 01 F7         [24] 2938 	lcall	_lcd_string
                                   2939 ;	main.c:558: while (1) {
      000C39                       2940 00114$:
                                   2941 ;	main.c:559: lcd_goto(1, 6);
      000C39 75 52 06         [24] 2942 	mov	_lcd_goto_PARM_2,#0x06
      000C3C 75 82 01         [24] 2943 	mov	dpl, #0x01
      000C3F 12 02 2E         [24] 2944 	lcall	_lcd_goto
                                   2945 ;	main.c:560: lcd_char(num_alarms + '0');
      000C42 AF 29            [24] 2946 	mov	r7,_num_alarms
      000C44 74 30            [12] 2947 	mov	a,#0x30
      000C46 2F               [12] 2948 	add	a, r7
      000C47 F5 82            [12] 2949 	mov	dpl,a
      000C49 12 01 D6         [24] 2950 	lcall	_lcd_char
                                   2951 ;	main.c:561: delay(10000);
      000C4C 90 27 10         [24] 2952 	mov	dptr,#0x2710
      000C4F 12 01 37         [24] 2953 	lcall	_delay
                                   2954 ;	main.c:563: if (!up) {
      000C52 20 B4 13         [24] 2955 	jb	_up,00104$
                                   2956 ;	main.c:564: delay(10000);
      000C55 90 27 10         [24] 2957 	mov	dptr,#0x2710
      000C58 12 01 37         [24] 2958 	lcall	_delay
                                   2959 ;	main.c:565: if (num_alarms < NUM_ALARMS) num_alarms++;
      000C5B 74 F8            [12] 2960 	mov	a,#0x100 - 0x08
      000C5D 25 29            [12] 2961 	add	a,_num_alarms
      000C5F 40 02            [24] 2962 	jc	00102$
      000C61 05 29            [12] 2963 	inc	_num_alarms
      000C63                       2964 00102$:
                                   2965 ;	main.c:566: idle_counter = 0;
      000C63 E4               [12] 2966 	clr	a
      000C64 F5 2A            [12] 2967 	mov	_idle_counter,a
      000C66 F5 2B            [12] 2968 	mov	(_idle_counter + 1),a
      000C68                       2969 00104$:
                                   2970 ;	main.c:569: if (!down) {
      000C68 20 B5 13         [24] 2971 	jb	_down,00108$
                                   2972 ;	main.c:570: delay(10000);
      000C6B 90 27 10         [24] 2973 	mov	dptr,#0x2710
      000C6E 12 01 37         [24] 2974 	lcall	_delay
                                   2975 ;	main.c:571: if (num_alarms > 1) num_alarms--;
      000C71 E5 29            [12] 2976 	mov	a,_num_alarms
      000C73 24 FE            [12] 2977 	add	a,#0xff - 0x01
      000C75 50 02            [24] 2978 	jnc	00106$
      000C77 15 29            [12] 2979 	dec	_num_alarms
      000C79                       2980 00106$:
                                   2981 ;	main.c:572: idle_counter = 0;
      000C79 E4               [12] 2982 	clr	a
      000C7A F5 2A            [12] 2983 	mov	_idle_counter,a
      000C7C F5 2B            [12] 2984 	mov	(_idle_counter + 1),a
      000C7E                       2985 00108$:
                                   2986 ;	main.c:575: if (!next) {
      000C7E 20 B6 08         [24] 2987 	jb	_next,00110$
                                   2988 ;	main.c:576: delay(10000);
      000C81 90 27 10         [24] 2989 	mov	dptr,#0x2710
      000C84 12 01 37         [24] 2990 	lcall	_delay
                                   2991 ;	main.c:577: break;
      000C87 80 36            [24] 2992 	sjmp	00189$
      000C89                       2993 00110$:
                                   2994 ;	main.c:580: if (++idle_counter > 30) {
      000C89 05 2A            [12] 2995 	inc	_idle_counter
      000C8B E4               [12] 2996 	clr	a
      000C8C B5 2A 02         [24] 2997 	cjne	a,_idle_counter,00354$
      000C8F 05 2B            [12] 2998 	inc	(_idle_counter + 1)
      000C91                       2999 00354$:
      000C91 C3               [12] 3000 	clr	c
      000C92 74 1E            [12] 3001 	mov	a,#0x1e
      000C94 95 2A            [12] 3002 	subb	a,_idle_counter
      000C96 E4               [12] 3003 	clr	a
      000C97 95 2B            [12] 3004 	subb	a,(_idle_counter + 1)
      000C99 50 9E            [24] 3005 	jnc	00114$
                                   3006 ;	main.c:581: lcd_clear();
      000C9B 12 02 22         [24] 3007 	lcall	_lcd_clear
                                   3008 ;	main.c:582: lcd_goto(0,0);
      000C9E 75 52 00         [24] 3009 	mov	_lcd_goto_PARM_2,#0x00
      000CA1 75 82 00         [24] 3010 	mov	dpl, #0x00
      000CA4 12 02 2E         [24] 3011 	lcall	_lcd_goto
                                   3012 ;	main.c:583: lcd_string(" Time limit exc!");
      000CA7 90 15 90         [24] 3013 	mov	dptr,#___str_1
      000CAA 75 F0 80         [24] 3014 	mov	b, #0x80
      000CAD 12 01 F7         [24] 3015 	lcall	_lcd_string
                                   3016 ;	main.c:584: delay_ms(3000);
      000CB0 90 0B B8         [24] 3017 	mov	dptr,#0x0bb8
      000CB3 12 01 5B         [24] 3018 	lcall	_delay_ms
                                   3019 ;	main.c:585: lcd_clear();
      000CB6 12 02 22         [24] 3020 	lcall	_lcd_clear
                                   3021 ;	main.c:586: idle_counter = 0;
      000CB9 E4               [12] 3022 	clr	a
      000CBA F5 2A            [12] 3023 	mov	_idle_counter,a
      000CBC F5 2B            [12] 3024 	mov	(_idle_counter + 1),a
                                   3025 ;	main.c:587: return;  //time exceeded
      000CBE 22               [24] 3026 	ret
                                   3027 ;	main.c:592: for (i = 0; i < num_alarms; i++) {
      000CBF                       3028 00189$:
      000CBF 7F 00            [12] 3029 	mov	r7,#0x00
      000CC1                       3030 00153$:
      000CC1 C3               [12] 3031 	clr	c
      000CC2 EF               [12] 3032 	mov	a,r7
      000CC3 95 29            [12] 3033 	subb	a,_num_alarms
      000CC5 40 03            [24] 3034 	jc	00356$
      000CC7 02 0E EA         [24] 3035 	ljmp	00142$
      000CCA                       3036 00356$:
                                   3037 ;	main.c:593: idle_counter = 0;
      000CCA E4               [12] 3038 	clr	a
      000CCB F5 2A            [12] 3039 	mov	_idle_counter,a
      000CCD F5 2B            [12] 3040 	mov	(_idle_counter + 1),a
                                   3041 ;	main.c:596: lcd_clear();
      000CCF C0 07            [24] 3042 	push	ar7
      000CD1 12 02 22         [24] 3043 	lcall	_lcd_clear
                                   3044 ;	main.c:597: lcd_goto(0, 0);
      000CD4 75 52 00         [24] 3045 	mov	_lcd_goto_PARM_2,#0x00
      000CD7 75 82 00         [24] 3046 	mov	dpl, #0x00
      000CDA 12 02 2E         [24] 3047 	lcall	_lcd_goto
                                   3048 ;	main.c:598: lcd_string(" Set Hour Alarm ");
      000CDD 90 15 A1         [24] 3049 	mov	dptr,#___str_2
      000CE0 75 F0 80         [24] 3050 	mov	b, #0x80
      000CE3 12 01 F7         [24] 3051 	lcall	_lcd_string
                                   3052 ;	main.c:599: lcd_goto(1, 0);
      000CE6 75 52 00         [24] 3053 	mov	_lcd_goto_PARM_2,#0x00
      000CE9 75 82 01         [24] 3054 	mov	dpl, #0x01
      000CEC 12 02 2E         [24] 3055 	lcall	_lcd_goto
                                   3056 ;	main.c:600: lcd_string("Alarm ");
      000CEF 90 15 B2         [24] 3057 	mov	dptr,#___str_3
      000CF2 75 F0 80         [24] 3058 	mov	b, #0x80
      000CF5 12 01 F7         [24] 3059 	lcall	_lcd_string
      000CF8 D0 07            [24] 3060 	pop	ar7
                                   3061 ;	main.c:601: lcd_char('1' + i);
      000CFA 8F 06            [24] 3062 	mov	ar6,r7
      000CFC 74 31            [12] 3063 	mov	a,#0x31
      000CFE 2E               [12] 3064 	add	a, r6
      000CFF F5 82            [12] 3065 	mov	dpl,a
      000D01 C0 07            [24] 3066 	push	ar7
      000D03 12 01 D6         [24] 3067 	lcall	_lcd_char
      000D06 D0 07            [24] 3068 	pop	ar7
                                   3069 ;	main.c:603: while (1) {
      000D08                       3070 00127$:
                                   3071 ;	main.c:604: lcd_goto(1, 9);
      000D08 75 52 09         [24] 3072 	mov	_lcd_goto_PARM_2,#0x09
      000D0B 75 82 01         [24] 3073 	mov	dpl, #0x01
      000D0E C0 07            [24] 3074 	push	ar7
      000D10 12 02 2E         [24] 3075 	lcall	_lcd_goto
                                   3076 ;	main.c:605: int_to_str(hr, buf);
      000D13 75 08 4D         [24] 3077 	mov	_int_to_str_PARM_2,#_buf
      000D16 75 09 00         [24] 3078 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000D19 75 0A 40         [24] 3079 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000D1C 85 50 82         [24] 3080 	mov	dpl, _hr
      000D1F 12 02 99         [24] 3081 	lcall	_int_to_str
                                   3082 ;	main.c:606: lcd_string(buf);
      000D22 90 00 4D         [24] 3083 	mov	dptr,#_buf
      000D25 75 F0 40         [24] 3084 	mov	b, #0x40
      000D28 12 01 F7         [24] 3085 	lcall	_lcd_string
                                   3086 ;	main.c:607: delay(10000);
      000D2B 90 27 10         [24] 3087 	mov	dptr,#0x2710
      000D2E 12 01 37         [24] 3088 	lcall	_delay
      000D31 D0 07            [24] 3089 	pop	ar7
                                   3090 ;	main.c:609: if (!up) {
      000D33 20 B4 24         [24] 3091 	jb	_up,00117$
                                   3092 ;	main.c:610: delay(10000);
      000D36 90 27 10         [24] 3093 	mov	dptr,#0x2710
      000D39 C0 07            [24] 3094 	push	ar7
      000D3B 12 01 37         [24] 3095 	lcall	_delay
                                   3096 ;	main.c:611: hr = (hr + 1) % 24;
      000D3E AD 50            [24] 3097 	mov	r5,_hr
      000D40 7E 00            [12] 3098 	mov	r6,#0x00
      000D42 8D 82            [24] 3099 	mov	dpl,r5
      000D44 8E 83            [24] 3100 	mov	dph,r6
      000D46 A3               [24] 3101 	inc	dptr
      000D47 75 08 18         [24] 3102 	mov	__modsint_PARM_2,#0x18
      000D4A 8E 09            [24] 3103 	mov	(__modsint_PARM_2 + 1),r6
      000D4C 12 15 45         [24] 3104 	lcall	__modsint
      000D4F AD 82            [24] 3105 	mov	r5, dpl
      000D51 D0 07            [24] 3106 	pop	ar7
      000D53 8D 50            [24] 3107 	mov	_hr,r5
                                   3108 ;	main.c:612: idle_counter = 0;
      000D55 E4               [12] 3109 	clr	a
      000D56 F5 2A            [12] 3110 	mov	_idle_counter,a
      000D58 F5 2B            [12] 3111 	mov	(_idle_counter + 1),a
      000D5A                       3112 00117$:
                                   3113 ;	main.c:614: if (!down) {
      000D5A 20 B5 21         [24] 3114 	jb	_down,00119$
                                   3115 ;	main.c:615: delay(10000);
      000D5D 90 27 10         [24] 3116 	mov	dptr,#0x2710
      000D60 C0 07            [24] 3117 	push	ar7
      000D62 12 01 37         [24] 3118 	lcall	_delay
      000D65 D0 07            [24] 3119 	pop	ar7
                                   3120 ;	main.c:616: hr = (hr == 0) ? 23 : hr - 1;
      000D67 E5 50            [12] 3121 	mov	a,_hr
      000D69 70 04            [24] 3122 	jnz	00163$
      000D6B 7D 17            [12] 3123 	mov	r5,#0x17
      000D6D 80 08            [24] 3124 	sjmp	00164$
      000D6F                       3125 00163$:
      000D6F AC 50            [24] 3126 	mov	r4,_hr
      000D71 1C               [12] 3127 	dec	r4
      000D72 EC               [12] 3128 	mov	a,r4
      000D73 FD               [12] 3129 	mov	r5,a
      000D74 33               [12] 3130 	rlc	a
      000D75 95 E0            [12] 3131 	subb	a,acc
      000D77                       3132 00164$:
      000D77 8D 50            [24] 3133 	mov	_hr,r5
                                   3134 ;	main.c:617: idle_counter = 0;
      000D79 E4               [12] 3135 	clr	a
      000D7A F5 2A            [12] 3136 	mov	_idle_counter,a
      000D7C F5 2B            [12] 3137 	mov	(_idle_counter + 1),a
      000D7E                       3138 00119$:
                                   3139 ;	main.c:619: if (!next) {
      000D7E 20 B6 0C         [24] 3140 	jb	_next,00121$
                                   3141 ;	main.c:620: delay(10000);
      000D81 90 27 10         [24] 3142 	mov	dptr,#0x2710
      000D84 C0 07            [24] 3143 	push	ar7
      000D86 12 01 37         [24] 3144 	lcall	_delay
      000D89 D0 07            [24] 3145 	pop	ar7
                                   3146 ;	main.c:621: break;
      000D8B 80 3A            [24] 3147 	sjmp	00128$
      000D8D                       3148 00121$:
                                   3149 ;	main.c:623: if (!back) return;
      000D8D 20 B7 01         [24] 3150 	jb	_back,00123$
      000D90 22               [24] 3151 	ret
      000D91                       3152 00123$:
                                   3153 ;	main.c:625: if (++idle_counter > 30) {
      000D91 05 2A            [12] 3154 	inc	_idle_counter
      000D93 E4               [12] 3155 	clr	a
      000D94 B5 2A 02         [24] 3156 	cjne	a,_idle_counter,00362$
      000D97 05 2B            [12] 3157 	inc	(_idle_counter + 1)
      000D99                       3158 00362$:
      000D99 C3               [12] 3159 	clr	c
      000D9A 74 1E            [12] 3160 	mov	a,#0x1e
      000D9C 95 2A            [12] 3161 	subb	a,_idle_counter
      000D9E E4               [12] 3162 	clr	a
      000D9F 95 2B            [12] 3163 	subb	a,(_idle_counter + 1)
      000DA1 40 03            [24] 3164 	jc	00363$
      000DA3 02 0D 08         [24] 3165 	ljmp	00127$
      000DA6                       3166 00363$:
                                   3167 ;	main.c:626: lcd_clear();
      000DA6 12 02 22         [24] 3168 	lcall	_lcd_clear
                                   3169 ;	main.c:627: lcd_goto(0,0);
      000DA9 75 52 00         [24] 3170 	mov	_lcd_goto_PARM_2,#0x00
      000DAC 75 82 00         [24] 3171 	mov	dpl, #0x00
      000DAF 12 02 2E         [24] 3172 	lcall	_lcd_goto
                                   3173 ;	main.c:628: lcd_string(" Time limit exc!");
      000DB2 90 15 90         [24] 3174 	mov	dptr,#___str_1
      000DB5 75 F0 80         [24] 3175 	mov	b, #0x80
      000DB8 12 01 F7         [24] 3176 	lcall	_lcd_string
                                   3177 ;	main.c:629: delay_ms(3000);
      000DBB 90 0B B8         [24] 3178 	mov	dptr,#0x0bb8
      000DBE 12 01 5B         [24] 3179 	lcall	_delay_ms
                                   3180 ;	main.c:630: idle_counter = 0;
      000DC1 E4               [12] 3181 	clr	a
      000DC2 F5 2A            [12] 3182 	mov	_idle_counter,a
      000DC4 F5 2B            [12] 3183 	mov	(_idle_counter + 1),a
                                   3184 ;	main.c:631: return;  //time exceeded
      000DC6 22               [24] 3185 	ret
      000DC7                       3186 00128$:
                                   3187 ;	main.c:636: idle_counter = 0;
      000DC7 E4               [12] 3188 	clr	a
      000DC8 F5 2A            [12] 3189 	mov	_idle_counter,a
      000DCA F5 2B            [12] 3190 	mov	(_idle_counter + 1),a
                                   3191 ;	main.c:637: lcd_clear();
      000DCC C0 07            [24] 3192 	push	ar7
      000DCE 12 02 22         [24] 3193 	lcall	_lcd_clear
                                   3194 ;	main.c:638: lcd_goto(0, 0);
      000DD1 75 52 00         [24] 3195 	mov	_lcd_goto_PARM_2,#0x00
      000DD4 75 82 00         [24] 3196 	mov	dpl, #0x00
      000DD7 12 02 2E         [24] 3197 	lcall	_lcd_goto
                                   3198 ;	main.c:639: lcd_string(" Set Min Alarm ");
      000DDA 90 15 B9         [24] 3199 	mov	dptr,#___str_4
      000DDD 75 F0 80         [24] 3200 	mov	b, #0x80
      000DE0 12 01 F7         [24] 3201 	lcall	_lcd_string
                                   3202 ;	main.c:640: lcd_goto(1, 0);
      000DE3 75 52 00         [24] 3203 	mov	_lcd_goto_PARM_2,#0x00
      000DE6 75 82 01         [24] 3204 	mov	dpl, #0x01
      000DE9 12 02 2E         [24] 3205 	lcall	_lcd_goto
                                   3206 ;	main.c:641: lcd_string("Alarm ");
      000DEC 90 15 B2         [24] 3207 	mov	dptr,#___str_3
      000DEF 75 F0 80         [24] 3208 	mov	b, #0x80
      000DF2 12 01 F7         [24] 3209 	lcall	_lcd_string
      000DF5 D0 07            [24] 3210 	pop	ar7
                                   3211 ;	main.c:642: lcd_char('1' + i);
      000DF7 8F 06            [24] 3212 	mov	ar6,r7
      000DF9 74 31            [12] 3213 	mov	a,#0x31
      000DFB 2E               [12] 3214 	add	a, r6
      000DFC F5 82            [12] 3215 	mov	dpl,a
      000DFE C0 07            [24] 3216 	push	ar7
      000E00 12 01 D6         [24] 3217 	lcall	_lcd_char
      000E03 D0 07            [24] 3218 	pop	ar7
                                   3219 ;	main.c:644: while (1) {
      000E05                       3220 00140$:
                                   3221 ;	main.c:645: lcd_goto(1, 9);
      000E05 75 52 09         [24] 3222 	mov	_lcd_goto_PARM_2,#0x09
      000E08 75 82 01         [24] 3223 	mov	dpl, #0x01
      000E0B C0 07            [24] 3224 	push	ar7
      000E0D 12 02 2E         [24] 3225 	lcall	_lcd_goto
                                   3226 ;	main.c:646: int_to_str(min, buf);
      000E10 75 08 4D         [24] 3227 	mov	_int_to_str_PARM_2,#_buf
      000E13 75 09 00         [24] 3228 	mov	(_int_to_str_PARM_2 + 1),#0x00
      000E16 75 0A 40         [24] 3229 	mov	(_int_to_str_PARM_2 + 2),#0x40
      000E19 85 51 82         [24] 3230 	mov	dpl, _min
      000E1C 12 02 99         [24] 3231 	lcall	_int_to_str
                                   3232 ;	main.c:647: lcd_string(buf);
      000E1F 90 00 4D         [24] 3233 	mov	dptr,#_buf
      000E22 75 F0 40         [24] 3234 	mov	b, #0x40
      000E25 12 01 F7         [24] 3235 	lcall	_lcd_string
                                   3236 ;	main.c:648: delay(10000);
      000E28 90 27 10         [24] 3237 	mov	dptr,#0x2710
      000E2B 12 01 37         [24] 3238 	lcall	_delay
      000E2E D0 07            [24] 3239 	pop	ar7
                                   3240 ;	main.c:650: if (!up) {
      000E30 20 B4 24         [24] 3241 	jb	_up,00130$
                                   3242 ;	main.c:651: delay(10000);
      000E33 90 27 10         [24] 3243 	mov	dptr,#0x2710
      000E36 C0 07            [24] 3244 	push	ar7
      000E38 12 01 37         [24] 3245 	lcall	_delay
                                   3246 ;	main.c:652: min = (min + 1) % 60;
      000E3B AD 51            [24] 3247 	mov	r5,_min
      000E3D 7E 00            [12] 3248 	mov	r6,#0x00
      000E3F 8D 82            [24] 3249 	mov	dpl,r5
      000E41 8E 83            [24] 3250 	mov	dph,r6
      000E43 A3               [24] 3251 	inc	dptr
      000E44 75 08 3C         [24] 3252 	mov	__modsint_PARM_2,#0x3c
      000E47 8E 09            [24] 3253 	mov	(__modsint_PARM_2 + 1),r6
      000E49 12 15 45         [24] 3254 	lcall	__modsint
      000E4C AD 82            [24] 3255 	mov	r5, dpl
      000E4E D0 07            [24] 3256 	pop	ar7
      000E50 8D 51            [24] 3257 	mov	_min,r5
                                   3258 ;	main.c:653: idle_counter = 0;
      000E52 E4               [12] 3259 	clr	a
      000E53 F5 2A            [12] 3260 	mov	_idle_counter,a
      000E55 F5 2B            [12] 3261 	mov	(_idle_counter + 1),a
      000E57                       3262 00130$:
                                   3263 ;	main.c:655: if (!down) {
      000E57 20 B5 21         [24] 3264 	jb	_down,00132$
                                   3265 ;	main.c:656: delay(10000);
      000E5A 90 27 10         [24] 3266 	mov	dptr,#0x2710
      000E5D C0 07            [24] 3267 	push	ar7
      000E5F 12 01 37         [24] 3268 	lcall	_delay
      000E62 D0 07            [24] 3269 	pop	ar7
                                   3270 ;	main.c:657: min = (min == 0) ? 59 : min - 1;
      000E64 E5 51            [12] 3271 	mov	a,_min
      000E66 70 04            [24] 3272 	jnz	00165$
      000E68 7D 3B            [12] 3273 	mov	r5,#0x3b
      000E6A 80 08            [24] 3274 	sjmp	00166$
      000E6C                       3275 00165$:
      000E6C AC 51            [24] 3276 	mov	r4,_min
      000E6E 1C               [12] 3277 	dec	r4
      000E6F EC               [12] 3278 	mov	a,r4
      000E70 FD               [12] 3279 	mov	r5,a
      000E71 33               [12] 3280 	rlc	a
      000E72 95 E0            [12] 3281 	subb	a,acc
      000E74                       3282 00166$:
      000E74 8D 51            [24] 3283 	mov	_min,r5
                                   3284 ;	main.c:658: idle_counter = 0;
      000E76 E4               [12] 3285 	clr	a
      000E77 F5 2A            [12] 3286 	mov	_idle_counter,a
      000E79 F5 2B            [12] 3287 	mov	(_idle_counter + 1),a
      000E7B                       3288 00132$:
                                   3289 ;	main.c:660: if (!next) {
      000E7B 20 B6 0C         [24] 3290 	jb	_next,00134$
                                   3291 ;	main.c:661: delay(10000);
      000E7E 90 27 10         [24] 3292 	mov	dptr,#0x2710
      000E81 C0 07            [24] 3293 	push	ar7
      000E83 12 01 37         [24] 3294 	lcall	_delay
      000E86 D0 07            [24] 3295 	pop	ar7
                                   3296 ;	main.c:662: break;
      000E88 80 3A            [24] 3297 	sjmp	00141$
      000E8A                       3298 00134$:
                                   3299 ;	main.c:664: if (!back) return;
      000E8A 20 B7 01         [24] 3300 	jb	_back,00136$
      000E8D 22               [24] 3301 	ret
      000E8E                       3302 00136$:
                                   3303 ;	main.c:666: if (++idle_counter > 30) {
      000E8E 05 2A            [12] 3304 	inc	_idle_counter
      000E90 E4               [12] 3305 	clr	a
      000E91 B5 2A 02         [24] 3306 	cjne	a,_idle_counter,00369$
      000E94 05 2B            [12] 3307 	inc	(_idle_counter + 1)
      000E96                       3308 00369$:
      000E96 C3               [12] 3309 	clr	c
      000E97 74 1E            [12] 3310 	mov	a,#0x1e
      000E99 95 2A            [12] 3311 	subb	a,_idle_counter
      000E9B E4               [12] 3312 	clr	a
      000E9C 95 2B            [12] 3313 	subb	a,(_idle_counter + 1)
      000E9E 40 03            [24] 3314 	jc	00370$
      000EA0 02 0E 05         [24] 3315 	ljmp	00140$
      000EA3                       3316 00370$:
                                   3317 ;	main.c:667: lcd_clear();
      000EA3 12 02 22         [24] 3318 	lcall	_lcd_clear
                                   3319 ;	main.c:668: lcd_goto(0,0);
      000EA6 75 52 00         [24] 3320 	mov	_lcd_goto_PARM_2,#0x00
      000EA9 75 82 00         [24] 3321 	mov	dpl, #0x00
      000EAC 12 02 2E         [24] 3322 	lcall	_lcd_goto
                                   3323 ;	main.c:669: lcd_string(" Time limit exc!");
      000EAF 90 15 90         [24] 3324 	mov	dptr,#___str_1
      000EB2 75 F0 80         [24] 3325 	mov	b, #0x80
      000EB5 12 01 F7         [24] 3326 	lcall	_lcd_string
                                   3327 ;	main.c:670: delay_ms(3000);
      000EB8 90 0B B8         [24] 3328 	mov	dptr,#0x0bb8
      000EBB 12 01 5B         [24] 3329 	lcall	_delay_ms
                                   3330 ;	main.c:671: idle_counter = 0;
      000EBE E4               [12] 3331 	clr	a
      000EBF F5 2A            [12] 3332 	mov	_idle_counter,a
      000EC1 F5 2B            [12] 3333 	mov	(_idle_counter + 1),a
                                   3334 ;	main.c:672: return;
      000EC3 22               [24] 3335 	ret
      000EC4                       3336 00141$:
                                   3337 ;	main.c:676: alarm_hours[i] = hr;
      000EC4 EF               [12] 3338 	mov	a,r7
      000EC5 24 80            [12] 3339 	add	a, #_alarm_hours
      000EC7 F8               [12] 3340 	mov	r0,a
      000EC8 A6 50            [24] 3341 	mov	@r0,_hr
                                   3342 ;	main.c:677: alarm_minutes[i] = min;
      000ECA EF               [12] 3343 	mov	a,r7
      000ECB 24 88            [12] 3344 	add	a, #_alarm_minutes
      000ECD F8               [12] 3345 	mov	r0,a
      000ECE A6 51            [24] 3346 	mov	@r0,_min
                                   3347 ;	main.c:678: lcd_clear();
      000ED0 C0 07            [24] 3348 	push	ar7
      000ED2 12 02 22         [24] 3349 	lcall	_lcd_clear
                                   3350 ;	main.c:679: lcd_string(" Alarm Saved");
      000ED5 90 15 C9         [24] 3351 	mov	dptr,#___str_5
      000ED8 75 F0 80         [24] 3352 	mov	b, #0x80
      000EDB 12 01 F7         [24] 3353 	lcall	_lcd_string
                                   3354 ;	main.c:680: delay(25000);
      000EDE 90 61 A8         [24] 3355 	mov	dptr,#0x61a8
      000EE1 12 01 37         [24] 3356 	lcall	_delay
      000EE4 D0 07            [24] 3357 	pop	ar7
                                   3358 ;	main.c:592: for (i = 0; i < num_alarms; i++) {
      000EE6 0F               [12] 3359 	inc	r7
      000EE7 02 0C C1         [24] 3360 	ljmp	00153$
      000EEA                       3361 00142$:
                                   3362 ;	main.c:682: alarm_arranger(alarm_hours, alarm_minutes, &num_alarms);
      000EEA 75 08 88         [24] 3363 	mov	_alarm_arranger_PARM_2,#_alarm_minutes
      000EED 75 09 00         [24] 3364 	mov	(_alarm_arranger_PARM_2 + 1),#0x00
      000EF0 75 0A 40         [24] 3365 	mov	(_alarm_arranger_PARM_2 + 2),#0x40
      000EF3 75 0B 29         [24] 3366 	mov	_alarm_arranger_PARM_3,#_num_alarms
      000EF6 75 0C 00         [24] 3367 	mov	(_alarm_arranger_PARM_3 + 1),#0x00
      000EF9 75 0D 40         [24] 3368 	mov	(_alarm_arranger_PARM_3 + 2),#0x40
      000EFC 90 00 80         [24] 3369 	mov	dptr,#_alarm_hours
      000EFF 75 F0 40         [24] 3370 	mov	b, #0x40
      000F02 12 07 E4         [24] 3371 	lcall	_alarm_arranger
                                   3372 ;	main.c:683: write_eeprom(EEPROM_BASE, num_alarms);
      000F05 85 29 71         [24] 3373 	mov	_write_eeprom_PARM_2,_num_alarms
      000F08 90 00 00         [24] 3374 	mov	dptr,#0x0000
      000F0B 12 07 2C         [24] 3375 	lcall	_write_eeprom
                                   3376 ;	main.c:685: for(i = 0; i < num_alarms; i++) {
      000F0E 7F 00            [12] 3377 	mov	r7,#0x00
      000F10                       3378 00156$:
      000F10 C3               [12] 3379 	clr	c
      000F11 EF               [12] 3380 	mov	a,r7
      000F12 95 29            [12] 3381 	subb	a,_num_alarms
      000F14 50 18            [24] 3382 	jnc	00143$
                                   3383 ;	main.c:686: write_alarm_to_eeprom(i, alarm_hours[i], alarm_minutes[i]);
      000F16 EF               [12] 3384 	mov	a,r7
      000F17 24 80            [12] 3385 	add	a, #_alarm_hours
      000F19 F9               [12] 3386 	mov	r1,a
      000F1A 87 72            [24] 3387 	mov	_write_alarm_to_eeprom_PARM_2,@r1
      000F1C EF               [12] 3388 	mov	a,r7
      000F1D 24 88            [12] 3389 	add	a, #_alarm_minutes
      000F1F F9               [12] 3390 	mov	r1,a
      000F20 87 73            [24] 3391 	mov	_write_alarm_to_eeprom_PARM_3,@r1
      000F22 8F 82            [24] 3392 	mov	dpl, r7
      000F24 C0 07            [24] 3393 	push	ar7
      000F26 12 07 BB         [24] 3394 	lcall	_write_alarm_to_eeprom
      000F29 D0 07            [24] 3395 	pop	ar7
                                   3396 ;	main.c:685: for(i = 0; i < num_alarms; i++) {
      000F2B 0F               [12] 3397 	inc	r7
      000F2C 80 E2            [24] 3398 	sjmp	00156$
      000F2E                       3399 00143$:
                                   3400 ;	main.c:688: ds3232_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
      000F2E 75 59 2D         [24] 3401 	mov	_ds3232_get_time_date_PARM_2,#_m
      000F31 75 5A 00         [24] 3402 	mov	(_ds3232_get_time_date_PARM_2 + 1),#0x00
      000F34 75 5B 40         [24] 3403 	mov	(_ds3232_get_time_date_PARM_2 + 2),#0x40
      000F37 75 5C 2E         [24] 3404 	mov	_ds3232_get_time_date_PARM_3,#_s
      000F3A 75 5D 00         [24] 3405 	mov	(_ds3232_get_time_date_PARM_3 + 1),#0x00
      000F3D 75 5E 40         [24] 3406 	mov	(_ds3232_get_time_date_PARM_3 + 2),#0x40
      000F40 75 5F 32         [24] 3407 	mov	_ds3232_get_time_date_PARM_4,#_day
      000F43 75 60 00         [24] 3408 	mov	(_ds3232_get_time_date_PARM_4 + 1),#0x00
      000F46 75 61 40         [24] 3409 	mov	(_ds3232_get_time_date_PARM_4 + 2),#0x40
      000F49 75 62 2F         [24] 3410 	mov	_ds3232_get_time_date_PARM_5,#_d
      000F4C 75 63 00         [24] 3411 	mov	(_ds3232_get_time_date_PARM_5 + 1),#0x00
      000F4F 75 64 40         [24] 3412 	mov	(_ds3232_get_time_date_PARM_5 + 2),#0x40
      000F52 75 65 30         [24] 3413 	mov	_ds3232_get_time_date_PARM_6,#_mo
      000F55 75 66 00         [24] 3414 	mov	(_ds3232_get_time_date_PARM_6 + 1),#0x00
      000F58 75 67 40         [24] 3415 	mov	(_ds3232_get_time_date_PARM_6 + 2),#0x40
      000F5B 75 68 31         [24] 3416 	mov	_ds3232_get_time_date_PARM_7,#_y
      000F5E 75 69 00         [24] 3417 	mov	(_ds3232_get_time_date_PARM_7 + 1),#0x00
      000F61 75 6A 40         [24] 3418 	mov	(_ds3232_get_time_date_PARM_7 + 2),#0x40
      000F64 90 00 2C         [24] 3419 	mov	dptr,#_h
      000F67 75 F0 40         [24] 3420 	mov	b, #0x40
      000F6A 12 04 44         [24] 3421 	lcall	_ds3232_get_time_date
                                   3422 ;	main.c:689: int total_mins = (h*60)+m;
      000F6D 85 2C 08         [24] 3423 	mov	__mulint_PARM_2,_h
      000F70 75 09 00         [24] 3424 	mov	(__mulint_PARM_2 + 1),#0x00
      000F73 90 00 3C         [24] 3425 	mov	dptr,#0x003c
      000F76 12 14 BF         [24] 3426 	lcall	__mulint
      000F79 AE 82            [24] 3427 	mov	r6, dpl
      000F7B AF 83            [24] 3428 	mov	r7, dph
      000F7D AC 2D            [24] 3429 	mov	r4,_m
      000F7F 7D 00            [12] 3430 	mov	r5,#0x00
      000F81 EC               [12] 3431 	mov	a,r4
      000F82 2E               [12] 3432 	add	a, r6
      000F83 F5 76            [12] 3433 	mov	_set_alarms_total_mins_10002_135,a
      000F85 ED               [12] 3434 	mov	a,r5
      000F86 3F               [12] 3435 	addc	a, r7
      000F87 F5 77            [12] 3436 	mov	(_set_alarms_total_mins_10002_135 + 1),a
                                   3437 ;	main.c:691: if ((total_mins >= (alarm_hours[num_alarms - 1] * 60 + alarm_minutes[num_alarms - 1])) || (total_mins < (alarm_hours[0]*60 + alarm_minutes[0]))) {
      000F89 AD 29            [24] 3438 	mov	r5,_num_alarms
      000F8B 1D               [12] 3439 	dec	r5
      000F8C ED               [12] 3440 	mov	a,r5
      000F8D 24 80            [12] 3441 	add	a, #_alarm_hours
      000F8F F9               [12] 3442 	mov	r1,a
      000F90 87 04            [24] 3443 	mov	ar4,@r1
      000F92 8C 08            [24] 3444 	mov	__mulint_PARM_2,r4
      000F94 75 09 00         [24] 3445 	mov	(__mulint_PARM_2 + 1),#0x00
      000F97 90 00 3C         [24] 3446 	mov	dptr,#0x003c
      000F9A C0 05            [24] 3447 	push	ar5
      000F9C 12 14 BF         [24] 3448 	lcall	__mulint
      000F9F AB 82            [24] 3449 	mov	r3, dpl
      000FA1 AC 83            [24] 3450 	mov	r4, dph
      000FA3 D0 05            [24] 3451 	pop	ar5
      000FA5 ED               [12] 3452 	mov	a,r5
      000FA6 24 88            [12] 3453 	add	a, #_alarm_minutes
      000FA8 F9               [12] 3454 	mov	r1,a
      000FA9 87 05            [24] 3455 	mov	ar5,@r1
      000FAB 7A 00            [12] 3456 	mov	r2,#0x00
      000FAD ED               [12] 3457 	mov	a,r5
      000FAE 2B               [12] 3458 	add	a, r3
      000FAF FB               [12] 3459 	mov	r3,a
      000FB0 EA               [12] 3460 	mov	a,r2
      000FB1 3C               [12] 3461 	addc	a, r4
      000FB2 FC               [12] 3462 	mov	r4,a
      000FB3 C3               [12] 3463 	clr	c
      000FB4 E5 76            [12] 3464 	mov	a,_set_alarms_total_mins_10002_135
      000FB6 9B               [12] 3465 	subb	a,r3
      000FB7 E5 77            [12] 3466 	mov	a,(_set_alarms_total_mins_10002_135 + 1)
      000FB9 64 80            [12] 3467 	xrl	a,#0x80
      000FBB 8C F0            [24] 3468 	mov	b,r4
      000FBD 63 F0 80         [24] 3469 	xrl	b,#0x80
      000FC0 95 F0            [12] 3470 	subb	a,b
      000FC2 50 30            [24] 3471 	jnc	00148$
      000FC4 78 80            [12] 3472 	mov	r0,#_alarm_hours
      000FC6 86 05            [24] 3473 	mov	ar5,@r0
      000FC8 8D 08            [24] 3474 	mov	__mulint_PARM_2,r5
      000FCA 75 09 00         [24] 3475 	mov	(__mulint_PARM_2 + 1),#0x00
      000FCD 90 00 3C         [24] 3476 	mov	dptr,#0x003c
      000FD0 12 14 BF         [24] 3477 	lcall	__mulint
      000FD3 AC 82            [24] 3478 	mov	r4, dpl
      000FD5 AD 83            [24] 3479 	mov	r5, dph
      000FD7 78 88            [12] 3480 	mov	r0,#_alarm_minutes
      000FD9 86 03            [24] 3481 	mov	ar3,@r0
      000FDB 7A 00            [12] 3482 	mov	r2,#0x00
      000FDD EB               [12] 3483 	mov	a,r3
      000FDE 2C               [12] 3484 	add	a, r4
      000FDF FC               [12] 3485 	mov	r4,a
      000FE0 EA               [12] 3486 	mov	a,r2
      000FE1 3D               [12] 3487 	addc	a, r5
      000FE2 FD               [12] 3488 	mov	r5,a
      000FE3 C3               [12] 3489 	clr	c
      000FE4 E5 76            [12] 3490 	mov	a,_set_alarms_total_mins_10002_135
      000FE6 9C               [12] 3491 	subb	a,r4
      000FE7 E5 77            [12] 3492 	mov	a,(_set_alarms_total_mins_10002_135 + 1)
      000FE9 64 80            [12] 3493 	xrl	a,#0x80
      000FEB 8D F0            [24] 3494 	mov	b,r5
      000FED 63 F0 80         [24] 3495 	xrl	b,#0x80
      000FF0 95 F0            [12] 3496 	subb	a,b
      000FF2 50 1A            [24] 3497 	jnc	00196$
      000FF4                       3498 00148$:
                                   3499 ;	main.c:692: ds3232_set_alarm1(alarm_hours[0], alarm_minutes[0], 0);
      000FF4 78 80            [12] 3500 	mov	r0,#_alarm_hours
      000FF6 86 82            [24] 3501 	mov	dpl,@r0
      000FF8 78 88            [12] 3502 	mov	r0,#_alarm_minutes
      000FFA 86 74            [24] 3503 	mov	_ds3232_set_alarm1_PARM_2,@r0
      000FFC 75 75 00         [24] 3504 	mov	_ds3232_set_alarm1_PARM_3,#0x00
      000FFF 12 0A 4E         [24] 3505 	lcall	_ds3232_set_alarm1
                                   3506 ;	main.c:693: write_eeprom(0x003A, 0);
      001002 75 71 00         [24] 3507 	mov	_write_eeprom_PARM_2,#0x00
      001005 90 00 3A         [24] 3508 	mov	dptr,#0x003a
      001008 12 07 2C         [24] 3509 	lcall	_write_eeprom
      00100B 02 10 E6         [24] 3510 	ljmp	00150$
                                   3511 ;	main.c:697: for(i=0; i<num_alarms-1; i++){
      00100E                       3512 00196$:
      00100E 7D 00            [12] 3513 	mov	r5,#0x00
      001010                       3514 00159$:
      001010 AB 29            [24] 3515 	mov	r3,_num_alarms
      001012 7C 00            [12] 3516 	mov	r4,#0x00
      001014 1B               [12] 3517 	dec	r3
      001015 BB FF 01         [24] 3518 	cjne	r3,#0xff,00374$
      001018 1C               [12] 3519 	dec	r4
      001019                       3520 00374$:
      001019 8D 7A            [24] 3521 	mov	_set_alarms_sloc0_1_0,r5
      00101B 75 7B 00         [24] 3522 	mov	(_set_alarms_sloc0_1_0 + 1),#0x00
      00101E C3               [12] 3523 	clr	c
      00101F E5 7A            [12] 3524 	mov	a,_set_alarms_sloc0_1_0
      001021 9B               [12] 3525 	subb	a,r3
      001022 E5 7B            [12] 3526 	mov	a,(_set_alarms_sloc0_1_0 + 1)
      001024 64 80            [12] 3527 	xrl	a,#0x80
      001026 8C F0            [24] 3528 	mov	b,r4
      001028 63 F0 80         [24] 3529 	xrl	b,#0x80
      00102B 95 F0            [12] 3530 	subb	a,b
      00102D 40 03            [24] 3531 	jc	00375$
      00102F 02 10 E6         [24] 3532 	ljmp	00150$
      001032                       3533 00375$:
                                   3534 ;	main.c:698: int total_mins1 = (alarm_hours[i]*60)+alarm_minutes[i];
      001032 ED               [12] 3535 	mov	a,r5
      001033 24 80            [12] 3536 	add	a, #_alarm_hours
      001035 F9               [12] 3537 	mov	r1,a
      001036 87 04            [24] 3538 	mov	ar4,@r1
      001038 8C 08            [24] 3539 	mov	__mulint_PARM_2,r4
      00103A 75 09 00         [24] 3540 	mov	(__mulint_PARM_2 + 1),#0x00
      00103D 90 00 3C         [24] 3541 	mov	dptr,#0x003c
      001040 C0 05            [24] 3542 	push	ar5
      001042 12 14 BF         [24] 3543 	lcall	__mulint
      001045 AB 82            [24] 3544 	mov	r3, dpl
      001047 AC 83            [24] 3545 	mov	r4, dph
      001049 D0 05            [24] 3546 	pop	ar5
      00104B ED               [12] 3547 	mov	a,r5
      00104C 24 88            [12] 3548 	add	a, #_alarm_minutes
      00104E F9               [12] 3549 	mov	r1,a
      00104F 87 02            [24] 3550 	mov	ar2,@r1
      001051 7F 00            [12] 3551 	mov	r7,#0x00
      001053 EA               [12] 3552 	mov	a,r2
      001054 2B               [12] 3553 	add	a, r3
      001055 F5 78            [12] 3554 	mov	_set_alarms_total_mins1_50002_140,a
      001057 EF               [12] 3555 	mov	a,r7
      001058 3C               [12] 3556 	addc	a, r4
      001059 F5 79            [12] 3557 	mov	(_set_alarms_total_mins1_50002_140 + 1),a
                                   3558 ;	main.c:699: int total_mins2 = (alarm_hours[i+1]*60)+alarm_minutes[i+1];
      00105B 8D 07            [24] 3559 	mov	ar7,r5
      00105D EF               [12] 3560 	mov	a,r7
      00105E 04               [12] 3561 	inc	a
      00105F FE               [12] 3562 	mov	r6,a
      001060 24 80            [12] 3563 	add	a, #_alarm_hours
      001062 F9               [12] 3564 	mov	r1,a
      001063 87 02            [24] 3565 	mov	ar2,@r1
      001065 8A 08            [24] 3566 	mov	__mulint_PARM_2,r2
      001067 75 09 00         [24] 3567 	mov	(__mulint_PARM_2 + 1),#0x00
      00106A 90 00 3C         [24] 3568 	mov	dptr,#0x003c
      00106D C0 07            [24] 3569 	push	ar7
      00106F C0 06            [24] 3570 	push	ar6
      001071 C0 05            [24] 3571 	push	ar5
      001073 12 14 BF         [24] 3572 	lcall	__mulint
      001076 AA 82            [24] 3573 	mov	r2, dpl
      001078 AC 83            [24] 3574 	mov	r4, dph
      00107A D0 05            [24] 3575 	pop	ar5
      00107C D0 06            [24] 3576 	pop	ar6
      00107E D0 07            [24] 3577 	pop	ar7
      001080 EE               [12] 3578 	mov	a,r6
      001081 24 88            [12] 3579 	add	a, #_alarm_minutes
      001083 F9               [12] 3580 	mov	r1,a
      001084 87 06            [24] 3581 	mov	ar6,@r1
      001086 7B 00            [12] 3582 	mov	r3,#0x00
      001088 EE               [12] 3583 	mov	a,r6
      001089 2A               [12] 3584 	add	a, r2
      00108A FE               [12] 3585 	mov	r6,a
      00108B EB               [12] 3586 	mov	a,r3
      00108C 3C               [12] 3587 	addc	a, r4
      00108D FC               [12] 3588 	mov	r4,a
                                   3589 ;	main.c:700: if (total_mins>= total_mins1 && total_mins<total_mins2){
      00108E C3               [12] 3590 	clr	c
      00108F E5 76            [12] 3591 	mov	a,_set_alarms_total_mins_10002_135
      001091 95 78            [12] 3592 	subb	a,_set_alarms_total_mins1_50002_140
      001093 E5 77            [12] 3593 	mov	a,(_set_alarms_total_mins_10002_135 + 1)
      001095 64 80            [12] 3594 	xrl	a,#0x80
      001097 85 79 F0         [24] 3595 	mov	b,(_set_alarms_total_mins1_50002_140 + 1)
      00109A 63 F0 80         [24] 3596 	xrl	b,#0x80
      00109D 95 F0            [12] 3597 	subb	a,b
      00109F 40 41            [24] 3598 	jc	00160$
      0010A1 E5 76            [12] 3599 	mov	a,_set_alarms_total_mins_10002_135
      0010A3 9E               [12] 3600 	subb	a,r6
      0010A4 E5 77            [12] 3601 	mov	a,(_set_alarms_total_mins_10002_135 + 1)
      0010A6 64 80            [12] 3602 	xrl	a,#0x80
      0010A8 8C F0            [24] 3603 	mov	b,r4
      0010AA 63 F0 80         [24] 3604 	xrl	b,#0x80
      0010AD 95 F0            [12] 3605 	subb	a,b
      0010AF 50 31            [24] 3606 	jnc	00160$
                                   3607 ;	main.c:701: ds3232_set_alarm1(alarm_hours[i+1], alarm_minutes[i+1], 0);
      0010B1 0F               [12] 3608 	inc	r7
      0010B2 EF               [12] 3609 	mov	a,r7
      0010B3 24 80            [12] 3610 	add	a, #_alarm_hours
      0010B5 F9               [12] 3611 	mov	r1,a
      0010B6 87 82            [24] 3612 	mov	dpl,@r1
      0010B8 EF               [12] 3613 	mov	a,r7
      0010B9 24 88            [12] 3614 	add	a, #_alarm_minutes
      0010BB F9               [12] 3615 	mov	r1,a
      0010BC 87 74            [24] 3616 	mov	_ds3232_set_alarm1_PARM_2,@r1
      0010BE 75 75 00         [24] 3617 	mov	_ds3232_set_alarm1_PARM_3,#0x00
      0010C1 C0 05            [24] 3618 	push	ar5
      0010C3 12 0A 4E         [24] 3619 	lcall	_ds3232_set_alarm1
                                   3620 ;	main.c:702: write_eeprom(0x003A, (i+1)%num_alarms);
      0010C6 85 7A 82         [24] 3621 	mov	dpl,_set_alarms_sloc0_1_0
      0010C9 85 7B 83         [24] 3622 	mov	dph,(_set_alarms_sloc0_1_0 + 1)
      0010CC A3               [24] 3623 	inc	dptr
      0010CD 85 29 08         [24] 3624 	mov	__modsint_PARM_2,_num_alarms
      0010D0 75 09 00         [24] 3625 	mov	(__modsint_PARM_2 + 1),#0x00
      0010D3 12 15 45         [24] 3626 	lcall	__modsint
      0010D6 AE 82            [24] 3627 	mov	r6, dpl
      0010D8 8E 71            [24] 3628 	mov	_write_eeprom_PARM_2,r6
      0010DA 90 00 3A         [24] 3629 	mov	dptr,#0x003a
      0010DD 12 07 2C         [24] 3630 	lcall	_write_eeprom
      0010E0 D0 05            [24] 3631 	pop	ar5
      0010E2                       3632 00160$:
                                   3633 ;	main.c:697: for(i=0; i<num_alarms-1; i++){
      0010E2 0D               [12] 3634 	inc	r5
      0010E3 02 10 10         [24] 3635 	ljmp	00159$
      0010E6                       3636 00150$:
                                   3637 ;	main.c:708: lcd_clear();
      0010E6 12 02 22         [24] 3638 	lcall	_lcd_clear
                                   3639 ;	main.c:709: lcd_string(" All Alarms Saved");
      0010E9 90 15 D6         [24] 3640 	mov	dptr,#___str_6
      0010EC 75 F0 80         [24] 3641 	mov	b, #0x80
      0010EF 12 01 F7         [24] 3642 	lcall	_lcd_string
                                   3643 ;	main.c:710: delay(25000);
      0010F2 90 61 A8         [24] 3644 	mov	dptr,#0x61a8
      0010F5 12 01 37         [24] 3645 	lcall	_delay
                                   3646 ;	main.c:711: lcd_clear();
                                   3647 ;	main.c:712: }
      0010F8 02 02 22         [24] 3648 	ljmp	_lcd_clear
                                   3649 ;------------------------------------------------------------
                                   3650 ;Allocation info for local variables in function 'alarm_triggered'
                                   3651 ;------------------------------------------------------------
                                   3652 ;j             Allocated to registers r7 
                                   3653 ;k             Allocated to registers 
                                   3654 ;timeout       Allocated to registers r6 r7 
                                   3655 ;alarm_indx    Allocated to registers r6 
                                   3656 ;------------------------------------------------------------
                                   3657 ;	main.c:746: void alarm_triggered(void) __interrupt(0) {
                                   3658 ;	-----------------------------------------
                                   3659 ;	 function alarm_triggered
                                   3660 ;	-----------------------------------------
      0010FB                       3661 _alarm_triggered:
      0010FB C0 21            [24] 3662 	push	bits
      0010FD C0 E0            [24] 3663 	push	acc
      0010FF C0 F0            [24] 3664 	push	b
      001101 C0 82            [24] 3665 	push	dpl
      001103 C0 83            [24] 3666 	push	dph
      001105 C0 07            [24] 3667 	push	(0+7)
      001107 C0 06            [24] 3668 	push	(0+6)
      001109 C0 05            [24] 3669 	push	(0+5)
      00110B C0 04            [24] 3670 	push	(0+4)
      00110D C0 03            [24] 3671 	push	(0+3)
      00110F C0 02            [24] 3672 	push	(0+2)
      001111 C0 01            [24] 3673 	push	(0+1)
      001113 C0 00            [24] 3674 	push	(0+0)
      001115 C0 D0            [24] 3675 	push	psw
      001117 75 D0 00         [24] 3676 	mov	psw,#0x00
                                   3677 ;	main.c:747: EA = 0;
                                   3678 ;	assignBit
      00111A C2 AF            [12] 3679 	clr	_EA
                                   3680 ;	main.c:748: POWER_PULSE = 1;
                                   3681 ;	assignBit
      00111C D2 A7            [12] 3682 	setb	_POWER_PULSE
                                   3683 ;	main.c:749: lcd_init();
      00111E 12 02 45         [24] 3684 	lcall	_lcd_init
                                   3685 ;	main.c:751: lcd_clear();
      001121 12 02 22         [24] 3686 	lcall	_lcd_clear
                                   3687 ;	main.c:752: lcd_goto(0, 0);
      001124 75 52 00         [24] 3688 	mov	_lcd_goto_PARM_2,#0x00
      001127 75 82 00         [24] 3689 	mov	dpl, #0x00
      00112A 12 02 2E         [24] 3690 	lcall	_lcd_goto
                                   3691 ;	main.c:753: lcd_string(" Alarm Triggered");
      00112D 90 15 E8         [24] 3692 	mov	dptr,#___str_7
      001130 75 F0 80         [24] 3693 	mov	b, #0x80
      001133 12 01 F7         [24] 3694 	lcall	_lcd_string
                                   3695 ;	main.c:754: lcd_goto(1, 0);
      001136 75 52 00         [24] 3696 	mov	_lcd_goto_PARM_2,#0x00
      001139 75 82 01         [24] 3697 	mov	dpl, #0x01
      00113C 12 02 2E         [24] 3698 	lcall	_lcd_goto
                                   3699 ;	main.c:755: lcd_string("Take Medicine");
      00113F 90 15 F9         [24] 3700 	mov	dptr,#___str_8
      001142 75 F0 80         [24] 3701 	mov	b, #0x80
      001145 12 01 F7         [24] 3702 	lcall	_lcd_string
                                   3703 ;	main.c:756: BUZZER = 1;
                                   3704 ;	assignBit
      001148 D2 A0            [12] 3705 	setb	_BUZZER
                                   3706 ;	main.c:757: k = read_eeprom(0x003F);
      00114A 90 00 3F         [24] 3707 	mov	dptr,#0x003f
      00114D 12 07 6C         [24] 3708 	lcall	_read_eeprom
                                   3709 ;	main.c:758: k = k+1;
      001150 E5 82            [12] 3710 	mov	a,dpl
      001152 04               [12] 3711 	inc	a
      001153 F5 71            [12] 3712 	mov	_write_eeprom_PARM_2,a
                                   3713 ;	main.c:759: write_eeprom(0x003F, k);
      001155 90 00 3F         [24] 3714 	mov	dptr,#0x003f
      001158 12 07 2C         [24] 3715 	lcall	_write_eeprom
                                   3716 ;	main.c:760: for(j = 0; j < STEPS; j++) {
      00115B 7F 00            [12] 3717 	mov	r7,#0x00
      00115D                       3718 00106$:
                                   3719 ;	main.c:761: step_motor(j);
      00115D 8F 05            [24] 3720 	mov	ar5,r7
      00115F 7E 00            [12] 3721 	mov	r6,#0x00
      001161 8D 82            [24] 3722 	mov	dpl, r5
      001163 8E 83            [24] 3723 	mov	dph, r6
      001165 C0 07            [24] 3724 	push	ar7
      001167 12 06 A5         [24] 3725 	lcall	_step_motor
                                   3726 ;	main.c:762: delay_ms(3);  // Adjust delay for speed
      00116A 90 00 03         [24] 3727 	mov	dptr,#0x0003
      00116D 12 01 5B         [24] 3728 	lcall	_delay_ms
      001170 D0 07            [24] 3729 	pop	ar7
                                   3730 ;	main.c:760: for(j = 0; j < STEPS; j++) {
      001172 0F               [12] 3731 	inc	r7
      001173 BF 89 00         [24] 3732 	cjne	r7,#0x89,00147$
      001176                       3733 00147$:
      001176 40 E5            [24] 3734 	jc	00106$
                                   3735 ;	main.c:764: IN1=0;
                                   3736 ;	assignBit
      001178 C2 A4            [12] 3737 	clr	_IN1
                                   3738 ;	main.c:765: IN2=0;
                                   3739 ;	assignBit
      00117A C2 A3            [12] 3740 	clr	_IN2
                                   3741 ;	main.c:766: IN3=0;
                                   3742 ;	assignBit
      00117C C2 A2            [12] 3743 	clr	_IN3
                                   3744 ;	main.c:767: IN4=0; // to save power
                                   3745 ;	assignBit
      00117E C2 A1            [12] 3746 	clr	_IN4
                                   3747 ;	main.c:770: while (down && timeout < 5000) {  // ~5 sec timeout
      001180 7E 00            [12] 3748 	mov	r6,#0x00
      001182 7F 00            [12] 3749 	mov	r7,#0x00
      001184                       3750 00103$:
      001184 30 B5 1E         [24] 3751 	jnb	_down,00105$
      001187 C3               [12] 3752 	clr	c
      001188 EE               [12] 3753 	mov	a,r6
      001189 94 88            [12] 3754 	subb	a,#0x88
      00118B EF               [12] 3755 	mov	a,r7
      00118C 94 13            [12] 3756 	subb	a,#0x13
      00118E 50 15            [24] 3757 	jnc	00105$
                                   3758 ;	main.c:771: delay_ms(1);
      001190 90 00 01         [24] 3759 	mov	dptr,#0x0001
      001193 C0 07            [24] 3760 	push	ar7
      001195 C0 06            [24] 3761 	push	ar6
      001197 12 01 5B         [24] 3762 	lcall	_delay_ms
      00119A D0 06            [24] 3763 	pop	ar6
      00119C D0 07            [24] 3764 	pop	ar7
                                   3765 ;	main.c:772: timeout++;
      00119E 0E               [12] 3766 	inc	r6
      00119F BE 00 E2         [24] 3767 	cjne	r6,#0x00,00103$
      0011A2 0F               [12] 3768 	inc	r7
      0011A3 80 DF            [24] 3769 	sjmp	00103$
      0011A5                       3770 00105$:
                                   3771 ;	main.c:774: lcd_clear();
      0011A5 12 02 22         [24] 3772 	lcall	_lcd_clear
                                   3773 ;	main.c:775: BUZZER = 0;
                                   3774 ;	assignBit
      0011A8 C2 A0            [12] 3775 	clr	_BUZZER
                                   3776 ;	main.c:776: unsigned char alarm_indx = read_eeprom(0x003A);
      0011AA 90 00 3A         [24] 3777 	mov	dptr,#0x003a
      0011AD 12 07 6C         [24] 3778 	lcall	_read_eeprom
                                   3779 ;	main.c:777: alarm_indx = (alarm_indx+1)%num_alarms;
      0011B0 7E 00            [12] 3780 	mov	r6,#0x00
      0011B2 8E 83            [24] 3781 	mov	dph,r6
      0011B4 A3               [24] 3782 	inc	dptr
      0011B5 85 29 08         [24] 3783 	mov	__modsint_PARM_2,_num_alarms
      0011B8 8E 09            [24] 3784 	mov	(__modsint_PARM_2 + 1),r6
      0011BA 12 15 45         [24] 3785 	lcall	__modsint
      0011BD AE 82            [24] 3786 	mov	r6, dpl
                                   3787 ;	main.c:778: write_eeprom(0x003A, alarm_indx);
      0011BF 8E 71            [24] 3788 	mov	_write_eeprom_PARM_2,r6
      0011C1 90 00 3A         [24] 3789 	mov	dptr,#0x003a
      0011C4 C0 06            [24] 3790 	push	ar6
      0011C6 12 07 2C         [24] 3791 	lcall	_write_eeprom
      0011C9 D0 06            [24] 3792 	pop	ar6
                                   3793 ;	main.c:779: hr = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 1);
      0011CB 7F 00            [12] 3794 	mov	r7,#0x00
      0011CD EE               [12] 3795 	mov	a,r6
      0011CE 2E               [12] 3796 	add	a,r6
      0011CF FE               [12] 3797 	mov	r6,a
      0011D0 EF               [12] 3798 	mov	a,r7
      0011D1 33               [12] 3799 	rlc	a
      0011D2 FF               [12] 3800 	mov	r7,a
      0011D3 8E 82            [24] 3801 	mov	dpl,r6
      0011D5 8F 83            [24] 3802 	mov	dph,r7
      0011D7 A3               [24] 3803 	inc	dptr
      0011D8 C0 07            [24] 3804 	push	ar7
      0011DA C0 06            [24] 3805 	push	ar6
      0011DC 12 07 6C         [24] 3806 	lcall	_read_eeprom
      0011DF 85 82 50         [24] 3807 	mov	_hr,dpl
      0011E2 D0 06            [24] 3808 	pop	ar6
      0011E4 D0 07            [24] 3809 	pop	ar7
                                   3810 ;	main.c:780: min  = read_eeprom(EEPROM_BASE + ((alarm_indx) * 2) + 2);
      0011E6 8E 82            [24] 3811 	mov	dpl,r6
      0011E8 8F 83            [24] 3812 	mov	dph,r7
      0011EA A3               [24] 3813 	inc	dptr
      0011EB A3               [24] 3814 	inc	dptr
      0011EC 12 07 6C         [24] 3815 	lcall	_read_eeprom
      0011EF 85 82 51         [24] 3816 	mov	_min,dpl
                                   3817 ;	main.c:781: ds3232_set_alarm1(hr, min, 0);
      0011F2 85 51 74         [24] 3818 	mov	_ds3232_set_alarm1_PARM_2,_min
      0011F5 75 75 00         [24] 3819 	mov	_ds3232_set_alarm1_PARM_3,#0x00
      0011F8 85 50 82         [24] 3820 	mov	dpl, _hr
      0011FB 12 0A 4E         [24] 3821 	lcall	_ds3232_set_alarm1
                                   3822 ;	main.c:782: POWER_PULSE = 0;
                                   3823 ;	assignBit
      0011FE C2 A7            [12] 3824 	clr	_POWER_PULSE
                                   3825 ;	main.c:783: EA = 1;
                                   3826 ;	assignBit
      001200 D2 AF            [12] 3827 	setb	_EA
                                   3828 ;	main.c:784: PCON |= 0x02;
      001202 43 87 02         [24] 3829 	orl	_PCON,#0x02
                                   3830 ;	main.c:785: }
      001205 D0 D0            [24] 3831 	pop	psw
      001207 D0 00            [24] 3832 	pop	(0+0)
      001209 D0 01            [24] 3833 	pop	(0+1)
      00120B D0 02            [24] 3834 	pop	(0+2)
      00120D D0 03            [24] 3835 	pop	(0+3)
      00120F D0 04            [24] 3836 	pop	(0+4)
      001211 D0 05            [24] 3837 	pop	(0+5)
      001213 D0 06            [24] 3838 	pop	(0+6)
      001215 D0 07            [24] 3839 	pop	(0+7)
      001217 D0 83            [24] 3840 	pop	dph
      001219 D0 82            [24] 3841 	pop	dpl
      00121B D0 F0            [24] 3842 	pop	b
      00121D D0 E0            [24] 3843 	pop	acc
      00121F D0 21            [24] 3844 	pop	bits
      001221 02 00 5C         [24] 3845 	ljmp	sdcc_atomic_maybe_rollback
                                   3846 ;------------------------------------------------------------
                                   3847 ;Allocation info for local variables in function 'configuration'
                                   3848 ;------------------------------------------------------------
                                   3849 ;	main.c:787: void configuration(void) __interrupt(2) {
                                   3850 ;	-----------------------------------------
                                   3851 ;	 function configuration
                                   3852 ;	-----------------------------------------
      001224                       3853 _configuration:
      001224 C0 21            [24] 3854 	push	bits
      001226 C0 E0            [24] 3855 	push	acc
      001228 C0 F0            [24] 3856 	push	b
      00122A C0 82            [24] 3857 	push	dpl
      00122C C0 83            [24] 3858 	push	dph
      00122E C0 07            [24] 3859 	push	(0+7)
      001230 C0 06            [24] 3860 	push	(0+6)
      001232 C0 05            [24] 3861 	push	(0+5)
      001234 C0 04            [24] 3862 	push	(0+4)
      001236 C0 03            [24] 3863 	push	(0+3)
      001238 C0 02            [24] 3864 	push	(0+2)
      00123A C0 01            [24] 3865 	push	(0+1)
      00123C C0 00            [24] 3866 	push	(0+0)
      00123E C0 D0            [24] 3867 	push	psw
      001240 75 D0 00         [24] 3868 	mov	psw,#0x00
                                   3869 ;	main.c:788: EA = 0;
                                   3870 ;	assignBit
      001243 C2 AF            [12] 3871 	clr	_EA
                                   3872 ;	main.c:789: POWER_PULSE = 1;
                                   3873 ;	assignBit
      001245 D2 A7            [12] 3874 	setb	_POWER_PULSE
                                   3875 ;	main.c:790: lcd_init();
      001247 12 02 45         [24] 3876 	lcall	_lcd_init
                                   3877 ;	main.c:791: lcd_clear();
      00124A 12 02 22         [24] 3878 	lcall	_lcd_clear
                                   3879 ;	main.c:792: lcd_goto(0,0);
      00124D 75 52 00         [24] 3880 	mov	_lcd_goto_PARM_2,#0x00
      001250 75 82 00         [24] 3881 	mov	dpl, #0x00
      001253 12 02 2E         [24] 3882 	lcall	_lcd_goto
                                   3883 ;	main.c:793: lcd_string(" <- to see TIME");
      001256 90 16 07         [24] 3884 	mov	dptr,#___str_9
      001259 75 F0 80         [24] 3885 	mov	b, #0x80
      00125C 12 01 F7         [24] 3886 	lcall	_lcd_string
                                   3887 ;	main.c:794: lcd_goto(1,1);
      00125F 75 52 01         [24] 3888 	mov	_lcd_goto_PARM_2,#0x01
      001262 75 82 01         [24] 3889 	mov	dpl, #0x01
      001265 12 02 2E         [24] 3890 	lcall	_lcd_goto
                                   3891 ;	main.c:795: lcd_string("-> to CONFIGURE");
      001268 90 16 17         [24] 3892 	mov	dptr,#___str_10
      00126B 75 F0 80         [24] 3893 	mov	b, #0x80
      00126E 12 01 F7         [24] 3894 	lcall	_lcd_string
                                   3895 ;	main.c:796: idle_counter = 0;
      001271 E4               [12] 3896 	clr	a
      001272 F5 2A            [12] 3897 	mov	_idle_counter,a
      001274 F5 2B            [12] 3898 	mov	(_idle_counter + 1),a
                                   3899 ;	main.c:797: while(next && back){
      001276                       3900 00104$:
      001276 30 B6 29         [24] 3901 	jnb	_next,00106$
      001279 30 B7 26         [24] 3902 	jnb	_back,00106$
                                   3903 ;	main.c:798: if(++idle_counter>1000){
      00127C 05 2A            [12] 3904 	inc	_idle_counter
      00127E E4               [12] 3905 	clr	a
      00127F B5 2A 02         [24] 3906 	cjne	a,_idle_counter,00214$
      001282 05 2B            [12] 3907 	inc	(_idle_counter + 1)
      001284                       3908 00214$:
      001284 C3               [12] 3909 	clr	c
      001285 74 E8            [12] 3910 	mov	a,#0xe8
      001287 95 2A            [12] 3911 	subb	a,_idle_counter
      001289 74 03            [12] 3912 	mov	a,#0x03
      00128B 95 2B            [12] 3913 	subb	a,(_idle_counter + 1)
      00128D 50 0B            [24] 3914 	jnc	00102$
                                   3915 ;	main.c:799: lcd_clear();
      00128F 12 02 22         [24] 3916 	lcall	_lcd_clear
                                   3917 ;	main.c:800: idle_counter = 0;
      001292 E4               [12] 3918 	clr	a
      001293 F5 2A            [12] 3919 	mov	_idle_counter,a
      001295 F5 2B            [12] 3920 	mov	(_idle_counter + 1),a
                                   3921 ;	main.c:801: return;
      001297 02 13 A2         [24] 3922 	ljmp	00126$
      00129A                       3923 00102$:
                                   3924 ;	main.c:803: delay(500);
      00129A 90 01 F4         [24] 3925 	mov	dptr,#0x01f4
      00129D 12 01 37         [24] 3926 	lcall	_delay
      0012A0 80 D4            [24] 3927 	sjmp	00104$
      0012A2                       3928 00106$:
                                   3929 ;	main.c:805: lcd_clear();
      0012A2 12 02 22         [24] 3930 	lcall	_lcd_clear
                                   3931 ;	main.c:806: if(!next){
      0012A5 30 B6 03         [24] 3932 	jnb	_next,00216$
      0012A8 02 13 27         [24] 3933 	ljmp	00124$
      0012AB                       3934 00216$:
                                   3935 ;	main.c:807: lcd_clear();
      0012AB 12 02 22         [24] 3936 	lcall	_lcd_clear
                                   3937 ;	main.c:808: lcd_goto(1,0);
      0012AE 75 52 00         [24] 3938 	mov	_lcd_goto_PARM_2,#0x00
      0012B1 75 82 01         [24] 3939 	mov	dpl, #0x01
      0012B4 12 02 2E         [24] 3940 	lcall	_lcd_goto
                                   3941 ;	main.c:809: lcd_string(" Edit Mode");
      0012B7 90 16 27         [24] 3942 	mov	dptr,#___str_11
      0012BA 75 F0 80         [24] 3943 	mov	b, #0x80
      0012BD 12 01 F7         [24] 3944 	lcall	_lcd_string
                                   3945 ;	main.c:810: delay(30000);
      0012C0 90 75 30         [24] 3946 	mov	dptr,#0x7530
      0012C3 12 01 37         [24] 3947 	lcall	_delay
                                   3948 ;	main.c:811: lcd_clear();
      0012C6 12 02 22         [24] 3949 	lcall	_lcd_clear
                                   3950 ;	main.c:812: lcd_string(" <- to set ALARM");
      0012C9 90 16 32         [24] 3951 	mov	dptr,#___str_12
      0012CC 75 F0 80         [24] 3952 	mov	b, #0x80
      0012CF 12 01 F7         [24] 3953 	lcall	_lcd_string
                                   3954 ;	main.c:813: lcd_goto(1,1);
      0012D2 75 52 01         [24] 3955 	mov	_lcd_goto_PARM_2,#0x01
      0012D5 75 82 01         [24] 3956 	mov	dpl, #0x01
      0012D8 12 02 2E         [24] 3957 	lcall	_lcd_goto
                                   3958 ;	main.c:814: lcd_string(" -> to set Clock");
      0012DB 90 16 43         [24] 3959 	mov	dptr,#___str_13
      0012DE 75 F0 80         [24] 3960 	mov	b, #0x80
      0012E1 12 01 F7         [24] 3961 	lcall	_lcd_string
                                   3962 ;	main.c:815: idle_counter = 0;
      0012E4 E4               [12] 3963 	clr	a
      0012E5 F5 2A            [12] 3964 	mov	_idle_counter,a
      0012E7 F5 2B            [12] 3965 	mov	(_idle_counter + 1),a
                                   3966 ;	main.c:816: while(next && back){
      0012E9                       3967 00110$:
      0012E9 30 B6 24         [24] 3968 	jnb	_next,00112$
      0012EC 30 B7 21         [24] 3969 	jnb	_back,00112$
                                   3970 ;	main.c:817: if(++idle_counter>1000){
      0012EF 05 2A            [12] 3971 	inc	_idle_counter
      0012F1 E4               [12] 3972 	clr	a
      0012F2 B5 2A 02         [24] 3973 	cjne	a,_idle_counter,00219$
      0012F5 05 2B            [12] 3974 	inc	(_idle_counter + 1)
      0012F7                       3975 00219$:
      0012F7 C3               [12] 3976 	clr	c
      0012F8 74 E8            [12] 3977 	mov	a,#0xe8
      0012FA 95 2A            [12] 3978 	subb	a,_idle_counter
      0012FC 74 03            [12] 3979 	mov	a,#0x03
      0012FE 95 2B            [12] 3980 	subb	a,(_idle_counter + 1)
      001300 50 06            [24] 3981 	jnc	00108$
                                   3982 ;	main.c:818: lcd_clear();
      001302 12 02 22         [24] 3983 	lcall	_lcd_clear
                                   3984 ;	main.c:819: return;
      001305 02 13 A2         [24] 3985 	ljmp	00126$
      001308                       3986 00108$:
                                   3987 ;	main.c:821: delay(500);
      001308 90 01 F4         [24] 3988 	mov	dptr,#0x01f4
      00130B 12 01 37         [24] 3989 	lcall	_delay
      00130E 80 D9            [24] 3990 	sjmp	00110$
      001310                       3991 00112$:
                                   3992 ;	main.c:823: lcd_clear();
      001310 12 02 22         [24] 3993 	lcall	_lcd_clear
                                   3994 ;	main.c:824: if(!next){
      001313 20 B6 06         [24] 3995 	jb	_next,00116$
                                   3996 ;	main.c:825: set_clock();
      001316 12 0A E7         [24] 3997 	lcall	_set_clock
      001319 02 13 9B         [24] 3998 	ljmp	00125$
      00131C                       3999 00116$:
                                   4000 ;	main.c:827: else if(!back){
      00131C 30 B7 03         [24] 4001 	jnb	_back,00222$
      00131F 02 13 9B         [24] 4002 	ljmp	00125$
      001322                       4003 00222$:
                                   4004 ;	main.c:828: set_alarms();
      001322 12 0C 1F         [24] 4005 	lcall	_set_alarms
      001325 80 74            [24] 4006 	sjmp	00125$
      001327                       4007 00124$:
                                   4008 ;	main.c:831: else if(!back){
      001327 20 B7 71         [24] 4009 	jb	_back,00125$
                                   4010 ;	main.c:832: idle_counter = 0;
      00132A E4               [12] 4011 	clr	a
      00132B F5 2A            [12] 4012 	mov	_idle_counter,a
      00132D F5 2B            [12] 4013 	mov	(_idle_counter + 1),a
                                   4014 ;	main.c:833: while(++idle_counter<1000){
      00132F                       4015 00118$:
      00132F 05 2A            [12] 4016 	inc	_idle_counter
      001331 E4               [12] 4017 	clr	a
      001332 B5 2A 02         [24] 4018 	cjne	a,_idle_counter,00224$
      001335 05 2B            [12] 4019 	inc	(_idle_counter + 1)
      001337                       4020 00224$:
      001337 C3               [12] 4021 	clr	c
      001338 E5 2A            [12] 4022 	mov	a,_idle_counter
      00133A 94 E8            [12] 4023 	subb	a,#0xe8
      00133C E5 2B            [12] 4024 	mov	a,(_idle_counter + 1)
      00133E 94 03            [12] 4025 	subb	a,#0x03
      001340 50 59            [24] 4026 	jnc	00125$
                                   4027 ;	main.c:834: ds3232_get_time_date(&h, &m, &s, &day, &d, &mo, &y);
      001342 75 59 2D         [24] 4028 	mov	_ds3232_get_time_date_PARM_2,#_m
      001345 75 5A 00         [24] 4029 	mov	(_ds3232_get_time_date_PARM_2 + 1),#0x00
      001348 75 5B 40         [24] 4030 	mov	(_ds3232_get_time_date_PARM_2 + 2),#0x40
      00134B 75 5C 2E         [24] 4031 	mov	_ds3232_get_time_date_PARM_3,#_s
      00134E 75 5D 00         [24] 4032 	mov	(_ds3232_get_time_date_PARM_3 + 1),#0x00
      001351 75 5E 40         [24] 4033 	mov	(_ds3232_get_time_date_PARM_3 + 2),#0x40
      001354 75 5F 32         [24] 4034 	mov	_ds3232_get_time_date_PARM_4,#_day
      001357 75 60 00         [24] 4035 	mov	(_ds3232_get_time_date_PARM_4 + 1),#0x00
      00135A 75 61 40         [24] 4036 	mov	(_ds3232_get_time_date_PARM_4 + 2),#0x40
      00135D 75 62 2F         [24] 4037 	mov	_ds3232_get_time_date_PARM_5,#_d
      001360 75 63 00         [24] 4038 	mov	(_ds3232_get_time_date_PARM_5 + 1),#0x00
      001363 75 64 40         [24] 4039 	mov	(_ds3232_get_time_date_PARM_5 + 2),#0x40
      001366 75 65 30         [24] 4040 	mov	_ds3232_get_time_date_PARM_6,#_mo
      001369 75 66 00         [24] 4041 	mov	(_ds3232_get_time_date_PARM_6 + 1),#0x00
      00136C 75 67 40         [24] 4042 	mov	(_ds3232_get_time_date_PARM_6 + 2),#0x40
      00136F 75 68 31         [24] 4043 	mov	_ds3232_get_time_date_PARM_7,#_y
      001372 75 69 00         [24] 4044 	mov	(_ds3232_get_time_date_PARM_7 + 1),#0x00
      001375 75 6A 40         [24] 4045 	mov	(_ds3232_get_time_date_PARM_7 + 2),#0x40
      001378 90 00 2C         [24] 4046 	mov	dptr,#_h
      00137B 75 F0 40         [24] 4047 	mov	b, #0x40
      00137E 12 04 44         [24] 4048 	lcall	_ds3232_get_time_date
                                   4049 ;	main.c:835: display(h, m, s, d, mo, y, day);
      001381 85 2D 6B         [24] 4050 	mov	_display_PARM_2,_m
      001384 85 2E 6C         [24] 4051 	mov	_display_PARM_3,_s
      001387 85 2F 6D         [24] 4052 	mov	_display_PARM_4,_d
      00138A 85 30 6E         [24] 4053 	mov	_display_PARM_5,_mo
      00138D 85 31 6F         [24] 4054 	mov	_display_PARM_6,_y
      001390 85 32 70         [24] 4055 	mov	_display_PARM_7,_day
      001393 85 2C 82         [24] 4056 	mov	dpl, _h
      001396 12 05 73         [24] 4057 	lcall	_display
      001399 80 94            [24] 4058 	sjmp	00118$
      00139B                       4059 00125$:
                                   4060 ;	main.c:838: POWER_PULSE = 0;
                                   4061 ;	assignBit
      00139B C2 A7            [12] 4062 	clr	_POWER_PULSE
                                   4063 ;	main.c:839: EA = 1;
                                   4064 ;	assignBit
      00139D D2 AF            [12] 4065 	setb	_EA
                                   4066 ;	main.c:840: PCON |= 0x02;
      00139F 43 87 02         [24] 4067 	orl	_PCON,#0x02
      0013A2                       4068 00126$:
                                   4069 ;	main.c:841: }
      0013A2 D0 D0            [24] 4070 	pop	psw
      0013A4 D0 00            [24] 4071 	pop	(0+0)
      0013A6 D0 01            [24] 4072 	pop	(0+1)
      0013A8 D0 02            [24] 4073 	pop	(0+2)
      0013AA D0 03            [24] 4074 	pop	(0+3)
      0013AC D0 04            [24] 4075 	pop	(0+4)
      0013AE D0 05            [24] 4076 	pop	(0+5)
      0013B0 D0 06            [24] 4077 	pop	(0+6)
      0013B2 D0 07            [24] 4078 	pop	(0+7)
      0013B4 D0 83            [24] 4079 	pop	dph
      0013B6 D0 82            [24] 4080 	pop	dpl
      0013B8 D0 F0            [24] 4081 	pop	b
      0013BA D0 E0            [24] 4082 	pop	acc
      0013BC D0 21            [24] 4083 	pop	bits
      0013BE 02 00 5C         [24] 4084 	ljmp	sdcc_atomic_maybe_rollback
                                   4085 ;------------------------------------------------------------
                                   4086 ;Allocation info for local variables in function 'main'
                                   4087 ;------------------------------------------------------------
                                   4088 ;checker       Allocated with name '_main_checker_10001_169'
                                   4089 ;------------------------------------------------------------
                                   4090 ;	main.c:843: void main() {
                                   4091 ;	-----------------------------------------
                                   4092 ;	 function main
                                   4093 ;	-----------------------------------------
      0013C1                       4094 _main:
                                   4095 ;	main.c:844: EA  = 1;   // Enable global interrupts
                                   4096 ;	assignBit
      0013C1 D2 AF            [12] 4097 	setb	_EA
                                   4098 ;	main.c:845: EX0 = 1;   // Enable INT0 (P3.2)
                                   4099 ;	assignBit
      0013C3 D2 A8            [12] 4100 	setb	_EX0
                                   4101 ;	main.c:846: IT0 = 1;   // Set INT0 to level-triggered
                                   4102 ;	assignBit
      0013C5 D2 88            [12] 4103 	setb	_IT0
                                   4104 ;	main.c:847: EX1 = 1;   // Enable INT1 (P3.3)
                                   4105 ;	assignBit
      0013C7 D2 AA            [12] 4106 	setb	_EX1
                                   4107 ;	main.c:848: IT1 = 1;   // Set INT1 to level-triggered
                                   4108 ;	assignBit
      0013C9 D2 8A            [12] 4109 	setb	_IT1
                                   4110 ;	main.c:849: IP |= 0x04;
      0013CB 43 B8 04         [24] 4111 	orl	_IP,#0x04
                                   4112 ;	main.c:851: BUZZER = 0;
                                   4113 ;	assignBit
      0013CE C2 A0            [12] 4114 	clr	_BUZZER
                                   4115 ;	main.c:852: POWER_PULSE = 1;
                                   4116 ;	assignBit
      0013D0 D2 A7            [12] 4117 	setb	_POWER_PULSE
                                   4118 ;	main.c:855: lcd_init();     // LCD init
      0013D2 12 02 45         [24] 4119 	lcall	_lcd_init
                                   4120 ;	main.c:856: i2c_init();     // I2C init
      0013D5 12 02 E0         [24] 4121 	lcall	_i2c_init
                                   4122 ;	main.c:857: ds3232_init();  // DS3232 RTC init
      0013D8 12 03 D6         [24] 4123 	lcall	_ds3232_init
                                   4124 ;	main.c:860: checker[0] = read_eeprom(0x003B);
      0013DB 90 00 3B         [24] 4125 	mov	dptr,#0x003b
      0013DE 12 07 6C         [24] 4126 	lcall	_read_eeprom
      0013E1 E5 82            [12] 4127 	mov	a, dpl
      0013E3 F5 7C            [12] 4128 	mov	_main_checker_10001_169,a
                                   4129 ;	main.c:861: checker[1] = read_eeprom(0x003C);
      0013E5 90 00 3C         [24] 4130 	mov	dptr,#0x003c
      0013E8 12 07 6C         [24] 4131 	lcall	_read_eeprom
      0013EB E5 82            [12] 4132 	mov	a, dpl
      0013ED F5 7D            [12] 4133 	mov	(_main_checker_10001_169 + 0x0001),a
                                   4134 ;	main.c:862: checker[2] = read_eeprom(0x003D);
      0013EF 90 00 3D         [24] 4135 	mov	dptr,#0x003d
      0013F2 12 07 6C         [24] 4136 	lcall	_read_eeprom
      0013F5 E5 82            [12] 4137 	mov	a, dpl
      0013F7 F5 7E            [12] 4138 	mov	(_main_checker_10001_169 + 0x0002),a
                                   4139 ;	main.c:863: checker[3] = read_eeprom(0x003E);
      0013F9 90 00 3E         [24] 4140 	mov	dptr,#0x003e
      0013FC 12 07 6C         [24] 4141 	lcall	_read_eeprom
      0013FF E5 82            [12] 4142 	mov	a, dpl
      001401 F5 7F            [12] 4143 	mov	(_main_checker_10001_169 + 0x0003),a
                                   4144 ;	main.c:864: if(!(checker[0] == 'I' && checker[1] == 'N' && checker[2] == 'I' && checker[3] == 'T')){
      001403 74 49            [12] 4145 	mov	a,#0x49
      001405 B5 7C 12         [24] 4146 	cjne	a,_main_checker_10001_169,00101$
      001408 74 4E            [12] 4147 	mov	a,#0x4e
      00140A B5 7D 0D         [24] 4148 	cjne	a,(_main_checker_10001_169 + 0x0001),00101$
      00140D 74 49            [12] 4149 	mov	a,#0x49
      00140F B5 7E 08         [24] 4150 	cjne	a,(_main_checker_10001_169 + 0x0002),00101$
      001412 74 54            [12] 4151 	mov	a,#0x54
      001414 B5 7F 03         [24] 4152 	cjne	a,(_main_checker_10001_169 + 0x0003),00142$
      001417 02 14 7F         [24] 4153 	ljmp	00102$
      00141A                       4154 00142$:
      00141A                       4155 00101$:
                                   4156 ;	main.c:865: lcd_clear();
      00141A 12 02 22         [24] 4157 	lcall	_lcd_clear
                                   4158 ;	main.c:866: set_alarms();
      00141D 12 0C 1F         [24] 4159 	lcall	_set_alarms
                                   4160 ;	main.c:867: lcd_init();
      001420 12 02 45         [24] 4161 	lcall	_lcd_init
                                   4162 ;	main.c:868: lcd_cmd(0x80);
      001423 75 82 80         [24] 4163 	mov	dpl, #0x80
      001426 12 01 B5         [24] 4164 	lcall	_lcd_cmd
                                   4165 ;	main.c:869: write_eeprom(0x003B, 'I');
      001429 75 71 49         [24] 4166 	mov	_write_eeprom_PARM_2,#0x49
      00142C 90 00 3B         [24] 4167 	mov	dptr,#0x003b
      00142F 12 07 2C         [24] 4168 	lcall	_write_eeprom
                                   4169 ;	main.c:870: write_eeprom(0x003C, 'N');
      001432 75 71 4E         [24] 4170 	mov	_write_eeprom_PARM_2,#0x4e
      001435 90 00 3C         [24] 4171 	mov	dptr,#0x003c
      001438 12 07 2C         [24] 4172 	lcall	_write_eeprom
                                   4173 ;	main.c:871: write_eeprom(0x003D, 'I');
      00143B 75 71 49         [24] 4174 	mov	_write_eeprom_PARM_2,#0x49
      00143E 90 00 3D         [24] 4175 	mov	dptr,#0x003d
      001441 12 07 2C         [24] 4176 	lcall	_write_eeprom
                                   4177 ;	main.c:872: write_eeprom(0x003E, 'T');
      001444 75 71 54         [24] 4178 	mov	_write_eeprom_PARM_2,#0x54
      001447 90 00 3E         [24] 4179 	mov	dptr,#0x003e
      00144A 12 07 2C         [24] 4180 	lcall	_write_eeprom
                                   4181 ;	main.c:873: write_eeprom(0x003F, 0x0);
      00144D 75 71 00         [24] 4182 	mov	_write_eeprom_PARM_2,#0x00
      001450 90 00 3F         [24] 4183 	mov	dptr,#0x003f
      001453 12 07 2C         [24] 4184 	lcall	_write_eeprom
                                   4185 ;	main.c:874: write_eeprom(0x003A, 0x0);
      001456 75 71 00         [24] 4186 	mov	_write_eeprom_PARM_2,#0x00
      001459 90 00 3A         [24] 4187 	mov	dptr,#0x003a
      00145C 12 07 2C         [24] 4188 	lcall	_write_eeprom
                                   4189 ;	main.c:875: lcd_clear();
      00145F 12 02 22         [24] 4190 	lcall	_lcd_clear
                                   4191 ;	main.c:876: lcd_goto(0,0);
      001462 75 52 00         [24] 4192 	mov	_lcd_goto_PARM_2,#0x00
      001465 75 82 00         [24] 4193 	mov	dpl, #0x00
      001468 12 02 2E         [24] 4194 	lcall	_lcd_goto
                                   4195 ;	main.c:877: lcd_string(" NOW INIT");
      00146B 90 16 54         [24] 4196 	mov	dptr,#___str_14
      00146E 75 F0 80         [24] 4197 	mov	b, #0x80
      001471 12 01 F7         [24] 4198 	lcall	_lcd_string
                                   4199 ;	main.c:878: delay(30000);
      001474 90 75 30         [24] 4200 	mov	dptr,#0x7530
      001477 12 01 37         [24] 4201 	lcall	_delay
                                   4202 ;	main.c:879: lcd_clear();
      00147A 12 02 22         [24] 4203 	lcall	_lcd_clear
      00147D 80 1E            [24] 4204 	sjmp	00103$
      00147F                       4205 00102$:
                                   4206 ;	main.c:883: lcd_clear();
      00147F 12 02 22         [24] 4207 	lcall	_lcd_clear
                                   4208 ;	main.c:884: lcd_goto(0,0);
      001482 75 52 00         [24] 4209 	mov	_lcd_goto_PARM_2,#0x00
      001485 75 82 00         [24] 4210 	mov	dpl, #0x00
      001488 12 02 2E         [24] 4211 	lcall	_lcd_goto
                                   4212 ;	main.c:885: lcd_string(" PREV INIT");
      00148B 90 16 5E         [24] 4213 	mov	dptr,#___str_15
      00148E 75 F0 80         [24] 4214 	mov	b, #0x80
      001491 12 01 F7         [24] 4215 	lcall	_lcd_string
                                   4216 ;	main.c:886: delay(30000);
      001494 90 75 30         [24] 4217 	mov	dptr,#0x7530
      001497 12 01 37         [24] 4218 	lcall	_delay
                                   4219 ;	main.c:887: lcd_clear();
      00149A 12 02 22         [24] 4220 	lcall	_lcd_clear
      00149D                       4221 00103$:
                                   4222 ;	main.c:889: POWER_PULSE = 0;
                                   4223 ;	assignBit
      00149D C2 A7            [12] 4224 	clr	_POWER_PULSE
                                   4225 ;	main.c:890: PCON |= 0x02;
      00149F 43 87 02         [24] 4226 	orl	_PCON,#0x02
                                   4227 ;	main.c:891: while(1);
      0014A2                       4228 00108$:
                                   4229 ;	main.c:892: }
      0014A2 80 FE            [24] 4230 	sjmp	00108$
                                   4231 	.area CSEG    (CODE)
                                   4232 	.area CONST   (CODE)
                                   4233 	.area CONST   (CODE)
      00157F                       4234 ___str_0:
      00157F 20 48 6F 77 20 6D 61  4235 	.ascii " How many alarms"
             6E 79 20 61 6C 61 72
             6D 73
      00158F 00                    4236 	.db 0x00
                                   4237 	.area CSEG    (CODE)
                                   4238 	.area CONST   (CODE)
      001590                       4239 ___str_1:
      001590 20 54 69 6D 65 20 6C  4240 	.ascii " Time limit exc!"
             69 6D 69 74 20 65 78
             63 21
      0015A0 00                    4241 	.db 0x00
                                   4242 	.area CSEG    (CODE)
                                   4243 	.area CONST   (CODE)
      0015A1                       4244 ___str_2:
      0015A1 20 53 65 74 20 48 6F  4245 	.ascii " Set Hour Alarm "
             75 72 20 41 6C 61 72
             6D 20
      0015B1 00                    4246 	.db 0x00
                                   4247 	.area CSEG    (CODE)
                                   4248 	.area CONST   (CODE)
      0015B2                       4249 ___str_3:
      0015B2 41 6C 61 72 6D 20     4250 	.ascii "Alarm "
      0015B8 00                    4251 	.db 0x00
                                   4252 	.area CSEG    (CODE)
                                   4253 	.area CONST   (CODE)
      0015B9                       4254 ___str_4:
      0015B9 20 53 65 74 20 4D 69  4255 	.ascii " Set Min Alarm "
             6E 20 41 6C 61 72 6D
             20
      0015C8 00                    4256 	.db 0x00
                                   4257 	.area CSEG    (CODE)
                                   4258 	.area CONST   (CODE)
      0015C9                       4259 ___str_5:
      0015C9 20 41 6C 61 72 6D 20  4260 	.ascii " Alarm Saved"
             53 61 76 65 64
      0015D5 00                    4261 	.db 0x00
                                   4262 	.area CSEG    (CODE)
                                   4263 	.area CONST   (CODE)
      0015D6                       4264 ___str_6:
      0015D6 20 41 6C 6C 20 41 6C  4265 	.ascii " All Alarms Saved"
             61 72 6D 73 20 53 61
             76 65 64
      0015E7 00                    4266 	.db 0x00
                                   4267 	.area CSEG    (CODE)
                                   4268 	.area CONST   (CODE)
      0015E8                       4269 ___str_7:
      0015E8 20 41 6C 61 72 6D 20  4270 	.ascii " Alarm Triggered"
             54 72 69 67 67 65 72
             65 64
      0015F8 00                    4271 	.db 0x00
                                   4272 	.area CSEG    (CODE)
                                   4273 	.area CONST   (CODE)
      0015F9                       4274 ___str_8:
      0015F9 54 61 6B 65 20 4D 65  4275 	.ascii "Take Medicine"
             64 69 63 69 6E 65
      001606 00                    4276 	.db 0x00
                                   4277 	.area CSEG    (CODE)
                                   4278 	.area CONST   (CODE)
      001607                       4279 ___str_9:
      001607 20 3C 2D 20 74 6F 20  4280 	.ascii " <- to see TIME"
             73 65 65 20 54 49 4D
             45
      001616 00                    4281 	.db 0x00
                                   4282 	.area CSEG    (CODE)
                                   4283 	.area CONST   (CODE)
      001617                       4284 ___str_10:
      001617 2D 3E 20 74 6F 20 43  4285 	.ascii "-> to CONFIGURE"
             4F 4E 46 49 47 55 52
             45
      001626 00                    4286 	.db 0x00
                                   4287 	.area CSEG    (CODE)
                                   4288 	.area CONST   (CODE)
      001627                       4289 ___str_11:
      001627 20 45 64 69 74 20 4D  4290 	.ascii " Edit Mode"
             6F 64 65
      001631 00                    4291 	.db 0x00
                                   4292 	.area CSEG    (CODE)
                                   4293 	.area CONST   (CODE)
      001632                       4294 ___str_12:
      001632 20 3C 2D 20 74 6F 20  4295 	.ascii " <- to set ALARM"
             73 65 74 20 41 4C 41
             52 4D
      001642 00                    4296 	.db 0x00
                                   4297 	.area CSEG    (CODE)
                                   4298 	.area CONST   (CODE)
      001643                       4299 ___str_13:
      001643 20 2D 3E 20 74 6F 20  4300 	.ascii " -> to set Clock"
             73 65 74 20 43 6C 6F
             63 6B
      001653 00                    4301 	.db 0x00
                                   4302 	.area CSEG    (CODE)
                                   4303 	.area CONST   (CODE)
      001654                       4304 ___str_14:
      001654 20 4E 4F 57 20 49 4E  4305 	.ascii " NOW INIT"
             49 54
      00165D 00                    4306 	.db 0x00
                                   4307 	.area CSEG    (CODE)
                                   4308 	.area CONST   (CODE)
      00165E                       4309 ___str_15:
      00165E 20 50 52 45 56 20 49  4310 	.ascii " PREV INIT"
             4E 49 54
      001668 00                    4311 	.db 0x00
                                   4312 	.area CSEG    (CODE)
                                   4313 	.area XINIT   (CODE)
                                   4314 	.area CABS    (ABS,CODE)

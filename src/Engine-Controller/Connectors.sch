EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "Liquid Engine Microcontroller Connectors"
Date "2021-06-29"
Rev "1.0"
Comp "Sun Devil Rocketry "
Comment1 "Author: Colton Acosta"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2380 2565 0    50   Input ~ 0
PD0
Text GLabel 2390 3240 0    50   Input ~ 0
PD1
Text GLabel 2375 3935 0    50   Input ~ 0
PD2
Text GLabel 2385 4670 0    50   Input ~ 0
PD3
Text GLabel 2375 5365 0    50   Input ~ 0
PD4
Text GLabel 2365 6045 0    50   Input ~ 0
PD5
Text GLabel 5500 5200 0    50   Input ~ 0
SWCLK
Text GLabel 5500 5000 0    50   Input ~ 0
SWDIO
$Comp
L Engine-Controller:Earth #PWR?
U 1 1 6193D92B
P 5750 6400
AR Path="/60DAAA3E/6193D92B" Ref="#PWR?"  Part="1" 
AR Path="/60E24895/6193D92B" Ref="#PWR06"  Part="1" 
AR Path="/6193D92B" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5750 6150 50  0001 C CNN
F 1 "Earth" H 5750 6250 50  0001 C CNN
F 2 "" H 5750 6400 50  0001 C CNN
F 3 "~" H 5750 6400 50  0001 C CNN
	1    5750 6400
	1    0    0    -1  
$EndComp
Text Notes 5700 4150 0    50   ~ 0
SWD Programmer\n
$Comp
L Engine-Controller:0901471110 P7
U 1 1 61BF9E85
P 8150 4625
F 0 "P7" H 8678 4228 60  0000 L CNN
F 1 "0901471110" H 8678 4122 60  0001 L CNN
F 2 "Engine-Controller:0901471110" H 8300 3425 60  0001 C CNN
F 3 "" H 8150 4625 60  0001 C CNN
	1    8150 4625
	1    0    0    -1  
$EndComp
Text GLabel 7700 4625 0    50   Input ~ 0
A0
Wire Wire Line
	7700 4625 8150 4625
Text GLabel 7700 4725 0    50   Input ~ 0
A1
Text GLabel 7700 4825 0    50   Input ~ 0
A2
Text GLabel 7700 4925 0    50   Input ~ 0
A3
Text GLabel 7700 5025 0    50   Input ~ 0
A4
Text GLabel 7700 5125 0    50   Input ~ 0
A5
Text GLabel 7700 5225 0    50   Input ~ 0
A6
Wire Wire Line
	7700 4725 8150 4725
Wire Wire Line
	7700 4825 8150 4825
Wire Wire Line
	7700 4925 8150 4925
Wire Wire Line
	7700 5025 8150 5025
Wire Wire Line
	7700 5125 8150 5125
Wire Wire Line
	7700 5225 8150 5225
$Comp
L Engine-Controller:Earth #PWR07
U 1 1 61C08552
P 8150 5675
F 0 "#PWR07" H 8150 5425 50  0001 C CNN
F 1 "Earth" H 8150 5525 50  0001 C CNN
F 2 "" H 8150 5675 50  0001 C CNN
F 3 "~" H 8150 5675 50  0001 C CNN
	1    8150 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5525 8150 5675
Wire Wire Line
	8150 5425 8000 5425
Wire Wire Line
	8000 5425 8000 4475
Wire Notes Line
	8950 4025 8950 5925
Wire Notes Line
	8950 5925 7300 5925
Wire Notes Line
	7300 5925 7300 4025
Wire Notes Line
	7300 4025 8950 4025
Text Notes 7800 4150 0    50   ~ 0
Analog-to-Digital Converter\n
Text GLabel 8000 4475 1    50   Input ~ 0
3.3V
NoConn ~ 8150 5325
$Comp
L Engine-Controller:SBH11-PBPC-D10-RA-BK P3
U 1 1 6161DED8
P 5850 4400
F 0 "P3" H 6175 4550 60  0000 C CNN
F 1 "SBH11-PBPC-D10-RA-BK" H 6092 4581 60  0001 C CNN
F 2 "Engine-Controller:SBH11-PBPC-D10-RA-BK" H 6250 3340 60  0001 C CNN
F 3 "" H 5850 4400 60  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
Text GLabel 5500 5600 0    50   Input ~ 0
SWO
Text GLabel 5500 5800 0    50   Input ~ 0
NRST
Text GLabel 2980 2260 0    50   Input ~ 0
3.3V
$Comp
L Engine-Controller:SN74LV07ADR U4
U 1 1 6192B913
P 3160 2565
F 0 "U4" H 3220 2695 50  0000 L CNN
F 1 "SN74LV07ADR" H 2970 2325 50  0001 C CNN
F 2 "" H 3160 2565 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3160 2565 50  0001 C CNN
	1    3160 2565
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:SN74LV07ADR U4
U 2 1 6193DFA8
P 3160 3240
F 0 "U4" H 3215 3370 50  0000 L CNN
F 1 "SN74LV07ADR" H 2970 3000 50  0001 C CNN
F 2 "" H 3160 3240 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3160 3240 50  0001 C CNN
	2    3160 3240
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:SN74LV07ADR U4
U 3 1 61940010
P 3160 3935
F 0 "U4" H 3210 4050 50  0000 L CNN
F 1 "SN74LV07ADR" H 2970 3695 50  0001 C CNN
F 2 "" H 3160 3935 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3160 3935 50  0001 C CNN
	3    3160 3935
	1    0    0    -1  
$EndComp
Wire Wire Line
	3160 2340 3160 2260
Wire Wire Line
	3160 2260 2980 2260
$Comp
L Engine-Controller:Earth #PWR0101
U 1 1 619712C0
P 3160 2790
F 0 "#PWR0101" H 3160 2540 50  0001 C CNN
F 1 "Earth" H 3160 2640 50  0001 C CNN
F 2 "" H 3160 2790 50  0001 C CNN
F 3 "" H 3160 2790 50  0001 C CNN
	1    3160 2790
	1    0    0    -1  
$EndComp
Text GLabel 2975 2950 0    50   Input ~ 0
3.3V
Wire Wire Line
	2975 2950 3160 2950
Wire Wire Line
	3160 2950 3160 3020
$Comp
L Engine-Controller:Earth #PWR0117
U 1 1 61979541
P 3160 3470
F 0 "#PWR0117" H 3160 3220 50  0001 C CNN
F 1 "Earth" H 3160 3320 50  0001 C CNN
F 2 "" H 3160 3470 50  0001 C CNN
F 3 "" H 3160 3470 50  0001 C CNN
	1    3160 3470
	1    0    0    -1  
$EndComp
Text GLabel 2965 3670 0    50   Input ~ 0
3.3V
$Comp
L Engine-Controller:Earth #PWR0118
U 1 1 61986C3B
P 3160 4165
F 0 "#PWR0118" H 3160 3915 50  0001 C CNN
F 1 "Earth" H 3160 4015 50  0001 C CNN
F 2 "" H 3160 4165 50  0001 C CNN
F 3 "" H 3160 4165 50  0001 C CNN
	1    3160 4165
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:SN74LV07ADR U4
U 4 1 619889F5
P 3155 4670
F 0 "U4" H 3210 4810 50  0000 L CNN
F 1 "SN74LV07ADR" H 2965 4430 50  0001 C CNN
F 2 "" H 3155 4670 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3155 4670 50  0001 C CNN
	4    3155 4670
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:Earth #PWR0119
U 1 1 61989C2B
P 3155 4900
F 0 "#PWR0119" H 3155 4650 50  0001 C CNN
F 1 "Earth" H 3155 4750 50  0001 C CNN
F 2 "" H 3155 4900 50  0001 C CNN
F 3 "" H 3155 4900 50  0001 C CNN
	1    3155 4900
	1    0    0    -1  
$EndComp
Text GLabel 2935 4375 0    50   Input ~ 0
3.3V
$Comp
L Engine-Controller:SN74LV07ADR U4
U 5 1 6198E032
P 3145 5370
F 0 "U4" H 3190 5510 50  0000 L CNN
F 1 "SN74LV07ADR" H 2955 5130 50  0001 C CNN
F 2 "" H 3145 5370 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3145 5370 50  0001 C CNN
	5    3145 5370
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:SN74LV07ADR U4
U 6 1 6198F180
P 3170 6045
F 0 "U4" H 3215 6160 50  0000 L CNN
F 1 "SN74LV07ADR" H 2980 5805 50  0001 C CNN
F 2 "" H 3170 6045 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4010b-q1.pdf" H 3170 6045 50  0001 C CNN
	6    3170 6045
	1    0    0    -1  
$EndComp
Wire Wire Line
	3160 3670 3160 3705
Wire Wire Line
	2965 3670 3160 3670
Wire Wire Line
	2935 4375 3155 4375
Wire Wire Line
	3155 4375 3155 4440
$Comp
L Engine-Controller:Earth #PWR0120
U 1 1 619ABBD3
P 3145 5600
F 0 "#PWR0120" H 3145 5350 50  0001 C CNN
F 1 "Earth" H 3145 5450 50  0001 C CNN
F 2 "" H 3145 5600 50  0001 C CNN
F 3 "" H 3145 5600 50  0001 C CNN
	1    3145 5600
	1    0    0    -1  
$EndComp
Text GLabel 2920 5080 0    50   Input ~ 0
3.3V
Wire Wire Line
	2920 5080 3145 5080
Wire Wire Line
	3145 5080 3145 5140
Text GLabel 2910 5770 0    50   Input ~ 0
3.3V
Wire Wire Line
	3170 5815 3170 5770
Wire Wire Line
	3170 5770 2910 5770
$Comp
L Engine-Controller:Earth #PWR0121
U 1 1 619BE19B
P 3170 6275
F 0 "#PWR0121" H 3170 6025 50  0001 C CNN
F 1 "Earth" H 3170 6125 50  0001 C CNN
F 2 "" H 3170 6275 50  0001 C CNN
F 3 "" H 3170 6275 50  0001 C CNN
	1    3170 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2860 2565 2380 2565
Wire Wire Line
	2860 3935 2375 3935
Wire Wire Line
	2390 3240 2860 3240
Wire Wire Line
	2855 4670 2385 4670
Wire Wire Line
	2845 5370 2375 5365
Wire Wire Line
	2870 6045 2365 6045
Text GLabel 3630 2565 2    50   Input ~ 0
PD0_BUF
Wire Wire Line
	3630 2565 3460 2565
Text GLabel 3620 3240 2    50   Input ~ 0
PD1_BUF
Wire Wire Line
	3460 3240 3620 3240
Text GLabel 3625 3935 2    50   Input ~ 0
PD2_BUF
Wire Wire Line
	3460 3935 3625 3935
Text GLabel 3620 4670 2    50   Input ~ 0
PD3_BUF
Wire Wire Line
	3620 4670 3455 4670
Text GLabel 3615 5370 2    50   Input ~ 0
PD4_BUF
Wire Wire Line
	3445 5370 3615 5370
Wire Wire Line
	3470 6045 3620 6045
Text GLabel 3620 6045 2    50   Input ~ 0
PD5_BUF
Wire Notes Line
	4240 2165 4240 6545
Wire Notes Line
	4240 6545 2050 6545
Wire Notes Line
	2050 6545 2050 2165
Wire Notes Line
	2050 2165 4240 2165
Text Notes 3885 2290 0    50   ~ 0
Buffers
Wire Notes Line
	8950 3750 8950 2200
Wire Notes Line
	7300 2200 7300 3750
Wire Notes Line
	8950 2200 7300 2200
Text GLabel 7770 2630 0    50   Input ~ 0
PD0_BUF
Text GLabel 7770 2730 0    50   Input ~ 0
PD1_BUF
Text GLabel 7770 2830 0    50   Input ~ 0
PD2_BUF
Text GLabel 7770 2930 0    50   Input ~ 0
PD3_BUF
Text GLabel 7770 3030 0    50   Input ~ 0
PD4_BUF
Text GLabel 7770 3130 0    50   Input ~ 0
PD5_BUF
Wire Wire Line
	7770 2630 8220 2630
Text GLabel 5525 2625 0    50   Input ~ 0
V_HEAD
Wire Wire Line
	7770 3530 8220 3530
Wire Wire Line
	7770 3430 8220 3430
Wire Wire Line
	7770 3330 8220 3330
Wire Wire Line
	7770 3230 8220 3230
Wire Notes Line
	8950 3750 7300 3750
Wire Wire Line
	7770 3130 8220 3130
Wire Wire Line
	7770 3030 8220 3030
Wire Wire Line
	7770 2930 8220 2930
Wire Wire Line
	7770 2830 8220 2830
Wire Wire Line
	7770 2730 8220 2730
$Comp
L Engine-Controller:66953-005LF P5
U 1 1 61255D75
P 5850 2625
F 0 "P5" H 6200 2775 60  0000 L CNN
F 1 "66953-005LF" H 6378 2122 60  0001 L CNN
F 2 "Engine-Controller:66953-005LF" H 6000 1425 60  0001 C CNN
F 3 "" H 5850 2625 60  0001 C CNN
	1    5850 2625
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:0901471110 P4
U 1 1 61252CB3
P 8220 2630
F 0 "P4" H 8550 2810 60  0000 L CNN
F 1 "0901471110" H 8748 2127 60  0001 L CNN
F 2 "Engine-Controller:0901471110" H 8370 1430 60  0001 C CNN
F 3 "" H 8220 2630 60  0001 C CNN
	1    8220 2630
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 2625 5850 2625
Text GLabel 7770 3530 0    50   Input ~ 0
PD9
Text GLabel 7770 3430 0    50   Input ~ 0
PD8
Text GLabel 7770 3330 0    50   Input ~ 0
PD7
Text GLabel 7770 3230 0    50   Input ~ 0
PD6
$Comp
L Engine-Controller:Earth #PWR0112
U 1 1 60DBDE57
P 5800 3600
F 0 "#PWR0112" H 5800 3350 50  0001 C CNN
F 1 "Earth" H 5800 3450 50  0001 C CNN
F 2 "" H 5800 3600 50  0001 C CNN
F 3 "~" H 5800 3600 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3125 5800 3125
Wire Wire Line
	5800 3125 5800 3600
Text GLabel 5525 2725 0    50   Input ~ 0
RX
Text GLabel 5525 2825 0    50   Input ~ 0
TX
Text GLabel 5525 3025 0    50   Input ~ 0
SDA
Text GLabel 5525 2925 0    50   Input ~ 0
SCL
Wire Wire Line
	5525 2725 5850 2725
Wire Wire Line
	5525 2825 5850 2825
Wire Wire Line
	5850 2925 5525 2925
Wire Wire Line
	5850 3025 5525 3025
Text GLabel 5525 3225 0    50   Input ~ 0
SCK
Text GLabel 5525 3425 0    50   Input ~ 0
MOSI
Text GLabel 5525 3325 0    50   Input ~ 0
MISO
Text GLabel 5525 3525 0    50   Input ~ 0
SS
Wire Wire Line
	5850 3225 5525 3225
Wire Wire Line
	5850 3325 5525 3325
Wire Wire Line
	5850 3425 5525 3425
Wire Wire Line
	5850 3525 5525 3525
Text Notes 5700 2350 0    50   ~ 0
Serial Connector
Text Notes 7950 2300 0    50   ~ 0
Port D GPIO Connector\n
Wire Notes Line
	5100 2200 5100 3750
Wire Notes Line
	5100 3750 6450 3750
Wire Notes Line
	6450 3750 6450 2200
Wire Notes Line
	5100 2200 6450 2200
Wire Notes Line
	5100 4050 6450 4050
Wire Notes Line
	6450 4050 6450 6550
Wire Notes Line
	6450 6550 5150 6550
Wire Notes Line
	5100 6550 5100 4050
NoConn ~ 5850 4400
NoConn ~ 5850 4500
Wire Wire Line
	5850 6300 5750 6300
Wire Wire Line
	5750 6300 5750 6400
Wire Wire Line
	5850 6100 5750 6100
Wire Wire Line
	5750 6100 5750 6300
Connection ~ 5750 6300
Wire Wire Line
	5850 5900 5750 5900
Wire Wire Line
	5750 5900 5750 6100
Connection ~ 5750 6100
Wire Wire Line
	5850 5700 5750 5700
Wire Wire Line
	5750 5700 5750 5900
Connection ~ 5750 5900
Wire Wire Line
	5850 5500 5750 5500
Wire Wire Line
	5750 5500 5750 5700
Connection ~ 5750 5700
Wire Wire Line
	5850 5300 5750 5300
Wire Wire Line
	5750 5300 5750 5500
Connection ~ 5750 5500
Wire Wire Line
	5850 5100 5750 5100
Wire Wire Line
	5750 5100 5750 5300
Connection ~ 5750 5300
Wire Wire Line
	5850 4900 5750 4900
Wire Wire Line
	5750 4900 5750 5100
Connection ~ 5750 5100
Wire Wire Line
	5850 4700 5750 4700
Wire Wire Line
	5750 4700 5750 4800
Connection ~ 5750 4900
Wire Wire Line
	5850 4600 5750 4600
Wire Wire Line
	5750 4600 5750 4700
Connection ~ 5750 4700
Wire Wire Line
	5850 4800 5750 4800
Connection ~ 5750 4800
Wire Wire Line
	5750 4800 5750 4900
Wire Wire Line
	5850 5000 5500 5000
Wire Wire Line
	5850 5200 5500 5200
NoConn ~ 5850 5400
Wire Wire Line
	5850 5600 5500 5600
Wire Wire Line
	5850 5800 5500 5800
NoConn ~ 5850 6000
NoConn ~ 5850 6200
$Comp
L Engine-Controller:Logo LOGO?
U 1 1 618F5F8B
P 9700 4800
F 0 "LOGO?" H 9878 4846 50  0001 L CNN
F 1 "Logo" H 9600 5000 50  0000 L CNN
F 2 "" H 9700 4800 50  0001 C CNN
F 3 "" H 9700 4800 50  0001 C CNN
	1    9700 4800
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:Mounting-Hole H?
U 1 1 618F69A9
P 9700 5350
F 0 "H?" H 9908 5396 50  0001 L CNN
F 1 "Mounting-Hole" H 9450 5600 50  0000 L CNN
F 2 "" H 9700 5350 50  0001 C CNN
F 3 "" H 9700 5350 50  0001 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:Mounting-Hole H?
U 1 1 618F7698
P 10450 4850
F 0 "H?" H 10658 4896 50  0001 L CNN
F 1 "Mounting-Hole" H 10200 5100 50  0000 L CNN
F 2 "" H 10450 4850 50  0001 C CNN
F 3 "" H 10450 4850 50  0001 C CNN
	1    10450 4850
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:Mounting-Hole H?
U 1 1 618F7988
P 10450 5350
F 0 "H?" H 10658 5396 50  0001 L CNN
F 1 "Mounting-Hole" H 10150 5600 50  0000 L CNN
F 2 "" H 10450 5350 50  0001 C CNN
F 3 "" H 10450 5350 50  0001 C CNN
	1    10450 5350
	1    0    0    -1  
$EndComp
Wire Notes Line
	10850 4400 10850 5600
Wire Notes Line
	10850 5600 9400 5600
Wire Notes Line
	9400 5600 9400 4400
Wire Notes Line
	9400 4400 10850 4400
Text Notes 10000 4500 0    50   ~ 0
Misc
$EndSCHEMATC

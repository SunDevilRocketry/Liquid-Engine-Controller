EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Engine Controller Microcontroller Board"
Date "2021-06-26"
Rev "1.0"
Comp "Sun Devil Rocketry"
Comment1 "Author: Colton Acosta"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8100 1850 2850 1050
U 60D7F309
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 9650 3300 1300 1100
U 60DAA9B3
F0 "USB" 50
F1 "USB.sch" 50
$EndSheet
$Comp
L Engine-Controller:STM32L443VCT6 U1
U 1 1 60DAAAAD
P 4100 5350
F 0 "U1" H 4200 9387 60  0000 C CNN
F 1 "STM32L443VCT6" H 4200 9281 60  0000 C CNN
F 2 "Engine-Controller:STM32L443VCT6" H 4100 9300 60  0001 C CNN
F 3 "" H 3000 7350 60  0000 C CNN
	1    4100 5350
	1    0    0    -1  
$EndComp
$Sheet
S 8150 4900 2800 1000
U 60E24895
F0 "Connectors" 50
F1 "Connectors.sch" 50
$EndSheet
Text GLabel 5650 3350 2    50   Input ~ 0
RX
Text GLabel 5650 3450 2    50   Input ~ 0
TX
Text GLabel 2500 4050 0    50   Input ~ 0
MOSI
Text GLabel 2500 3950 0    50   Input ~ 0
MISO
Text GLabel 2500 3450 0    50   Input ~ 0
SCK
Text GLabel 2500 4350 0    50   Input ~ 0
SDA
Text GLabel 2500 4250 0    50   Input ~ 0
SCL
Text GLabel 2500 3750 0    50   Input ~ 0
SS
Wire Wire Line
	3000 3950 2500 3950
Wire Wire Line
	3000 4050 2500 4050
Wire Wire Line
	2500 3450 3000 3450
Wire Wire Line
	2500 3750 3000 3750
Wire Wire Line
	2500 4250 3000 4250
Wire Wire Line
	3000 4350 2500 4350
Text GLabel 2550 1250 1    50   Input ~ 0
3.3V
Wire Wire Line
	2550 1250 2550 1600
Wire Wire Line
	2550 1600 3000 1600
Wire Wire Line
	2550 1600 2550 1700
Wire Wire Line
	2550 1700 3000 1700
Connection ~ 2550 1600
Wire Wire Line
	2550 1700 2550 1800
Wire Wire Line
	2550 1800 3000 1800
Connection ~ 2550 1700
Wire Wire Line
	2550 1800 2550 1900
Wire Wire Line
	2550 1900 3000 1900
Connection ~ 2550 1800
Wire Wire Line
	2550 1900 2550 2000
Wire Wire Line
	2550 2000 3000 2000
Connection ~ 2550 1900
Wire Wire Line
	2550 2000 2550 2600
Wire Wire Line
	2550 2600 3000 2600
Connection ~ 2550 2000
Wire Wire Line
	2550 2600 2550 2800
Wire Wire Line
	2550 2800 3000 2800
Connection ~ 2550 2600
$Comp
L power:Earth #PWR0101
U 1 1 60F20D33
P 2750 3100
F 0 "#PWR0101" H 2750 2850 50  0001 C CNN
F 1 "Earth" H 2750 2950 50  0001 C CNN
F 2 "" H 2750 3100 50  0001 C CNN
F 3 "~" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2900 2750 2900
Wire Wire Line
	2750 2900 2750 3100
Wire Wire Line
	3000 2700 2750 2700
Wire Wire Line
	2750 2700 2750 2900
Connection ~ 2750 2900
Wire Wire Line
	3000 2500 2750 2500
Connection ~ 2750 2700
Wire Wire Line
	3000 2400 2750 2400
Connection ~ 2750 2500
Wire Wire Line
	2750 2500 2750 2700
Wire Wire Line
	3000 2300 2750 2300
Wire Wire Line
	2750 2300 2750 2400
Connection ~ 2750 2400
Wire Wire Line
	2750 2400 2750 2500
Wire Wire Line
	3000 2200 2750 2200
Wire Wire Line
	2750 2200 2750 2300
Connection ~ 2750 2300
Wire Wire Line
	3000 2100 2750 2100
Wire Wire Line
	2750 2100 2750 2200
Connection ~ 2750 2200
Text GLabel 2500 4750 0    50   Input ~ 0
SWCLK
Text GLabel 2500 4650 0    50   Input ~ 0
SWDIO
Wire Wire Line
	3000 4650 2500 4650
Wire Wire Line
	3000 4750 2500 4750
Text GLabel 6000 5100 2    50   Input ~ 0
PD0
Text GLabel 6000 5200 2    50   Input ~ 0
PD1
Text GLabel 6000 5300 2    50   Input ~ 0
PD2
Text GLabel 6000 5400 2    50   Input ~ 0
PD3
Text GLabel 6000 5500 2    50   Input ~ 0
PD4
Text GLabel 6000 5600 2    50   Input ~ 0
PD5
Text GLabel 6000 5700 2    50   Input ~ 0
PD6
Text GLabel 6000 5800 2    50   Input ~ 0
PD7
Text GLabel 6000 5900 2    50   Input ~ 0
PD8
Text GLabel 6000 6000 2    50   Input ~ 0
PD9
Wire Wire Line
	6000 5100 5400 5100
Wire Wire Line
	6000 5200 5400 5200
Wire Wire Line
	6000 5300 5400 5300
Wire Wire Line
	6000 5400 5400 5400
Wire Wire Line
	6000 5500 5400 5500
Wire Wire Line
	6000 5600 5400 5600
Wire Wire Line
	6000 5700 5400 5700
Wire Wire Line
	6000 5800 5400 5800
Wire Wire Line
	6000 5900 5400 5900
Text Label 2550 1450 0    50   ~ 0
3.3V
$Comp
L Engine-Controller:CAP_0603 C8
U 1 1 60DE014C
P 6250 3400
F 0 "C8" V 6204 3503 50  0000 L CNN
F 1 "0.1u" V 6295 3503 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 6150 3000 50  0001 L BNN
F 3 "" H 6200 3400 50  0001 L BNN
	1    6250 3400
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 60DE602C
P 6250 3750
F 0 "#PWR01" H 6250 3500 50  0001 C CNN
F 1 "Earth" H 6250 3600 50  0001 C CNN
F 2 "" H 6250 3750 50  0001 C CNN
F 3 "~" H 6250 3750 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:TP TP1
U 1 1 60E1CD7C
P 6500 3100
F 0 "TP1" H 6578 3288 50  0000 L CNN
F 1 "TPNRST" H 6578 3197 50  0001 L CNN
F 2 "Engine-Controller:TP" H 6500 3100 50  0001 C CNN
F 3 "" H 6500 3100 50  0001 C CNN
	1    6500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3350 5650 3350
Wire Wire Line
	5650 3450 5400 3450
$Comp
L power:Earth #PWR0102
U 1 1 6102ABA9
P 7200 2400
F 0 "#PWR0102" H 7200 2150 50  0001 C CNN
F 1 "Earth" H 7200 2250 50  0001 C CNN
F 2 "" H 7200 2400 50  0001 C CNN
F 3 "~" H 7200 2400 50  0001 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:RES_0603 R1
U 1 1 6100A5B9
P 7200 2200
F 0 "R1" V 7154 2269 50  0000 L CNN
F 1 "240" V 7245 2269 50  0000 L CNN
F 2 "Engine-Controller:RES_0603" H 7250 1700 50  0001 L BNN
F 3 "" H 7200 2200 50  0001 L BNN
	1    7200 2200
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:150120AS75000 D1
U 1 1 61009279
P 7200 1900
F 0 "D1" H 7429 1950 60  0000 L CNN
F 1 "150120AS75000" H 7429 1897 60  0001 L CNN
F 2 "Engine-Controller:150120AS75000" H 7400 1540 60  0001 C CNN
F 3 "" V 7200 2150 60  0000 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:PTS647SM38SMTR2LFS B1
U 1 1 610156A4
P 7250 3250
F 0 "B1" H 7250 3581 60  0000 C CNN
F 1 "PTS647SM38SMTR2LFS" H 7250 3581 60  0001 C CNN
F 2 "Engine-Controller:PTS647SM38SMTR2LFS" H 7250 2800 60  0001 C CNN
F 3 "" H 6450 3400 60  0001 C CNN
	1    7250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2700 6250 2600
$Comp
L Engine-Controller:RES_0603 R6
U 1 1 60FC75D6
P 6250 2900
F 0 "R6" V 6150 2700 50  0000 L CNN
F 1 "10k" V 6250 2700 50  0000 L CNN
F 2 "Engine-Controller:RES_0603" H 6300 2400 50  0001 L BNN
F 3 "" H 6250 2900 50  0001 L BNN
	1    6250 2900
	0    1    1    0   
$EndComp
Connection ~ 6250 3100
Wire Wire Line
	5400 3100 6250 3100
$Comp
L Engine-Controller:CAP_0603 C10
U 1 1 61273C95
P 1050 2150
F 0 "C10" V 1004 2253 50  0000 L CNN
F 1 "0.1u" V 1095 2253 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 950 1750 50  0001 L BNN
F 3 "" H 1000 2150 50  0001 L BNN
	1    1050 2150
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:CAP_0603 C11
U 1 1 6127C459
P 1400 2150
F 0 "C11" V 1354 2253 50  0000 L CNN
F 1 "0.1u" V 1445 2253 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 1300 1750 50  0001 L BNN
F 3 "" H 1350 2150 50  0001 L BNN
	1    1400 2150
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:CAP_0603 C12
U 1 1 6127D073
P 1750 2150
F 0 "C12" V 1704 2253 50  0000 L CNN
F 1 "0.1u" V 1795 2253 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 1650 1750 50  0001 L BNN
F 3 "" H 1700 2150 50  0001 L BNN
	1    1750 2150
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:CAP_0603 C13
U 1 1 6127DC78
P 2100 2150
F 0 "C13" V 2054 2253 50  0000 L CNN
F 1 "0.1u" V 2145 2253 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 2000 1750 50  0001 L BNN
F 3 "" H 2050 2150 50  0001 L BNN
	1    2100 2150
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:CAP_0603 C9
U 1 1 6127EE14
P 700 2150
F 0 "C9" V 654 2253 50  0000 L CNN
F 1 "0.1u" V 745 2253 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 600 1750 50  0001 L BNN
F 3 "" H 650 2150 50  0001 L BNN
	1    700  2150
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 2000 2100 2000
Connection ~ 1050 2000
Wire Wire Line
	1050 2000 700  2000
Connection ~ 1400 2000
Wire Wire Line
	1400 2000 1050 2000
Connection ~ 1750 2000
Wire Wire Line
	1750 2000 1400 2000
Connection ~ 2100 2000
Wire Wire Line
	2100 2000 1750 2000
Wire Wire Line
	700  2300 1050 2300
Connection ~ 1050 2300
Wire Wire Line
	1050 2300 1400 2300
Connection ~ 1400 2300
Wire Wire Line
	1400 2300 1750 2300
Connection ~ 1750 2300
Wire Wire Line
	1750 2300 2100 2300
Connection ~ 2100 2300
Wire Wire Line
	2100 2300 2750 2300
Text Notes 900  1900 0    50   ~ 0
Microcontroller Decoupling Caps
Text Label 6700 3100 0    50   ~ 0
NRST
Wire Wire Line
	5400 6000 6000 6000
$Comp
L Engine-Controller:Jumper_NO J1
U 1 1 6147D8EA
P 6700 3700
F 0 "J1" H 6700 3843 50  0000 C CNN
F 1 "Jumper_NO" H 6700 3610 50  0001 C CNN
F 2 "Engine-Controller:Jumper-NO" H 6700 3700 50  0001 C CNN
F 3 "~" H 6700 3700 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3700 7000 3400
Wire Wire Line
	6900 3700 7000 3700
Wire Wire Line
	6500 3700 6250 3700
Connection ~ 6250 3700
Wire Wire Line
	6250 3700 6250 3750
Wire Wire Line
	6250 3550 6250 3700
Wire Wire Line
	6250 3250 6250 3100
$Comp
L Engine-Controller:CAP_0603 C14
U 1 1 6159BC7F
P 2050 2750
F 0 "C14" V 2004 2853 50  0000 L CNN
F 1 "0.1u" V 2095 2853 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 1950 2350 50  0001 L BNN
F 3 "" H 2000 2750 50  0001 L BNN
	1    2050 2750
	0    1    1    0   
$EndComp
Text GLabel 2500 6100 0    50   Input ~ 0
FLASH_SCK
Wire Wire Line
	3000 6100 2500 6100
Text GLabel 5650 3550 2    50   Input ~ 0
FLASH_MISO
Wire Wire Line
	5650 3550 5400 3550
Text GLabel 5650 3650 2    50   Input ~ 0
FLASH_MOSI
Wire Wire Line
	5650 3650 5400 3650
Text GLabel 2500 6300 0    50   Input ~ 0
FLASH_SS
Wire Wire Line
	3000 6300 2500 6300
$Sheet
S 8150 3300 1350 1150
U 6177D07C
F0 "Flash_SD" 50
F1 "Flash_SD.sch" 50
$EndSheet
Text Label 6400 1700 0    50   ~ 0
MCU_STATUS
Wire Wire Line
	6250 3100 6500 3100
Connection ~ 6500 3100
Wire Wire Line
	6500 3100 7000 3100
Text GLabel 2500 3350 0    50   Input ~ 0
A0
Text GLabel 2500 3550 0    50   Input ~ 0
A1
Text GLabel 2500 3650 0    50   Input ~ 0
A2
Text GLabel 2500 3850 0    50   Input ~ 0
A3
Text GLabel 5650 3750 2    50   Input ~ 0
A4
Text GLabel 5650 3850 2    50   Input ~ 0
A5
Text GLabel 2500 5100 0    50   Input ~ 0
A6
Text GLabel 2500 5200 0    50   Input ~ 0
A7
Text GLabel 2500 6000 0    50   Input ~ 0
SD_SS
Wire Wire Line
	3000 6000 2500 6000
Wire Wire Line
	3000 3350 2500 3350
Wire Wire Line
	3000 3550 2500 3550
Wire Wire Line
	3000 3650 2500 3650
Wire Wire Line
	3000 3850 2500 3850
Wire Wire Line
	5650 3750 5400 3750
Wire Wire Line
	5650 3850 5400 3850
Wire Wire Line
	3000 5100 2500 5100
Wire Wire Line
	2500 5200 3000 5200
Wire Wire Line
	5400 1700 7200 1700
Text GLabel 5600 1600 2    50   Input ~ 0
FLASH_WP
Wire Wire Line
	5600 1600 5400 1600
Text GLabel 5600 1800 2    50   Input ~ 0
FLASH_HOLD
Wire Wire Line
	5600 1800 5400 1800
Text GLabel 5600 1900 2    50   Input ~ 0
SD_DETECT
Wire Wire Line
	5600 1900 5400 1900
NoConn ~ 3000 4150
NoConn ~ 3000 4450
NoConn ~ 3000 4550
NoConn ~ 3000 4850
NoConn ~ 3000 5300
NoConn ~ 3000 5400
NoConn ~ 3000 5500
NoConn ~ 3000 5600
NoConn ~ 3000 5700
NoConn ~ 3000 5800
NoConn ~ 3000 5900
NoConn ~ 3000 6200
NoConn ~ 3000 6400
NoConn ~ 3000 6500
NoConn ~ 3000 6600
NoConn ~ 5400 6600
NoConn ~ 5400 6500
NoConn ~ 5400 6400
NoConn ~ 5400 6300
NoConn ~ 5400 6200
NoConn ~ 5400 6100
NoConn ~ 5400 4850
NoConn ~ 5400 4750
NoConn ~ 5400 4650
NoConn ~ 5400 4550
NoConn ~ 5400 4450
NoConn ~ 5400 4350
NoConn ~ 5400 4250
NoConn ~ 5400 4150
NoConn ~ 5400 4050
NoConn ~ 5400 3950
NoConn ~ 5400 3000
NoConn ~ 5400 2900
NoConn ~ 5400 2800
NoConn ~ 5400 2700
NoConn ~ 5400 2600
NoConn ~ 5400 2500
NoConn ~ 5400 2400
NoConn ~ 5400 2300
NoConn ~ 5400 2200
NoConn ~ 5400 2100
NoConn ~ 3000 3000
NoConn ~ 3000 3100
Text GLabel 6250 2600 1    50   Input ~ 0
3.3V
Wire Wire Line
	2050 2900 2750 2900
Wire Wire Line
	2050 2600 2550 2600
Text GLabel 5600 2000 2    50   Input ~ 0
5V_SRC
Wire Wire Line
	5600 2000 5400 2000
$EndSCHEMATC

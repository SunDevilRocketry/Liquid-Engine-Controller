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
S 8100 750  2850 1050
U 60D7F309
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 8100 2150 2850 1000
U 60DAA9B3
F0 "USB" 50
F1 "USB.sch" 50
$EndSheet
$Sheet
S 8100 3550 2850 1000
U 60DAAA3E
F0 "Programmer" 50
F1 "Programmer.sch" 50
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
Text GLabel 5800 3350 2    50   Input ~ 0
RX
Text GLabel 5800 3450 2    50   Input ~ 0
TX
Text GLabel 2500 4050 0    50   Input ~ 0
MOSI
Text GLabel 2500 3950 0    50   Input ~ 0
MISO
Text GLabel 2450 3450 0    50   Input ~ 0
SCK
Text GLabel 2450 4350 0    50   Input ~ 0
SDA
Text GLabel 2450 4250 0    50   Input ~ 0
SCL
Text GLabel 2400 3750 0    50   Input ~ 0
SS
Wire Wire Line
	3000 3950 2500 3950
Wire Wire Line
	3000 4050 2500 4050
Wire Wire Line
	2450 3450 3000 3450
Wire Wire Line
	2400 3750 3000 3750
Wire Wire Line
	2450 4250 3000 4250
Wire Wire Line
	3000 4350 2450 4350
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
P 2750 3200
F 0 "#PWR0101" H 2750 2950 50  0001 C CNN
F 1 "Earth" H 2750 3050 50  0001 C CNN
F 2 "" H 2750 3200 50  0001 C CNN
F 3 "~" H 2750 3200 50  0001 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2900 2750 2900
Wire Wire Line
	2750 2900 2750 3200
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
Text GLabel 2550 4750 0    50   Input ~ 0
SWCLK
Text GLabel 2550 4650 0    50   Input ~ 0
SWDIO
Text GLabel 6750 2600 2    50   Input ~ 0
RST
Wire Wire Line
	3000 4650 2550 4650
Wire Wire Line
	3000 4750 2550 4750
Text GLabel 6000 5100 2    50   Input ~ 0
IO1
Text GLabel 6000 5200 2    50   Input ~ 0
IO2
Text GLabel 6000 5300 2    50   Input ~ 0
IO3
Text GLabel 6000 5400 2    50   Input ~ 0
IO4
Text GLabel 6000 5500 2    50   Input ~ 0
IO5
Text GLabel 6000 5600 2    50   Input ~ 0
IO6
Text GLabel 6000 5700 2    50   Input ~ 0
IO7
Text GLabel 6000 5800 2    50   Input ~ 0
IO8
Text GLabel 6000 5900 2    50   Input ~ 0
IO9
Text GLabel 5950 6000 2    50   Input ~ 0
IO10
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
Wire Wire Line
	5950 6000 5400 6000
Text Label 2550 1450 0    50   ~ 0
3.3V
$Comp
L Engine-Controller:CAP_0603 C8
U 1 1 60DE014C
P 6250 3450
F 0 "C8" V 6204 3553 50  0000 L CNN
F 1 "0.1u" V 6295 3553 50  0000 L CNN
F 2 "Engine-Controller:CAP_0603" H 6150 3050 50  0001 L BNN
F 3 "" H 6200 3450 50  0001 L BNN
	1    6250 3450
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
Wire Wire Line
	6250 3300 6250 3100
Wire Wire Line
	6250 3750 6250 3700
$Comp
L Engine-Controller:TP TP1
U 1 1 60E1CD7C
P 6550 2600
F 0 "TP1" H 6628 2788 50  0000 L CNN
F 1 "TPNRST" H 6628 2697 50  0001 L CNN
F 2 "Engine-Controller:TP" H 6550 2600 50  0001 C CNN
F 3 "" H 6550 2600 50  0001 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3350 5800 3350
Wire Wire Line
	5800 3450 5400 3450
$Comp
L power:Earth #PWR0102
U 1 1 6102ABA9
P 5750 2400
F 0 "#PWR0102" H 5750 2150 50  0001 C CNN
F 1 "Earth" H 5750 2250 50  0001 C CNN
F 2 "" H 5750 2400 50  0001 C CNN
F 3 "~" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:RES_0603 R1
U 1 1 6100A5B9
P 5750 2200
F 0 "R1" V 5704 2269 50  0000 L CNN
F 1 "240" V 5795 2269 50  0000 L CNN
F 2 "Engine-Controller:RES_0603" H 5800 1700 50  0001 L BNN
F 3 "" H 5750 2200 50  0001 L BNN
	1    5750 2200
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:150120AS75000 D1
U 1 1 61009279
P 5750 1900
F 0 "D1" H 5979 1950 60  0000 L CNN
F 1 "150120AS75000" H 5979 1897 60  0001 L CNN
F 2 "Engine-Controller:150120AS75000" H 5950 1540 60  0001 C CNN
F 3 "" V 5750 2150 60  0000 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1700 5750 1700
$Comp
L Engine-Controller:PTS647SM38SMTR2LFS B?
U 1 1 610156A4
P 7000 3250
F 0 "B?" H 7000 3581 60  0000 C CNN
F 1 "PTS647SM38SMTR2LFS" H 7000 3581 60  0001 C CNN
F 2 "SW_PTS647SM38SMTR2LFS_CNK" H 7000 2800 60  0001 C CNN
F 3 "" H 6200 3400 60  0001 C CNN
	1    7000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2700 6250 2600
$Comp
L Engine-Controller:RES_0603 R?
U 1 1 60FC75D6
P 6250 2900
F 0 "R?" V 6150 2700 50  0000 L CNN
F 1 "10k" V 6250 2700 50  0000 L CNN
F 2 "" H 6300 2400 50  0001 L BNN
F 3 "" H 6250 2900 50  0001 L BNN
	1    6250 2900
	0    1    1    0   
$EndComp
$Comp
L Engine-Controller:3.3V None?
U 1 1 60F82434
P 6250 2450
F 0 "None?" H 6378 2439 50  0001 L CNN
F 1 "3.3V" H 6150 2550 50  0000 L CNN
F 2 "" H 6250 2450 50  0001 C CNN
F 3 "" H 6250 2450 50  0001 C CNN
	1    6250 2450
	1    0    0    -1  
$EndComp
Connection ~ 6250 3100
Wire Wire Line
	5400 3100 6250 3100
Wire Wire Line
	6250 3100 6550 3100
Wire Wire Line
	6550 2600 6550 3100
Connection ~ 6550 3100
Wire Wire Line
	6550 3100 6750 3100
Wire Wire Line
	6750 2600 6550 2600
Connection ~ 6550 2600
Wire Wire Line
	6800 3400 6800 3700
Wire Wire Line
	6800 3700 6250 3700
Connection ~ 6250 3700
Wire Wire Line
	6250 3700 6250 3600
$EndSCHEMATC

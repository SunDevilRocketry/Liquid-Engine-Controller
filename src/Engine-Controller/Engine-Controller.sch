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
Text GLabel 6000 3350 2    50   Input ~ 0
RX
Text GLabel 6000 3450 2    50   Input ~ 0
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
	5400 3350 6000 3350
Wire Wire Line
	5400 3450 6000 3450
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
L power:Earth #PWR?
U 1 1 60F20D33
P 2750 3200
F 0 "#PWR?" H 2750 2950 50  0001 C CNN
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
$EndSCHEMATC

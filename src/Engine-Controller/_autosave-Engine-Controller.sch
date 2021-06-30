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
$EndSCHEMATC

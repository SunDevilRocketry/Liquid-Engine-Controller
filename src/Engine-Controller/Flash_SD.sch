EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "Data Logging Memory"
Date "2021-07-03"
Rev "1.0"
Comp "Sun Devil Rocketry "
Comment1 "Author: Colton"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Engine-Controller:SST25VF040B-50-4I-S2AE-T U?
U 1 1 617854EA
P 5950 3950
F 0 "U?" H 5925 4231 60  0000 C CNN
F 1 "SST25VF040B-50-4I-S2AE-T" H 5925 4231 60  0001 C CNN
F 2 "SOIC8_S2A_SST_MCH" H 5950 3250 60  0001 C CNN
F 3 "" H 4750 4000 60  0001 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
Text GLabel 4700 3850 0    50   Input ~ 0
FLASH_SS
Wire Wire Line
	4700 3850 5400 3850
Text GLabel 4750 4000 0    50   Input ~ 0
FLASH_MISO
Wire Wire Line
	5400 4000 4750 4000
Text GLabel 4700 4150 0    50   Input ~ 0
FLASH_WP
Wire Wire Line
	5400 4150 4700 4150
$Comp
L Engine-Controller:3.3V None?
U 1 1 617870C5
P 6600 3600
F 0 "None?" H 6728 3589 50  0001 L CNN
F 1 "3.3V" H 6524 3696 50  0000 L CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3850 6600 3850
Wire Wire Line
	6600 3850 6600 3750
$Comp
L power:Earth #PWR?
U 1 1 61788B6E
P 5400 4450
F 0 "#PWR?" H 5400 4200 50  0001 C CNN
F 1 "Earth" H 5400 4300 50  0001 C CNN
F 2 "" H 5400 4450 50  0001 C CNN
F 3 "~" H 5400 4450 50  0001 C CNN
	1    5400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4300 5400 4450
Text GLabel 7100 4000 2    50   Input ~ 0
FLASH_HOLD
Wire Wire Line
	6450 4000 7100 4000
$EndSCHEMATC

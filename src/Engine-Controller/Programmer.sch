EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Liquids Engine Microcontroller Programmer"
Date "2021-06-29"
Rev "1.0"
Comp "Sun Devil Rocketry "
Comment1 "Author: Colton Acosta"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Engine-Controller:SBH11-PBPC-D05-RA-BK J3
U 1 1 60FC47DC
P 5450 3600
F 0 "J3" H 5692 3887 60  0000 C CNN
F 1 "SBH11-PBPC-D05-RA-BK" H 5692 3781 60  0000 C CNN
F 2 "Engine-Controller:SBH11-PBPC-D05-RA-BK" H 5600 2400 60  0001 C CNN
F 3 "" H 5450 3600 60  0000 C CNN
	1    5450 3600
	-1   0    0    -1  
$EndComp
Text GLabel 6450 3600 2    50   Input ~ 0
RST
Text GLabel 6350 4100 2    50   Input ~ 0
SWCLK
Text GLabel 6350 4200 2    50   Input ~ 0
SWDIO
Text GLabel 6400 3900 2    50   Input ~ 0
3.3V
Text GLabel 6500 4000 2    50   Input ~ 0
5V
Wire Wire Line
	5450 3600 6450 3600
$Comp
L power:Earth #PWR0111
U 1 1 60FCD9C3
P 5750 4700
F 0 "#PWR0111" H 5750 4450 50  0001 C CNN
F 1 "Earth" H 5750 4550 50  0001 C CNN
F 2 "" H 5750 4700 50  0001 C CNN
F 3 "~" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3800 5750 3800
Wire Wire Line
	5750 3800 5750 4300
Wire Wire Line
	6400 3900 5900 3900
Wire Wire Line
	6500 4000 6050 4000
Wire Wire Line
	6350 4100 5450 4100
Wire Wire Line
	6350 4200 5450 4200
Wire Wire Line
	5450 4300 5750 4300
Connection ~ 5750 4300
Wire Wire Line
	5750 4300 5750 4700
Wire Wire Line
	5450 4400 5900 4400
Wire Wire Line
	5900 4400 5900 3900
Connection ~ 5900 3900
Wire Wire Line
	5900 3900 5450 3900
Wire Wire Line
	5450 4500 6050 4500
Wire Wire Line
	6050 4500 6050 4000
Connection ~ 6050 4000
Wire Wire Line
	6050 4000 5450 4000
$EndSCHEMATC

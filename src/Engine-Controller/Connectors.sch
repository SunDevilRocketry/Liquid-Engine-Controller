EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Liquid Engine Microcontroller Connectors"
Date "2021-06-29"
Rev "1.0"
Comp "Sun Devil Rocketry "
Comment1 "Author: Colton Acosta"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Engine-Controller:0901471110 J5
U 1 1 60E3A3F9
P 9150 1950
F 0 "J5" H 9678 1553 60  0000 L CNN
F 1 "0901471110" H 9678 1447 60  0000 L CNN
F 2 "Engine-Controller:0901471110" H 9300 750 60  0001 C CNN
F 3 "" H 9150 1950 60  0000 C CNN
	1    9150 1950
	1    0    0    -1  
$EndComp
Text Notes 8300 1600 0    50   ~ 0
IO Connector\n
Text Notes 8450 3800 0    50   ~ 0
Serial Connector
Wire Wire Line
	9050 5300 7950 5300
Wire Wire Line
	9050 5200 7950 5200
Wire Wire Line
	9050 5100 7950 5100
Wire Wire Line
	9050 5000 7950 5000
Text GLabel 7950 5300 0    50   Input ~ 0
SS
Text GLabel 7950 5100 0    50   Input ~ 0
MISO
Text GLabel 7950 5200 0    50   Input ~ 0
MOSI
Text GLabel 7950 5000 0    50   Input ~ 0
SCK
Wire Wire Line
	9050 4800 8000 4800
Wire Wire Line
	9050 4700 8000 4700
Wire Wire Line
	8000 4600 9050 4600
Wire Wire Line
	8000 4500 9050 4500
Text GLabel 8000 4700 0    50   Input ~ 0
SCL
Text GLabel 8000 4800 0    50   Input ~ 0
SDA
Text GLabel 8000 4600 0    50   Input ~ 0
TX
Text GLabel 8000 4500 0    50   Input ~ 0
RX
Wire Wire Line
	8800 4900 8800 5600
Wire Wire Line
	9050 4900 8800 4900
$Comp
L power:Earth #PWR0112
U 1 1 60DBDE57
P 8800 5600
F 0 "#PWR0112" H 8800 5350 50  0001 C CNN
F 1 "Earth" H 8800 5450 50  0001 C CNN
F 2 "" H 8800 5600 50  0001 C CNN
F 3 "~" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
Connection ~ 8700 4400
Wire Wire Line
	8550 4400 8700 4400
Text GLabel 8550 4400 0    50   Input ~ 0
VIN
Wire Wire Line
	8700 4400 8700 4250
Wire Wire Line
	9050 4400 8700 4400
$Comp
L Engine-Controller:+VIN #None0101
U 1 1 60E48282
P 8700 4100
F 0 "#None0101" H 8800 4100 50  0001 L CNN
F 1 "+VIN" H 8600 4200 50  0000 L CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
$Comp
L Engine-Controller:66953-005LF J4
U 1 1 60E41099
P 9050 4400
F 0 "J4" H 9578 4003 60  0000 L CNN
F 1 "66953-005LF" H 9578 3897 60  0000 L CNN
F 2 "66953-005LF_AMP" H 9200 3200 60  0001 C CNN
F 3 "" H 9050 4400 60  0000 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
Wire Notes Line
	10400 3900 10400 5800
Wire Notes Line
	10400 5800 7250 5800
Wire Notes Line
	7250 5800 7250 3900
Wire Notes Line
	7250 3900 10400 3900
Text GLabel 8050 1950 0    50   Input ~ 0
IO1
Text GLabel 8050 2050 0    50   Input ~ 0
IO2
Text GLabel 8050 2150 0    50   Input ~ 0
IO3
Text GLabel 8050 2250 0    50   Input ~ 0
IO4
Text GLabel 8050 2350 0    50   Input ~ 0
IO5
Text GLabel 8050 2450 0    50   Input ~ 0
IO6
Text GLabel 8050 2550 0    50   Input ~ 0
IO7
Text GLabel 8050 2650 0    50   Input ~ 0
IO8
Text GLabel 8050 2750 0    50   Input ~ 0
IO9
Text GLabel 8100 2850 0    50   Input ~ 0
IO10
Wire Wire Line
	9150 1950 8050 1950
Wire Wire Line
	9150 2050 8050 2050
Wire Wire Line
	9150 2150 8050 2150
Wire Wire Line
	9150 2250 8050 2250
Wire Wire Line
	9150 2350 8050 2350
Wire Wire Line
	9150 2450 8050 2450
Wire Wire Line
	9150 2550 8050 2550
Wire Wire Line
	9150 2650 8050 2650
Wire Wire Line
	9150 2750 8050 2750
Wire Wire Line
	9150 2850 8100 2850
Wire Notes Line
	7200 3200 7200 1700
Wire Notes Line
	7200 1700 10450 1700
Wire Notes Line
	10450 1700 10450 3200
Wire Notes Line
	10450 3200 7200 3200
$EndSCHEMATC

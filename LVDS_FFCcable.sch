EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:laptop_kbrd_components
LIBS:spin_half
LIBS:laptop_kbrd-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date "17 feb 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7150 3150 1    60   ~ 0
Vcc2
Text Label 7350 3150 1    60   ~ 0
Din+
Text Label 7250 3150 1    60   ~ 0
Din-
Text Label 7450 3150 1    60   ~ 0
GND2
Text Label 3350 3050 1    60   ~ 0
SDA
Text Label 3250 3050 1    60   ~ 0
SCL
Text Label 6550 3150 1    60   ~ 0
V3.32
$Comp
L PIXEL_QI_IPEX_BREAKOUT U15
U 1 1 5A88D550
P 4250 3800
F 0 "U15" H 3250 3100 60  0000 C CNN
F 1 "PIXEL_QI_IPEX_BREAKOUT" H 4700 3200 60  0000 C CNN
F 2 "" H 4800 3800 60  0000 C CNN
F 3 "" H 4800 3800 60  0000 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
NoConn ~ 4750 2800
NoConn ~ 4850 2800
NoConn ~ 5050 2800
NoConn ~ 5150 2800
NoConn ~ 5350 2800
NoConn ~ 5450 2800
NoConn ~ 5650 2800
NoConn ~ 5750 2800
$Comp
L LCD_50PIN U18
U 1 1 5A88D55E
P 5500 2500
F 0 "U18" H 3050 3250 60  0000 C CNN
F 1 "LCD_50PIN" H 7700 3100 60  0000 C CNN
F 2 "" H 5400 2500 60  0000 C CNN
F 3 "" H 5400 2500 60  0000 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
NoConn ~ 5950 2800
NoConn ~ 6050 2800
NoConn ~ 6250 2800
NoConn ~ 6350 2800
NoConn ~ 6450 2800
NoConn ~ 6150 2800
NoConn ~ 5850 2800
NoConn ~ 5550 2800
NoConn ~ 5250 2800
NoConn ~ 4950 2800
Text Label 3200 3300 0    60   ~ 0
GND2
Wire Wire Line
	3450 2800 3450 3500
Wire Wire Line
	3550 2800 3550 3500
Wire Wire Line
	3650 3500 3650 2800
Wire Wire Line
	3250 3500 3050 3500
Wire Wire Line
	3050 3500 3050 2800
Wire Wire Line
	3150 2800 3150 3450
Wire Wire Line
	3150 3450 3350 3450
Wire Wire Line
	3350 3450 3350 3500
Wire Wire Line
	3750 3500 3750 2800
Wire Wire Line
	3850 2800 3850 3500
Wire Wire Line
	3950 3500 3950 2800
Wire Wire Line
	4050 2800 4050 3500
Wire Wire Line
	4150 3500 4150 2800
Wire Wire Line
	4250 2800 4250 3500
Wire Wire Line
	4350 3500 4350 2800
Wire Wire Line
	4450 2800 4450 3500
Wire Wire Line
	4550 3500 4550 2800
Wire Wire Line
	4650 2800 4650 3500
Wire Wire Line
	6550 2800 6850 2800
Connection ~ 6750 2800
Connection ~ 6650 2800
Wire Wire Line
	7550 2800 7950 2800
Connection ~ 7850 2800
Connection ~ 7750 2800
Connection ~ 7650 2800
Wire Wire Line
	7550 3500 7550 2800
Connection ~ 5250 3500
Wire Wire Line
	7050 2800 6950 2800
Wire Wire Line
	6950 2800 6950 3450
Wire Wire Line
	6950 3450 5050 3450
Wire Wire Line
	5050 3450 5050 3500
Wire Wire Line
	4750 3500 4950 3500
Connection ~ 4850 3500
Wire Wire Line
	4950 3500 4950 3400
Wire Wire Line
	4950 3400 6850 3400
Wire Wire Line
	6850 3400 6850 2800
Wire Wire Line
	3250 2800 3250 3050
Wire Wire Line
	3350 2800 3350 3050
Wire Wire Line
	7150 2800 7150 3150
Wire Wire Line
	7250 2800 7250 3150
Wire Wire Line
	7350 2800 7350 3150
Wire Wire Line
	7450 2800 7450 3150
Wire Wire Line
	3450 3300 3200 3300
Connection ~ 3450 3300
Wire Wire Line
	6550 2800 6550 3150
Wire Wire Line
	5150 3500 7550 3500
$EndSCHEMATC

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
Sheet 1 1
Title ""
Date "10 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA32U4-AU U1
U 1 1 5639785A
P 3100 2900
F 0 "U1" H 2200 4600 60  0000 C CNN
F 1 "ATMEGA32U4-AU" H 2450 1350 60  0000 C CNN
F 2 "~" H 4300 4000 60  0000 C CNN
F 3 "~" H 4300 4000 60  0000 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L 0WX4JF U4
U 1 1 5639887C
P 8800 1250
F 0 "U4" H 8800 1250 60  0000 C CNN
F 1 "0WX4JF" H 8800 1700 60  0000 C CNN
F 2 "~" H 8800 1250 60  0000 C CNN
F 3 "~" H 8800 1250 60  0000 C CNN
	1    8800 1250
	1    0    0    -1  
$EndComp
$Comp
L CD4051 MUX1
U 1 1 563AC8A5
P 6400 3200
F 0 "MUX1" H 6400 3100 60  0000 C CNN
F 1 "CD4051" H 6400 3300 60  0000 C CNN
F 2 "" H 6400 3200 60  0000 C CNN
F 3 "" H 6400 3200 60  0000 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
$Comp
L CD4051 MUX2
U 1 1 563AC8C6
P 8300 3450
F 0 "MUX2" H 8300 3350 60  0000 C CNN
F 1 "CD4051" H 8300 3550 60  0000 C CNN
F 2 "" H 8300 3450 60  0000 C CNN
F 3 "" H 8300 3450 60  0000 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L CD4051 MUX3
U 1 1 563AC8CC
P 10200 3200
F 0 "MUX3" H 10200 3100 60  0000 C CNN
F 1 "CD4051" H 10200 3300 60  0000 C CNN
F 2 "" H 10200 3200 60  0000 C CNN
F 3 "" H 10200 3200 60  0000 C CNN
	1    10200 3200
	1    0    0    -1  
$EndComp
$Comp
L XF2M-3015-1A U5
U 1 1 563ACCCE
P 10850 5600
F 0 "U5" V 10950 5600 60  0000 C CNN
F 1 "XF2M-3015-1A" V 10800 5600 60  0000 C CNN
F 2 "" H 10850 5600 60  0000 C CNN
F 3 "" H 10850 5600 60  0000 C CNN
	1    10850 5600
	1    0    0    -1  
$EndComp
$Comp
L LED_1206 D8
U 1 1 563AD608
P 8900 4550
F 0 "D8" H 8900 4650 50  0000 C CNN
F 1 "LED_BLUE" H 8900 4450 50  0000 C CNN
F 2 "~" H 8900 4550 60  0000 C CNN
F 3 "~" H 8900 4550 60  0000 C CNN
	1    8900 4550
	-1   0    0    1   
$EndComp
$Comp
L LED_1206 D7
U 1 1 563AD61A
P 5700 5300
F 0 "D7" H 5700 5400 50  0000 C CNN
F 1 "LED_YELLOW" H 5700 5200 50  0000 C CNN
F 2 "~" H 5700 5300 60  0000 C CNN
F 3 "~" H 5700 5300 60  0000 C CNN
	1    5700 5300
	0    1    1    0   
$EndComp
$Comp
L LED_1206 D1
U 1 1 563AD652
P 1150 5300
F 0 "D1" H 1150 5400 50  0000 C CNN
F 1 "FPGA_CLK" H 1150 5200 50  0000 C CNN
F 2 "~" H 1150 5300 60  0000 C CNN
F 3 "~" H 1150 5300 60  0000 C CNN
	1    1150 5300
	0    1    1    0   
$EndComp
$Comp
L LED_1206 D3
U 1 1 563AD65E
P 2850 5300
F 0 "D3" H 2850 5400 50  0000 C CNN
F 1 "FPGA_MISO" H 2850 5200 50  0000 C CNN
F 2 "~" H 2850 5300 60  0000 C CNN
F 3 "~" H 2850 5300 60  0000 C CNN
	1    2850 5300
	0    1    1    0   
$EndComp
$Comp
L LED_1206 D4
U 1 1 563AD664
P 3650 5300
F 0 "D4" H 3650 5400 50  0000 C CNN
F 1 "FPGA_MOSI" H 3650 5200 50  0000 C CNN
F 2 "~" H 3650 5300 60  0000 C CNN
F 3 "~" H 3650 5300 60  0000 C CNN
	1    3650 5300
	0    1    1    0   
$EndComp
$Comp
L LED_1206 D5
U 1 1 563AD66A
P 4450 5300
F 0 "D5" H 4450 5400 50  0000 C CNN
F 1 "FPGA_HOLD" H 4450 5200 50  0000 C CNN
F 2 "~" H 4450 5300 60  0000 C CNN
F 3 "~" H 4450 5300 60  0000 C CNN
	1    4450 5300
	0    1    1    0   
$EndComp
$Comp
L LED_1206 D6
U 1 1 563AD670
P 5250 5300
F 0 "D6" H 5250 5400 50  0000 C CNN
F 1 "FPGA_CS" H 5250 5200 50  0000 C CNN
F 2 "~" H 5250 5300 60  0000 C CNN
F 3 "~" H 5250 5300 60  0000 C CNN
	1    5250 5300
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 563AD77A
P 7450 4400
F 0 "R21" V 7530 4400 40  0000 C CNN
F 1 "1K" V 7457 4401 40  0000 C CNN
F 2 "~" V 7380 4400 30  0000 C CNN
F 3 "~" H 7450 4400 30  0000 C CNN
	1    7450 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 563AD780
P 1150 5850
F 0 "R2" V 1230 5850 40  0000 C CNN
F 1 "1K" V 1157 5851 40  0000 C CNN
F 2 "~" V 1080 5850 30  0000 C CNN
F 3 "~" H 1150 5850 30  0000 C CNN
	1    1150 5850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 563D8577
P 1750 950
F 0 "#PWR01" H 1750 1050 30  0001 C CNN
F 1 "VCC" H 1750 1050 30  0000 C CNN
F 2 "" H 1750 950 60  0000 C CNN
F 3 "" H 1750 950 60  0000 C CNN
	1    1750 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 563D875C
P 1750 4450
F 0 "#PWR02" H 1750 4450 30  0001 C CNN
F 1 "GND" H 1750 4380 30  0001 C CNN
F 2 "" H 1750 4450 60  0000 C CNN
F 3 "" H 1750 4450 60  0000 C CNN
	1    1750 4450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 563D89DD
P 1550 2550
F 0 "C4" H 1550 2650 40  0000 L CNN
F 1 "1uF" H 1556 2465 40  0000 L CNN
F 2 "~" H 1588 2400 30  0000 C CNN
F 3 "~" H 1550 2550 60  0000 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 563D8C10
P 10850 1250
F 0 "#PWR03" H 10850 1350 30  0001 C CNN
F 1 "VDD" H 10850 1360 30  0000 C CNN
F 2 "" H 10850 1250 60  0000 C CNN
F 3 "" H 10850 1250 60  0000 C CNN
	1    10850 1250
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 563D8C1D
P 6700 1300
F 0 "#PWR04" H 6700 1400 30  0001 C CNN
F 1 "VDD" H 6700 1410 30  0000 C CNN
F 2 "" H 6700 1300 60  0000 C CNN
F 3 "" H 6700 1300 60  0000 C CNN
	1    6700 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 563D8E97
P 5300 3300
F 0 "#PWR05" H 5300 3300 30  0001 C CNN
F 1 "GND" H 5300 3230 30  0001 C CNN
F 2 "" H 5300 3300 60  0000 C CNN
F 3 "" H 5300 3300 60  0000 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 563D8E9D
P 7200 3450
F 0 "#PWR06" H 7200 3450 30  0001 C CNN
F 1 "GND" H 7200 3380 30  0001 C CNN
F 2 "" H 7200 3450 60  0000 C CNN
F 3 "" H 7200 3450 60  0000 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 563D8EA3
P 9100 3300
F 0 "#PWR07" H 9100 3300 30  0001 C CNN
F 1 "GND" H 9100 3230 30  0001 C CNN
F 2 "" H 9100 3300 60  0000 C CNN
F 3 "" H 9100 3300 60  0000 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 563D8EA9
P 10850 900
F 0 "#PWR08" H 10850 900 30  0001 C CNN
F 1 "GND" H 10850 830 30  0001 C CNN
F 2 "" H 10850 900 60  0000 C CNN
F 3 "" H 10850 900 60  0000 C CNN
	1    10850 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 563D8EAF
P 6700 900
F 0 "#PWR09" H 6700 900 30  0001 C CNN
F 1 "GND" H 6700 830 30  0001 C CNN
F 2 "" H 6700 900 60  0000 C CNN
F 3 "" H 6700 900 60  0000 C CNN
	1    6700 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 563D935F
P 5300 3000
F 0 "#PWR010" H 5300 3100 30  0001 C CNN
F 1 "VCC" H 5300 3100 30  0000 C CNN
F 2 "" H 5300 3000 60  0000 C CNN
F 3 "" H 5300 3000 60  0000 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 563D9365
P 7200 3250
F 0 "#PWR011" H 7200 3350 30  0001 C CNN
F 1 "VCC" H 7200 3350 30  0000 C CNN
F 2 "" H 7200 3250 60  0000 C CNN
F 3 "" H 7200 3250 60  0000 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 563D936B
P 9100 3000
F 0 "#PWR012" H 9100 3100 30  0001 C CNN
F 1 "VCC" H 9100 3100 30  0000 C CNN
F 2 "" H 9100 3000 60  0000 C CNN
F 3 "" H 9100 3000 60  0000 C CNN
	1    9100 3000
	1    0    0    -1  
$EndComp
$Comp
L DPST_SMALL SW1
U 1 1 563E2116
P 1000 2900
F 0 "SW1" H 1000 2700 70  0000 C CNN
F 1 "MCU_RST" H 1000 3150 70  0000 C CNN
F 2 "~" H 1000 2900 60  0000 C CNN
F 3 "~" H 1000 2900 60  0000 C CNN
	1    1000 2900
	1    0    0    -1  
$EndComp
$Comp
L DPST_SMALL SW3
U 1 1 563E2221
P 8200 5450
F 0 "SW3" H 8200 5250 70  0000 C CNN
F 1 "POWER" H 8200 5700 70  0000 C CNN
F 2 "~" H 8200 5450 60  0000 C CNN
F 3 "~" H 8200 5450 60  0000 C CNN
	1    8200 5450
	1    0    0    -1  
$EndComp
$Comp
L RT9706 U2
U 1 1 563E2229
P 4900 7400
F 0 "U2" H 4900 7350 60  0000 C CNN
F 1 "RT9706" H 4900 7450 60  0000 C CNN
F 2 "~" H 4900 7400 60  0000 C CNN
F 3 "~" H 4900 7400 60  0000 C CNN
	1    4900 7400
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 563E23A9
P 5850 7300
F 0 "#PWR013" H 5850 7400 30  0001 C CNN
F 1 "VDD" H 5850 7410 30  0000 C CNN
F 2 "" H 5850 7300 60  0000 C CNN
F 3 "" H 5850 7300 60  0000 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
Text Label 9450 5450 0    60   ~ 0
5V_DELAYED
$Comp
L VCC #PWR014
U 1 1 563E27AB
P 9450 6450
F 0 "#PWR014" H 9450 6550 30  0001 C CNN
F 1 "VCC" H 9450 6550 30  0000 C CNN
F 2 "" H 9450 6450 60  0000 C CNN
F 3 "" H 9450 6450 60  0000 C CNN
	1    9450 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 563E2834
P 10050 7100
F 0 "#PWR015" H 10050 7100 30  0001 C CNN
F 1 "GND" H 10050 7030 30  0001 C CNN
F 2 "" H 10050 7100 60  0000 C CNN
F 3 "" H 10050 7100 60  0000 C CNN
	1    10050 7100
	1    0    0    -1  
$EndComp
Text Label 9800 6450 0    60   ~ 0
D+
Text Label 9800 6550 0    60   ~ 0
D-
Text Label 1550 2150 0    60   ~ 0
D+
Text Label 1550 2250 0    60   ~ 0
D-
$Comp
L GND #PWR016
U 1 1 563E311C
P 850 7700
F 0 "#PWR016" H 850 7700 30  0001 C CNN
F 1 "GND" H 850 7630 30  0001 C CNN
F 2 "" H 850 7700 60  0000 C CNN
F 3 "" H 850 7700 60  0000 C CNN
	1    850  7700
	1    0    0    -1  
$EndComp
Text Label 650  5850 3    60   ~ 0
FPGA CLK
Text Label 1500 5850 3    60   ~ 0
FPGA WP
Text Label 2350 5850 3    60   ~ 0
FPGA MISO
Text Label 3150 5850 3    60   ~ 0
FPGA MOSI
Text Label 3950 5850 3    60   ~ 0
FPGA HOLD
Text Label 4750 5850 3    60   ~ 0
FPGA CS
$Comp
L R R3
U 1 1 563E3EFB
P 1350 1750
F 0 "R3" V 1430 1750 40  0000 C CNN
F 1 "10K" V 1357 1751 40  0000 C CNN
F 2 "~" V 1280 1750 30  0000 C CNN
F 3 "~" H 1350 1750 30  0000 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
Text Label 9450 6250 0    60   ~ 0
FPGA CLK
Text Label 9450 6150 0    60   ~ 0
FPGA WP
Text Label 9450 6050 0    60   ~ 0
FPGA MISO
Text Label 9450 5850 0    60   ~ 0
FPGA MOSI
Text Label 9450 5750 0    60   ~ 0
FPGA HOLD
Text Label 9450 5650 0    60   ~ 0
FPGA CS
NoConn ~ 10200 6850
NoConn ~ 10200 6950
$Comp
L C C2
U 1 1 563E4776
P 1450 3350
F 0 "C2" H 1450 3450 40  0000 L CNN
F 1 "22pF" H 1456 3265 40  0000 L CNN
F 2 "~" H 1488 3200 30  0000 C CNN
F 3 "~" H 1450 3350 60  0000 C CNN
	1    1450 3350
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 563E4783
P 1450 3600
F 0 "C3" H 1450 3700 40  0000 L CNN
F 1 "22pF" H 1456 3515 40  0000 L CNN
F 2 "~" H 1488 3450 30  0000 C CNN
F 3 "~" H 1450 3600 60  0000 C CNN
	1    1450 3600
	0    -1   -1   0   
$EndComp
$Comp
L CRYSTAL_4_SMD X1
U 1 1 563E5105
P 850 3650
F 0 "X1" H 750 3550 30  0000 C CNN
F 1 "XTAL 16MHz" H 700 3450 30  0000 L CNN
F 2 "~" H 850 3650 60  0000 C CNN
F 3 "~" H 850 3650 60  0000 C CNN
	1    850  3650
	0    -1   -1   0   
$EndComp
NoConn ~ 10200 4150
NoConn ~ 10200 4250
NoConn ~ 10200 4350
NoConn ~ 10200 4450
Text Label 9350 4750 0    60   ~ 0
3.3V_DELAYED
Text Label 9450 4850 0    60   ~ 0
EPIT1_EPIT0
Text Label 9450 4950 0    60   ~ 0
KEY_ROW1
Text Label 9450 5050 0    60   ~ 0
KEY_COL3
Text Label 9350 5150 0    60   ~ 0
GPT_CMPOUT3
Text Label 9450 5250 0    60   ~ 0
GPT_CAPIN1
Text Label 9300 5350 0    60   ~ 0
CHG_PWRSWITCH
NoConn ~ 10100 1800
NoConn ~ 10200 1800
NoConn ~ 10400 1800
Text Label 6000 1000 0    60   ~ 0
TRACK_VERT
Text Label 6000 1150 0    60   ~ 0
TRACK_HORI
Text Label 11150 1050 2    60   ~ 0
BL_CNT
Text Label 5200 4050 2    60   ~ 0
TRACK_VERT
Text Label 5200 4150 2    60   ~ 0
TRACK_HORI
$Comp
L AVR-ISP-6-DR CON1
U 1 1 563ED253
P 4850 850
F 0 "CON1" H 4770 1090 50  0000 C CNN
F 1 "AVR-ISP-6-DR" H 4610 620 50  0000 L BNN
F 2 "AVR-ISP-6" V 4330 890 50  0001 C CNN
F 3 "~" H 4850 850 60  0000 C CNN
	1    4850 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 563ED260
P 5400 1000
F 0 "#PWR017" H 5400 1000 30  0001 C CNN
F 1 "GND" H 5400 930 30  0001 C CNN
F 2 "" H 5400 1000 60  0000 C CNN
F 3 "" H 5400 1000 60  0000 C CNN
	1    5400 1000
	1    0    0    -1  
$EndComp
Text Label 5400 850  2    60   ~ 0
MOSI
Text Label 4300 750  0    60   ~ 0
MISO
Text Label 4300 850  0    60   ~ 0
SCK
Text Label 4300 950  0    60   ~ 0
RST
Text Label 900  2250 0    60   ~ 0
RST
Text Label 4650 1450 2    60   ~ 0
SCK
Text Label 4650 1550 2    60   ~ 0
MOSI
Text Label 4650 1650 2    60   ~ 0
MISO
$Comp
L VCC #PWR018
U 1 1 563EDBAF
P 5400 700
F 0 "#PWR018" H 5400 800 30  0001 C CNN
F 1 "VCC" H 5400 800 30  0000 C CNN
F 2 "" H 5400 700 60  0000 C CNN
F 3 "" H 5400 700 60  0000 C CNN
	1    5400 700 
	1    0    0    -1  
$EndComp
Text Label 4600 3750 2    60   ~ 0
A
Text Label 4600 3850 2    60   ~ 0
B
Text Label 4600 3950 2    60   ~ 0
C
Text Label 6300 4100 3    60   ~ 0
A
Text Label 6400 4100 3    60   ~ 0
B
Text Label 6500 4100 3    60   ~ 0
C
Text Label 8200 4350 3    60   ~ 0
A
Text Label 8300 4350 3    60   ~ 0
B
Text Label 8400 4350 3    60   ~ 0
C
Text Label 10100 3950 3    60   ~ 0
A
Text Label 10200 3950 3    60   ~ 0
B
Text Label 10300 3950 3    60   ~ 0
C
Text Label 7050 3950 2    60   ~ 0
COM1
Text Label 8950 4200 2    60   ~ 0
COM2
Text Label 10850 3950 2    60   ~ 0
COM3
NoConn ~ 1850 1750
Text Label 5050 2200 2    60   ~ 0
COM1
Text Label 5050 2300 2    60   ~ 0
COM2
Text Label 5050 2400 2    60   ~ 0
COM3
$Comp
L R R13
U 1 1 563EFB19
P 5000 1750
F 0 "R13" V 5080 1750 40  0000 C CNN
F 1 "10K" V 5007 1751 40  0000 C CNN
F 2 "~" V 4930 1750 30  0000 C CNN
F 3 "~" H 5000 1750 30  0000 C CNN
	1    5000 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 563EFB1F
P 5000 1900
F 0 "R14" V 5080 1900 40  0000 C CNN
F 1 "10K" V 5007 1901 40  0000 C CNN
F 2 "~" V 4930 1900 30  0000 C CNN
F 3 "~" H 5000 1900 30  0000 C CNN
	1    5000 1900
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 563EFB25
P 5000 2050
F 0 "R15" V 5080 2050 40  0000 C CNN
F 1 "10K" V 5007 2051 40  0000 C CNN
F 2 "~" V 4930 2050 30  0000 C CNN
F 3 "~" H 5000 2050 30  0000 C CNN
	1    5000 2050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 563EFB35
P 5350 2150
F 0 "#PWR019" H 5350 2150 30  0001 C CNN
F 1 "GND" H 5350 2080 30  0001 C CNN
F 2 "" H 5350 2150 60  0000 C CNN
F 3 "" H 5350 2150 60  0000 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 563F09B8
P 10750 2450
F 0 "#PWR020" H 10750 2450 30  0001 C CNN
F 1 "GND" H 10750 2380 30  0001 C CNN
F 2 "" H 10750 2450 60  0000 C CNN
F 3 "" H 10750 2450 60  0000 C CNN
	1    10750 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 563F123A
P 8700 5600
F 0 "#PWR021" H 8700 5600 30  0001 C CNN
F 1 "GND" H 8700 5530 30  0001 C CNN
F 2 "" H 8700 5600 60  0000 C CNN
F 3 "" H 8700 5600 60  0000 C CNN
	1    8700 5600
	1    0    0    -1  
$EndComp
$Comp
L DPST_SMALL SW2
U 1 1 563E221B
P 7400 4850
F 0 "SW2" H 7400 4650 70  0000 C CNN
F 1 "BT_ASSCN" H 7400 5100 70  0000 C CNN
F 2 "~" H 7400 4850 60  0000 C CNN
F 3 "~" H 7400 4850 60  0000 C CNN
	1    7400 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 563F1826
P 7800 5050
F 0 "#PWR022" H 7800 5050 30  0001 C CNN
F 1 "GND" H 7800 4980 30  0001 C CNN
F 2 "" H 7800 5050 60  0000 C CNN
F 3 "" H 7800 5050 60  0000 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 563F192A
P 8800 4750
F 0 "R22" V 8700 4750 40  0000 C CNN
F 1 "10K" V 8807 4751 40  0000 C CNN
F 2 "~" V 8730 4750 30  0000 C CNN
F 3 "~" H 8800 4750 30  0000 C CNN
	1    8800 4750
	0    -1   -1   0   
$EndComp
Text Label 6900 2650 3    60   ~ 0
P1
Text Label 7000 2650 3    60   ~ 0
P2
Text Label 7100 2650 3    60   ~ 0
P3
Text Label 7200 2650 3    60   ~ 0
P4
Text Label 7300 2650 3    60   ~ 0
P5
Text Label 7400 2650 3    60   ~ 0
P6
Text Label 7500 2650 3    60   ~ 0
P8
Text Label 7650 2650 3    60   ~ 0
P9
Text Label 4700 2550 2    60   ~ 0
P2
Text Label 4700 2650 2    60   ~ 0
P3
Text Label 4700 2750 2    60   ~ 0
P4
Text Label 4700 2850 2    60   ~ 0
P5
Text Label 4700 2950 2    60   ~ 0
P6
Text Label 4700 3050 2    60   ~ 0
P8
Text Label 7800 2650 3    60   ~ 0
P10
Text Label 4700 3150 2    60   ~ 0
P9
Text Label 4700 3250 2    60   ~ 0
P10
Text Label 4700 3450 2    60   ~ 0
P1
$Comp
L MOSFET_N Q1
U 1 1 563EF0CC
P 1050 6450
F 0 "Q1" H 1060 6620 60  0000 R CNN
F 1 "MOSFET_N" H 1060 6300 60  0000 R CNN
F 2 "~" H 1050 6450 60  0000 C CNN
F 3 "~" H 1050 6450 60  0000 C CNN
	1    1050 6450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR023
U 1 1 563EF135
P 3250 5000
F 0 "#PWR023" H 3250 5100 30  0001 C CNN
F 1 "VDD" H 3250 5110 30  0000 C CNN
F 2 "" H 3250 5000 60  0000 C CNN
F 3 "" H 3250 5000 60  0000 C CNN
	1    3250 5000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 563EF15C
P 900 6800
F 0 "R1" V 980 6800 40  0000 C CNN
F 1 "10K" V 907 6801 40  0000 C CNN
F 2 "~" V 830 6800 30  0000 C CNN
F 3 "~" H 900 6800 30  0000 C CNN
	1    900  6800
	0    -1   -1   0   
$EndComp
$Comp
L LED_1206 D2
U 1 1 563AD658
P 2000 5300
F 0 "D2" H 2000 5400 50  0000 C CNN
F 1 "FPGA_WP" H 2000 5200 50  0000 C CNN
F 2 "~" H 2000 5300 60  0000 C CNN
F 3 "~" H 2000 5300 60  0000 C CNN
	1    2000 5300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 563EFA22
P 2000 5850
F 0 "R5" V 2080 5850 40  0000 C CNN
F 1 "1K" V 2007 5851 40  0000 C CNN
F 2 "~" V 1930 5850 30  0000 C CNN
F 3 "~" H 2000 5850 30  0000 C CNN
	1    2000 5850
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q2
U 1 1 563EFA28
P 1900 6450
F 0 "Q2" H 1910 6620 60  0000 R CNN
F 1 "MOSFET_N" H 1910 6300 60  0000 R CNN
F 2 "~" H 1900 6450 60  0000 C CNN
F 3 "~" H 1900 6450 60  0000 C CNN
	1    1900 6450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 563EFA2E
P 1750 6800
F 0 "R4" V 1830 6800 40  0000 C CNN
F 1 "10K" V 1757 6801 40  0000 C CNN
F 2 "~" V 1680 6800 30  0000 C CNN
F 3 "~" H 1750 6800 30  0000 C CNN
	1    1750 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 563EFA59
P 2850 5850
F 0 "R7" V 2930 5850 40  0000 C CNN
F 1 "1K" V 2857 5851 40  0000 C CNN
F 2 "~" V 2780 5850 30  0000 C CNN
F 3 "~" H 2850 5850 30  0000 C CNN
	1    2850 5850
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q3
U 1 1 563EFA5F
P 2750 6450
F 0 "Q3" H 2760 6620 60  0000 R CNN
F 1 "MOSFET_N" H 2760 6300 60  0000 R CNN
F 2 "~" H 2750 6450 60  0000 C CNN
F 3 "~" H 2750 6450 60  0000 C CNN
	1    2750 6450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 563EFA65
P 2600 6800
F 0 "R6" V 2680 6800 40  0000 C CNN
F 1 "10K" V 2607 6801 40  0000 C CNN
F 2 "~" V 2530 6800 30  0000 C CNN
F 3 "~" H 2600 6800 30  0000 C CNN
	1    2600 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 563EFA6B
P 3650 5850
F 0 "R10" V 3730 5850 40  0000 C CNN
F 1 "1K" V 3657 5851 40  0000 C CNN
F 2 "~" V 3580 5850 30  0000 C CNN
F 3 "~" H 3650 5850 30  0000 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q4
U 1 1 563EFA71
P 3550 6450
F 0 "Q4" H 3560 6620 60  0000 R CNN
F 1 "MOSFET_N" H 3560 6300 60  0000 R CNN
F 2 "~" H 3550 6450 60  0000 C CNN
F 3 "~" H 3550 6450 60  0000 C CNN
	1    3550 6450
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 563EFA77
P 3400 6800
F 0 "R8" V 3480 6800 40  0000 C CNN
F 1 "10K" V 3407 6801 40  0000 C CNN
F 2 "~" V 3330 6800 30  0000 C CNN
F 3 "~" H 3400 6800 30  0000 C CNN
	1    3400 6800
	0    -1   -1   0   
$EndComp
Text Label 5150 3550 2    60   ~ 0
BL_CNT
$Comp
L R R12
U 1 1 563F053D
P 4450 5850
F 0 "R12" V 4530 5850 40  0000 C CNN
F 1 "1K" V 4457 5851 40  0000 C CNN
F 2 "~" V 4380 5850 30  0000 C CNN
F 3 "~" H 4450 5850 30  0000 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 563F0543
P 5250 5850
F 0 "R17" V 5330 5850 40  0000 C CNN
F 1 "1K" V 5257 5851 40  0000 C CNN
F 2 "~" V 5180 5850 30  0000 C CNN
F 3 "~" H 5250 5850 30  0000 C CNN
	1    5250 5850
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q5
U 1 1 563F0571
P 4350 6450
F 0 "Q5" H 4360 6620 60  0000 R CNN
F 1 "MOSFET_N" H 4360 6300 60  0000 R CNN
F 2 "~" H 4350 6450 60  0000 C CNN
F 3 "~" H 4350 6450 60  0000 C CNN
	1    4350 6450
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q6
U 1 1 563F0577
P 5150 6450
F 0 "Q6" H 5160 6620 60  0000 R CNN
F 1 "MOSFET_N" H 5160 6300 60  0000 R CNN
F 2 "~" H 5150 6450 60  0000 C CNN
F 3 "~" H 5150 6450 60  0000 C CNN
	1    5150 6450
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 563F057D
P 4200 6800
F 0 "R11" V 4280 6800 40  0000 C CNN
F 1 "10K" V 4207 6801 40  0000 C CNN
F 2 "~" V 4130 6800 30  0000 C CNN
F 3 "~" H 4200 6800 30  0000 C CNN
	1    4200 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 563F0583
P 5000 6800
F 0 "R16" V 5080 6800 40  0000 C CNN
F 1 "10K" V 5007 6801 40  0000 C CNN
F 2 "~" V 4930 6800 30  0000 C CNN
F 3 "~" H 5000 6800 30  0000 C CNN
	1    5000 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 563F05B7
P 5700 5850
F 0 "R18" V 5780 5850 40  0000 C CNN
F 1 "1K" V 5707 5851 40  0000 C CNN
F 2 "~" V 5630 5850 30  0000 C CNN
F 3 "~" H 5700 5850 30  0000 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N Q7
U 1 1 563F05BD
P 5800 6450
F 0 "Q7" H 5810 6620 60  0000 R CNN
F 1 "MOSFET_N" H 5810 6300 60  0000 R CNN
F 2 "~" H 5800 6450 60  0000 C CNN
F 3 "~" H 5800 6450 60  0000 C CNN
	1    5800 6450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 563F26E5
P 3000 6950
F 0 "#PWR024" H 3000 6950 30  0001 C CNN
F 1 "GND" H 3000 6880 30  0001 C CNN
F 2 "" H 3000 6950 60  0000 C CNN
F 3 "" H 3000 6950 60  0000 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Text Label 6300 4750 2    60   ~ 0
5V_DELAYED
Text Label 3250 7400 0    60   ~ 0
GPT_CMPOUT3
NoConn ~ 4300 1350
NoConn ~ 4300 2050
NoConn ~ 4300 2250
NoConn ~ 4300 2350
NoConn ~ 4300 4250
$Comp
L OPTO_NPN Q8
U 1 1 56400754
P 6900 5750
F 0 "Q8" H 7050 5800 50  0000 L CNN
F 1 "ALS_PT19" H 7050 5650 50  0000 L CNN
F 2 "~" H 6900 5750 60  0000 C CNN
F 3 "~" H 6900 5750 60  0000 C CNN
	1    6900 5750
	-1   0    0    -1  
$EndComp
Text Label 9450 4650 0    60   ~ 0
TS_ANA
$Comp
L R R20
U 1 1 56400A05
P 6800 6250
F 0 "R20" V 6880 6250 40  0000 C CNN
F 1 "10K" V 6807 6251 40  0000 C CNN
F 2 "~" V 6730 6250 30  0000 C CNN
F 3 "~" H 6800 6250 30  0000 C CNN
	1    6800 6250
	-1   0    0    1   
$EndComp
Text Label 7550 5950 2    60   ~ 0
TS_ANA
$Comp
L C C5
U 1 1 56401224
P 3000 7450
F 0 "C5" H 3000 7550 40  0000 L CNN
F 1 "1uF" H 3006 7365 40  0000 L CNN
F 2 "~" H 3038 7300 30  0000 C CNN
F 3 "~" H 3000 7450 60  0000 C CNN
	1    3000 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5640122A
P 3950 7700
F 0 "#PWR025" H 3950 7700 30  0001 C CNN
F 1 "GND" H 3950 7630 30  0001 C CNN
F 2 "" H 3950 7700 60  0000 C CNN
F 3 "" H 3950 7700 60  0000 C CNN
	1    3950 7700
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 56401230
P 3500 7500
F 0 "R9" V 3580 7500 40  0000 C CNN
F 1 "10K" V 3507 7501 40  0000 C CNN
F 2 "~" V 3430 7500 30  0000 C CNN
F 3 "~" H 3500 7500 30  0000 C CNN
	1    3500 7500
	0    1    1    0   
$EndComp
Text Label 2400 7250 0    60   ~ 0
5V_DELAYED
Text Label 6300 5800 3    60   ~ 0
EPIT1_EPIT0
$Comp
L C C6
U 1 1 56401BC8
P 6200 7300
F 0 "C6" H 6200 7400 40  0000 L CNN
F 1 "1uF" H 6206 7215 40  0000 L CNN
F 2 "~" H 6238 7150 30  0000 C CNN
F 3 "~" H 6200 7300 60  0000 C CNN
	1    6200 7300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR026
U 1 1 56401BCE
P 6600 7350
F 0 "#PWR026" H 6600 7350 30  0001 C CNN
F 1 "GND" H 6600 7280 30  0001 C CNN
F 2 "" H 6600 7350 60  0000 C CNN
F 3 "" H 6600 7350 60  0000 C CNN
	1    6600 7350
	1    0    0    -1  
$EndComp
$Comp
L R DNP1
U 1 1 56401E9E
P 6000 7500
F 0 "DNP1" V 6080 7500 40  0000 C CNN
F 1 "0" V 6007 7501 40  0000 C CNN
F 2 "~" V 5930 7500 30  0000 C CNN
F 3 "~" H 6000 7500 30  0000 C CNN
	1    6000 7500
	0    -1   -1   0   
$EndComp
Text Label 6900 7700 2    60   ~ 0
GPT_CAPIN1
$Comp
L R R19
U 1 1 564022E9
P 5950 6950
F 0 "R19" V 6030 6950 40  0000 C CNN
F 1 "10K" V 5957 6951 40  0000 C CNN
F 2 "~" V 5880 6950 30  0000 C CNN
F 3 "~" H 5950 6950 30  0000 C CNN
	1    5950 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 1800 7800 1850
Wire Wire Line
	7800 1850 6050 1850
Wire Wire Line
	6050 1850 6050 2500
Wire Wire Line
	6150 2500 6150 1900
Wire Wire Line
	6150 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1800
Wire Wire Line
	6250 2500 6250 1950
Wire Wire Line
	6250 1950 8300 1950
Wire Wire Line
	8300 1950 8300 1800
Wire Wire Line
	6350 2500 6350 2000
Wire Wire Line
	6350 2000 8400 2000
Wire Wire Line
	8400 2000 8400 1800
Wire Wire Line
	6450 2500 6450 2050
Wire Wire Line
	6450 2050 8500 2050
Wire Wire Line
	8500 2050 8500 1800
Wire Wire Line
	6550 2500 6550 2100
Wire Wire Line
	6550 2100 8600 2100
Wire Wire Line
	8600 2100 8600 1800
Wire Wire Line
	6650 2500 6650 2150
Wire Wire Line
	6650 2150 8700 2150
Wire Wire Line
	8700 2150 8700 1800
Wire Wire Line
	6750 2500 6750 2200
Wire Wire Line
	6750 2200 8800 2200
Wire Wire Line
	8800 2200 8800 1800
Wire Wire Line
	7950 2250 7950 2750
Wire Wire Line
	7950 2250 8900 2250
Wire Wire Line
	8900 2250 8900 1800
Wire Wire Line
	8050 2300 8050 2750
Wire Wire Line
	8050 2300 9000 2300
Wire Wire Line
	9000 2300 9000 1800
Wire Wire Line
	8150 2350 8150 2750
Wire Wire Line
	8150 2350 9100 2350
Wire Wire Line
	9100 2350 9100 1800
Wire Wire Line
	8250 2400 8250 2750
Wire Wire Line
	8250 2400 9200 2400
Wire Wire Line
	9200 2400 9200 1800
Wire Wire Line
	8350 2750 8350 2450
Wire Wire Line
	8350 2450 9300 2450
Wire Wire Line
	9300 2450 9300 1800
Wire Wire Line
	8450 2750 8450 2500
Wire Wire Line
	8450 2500 9400 2500
Wire Wire Line
	9400 2500 9400 1800
Wire Wire Line
	8550 2750 8550 2550
Wire Wire Line
	8550 2550 9500 2550
Wire Wire Line
	9500 2550 9500 1800
Wire Wire Line
	8650 2750 8650 2600
Wire Wire Line
	8650 2600 9600 2600
Wire Wire Line
	9600 2600 9600 1800
Wire Wire Line
	9850 2500 9850 2450
Wire Wire Line
	9850 2450 9700 2450
Wire Wire Line
	9700 2450 9700 1800
Wire Wire Line
	9950 2500 9950 2400
Wire Wire Line
	9950 2400 9800 2400
Wire Wire Line
	9800 2400 9800 1800
Wire Wire Line
	9900 1800 9900 2350
Wire Wire Line
	9900 2350 10050 2350
Wire Wire Line
	10050 2350 10050 2500
Wire Wire Line
	10000 1800 10000 2300
Wire Wire Line
	10000 2300 10150 2300
Wire Wire Line
	10150 2300 10150 2500
Wire Wire Line
	1350 1350 1850 1350
Wire Wire Line
	1750 950  1750 2050
Wire Wire Line
	1750 1450 1850 1450
Connection ~ 1750 1350
Wire Wire Line
	1750 1550 1850 1550
Connection ~ 1750 1450
Wire Wire Line
	1750 1650 1850 1650
Connection ~ 1750 1550
Wire Wire Line
	1750 1850 1850 1850
Connection ~ 1750 1650
Wire Wire Line
	1750 2050 1850 2050
Connection ~ 1750 1850
Wire Wire Line
	1850 3950 1750 3950
Connection ~ 1750 3950
Wire Wire Line
	1850 4050 1750 4050
Connection ~ 1750 4050
Wire Wire Line
	1850 4150 1750 4150
Connection ~ 1750 4150
Wire Wire Line
	750  4250 1850 4250
Connection ~ 1750 4250
Wire Wire Line
	1850 2450 1750 2450
Wire Wire Line
	1750 2450 1750 4450
Wire Wire Line
	1850 2350 1550 2350
Wire Wire Line
	1550 2750 1750 2750
Connection ~ 1750 2750
Wire Wire Line
	1850 2800 1850 2750
Wire Wire Line
	1300 2800 1850 2800
Wire Wire Line
	10750 1250 10850 1250
Wire Wire Line
	10200 5450 10200 5550
Wire Wire Line
	9450 5450 10200 5450
Wire Wire Line
	10750 850  10850 850 
Wire Wire Line
	10850 850  10850 900 
Wire Wire Line
	5400 3200 5300 3200
Wire Wire Line
	5300 3200 5300 3300
Wire Wire Line
	7300 3350 7200 3350
Wire Wire Line
	7200 3350 7200 3450
Wire Wire Line
	9200 3200 9100 3200
Wire Wire Line
	9100 3200 9100 3300
Wire Wire Line
	9200 3200 9200 3850
Wire Wire Line
	7300 3350 7300 4100
Wire Wire Line
	5400 3200 5400 3850
Wire Wire Line
	9200 3000 9100 3000
Wire Wire Line
	7300 3250 7200 3250
Wire Wire Line
	5400 3000 5300 3000
Wire Wire Line
	1300 3000 1750 3000
Connection ~ 1750 3000
Wire Wire Line
	5650 7300 6000 7300
Wire Wire Line
	9550 6650 10200 6650
Wire Wire Line
	10200 6750 10050 6750
Wire Wire Line
	10050 4550 10050 7100
Wire Wire Line
	10200 6350 10050 6350
Connection ~ 10050 6750
Wire Wire Line
	10200 5950 10050 5950
Connection ~ 10050 6350
Wire Wire Line
	10200 4550 10050 4550
Connection ~ 10050 5950
Wire Wire Line
	10200 6450 9800 6450
Wire Wire Line
	10200 6550 9800 6550
Wire Wire Line
	1850 2150 1550 2150
Wire Wire Line
	1850 2250 1550 2250
Wire Wire Line
	10200 7050 9900 7050
Wire Wire Line
	9900 7050 9900 6650
Connection ~ 9900 6650
Wire Wire Line
	1350 2000 1350 2800
Connection ~ 1350 2800
Wire Wire Line
	1350 1500 1350 1350
Wire Wire Line
	10200 6250 9450 6250
Wire Wire Line
	10200 6150 9450 6150
Wire Wire Line
	10200 6050 9450 6050
Wire Wire Line
	10200 5850 9450 5850
Wire Wire Line
	10200 5750 9450 5750
Wire Wire Line
	10200 5650 9450 5650
Wire Wire Line
	1850 3350 1650 3350
Wire Wire Line
	1850 3450 1650 3450
Wire Wire Line
	1650 3450 1650 3600
Wire Wire Line
	1250 3350 850  3350
Wire Wire Line
	1250 3600 1250 3950
Wire Wire Line
	1250 3950 850  3950
Wire Wire Line
	1000 3650 1000 4250
Wire Wire Line
	850  3350 850  3450
Wire Wire Line
	850  3950 850  3850
Wire Wire Line
	950  3650 1000 3650
Wire Wire Line
	750  3650 750  4250
Connection ~ 1000 4250
Wire Wire Line
	8500 5350 10200 5350
Wire Wire Line
	10200 5250 9450 5250
Wire Wire Line
	10200 5150 9350 5150
Wire Wire Line
	10200 5050 9450 5050
Wire Wire Line
	10200 4850 9450 4850
Wire Wire Line
	10250 2500 10250 1850
Wire Wire Line
	10250 1850 10300 1850
Wire Wire Line
	10300 1850 10300 1800
Wire Wire Line
	6850 850  6700 850 
Wire Wire Line
	6700 850  6700 900 
Wire Wire Line
	6850 1300 6700 1300
Wire Wire Line
	6850 1000 6000 1000
Wire Wire Line
	6850 1150 6000 1150
Wire Wire Line
	11150 1050 10750 1050
Wire Wire Line
	5150 950  5400 950 
Wire Wire Line
	5400 950  5400 1000
Wire Wire Line
	5150 850  5400 850 
Wire Wire Line
	4550 750  4300 750 
Wire Wire Line
	4550 850  4300 850 
Wire Wire Line
	4550 950  4300 950 
Wire Wire Line
	1350 2250 900  2250
Connection ~ 1350 2250
Wire Wire Line
	4650 1450 4300 1450
Wire Wire Line
	4300 1550 4650 1550
Wire Wire Line
	4650 1650 4300 1650
Wire Wire Line
	5150 750  5400 750 
Wire Wire Line
	5400 750  5400 700 
Wire Wire Line
	6300 3850 6300 4100
Wire Wire Line
	6400 3850 6400 4100
Wire Wire Line
	6500 3850 6500 4100
Wire Wire Line
	8200 4100 8200 4350
Wire Wire Line
	8300 4100 8300 4350
Wire Wire Line
	8400 4100 8400 4350
Wire Wire Line
	10100 3850 10100 3950
Wire Wire Line
	10200 3850 10200 3950
Wire Wire Line
	10300 3850 10300 3950
Wire Wire Line
	5400 3850 6100 3850
Connection ~ 5400 3400
Wire Wire Line
	7300 4100 8000 4100
Connection ~ 7300 3650
Wire Wire Line
	9200 3850 9900 3850
Connection ~ 9200 3400
Wire Wire Line
	10500 3850 10500 3950
Wire Wire Line
	10500 3950 10850 3950
Wire Wire Line
	8600 4100 8600 4200
Wire Wire Line
	8600 4200 8950 4200
Wire Wire Line
	6700 3850 6700 3950
Wire Wire Line
	6700 3950 7050 3950
Wire Wire Line
	4300 1750 4750 1750
Wire Wire Line
	4300 1850 4750 1850
Wire Wire Line
	4300 1950 4650 1950
Wire Wire Line
	4750 1850 4750 1900
Wire Wire Line
	4650 1950 4650 2050
Wire Wire Line
	4650 2050 4750 2050
Wire Wire Line
	5250 1750 5350 1750
Wire Wire Line
	5350 1750 5350 2150
Wire Wire Line
	5250 1900 5350 1900
Connection ~ 5350 1900
Wire Wire Line
	5250 2050 5350 2050
Connection ~ 5350 2050
Wire Wire Line
	4600 1750 4600 2200
Wire Wire Line
	4600 2200 5050 2200
Connection ~ 4600 1750
Wire Wire Line
	4550 1850 4550 2300
Wire Wire Line
	4550 2300 5050 2300
Connection ~ 4550 1850
Wire Wire Line
	4500 1950 4500 2400
Wire Wire Line
	4500 2400 5050 2400
Connection ~ 4500 1950
Wire Wire Line
	10350 2500 10350 2300
Wire Wire Line
	10350 2300 10750 2300
Wire Wire Line
	10750 2300 10750 2450
Wire Wire Line
	10450 2500 10450 2300
Connection ~ 10450 2300
Wire Wire Line
	10550 2500 10550 2300
Connection ~ 10550 2300
Wire Wire Line
	8500 5550 8700 5550
Wire Wire Line
	8700 5550 8700 5600
Wire Wire Line
	7700 4750 8550 4750
Wire Wire Line
	7700 4950 7950 4950
Wire Wire Line
	7800 4950 7800 5050
Wire Wire Line
	4300 3750 4600 3750
Wire Wire Line
	4600 3850 4300 3850
Wire Wire Line
	4300 3950 4600 3950
Wire Wire Line
	4300 4050 5200 4050
Wire Wire Line
	4300 4150 5200 4150
Wire Wire Line
	7200 1800 7200 2300
Wire Wire Line
	7200 2300 6900 2300
Wire Wire Line
	6900 2300 6900 2650
Wire Wire Line
	7300 1800 7300 2350
Wire Wire Line
	7300 2350 7000 2350
Wire Wire Line
	7000 2350 7000 2650
Wire Wire Line
	7400 1800 7400 2400
Wire Wire Line
	7400 2400 7100 2400
Wire Wire Line
	7100 2400 7100 2650
Wire Wire Line
	7500 1800 7500 2450
Wire Wire Line
	7500 2450 7200 2450
Wire Wire Line
	7200 2450 7200 2650
Wire Wire Line
	7600 1800 7600 2500
Wire Wire Line
	7600 2500 7300 2500
Wire Wire Line
	7300 2500 7300 2650
Wire Wire Line
	7700 1800 7700 2550
Wire Wire Line
	7700 2550 7400 2550
Wire Wire Line
	7400 2550 7400 2650
Wire Wire Line
	7900 1800 7900 2600
Wire Wire Line
	7900 2600 7500 2600
Wire Wire Line
	7500 2600 7500 2650
Wire Wire Line
	8000 2350 7650 2350
Wire Wire Line
	7650 2350 7650 2650
Wire Wire Line
	8000 2350 8000 1800
Wire Wire Line
	8100 1800 8100 2500
Wire Wire Line
	8100 2500 7800 2500
Wire Wire Line
	7800 2500 7800 2650
Wire Wire Line
	4700 2550 4300 2550
Wire Wire Line
	4300 2650 4700 2650
Wire Wire Line
	4300 2750 4700 2750
Wire Wire Line
	4300 2850 4700 2850
Wire Wire Line
	4300 2950 4700 2950
Wire Wire Line
	4300 3050 4700 3050
Wire Wire Line
	4300 3150 4700 3150
Wire Wire Line
	4300 3250 4700 3250
Wire Wire Line
	4300 3450 4700 3450
Wire Wire Line
	1150 5500 1150 5600
Wire Wire Line
	1150 6100 1150 6250
Wire Wire Line
	650  6450 850  6450
Wire Wire Line
	650  5850 650  6800
Connection ~ 650  6450
Wire Wire Line
	1150 6650 1150 6800
Wire Wire Line
	9100 4550 9100 4750
Connection ~ 9100 4750
Wire Wire Line
	8050 4550 8700 4550
Wire Wire Line
	7700 4400 8050 4400
Wire Wire Line
	8050 4400 8050 4550
Wire Wire Line
	7200 4400 6950 4400
Wire Wire Line
	6950 4400 6950 4750
Wire Wire Line
	6950 4750 7100 4750
Wire Wire Line
	4300 3550 5150 3550
Wire Wire Line
	2000 5500 2000 5600
Wire Wire Line
	2000 6100 2000 6250
Wire Wire Line
	2000 6650 2000 6800
Wire Wire Line
	1700 6450 1500 6450
Wire Wire Line
	1500 5850 1500 6800
Connection ~ 1500 6450
Wire Wire Line
	2850 5500 2850 5600
Wire Wire Line
	2850 6100 2850 6250
Wire Wire Line
	2850 6650 2850 6800
Wire Wire Line
	2550 6450 2350 6450
Wire Wire Line
	2350 5850 2350 6800
Connection ~ 2350 6450
Wire Wire Line
	3650 5500 3650 5600
Wire Wire Line
	3650 6100 3650 6250
Wire Wire Line
	3650 6650 3650 6800
Wire Wire Line
	3350 6450 3150 6450
Wire Wire Line
	3150 5850 3150 6800
Connection ~ 3150 6450
Wire Wire Line
	4450 5500 4450 5600
Wire Wire Line
	4450 6100 4450 6250
Wire Wire Line
	4450 6650 4450 6800
Wire Wire Line
	4150 6450 3950 6450
Wire Wire Line
	3950 5850 3950 6800
Connection ~ 3950 6450
Wire Wire Line
	5250 5500 5250 5600
Wire Wire Line
	5250 6100 5250 6250
Wire Wire Line
	5250 6650 5250 6800
Wire Wire Line
	4950 6450 4750 6450
Wire Wire Line
	4750 5850 4750 6800
Connection ~ 4750 6450
Wire Wire Line
	5700 5500 5700 5600
Wire Wire Line
	5700 6100 5700 6250
Wire Wire Line
	6000 6450 6300 6450
Wire Wire Line
	6300 6450 6300 5800
Wire Wire Line
	1150 6650 6800 6650
Connection ~ 2000 6650
Connection ~ 2850 6650
Connection ~ 3650 6650
Connection ~ 4450 6650
Connection ~ 5250 6650
Wire Wire Line
	3000 6650 3000 6950
Connection ~ 3000 6650
Wire Wire Line
	1150 5100 5250 5100
Connection ~ 2000 5100
Connection ~ 2850 5100
Connection ~ 3650 5100
Connection ~ 4450 5100
Wire Wire Line
	3250 5000 3250 5100
Connection ~ 3250 5100
Wire Wire Line
	5700 5100 5700 4750
Wire Wire Line
	5700 4750 6300 4750
Wire Wire Line
	10200 4650 9450 4650
Wire Wire Line
	6800 5550 6800 5100
Wire Wire Line
	6800 5100 5700 5100
Wire Wire Line
	6800 6650 6800 6500
Connection ~ 5700 6650
Wire Wire Line
	6800 5950 6800 6000
Wire Wire Line
	6800 5950 7550 5950
Wire Wire Line
	4150 7550 3950 7550
Wire Wire Line
	3950 7550 3950 7700
Wire Wire Line
	3000 7650 3950 7650
Connection ~ 3950 7650
Wire Wire Line
	3250 7500 3250 7650
Connection ~ 3250 7650
Wire Wire Line
	4150 7400 3250 7400
Wire Wire Line
	3750 7500 3800 7500
Wire Wire Line
	3800 7500 3800 7400
Connection ~ 3800 7400
Wire Wire Line
	2400 7250 4150 7250
Connection ~ 3000 7250
Wire Wire Line
	6400 7300 6600 7300
Wire Wire Line
	6600 7300 6600 7350
Connection ~ 5850 7300
Wire Wire Line
	5750 7500 5650 7500
Wire Wire Line
	6250 7500 6250 7700
Wire Wire Line
	6250 7700 6900 7700
Wire Wire Line
	5700 6950 5700 7500
Connection ~ 5700 7500
Wire Wire Line
	6200 6950 7050 6950
Text Label 7050 6950 2    60   ~ 0
3.3V_DELAYED
$Comp
L C C1
U 1 1 56402B6E
P 850 7350
F 0 "C1" H 850 7450 40  0000 L CNN
F 1 "0.1uF" H 856 7265 40  0000 L CNN
F 2 "~" H 888 7200 30  0000 C CNN
F 3 "~" H 850 7350 60  0000 C CNN
	1    850  7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  7550 850  7700
Wire Wire Line
	850  7150 1600 7150
Text Label 1600 7150 2    60   ~ 0
3.3V_DELAYED
$Comp
L CONN_3 K1
U 1 1 56402FB2
P 2050 7450
F 0 "K1" V 2000 7450 50  0000 C CNN
F 1 "CASE_OPEN" H 2250 7250 40  0000 C CNN
F 2 "~" H 2050 7450 60  0000 C CNN
F 3 "~" H 2050 7450 60  0000 C CNN
	1    2050 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7450 1100 7450
Text Label 1100 7450 0    60   ~ 0
KEY_COL3
Wire Wire Line
	1700 7350 1450 7350
Wire Wire Line
	1450 7350 1450 7150
Connection ~ 1450 7150
Wire Wire Line
	1700 7550 850  7550
$Comp
L C C7
U 1 1 5640358E
P 9450 6750
F 0 "C7" H 9450 6850 40  0000 L CNN
F 1 "100uF" H 9456 6665 40  0000 L CNN
F 2 "~" H 9488 6600 30  0000 C CNN
F 3 "~" H 9450 6750 60  0000 C CNN
	1    9450 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 6550 9550 6650
Wire Wire Line
	9100 6550 9550 6550
Wire Wire Line
	9450 6550 9450 6450
Wire Wire Line
	9100 6950 10050 6950
Connection ~ 10050 6950
$Comp
L DIODE D9
U 1 1 56403B74
P 9100 6750
F 0 "D9" H 9100 6850 40  0000 C CNN
F 1 "RSA5M" H 9100 6650 40  0000 C CNN
F 2 "~" H 9100 6750 60  0000 C CNN
F 3 "~" H 9100 6750 60  0000 C CNN
	1    9100 6750
	0    -1   -1   0   
$EndComp
Connection ~ 9450 6950
Connection ~ 9450 6550
$Comp
L RCLAMP0502B U3
U 1 1 56403FC5
P 8100 6450
F 0 "U3" V 8450 6450 60  0000 C CNN
F 1 "RCLAMP0502B" V 7800 6400 60  0000 C CNN
F 2 "" H 8100 6450 60  0000 C CNN
F 3 "" H 8100 6450 60  0000 C CNN
	1    8100 6450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 56403FE1
P 8700 6600
F 0 "#PWR027" H 8700 6600 30  0001 C CNN
F 1 "GND" H 8700 6530 30  0001 C CNN
F 2 "" H 8700 6600 60  0000 C CNN
F 3 "" H 8700 6600 60  0000 C CNN
	1    8700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 6450 8700 6450
Wire Wire Line
	8700 6450 8700 6600
Wire Wire Line
	7650 6300 7250 6300
Wire Wire Line
	7650 6600 7250 6600
Text Label 7250 6300 0    60   ~ 0
D+
Text Label 7250 6600 0    60   ~ 0
D-
$Comp
L C C8
U 1 1 56417885
P 8150 4950
F 0 "C8" H 8150 5050 40  0000 L CNN
F 1 "0.1uF" V 8100 5050 40  0000 L CNN
F 2 "~" H 8188 4800 30  0000 C CNN
F 3 "~" H 8150 4950 60  0000 C CNN
	1    8150 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 4750 10200 4750
Wire Wire Line
	8350 4950 10200 4950
Wire Wire Line
	8500 4950 8500 4750
Connection ~ 8500 4750
Connection ~ 8500 4950
Connection ~ 7800 4950
$EndSCHEMATC

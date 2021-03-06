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
LIBS:Lucid-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "30 dec 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM358 U1
U 1 1 543889C3
P 7200 1650
F 0 "U1" H 7150 1850 60  0000 L CNN
F 1 "LM358" H 7150 1400 60  0000 L CNN
F 2 "" H 7200 1650 60  0000 C CNN
F 3 "" H 7200 1650 60  0000 C CNN
	1    7200 1650
	1    0    0    -1  
$EndComp
$Comp
L LM358 U1
U 2 1 543889E0
P 8950 2950
F 0 "U1" H 8900 3150 60  0000 L CNN
F 1 "LM358" H 8900 2700 60  0000 L CNN
F 2 "" H 8950 2950 60  0000 C CNN
F 3 "" H 8950 2950 60  0000 C CNN
	2    8950 2950
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-A IC1
U 1 1 5438982E
P 2400 2850
F 0 "IC1" H 1650 4100 40  0000 L BNN
F 1 "ATMEGA328P-A" H 2800 1450 40  0000 L BNN
F 2 "TQFP32" H 2400 2850 30  0000 C CIN
F 3 "" H 2400 2850 60  0000 C CNN
	1    2400 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54389C83
P 7100 2150
F 0 "#PWR01" H 7100 2150 30  0001 C CNN
F 1 "GND" H 7100 2080 30  0001 C CNN
F 2 "" H 7100 2150 60  0000 C CNN
F 3 "" H 7100 2150 60  0000 C CNN
	1    7100 2150
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5438A068
P 7600 2350
F 0 "C3" H 7600 2450 40  0000 L CNN
F 1 ".22uF" H 7606 2265 40  0000 L CNN
F 2 "~" H 7638 2200 30  0000 C CNN
F 3 "~" H 7600 2350 60  0000 C CNN
	1    7600 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5438A108
P 7800 2600
F 0 "R5" V 7880 2600 40  0000 C CNN
F 1 "13k" V 7807 2601 40  0000 C CNN
F 2 "~" V 7730 2600 30  0000 C CNN
F 3 "~" H 7800 2600 30  0000 C CNN
	1    7800 2600
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5438A230
P 7800 3050
F 0 "C4" H 7800 3150 40  0000 L CNN
F 1 ".22uF" H 7806 2965 40  0000 L CNN
F 2 "~" H 7838 2900 30  0000 C CNN
F 3 "~" H 7800 3050 60  0000 C CNN
	1    7800 3050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5438A257
P 7800 3250
F 0 "#PWR02" H 7800 3250 30  0001 C CNN
F 1 "GND" H 7800 3180 30  0001 C CNN
F 2 "" H 7800 3250 60  0000 C CNN
F 3 "" H 7800 3250 60  0000 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5438A295
P 8850 3350
F 0 "#PWR03" H 8850 3350 30  0001 C CNN
F 1 "GND" H 8850 3280 30  0001 C CNN
F 2 "" H 8850 3350 60  0000 C CNN
F 3 "" H 8850 3350 60  0000 C CNN
	1    8850 3350
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5438A2B8
P 9250 3550
F 0 "C5" H 9250 3650 40  0000 L CNN
F 1 ".22uF" H 9256 3465 40  0000 L CNN
F 2 "~" H 9288 3400 30  0000 C CNN
F 3 "~" H 9250 3550 60  0000 C CNN
	1    9250 3550
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5438A2D5
P 8200 3550
F 0 "R6" V 8280 3550 40  0000 C CNN
F 1 "13k" V 8207 3551 40  0000 C CNN
F 2 "~" V 8130 3550 30  0000 C CNN
F 3 "~" H 8200 3550 30  0000 C CNN
	1    8200 3550
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5438A323
P 7200 3300
F 0 "R3" V 7280 3300 40  0000 C CNN
F 1 "2.2k" V 7207 3301 40  0000 C CNN
F 2 "~" V 7130 3300 30  0000 C CNN
F 3 "~" H 7200 3300 30  0000 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5438A347
P 7200 3800
F 0 "R4" V 7280 3800 40  0000 C CNN
F 1 "2.2k" V 7207 3801 40  0000 C CNN
F 2 "~" V 7130 3800 30  0000 C CNN
F 3 "~" H 7200 3800 30  0000 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5438A3B1
P 6350 2000
F 0 "RV1" H 6350 1900 50  0000 C CNN
F 1 "20k" H 6350 2000 50  0000 C CNN
F 2 "~" H 6350 2000 60  0000 C CNN
F 3 "~" H 6350 2000 60  0000 C CNN
	1    6350 2000
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5438A3D6
P 6200 2650
F 0 "R2" V 6280 2650 40  0000 C CNN
F 1 "10k" V 6207 2651 40  0000 C CNN
F 2 "~" V 6130 2650 30  0000 C CNN
F 3 "~" H 6200 2650 30  0000 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5438A42A
P 7350 4050
F 0 "#PWR04" H 7350 4050 30  0001 C CNN
F 1 "GND" H 7350 3980 30  0001 C CNN
F 2 "" H 7350 4050 60  0000 C CNN
F 3 "" H 7350 4050 60  0000 C CNN
	1    7350 4050
	0    -1   -1   0   
$EndComp
Text Label 7200 2900 0    60   ~ 0
OCON
$Comp
L CONN_3X2 P1
U 1 1 5438A5AA
P 3700 1350
F 0 "P1" H 3700 1600 50  0000 C CNN
F 1 "ICSP" V 3700 1400 40  0000 C CNN
F 2 "" H 3700 1350 60  0000 C CNN
F 3 "" H 3700 1350 60  0000 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 5438A5EE
P 4150 2400
F 0 "X1" H 4150 2550 60  0000 C CNN
F 1 "16MHz" H 4150 2250 60  0000 C CNN
F 2 "~" H 4150 2400 60  0000 C CNN
F 3 "~" H 4150 2400 60  0000 C CNN
	1    4150 2400
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 5438A684
P 4600 2100
F 0 "C1" H 4600 2200 40  0000 L CNN
F 1 "22pF" H 4606 2015 40  0000 L CNN
F 2 "~" H 4638 1950 30  0000 C CNN
F 3 "~" H 4600 2100 60  0000 C CNN
	1    4600 2100
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 5438A691
P 4600 2700
F 0 "C2" H 4600 2800 40  0000 L CNN
F 1 "22pF" H 4606 2615 40  0000 L CNN
F 2 "~" H 4638 2550 30  0000 C CNN
F 3 "~" H 4600 2700 60  0000 C CNN
	1    4600 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5438A731
P 4950 2400
F 0 "#PWR05" H 4950 2400 30  0001 C CNN
F 1 "GND" H 4950 2330 30  0001 C CNN
F 2 "" H 4950 2400 60  0000 C CNN
F 3 "" H 4950 2400 60  0000 C CNN
	1    4950 2400
	0    -1   -1   0   
$EndComp
$Comp
L ICL7660 U5
U 1 1 543A9E0E
P 8600 6450
F 0 "U5" H 8800 6850 70  0000 L CNN
F 1 "ICL7660" H 8650 6000 70  0000 L CNN
F 2 "" H 8600 6450 60  0000 C CNN
F 3 "" H 8600 6450 60  0000 C CNN
	1    8600 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 543A9EE0
P 8550 7100
F 0 "#PWR06" H 8550 7100 30  0001 C CNN
F 1 "GND" H 8550 7030 30  0001 C CNN
F 2 "" H 8550 7100 60  0000 C CNN
F 3 "" H 8550 7100 60  0000 C CNN
	1    8550 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 543A9F7E
P 9850 6300
F 0 "#PWR07" H 9850 6300 30  0001 C CNN
F 1 "GND" H 9850 6230 30  0001 C CNN
F 2 "" H 9850 6300 60  0000 C CNN
F 3 "" H 9850 6300 60  0000 C CNN
	1    9850 6300
	0    -1   -1   0   
$EndComp
$Comp
L -8V #PWR26
U 1 1 543AA026
P 9450 5900
F 0 "#PWR26" H 9450 6030 20  0001 C CNN
F 1 "-8V" H 9450 6000 30  0000 C CNN
F 2 "" H 9450 5900 60  0000 C CNN
F 3 "" H 9450 5900 60  0000 C CNN
	1    9450 5900
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR08
U 1 1 543AA047
P 8550 5800
F 0 "#PWR08" H 8550 5770 20  0001 C CNN
F 1 "+9V" H 8550 5910 30  0000 C CNN
F 2 "" H 8550 5800 60  0000 C CNN
F 3 "" H 8550 5800 60  0000 C CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
$Comp
L MCP41010 U3
U 1 1 543AA5E6
P 2750 6050
F 0 "U3" H 2750 6100 60  0000 C CNN
F 1 "MCP41010" H 2750 6100 60  0000 C CNN
F 2 "" H 2750 6100 60  0000 C CNN
F 3 "" H 2750 6100 60  0000 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 543AA65C
P 3800 5650
F 0 "#PWR09" H 3800 5740 20  0001 C CNN
F 1 "+5V" H 3800 5740 30  0000 C CNN
F 2 "" H 3800 5650 60  0000 C CNN
F 3 "" H 3800 5650 60  0000 C CNN
	1    3800 5650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 543AA703
P 1650 6450
F 0 "#PWR010" H 1650 6450 30  0001 C CNN
F 1 "GND" H 1650 6380 30  0001 C CNN
F 2 "" H 1650 6450 60  0000 C CNN
F 3 "" H 1650 6450 60  0000 C CNN
	1    1650 6450
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 543AA7B5
P 11350 1600
F 0 "R7" V 11430 1600 40  0000 C CNN
F 1 "10k" V 11357 1601 40  0000 C CNN
F 2 "~" V 11280 1600 30  0000 C CNN
F 3 "~" H 11350 1600 30  0000 C CNN
	1    11350 1600
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 543AA8D4
P 11600 2050
F 0 "C6" H 11600 2150 40  0000 L CNN
F 1 ".22uF" H 11606 1965 40  0000 L CNN
F 2 "~" H 11638 1900 30  0000 C CNN
F 3 "~" H 11600 2050 60  0000 C CNN
	1    11600 2050
	1    0    0    -1  
$EndComp
$Comp
L LM358 U2
U 1 1 543AA94B
P 12100 2950
F 0 "U2" H 12050 3150 60  0000 L CNN
F 1 "LM358" H 12050 2700 60  0000 L CNN
F 2 "" H 12100 2950 60  0000 C CNN
F 3 "" H 12100 2950 60  0000 C CNN
	1    12100 2950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 543AA9F9
P 11200 2850
F 0 "R8" V 11280 2850 40  0000 C CNN
F 1 "10M" V 11207 2851 40  0000 C CNN
F 2 "~" V 11130 2850 30  0000 C CNN
F 3 "~" H 11200 2850 30  0000 C CNN
	1    11200 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 543AAA3E
P 10950 2850
F 0 "#PWR011" H 10950 2850 30  0001 C CNN
F 1 "GND" H 10950 2780 30  0001 C CNN
F 2 "" H 10950 2850 60  0000 C CNN
F 3 "" H 10950 2850 60  0000 C CNN
	1    10950 2850
	0    1    1    0   
$EndComp
$Comp
L +9V #PWR012
U 1 1 543AAA4D
P 12000 2550
F 0 "#PWR012" H 12000 2520 20  0001 C CNN
F 1 "+9V" H 12000 2660 30  0000 C CNN
F 2 "" H 12000 2550 60  0000 C CNN
F 3 "" H 12000 2550 60  0000 C CNN
	1    12000 2550
	1    0    0    -1  
$EndComp
$Comp
L -8V #PWR31
U 1 1 543AAA5C
P 12000 3350
F 0 "#PWR31" H 12000 3480 20  0001 C CNN
F 1 "-8V" H 12000 3450 30  0000 C CNN
F 2 "" H 12000 3350 60  0000 C CNN
F 3 "" H 12000 3350 60  0000 C CNN
	1    12000 3350
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P2
U 1 1 543AAAB1
P 12950 3400
F 0 "P2" V 12900 3400 40  0000 C CNN
F 1 "ELECTODES" V 13000 3400 40  0000 C CNN
F 2 "" H 12950 3400 60  0000 C CNN
F 3 "" H 12950 3400 60  0000 C CNN
	1    12950 3400
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 543AAB30
P 11600 4200
F 0 "R9" V 11680 4200 40  0000 C CNN
F 1 "470" V 11607 4201 40  0000 C CNN
F 2 "~" V 11530 4200 30  0000 C CNN
F 3 "~" H 11600 4200 30  0000 C CNN
	1    11600 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 543AAB89
P 11600 4450
F 0 "#PWR013" H 11600 4450 30  0001 C CNN
F 1 "GND" H 11600 4380 30  0001 C CNN
F 2 "" H 11600 4450 60  0000 C CNN
F 3 "" H 11600 4450 60  0000 C CNN
	1    11600 4450
	1    0    0    -1  
$EndComp
$Comp
L LM1117 U4
U 1 1 543B3F35
P 6250 5550
F 0 "U4" H 6250 5650 60  0000 C CNN
F 1 "LM1117" H 6250 5550 60  0000 C CNN
F 2 "" H 6250 5450 60  0000 C CNN
F 3 "" H 6250 5450 60  0000 C CNN
	1    6250 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 543B40C0
P 6250 6900
F 0 "#PWR014" H 6250 6990 20  0001 C CNN
F 1 "+5V" H 6250 6990 30  0000 C CNN
F 2 "" H 6250 6900 60  0000 C CNN
F 3 "" H 6250 6900 60  0000 C CNN
	1    6250 6900
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR015
U 1 1 543D90AF
P 1500 1600
F 0 "#PWR015" H 1500 1690 20  0001 C CNN
F 1 "+5V" H 1500 1690 30  0000 C CNN
F 2 "" H 1500 1600 60  0000 C CNN
F 3 "" H 1500 1600 60  0000 C CNN
	1    1500 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 543D9169
P 1500 4200
F 0 "#PWR016" H 1500 4200 30  0001 C CNN
F 1 "GND" H 1500 4130 30  0001 C CNN
F 2 "" H 1500 4200 60  0000 C CNN
F 3 "" H 1500 4200 60  0000 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR017
U 1 1 5466C735
P 6650 6350
F 0 "#PWR017" H 6650 6320 20  0001 C CNN
F 1 "+9V" H 6650 6460 30  0000 C CNN
F 2 "" H 6650 6350 60  0000 C CNN
F 3 "" H 6650 6350 60  0000 C CNN
	1    6650 6350
	1    0    0    -1  
$EndComp
$Comp
L BATTERY BT1
U 1 1 5466C877
P 8350 5250
F 0 "BT1" H 8350 5450 50  0000 C CNN
F 1 "BATTERY" H 8350 5060 50  0000 C CNN
F 2 "~" H 8350 5250 60  0000 C CNN
F 3 "~" H 8350 5250 60  0000 C CNN
	1    8350 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5466C89D
P 8650 5250
F 0 "#PWR018" H 8650 5250 30  0001 C CNN
F 1 "GND" H 8650 5180 30  0001 C CNN
F 2 "" H 8650 5250 60  0000 C CNN
F 3 "" H 8650 5250 60  0000 C CNN
	1    8650 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5466C8F7
P 4050 3200
F 0 "R1" V 4130 3200 40  0000 C CNN
F 1 "10k" V 4057 3201 40  0000 C CNN
F 2 "~" V 3980 3200 30  0000 C CNN
F 3 "~" H 4050 3200 30  0000 C CNN
	1    4050 3200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR019
U 1 1 5466CA5C
P 4300 3200
F 0 "#PWR019" H 4300 3290 20  0001 C CNN
F 1 "+5V" H 4300 3290 30  0000 C CNN
F 2 "" H 4300 3200 60  0000 C CNN
F 3 "" H 4300 3200 60  0000 C CNN
	1    4300 3200
	0    1    1    0   
$EndComp
$Comp
L PCF8563 U6
U 1 1 5466D0D2
P 2750 9400
F 0 "U6" H 2750 9001 60  0000 C CNN
F 1 "PCF8563" H 2750 9800 60  0000 C CNN
F 2 "" H 2750 9400 60  0000 C CNN
F 3 "" H 2750 9400 60  0000 C CNN
	1    2750 9400
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 5466D11E
P 2100 8400
F 0 "D1" H 2100 8500 40  0000 C CNN
F 1 "DIODE" H 2100 8300 40  0000 C CNN
F 2 "~" H 2100 8400 60  0000 C CNN
F 3 "~" H 2100 8400 60  0000 C CNN
	1    2100 8400
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 5466D12B
P 2300 8200
F 0 "D2" H 2300 8300 40  0000 C CNN
F 1 "DIODE" H 2300 8100 40  0000 C CNN
F 2 "~" H 2300 8200 60  0000 C CNN
F 3 "~" H 2300 8200 60  0000 C CNN
	1    2300 8200
	0    1    1    0   
$EndComp
$Comp
L BATTERY BT2
U 1 1 5466D13A
P 1600 8400
F 0 "BT2" H 1600 8600 50  0000 C CNN
F 1 "BATTERY" H 1600 8210 50  0000 C CNN
F 2 "~" H 1600 8400 60  0000 C CNN
F 3 "~" H 1600 8400 60  0000 C CNN
	1    1600 8400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR020
U 1 1 5466D149
P 1300 8400
F 0 "#PWR020" H 1300 8400 30  0001 C CNN
F 1 "GND" H 1300 8330 30  0001 C CNN
F 2 "" H 1300 8400 60  0000 C CNN
F 3 "" H 1300 8400 60  0000 C CNN
	1    1300 8400
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR021
U 1 1 5466D156
P 2300 8000
F 0 "#PWR021" H 2300 8090 20  0001 C CNN
F 1 "+5V" H 2300 8090 30  0000 C CNN
F 2 "" H 2300 8000 60  0000 C CNN
F 3 "" H 2300 8000 60  0000 C CNN
	1    2300 8000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5466D24B
P 3400 9850
F 0 "#PWR022" H 3400 9850 30  0001 C CNN
F 1 "GND" H 3400 9780 30  0001 C CNN
F 2 "" H 3400 9850 60  0000 C CNN
F 3 "" H 3400 9850 60  0000 C CNN
	1    3400 9850
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 5466D2FB
P 1600 9500
F 0 "X2" H 1600 9650 60  0000 C CNN
F 1 "32.768kHz" H 1600 9350 60  0000 C CNN
F 2 "~" H 1600 9500 60  0000 C CNN
F 3 "~" H 1600 9500 60  0000 C CNN
	1    1600 9500
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5466D616
P 4600 9000
F 0 "R11" V 4680 9000 40  0000 C CNN
F 1 "10k" V 4607 9001 40  0000 C CNN
F 2 "~" V 4530 9000 30  0000 C CNN
F 3 "~" H 4600 9000 30  0000 C CNN
	1    4600 9000
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 5466D623
P 4600 9200
F 0 "R12" V 4680 9200 40  0000 C CNN
F 1 "10k" V 4607 9201 40  0000 C CNN
F 2 "~" V 4530 9200 30  0000 C CNN
F 3 "~" H 4600 9200 30  0000 C CNN
	1    4600 9200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR023
U 1 1 5466D7B2
P 4850 9400
F 0 "#PWR023" H 4850 9490 20  0001 C CNN
F 1 "+5V" H 4850 9490 30  0000 C CNN
F 2 "" H 4850 9400 60  0000 C CNN
F 3 "" H 4850 9400 60  0000 C CNN
	1    4850 9400
	-1   0    0    1   
$EndComp
Text Label 3900 8750 1    60   ~ 0
RTC_SDA
Text Label 4200 8750 1    60   ~ 0
RTC_SCL
Text Label 3550 3000 0    39   ~ 0
RTC_SDA
Text Label 3550 3100 0    39   ~ 0
RTC_SCL
Text Label 3650 1950 0    39   ~ 0
potCS
$Comp
L R R10
U 1 1 54678357
P 3900 10000
F 0 "R10" V 3980 10000 40  0000 C CNN
F 1 "10k" V 3907 10001 40  0000 C CNN
F 2 "~" V 3830 10000 30  0000 C CNN
F 3 "~" H 3900 10000 30  0000 C CNN
	1    3900 10000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 54678364
P 3900 10250
F 0 "#PWR024" H 3900 10340 20  0001 C CNN
F 1 "+5V" H 3900 10340 30  0000 C CNN
F 2 "" H 3900 10250 60  0000 C CNN
F 3 "" H 3900 10250 60  0000 C CNN
	1    3900 10250
	-1   0    0    1   
$EndComp
Text Label 4450 10050 0    39   ~ 0
INT
Wire Wire Line
	3400 1750 3650 1750
Wire Wire Line
	7100 1250 7100 1100
Wire Wire Line
	8850 2550 8850 2350
Wire Wire Line
	7100 2050 7100 2150
Wire Wire Line
	7700 1650 8800 1650
Wire Wire Line
	6700 1750 6700 2350
Wire Wire Line
	6700 2350 7400 2350
Wire Wire Line
	7800 2350 7800 1650
Connection ~ 7800 1650
Wire Wire Line
	7800 2850 8450 2850
Wire Wire Line
	9450 2950 9450 4250
Wire Wire Line
	9050 3550 8450 3550
Wire Wire Line
	8450 3550 8450 3050
Wire Wire Line
	6550 3550 7950 3550
Wire Wire Line
	6700 1550 6550 1550
Wire Wire Line
	6550 1550 6550 3550
Connection ~ 7200 3550
Wire Wire Line
	6700 1750 6350 1750
Wire Wire Line
	6200 2000 6200 2400
Wire Wire Line
	9450 4250 6200 4250
Wire Wire Line
	6200 4250 6200 2900
Connection ~ 9450 3550
Wire Wire Line
	7200 4050 7350 4050
Wire Wire Line
	7200 3050 7200 2800
Wire Wire Line
	3850 2100 4400 2100
Wire Wire Line
	3850 2100 3850 2350
Wire Wire Line
	3850 2350 3400 2350
Wire Wire Line
	3850 2700 4400 2700
Wire Wire Line
	3850 2700 3850 2450
Wire Wire Line
	3850 2450 3400 2450
Connection ~ 4150 2100
Connection ~ 4150 2700
Wire Wire Line
	4800 2100 4800 2700
Wire Wire Line
	4800 2400 4950 2400
Connection ~ 4800 2400
Wire Wire Line
	7050 6100 7500 6100
Wire Wire Line
	7500 6100 7500 6200
Wire Wire Line
	7500 6200 7750 6200
Wire Wire Line
	7050 6500 7500 6500
Wire Wire Line
	7500 6500 7500 6400
Wire Wire Line
	7500 6400 7750 6400
Wire Wire Line
	9450 6300 9450 5900
Wire Wire Line
	1650 5650 950  5650
Wire Wire Line
	1650 5900 950  5900
Wire Wire Line
	1650 6200 950  6200
Wire Wire Line
	3800 6450 3800 6750
Wire Wire Line
	3800 6750 1650 6750
Wire Wire Line
	1650 6750 1650 6450
Wire Wire Line
	3800 5900 4500 5900
Wire Wire Line
	3800 6200 4500 6200
Wire Wire Line
	10500 1600 11100 1600
Wire Wire Line
	11600 1600 11600 1850
Wire Wire Line
	11600 2850 11600 2250
Wire Wire Line
	11600 2850 11450 2850
Wire Wire Line
	12600 2950 12600 3300
Wire Wire Line
	12600 3500 12600 3700
Wire Wire Line
	12600 3700 11600 3700
Wire Wire Line
	11600 3050 11600 3950
Connection ~ 11600 3700
Wire Wire Line
	6250 6100 6250 6900
Wire Wire Line
	1500 1600 1500 2050
Wire Wire Line
	1500 3850 1500 4200
Connection ~ 1500 1850
Connection ~ 1500 1750
Connection ~ 1500 2050
Connection ~ 3400 2350
Connection ~ 3400 2450
Connection ~ 4400 2100
Connection ~ 4400 2700
Connection ~ 4800 2100
Connection ~ 4800 2700
Wire Wire Line
	3400 3200 3800 3200
Wire Wire Line
	2300 8400 2300 8750
Wire Wire Line
	2300 8750 2100 8750
Wire Wire Line
	2100 8750 2100 9150
Wire Wire Line
	3400 9650 3400 9850
Connection ~ 2100 9300
Connection ~ 1600 9200
Connection ~ 1600 9800
Connection ~ 2100 9650
Wire Wire Line
	1600 9800 2100 9800
Wire Wire Line
	2100 9800 2100 9650
Wire Wire Line
	1600 9200 1900 9200
Wire Wire Line
	1900 9200 1900 9300
Wire Wire Line
	1900 9300 2100 9300
Wire Wire Line
	4200 9300 3400 9300
Wire Wire Line
	4200 8750 4200 9300
Wire Wire Line
	3900 9400 3400 9400
Wire Wire Line
	3900 8750 3900 9400
Wire Wire Line
	4350 9000 4200 9000
Connection ~ 4200 9000
Wire Wire Line
	4350 9200 3900 9200
Connection ~ 3900 9200
Wire Wire Line
	4850 9000 4850 9400
Connection ~ 4850 9200
Connection ~ 4850 9000
Connection ~ 4350 9000
Connection ~ 4350 9200
Connection ~ 3400 9300
Connection ~ 3400 9400
Connection ~ 2100 9150
Connection ~ 2300 8400
Connection ~ 1900 8400
Connection ~ 1300 8400
Connection ~ 2300 8000
Wire Wire Line
	3400 3100 3550 3100
Wire Wire Line
	3400 3000 3550 3000
Wire Wire Line
	3400 1950 3650 1950
Wire Wire Line
	3400 2250 3600 2250
Wire Wire Line
	3400 9500 4450 9500
Wire Wire Line
	3900 9500 3900 9750
Wire Wire Line
	4450 9500 4450 10050
Connection ~ 3900 9500
Wire Wire Line
	4100 1200 4250 1200
Wire Wire Line
	4100 1300 4250 1300
Wire Wire Line
	4100 1400 4250 1400
Wire Wire Line
	3300 1200 3150 1200
Wire Wire Line
	3300 1300 3150 1300
Wire Wire Line
	3300 1400 3150 1400
Text Label 3150 1200 0    39   ~ 0
MISO
Text Label 3150 1300 0    39   ~ 0
SCK
Text Label 3150 1400 0    39   ~ 0
RST
$Comp
L +5V #PWR025
U 1 1 546788B4
P 4250 1200
F 0 "#PWR025" H 4250 1290 20  0001 C CNN
F 1 "+5V" H 4250 1290 30  0000 C CNN
F 2 "" H 4250 1200 60  0000 C CNN
F 3 "" H 4250 1200 60  0000 C CNN
	1    4250 1200
	0    1    1    0   
$EndComp
Text Label 4200 1300 0    39   ~ 0
MOSI
$Comp
L GND #PWR026
U 1 1 546788BA
P 4250 1400
F 0 "#PWR026" H 4250 1400 30  0001 C CNN
F 1 "GND" H 4250 1330 30  0001 C CNN
F 2 "" H 4250 1400 60  0000 C CNN
F 3 "" H 4250 1400 60  0000 C CNN
	1    4250 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 3200 3800 3400
Wire Wire Line
	3800 3400 4050 3400
Text Label 4050 3400 0    39   ~ 0
RST
Wire Wire Line
	3400 2150 3600 2150
Wire Wire Line
	3400 2050 3600 2050
Text Label 3600 2050 0    39   ~ 0
MOSI
Text Label 3600 2150 0    39   ~ 0
MISO
Text Label 3600 2250 0    39   ~ 0
SCK
Text Label 3650 1750 0    39   ~ 0
OCON
Text Label 950  6200 0    39   ~ 0
MOSI
Text Label 950  5900 0    39   ~ 0
SCK
Text Label 950  5650 0    39   ~ 0
potCS
Text Label 4500 5900 0    60   ~ 0
potB
Text Label 4500 6200 0    60   ~ 0
potWiper
Wire Notes Line
	5300 7500 5300 4850
Wire Notes Line
	5300 4850 10150 4850
Wire Notes Line
	10150 4850 10150 7500
Wire Notes Line
	10150 7500 5300 7500
Wire Notes Line
	5850 950  9850 950 
Wire Notes Line
	9850 950  9850 4500
Wire Notes Line
	9850 4500 5850 4500
Wire Notes Line
	5850 4500 5850 950 
Wire Notes Line
	10250 950  13250 950 
Wire Notes Line
	13250 950  13250 4650
Wire Notes Line
	13250 4650 10150 4650
Wire Notes Line
	10150 4650 10150 950 
Wire Notes Line
	10150 950  10350 950 
Wire Notes Line
	5300 4500 1000 4500
Wire Notes Line
	1000 4500 1000 950 
Wire Notes Line
	1000 950  5300 950 
Wire Notes Line
	5300 950  5300 4500
Wire Notes Line
	5050 7500 5050 4850
Wire Notes Line
	5050 4850 700  4850
Wire Notes Line
	700  4850 700  7500
Wire Notes Line
	700  7500 5050 7500
Wire Notes Line
	1000 7700 5250 7700
Wire Notes Line
	5250 7700 5250 10500
Wire Notes Line
	5250 10500 1000 10500
Wire Notes Line
	1000 10500 1000 7700
Text Notes 1200 1150 0    79   ~ 0
MCU and Programming\n
Text Notes 8800 1200 0    79   ~ 0
Oscillator\n
Text Notes 12000 1200 0    79   ~ 0
Current Regulator\n
Text Notes 9200 5100 0    79   ~ 0
Power\n
Text Notes 3350 5100 0    79   ~ 0
Digital Potentiometer\n
Text Notes 3750 8000 0    79   ~ 0
Real Time Clock
Connection ~ 7800 2350
Connection ~ 7400 2350
Connection ~ 7100 2050
Connection ~ 6700 1750
Connection ~ 6700 1550
Connection ~ 6350 1750
Connection ~ 6200 2000
Connection ~ 6200 2400
Connection ~ 6200 2900
Connection ~ 7200 3050
Connection ~ 7800 2850
Connection ~ 8450 2850
Connection ~ 8450 3050
Connection ~ 8850 2550
Connection ~ 9450 2950
Connection ~ 9050 3550
Connection ~ 8450 3550
Connection ~ 7950 3550
Connection ~ 11600 1600
Connection ~ 11100 1600
Connection ~ 11600 1850
Connection ~ 11600 2250
Connection ~ 11600 2850
Connection ~ 11450 2850
Connection ~ 12600 2950
Connection ~ 12600 3300
Connection ~ 11600 3050
Connection ~ 12600 3500
Connection ~ 11600 3950
Connection ~ 11600 4450
Connection ~ 10950 2850
Connection ~ 7100 1250
Connection ~ 7200 4050
Connection ~ 9850 6300
Connection ~ 9450 6300
Connection ~ 9450 5900
Connection ~ 9450 6600
Connection ~ 8550 7100
Connection ~ 7750 6600
Connection ~ 7750 6400
Connection ~ 7750 6200
Connection ~ 8550 5800
Connection ~ 7050 6100
Connection ~ 7050 6500
Connection ~ 8650 5250
Connection ~ 6400 6100
Connection ~ 6100 6100
Connection ~ 6250 6100
Connection ~ 6250 6900
Connection ~ 3800 5650
Connection ~ 3800 5900
Connection ~ 3800 6200
Connection ~ 3800 6450
Connection ~ 1650 6450
Connection ~ 1650 5650
Connection ~ 1650 5900
Connection ~ 1650 6200
Connection ~ 3900 9750
Connection ~ 3400 9650
Connection ~ 3400 9500
Connection ~ 4850 9400
Connection ~ 3900 10250
Connection ~ 3400 1750
Connection ~ 3400 1950
Connection ~ 3400 2050
Connection ~ 3400 2150
Connection ~ 3400 2250
Connection ~ 3400 3000
Connection ~ 3400 3100
Connection ~ 3400 3200
Connection ~ 3800 3200
Connection ~ 4300 3200
Connection ~ 1500 3850
Connection ~ 1500 3950
Connection ~ 1500 4050
Connection ~ 4100 1200
Connection ~ 4100 1300
Connection ~ 4100 1400
Connection ~ 3300 1400
Connection ~ 3300 1300
Connection ~ 3300 1200
Connection ~ 7800 3250
Connection ~ 8850 3350
Connection ~ 4950 2400
Text Label 8850 2350 0    59   ~ 0
OCON
Text Label 8800 1650 0    59   ~ 0
potB
Text Label 7100 1100 0    59   ~ 0
OCON
Text Label 10500 1600 0    59   ~ 0
potWiper
Connection ~ -800 -400
Wire Wire Line
	3400 3550 3600 3550
Text Label 3600 3550 0    59   ~ 0
INT
$Comp
L CP C7
U 1 1 5467B858
P 7050 6300
F 0 "C7" H 7100 6400 40  0000 L CNN
F 1 "10uF" H 7100 6200 40  0000 L CNN
F 2 "~" H 7150 6150 30  0000 C CNN
F 3 "~" H 7050 6300 300 0000 C CNN
	1    7050 6300
	-1   0    0    1   
$EndComp
$Comp
L CP C8
U 1 1 546A8D7A
P 9650 6300
F 0 "C8" H 9700 6400 40  0000 L CNN
F 1 "10uF" H 9700 6200 40  0000 L CNN
F 2 "~" H 9750 6150 30  0000 C CNN
F 3 "~" H 9650 6300 300 0000 C CNN
	1    9650 6300
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 546A906D
P 6550 8300
F 0 "R13" V 6630 8300 40  0000 C CNN
F 1 "150" V 6557 8301 40  0000 C CNN
F 2 "~" V 6480 8300 30  0000 C CNN
F 3 "~" H 6550 8300 30  0000 C CNN
	1    6550 8300
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 546A907C
P 7150 8300
F 0 "D3" H 7150 8400 50  0000 C CNN
F 1 "LED" H 7150 8200 50  0000 C CNN
F 2 "~" H 7150 8300 60  0000 C CNN
F 3 "~" H 7150 8300 60  0000 C CNN
	1    7150 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 8300 7600 8300
$Comp
L GND #PWR027
U 1 1 546A9190
P 7600 8300
F 0 "#PWR027" H 7600 8300 30  0001 C CNN
F 1 "GND" H 7600 8230 30  0001 C CNN
F 2 "" H 7600 8300 60  0000 C CNN
F 3 "" H 7600 8300 60  0000 C CNN
	1    7600 8300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 8300 6950 8300
Wire Wire Line
	6300 8300 5950 8300
Text Label 5950 8300 0    60   ~ 0
led
Connection ~ 7350 8300
Connection ~ 6950 8300
Connection ~ 6800 8300
Connection ~ 6300 8300
Wire Notes Line
	5650 7750 10100 7750
Wire Notes Line
	10100 7750 10100 10500
Wire Notes Line
	10100 10500 5650 10500
Wire Notes Line
	5650 10500 5650 7750
Text Notes 9400 8000 0    60   ~ 0
Misc.
Connection ~ 7600 8300
Wire Wire Line
	3400 1850 3650 1850
Text Label 3650 1850 0    39   ~ 0
led
Connection ~ 3400 1850
$Comp
L CP C9
U 1 1 546A9A42
P 5950 6350
F 0 "C9" H 6000 6450 40  0000 L CNN
F 1 "10uF" H 6000 6250 40  0000 L CNN
F 2 "~" H 6050 6200 30  0000 C CNN
F 3 "~" H 5950 6350 300 0000 C CNN
	1    5950 6350
	0    -1   -1   0   
$EndComp
$Comp
L CP C10
U 1 1 546A9A51
P 5950 6600
F 0 "C10" H 6000 6700 40  0000 L CNN
F 1 "10uF" H 6000 6500 40  0000 L CNN
F 2 "~" H 6050 6450 30  0000 C CNN
F 3 "~" H 5950 6600 300 0000 C CNN
	1    5950 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 6350 6150 6350
Wire Wire Line
	6150 6600 6250 6600
Connection ~ 6250 6600
Wire Wire Line
	6100 6100 5750 6100
Wire Wire Line
	5750 6100 5750 6900
$Comp
L GND #PWR028
U 1 1 546A9D58
P 5750 6900
F 0 "#PWR028" H 5750 6900 30  0001 C CNN
F 1 "GND" H 5750 6830 30  0001 C CNN
F 2 "" H 5750 6900 60  0000 C CNN
F 3 "" H 5750 6900 60  0000 C CNN
	1    5750 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6350 6400 6100
Connection ~ 6400 6350
Connection ~ 6150 6350
Connection ~ 6150 6600
Connection ~ 5750 6600
Connection ~ 5750 6350
Connection ~ 5750 6900
Connection ~ 6650 6350
$Comp
L SWITCH_INV SW1
U 1 1 546F90B1
P 7400 5350
F 0 "SW1" H 7200 5500 50  0000 C CNN
F 1 "Power Switch" H 7250 5200 50  0000 C CNN
F 2 "~" H 7400 5350 60  0000 C CNN
F 3 "~" H 7400 5350 60  0000 C CNN
	1    7400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5250 7900 5250
$Comp
L +9V #PWR029
U 1 1 546F91D3
P 6900 5350
F 0 "#PWR029" H 6900 5320 20  0001 C CNN
F 1 "+9V" H 6900 5460 30  0000 C CNN
F 2 "" H 6900 5350 60  0000 C CNN
F 3 "" H 6900 5350 60  0000 C CNN
	1    6900 5350
	1    0    0    -1  
$EndComp
Connection ~ 6900 5350
Connection ~ 7900 5250
Connection ~ 8050 5250
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SquantorLabels:OHWLOGO N1
U 1 1 5A135869
P 6350 6800
F 0 "N1" H 6350 6950 60  0000 C CNN
F 1 "OHWLOGO" H 6350 6650 60  0000 C CNN
F 2 "Symbol:OSHW-Symbol_6.7x6mm_SilkScreen" H 6350 6800 60  0001 C CNN
F 3 "" H 6350 6800 60  0001 C CNN
	1    6350 6800
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:VYYYYMMDD N2
U 1 1 5D6A68B9
P 6350 7150
F 0 "N2" H 6300 7250 60  0000 L CNN
F 1 "20210214" H 6100 7150 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 6350 7150 60  0001 C CNN
F 3 "" H 6350 7150 60  0001 C CNN
	1    6350 7150
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:Label N3
U 1 1 5D8B1B32
P 6350 7350
F 0 "N3" H 6300 7400 60  0000 L CNN
F 1 "JLCJLCJLCJLC" H 6050 7300 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 6350 7350 60  0001 C CNN
F 3 "" H 6350 7350 60  0001 C CNN
	1    6350 7350
	1    0    0    -1  
$EndComp
Wire Notes Line
	5900 6600 6850 6600
Wire Notes Line
	6850 6600 6850 7700
Wire Notes Line
	6850 7700 5900 7700
Wire Notes Line
	5900 7700 5900 6600
Text Notes 5950 7650 0    50   ~ 0
Mechanical and labels
$Comp
L SquantorConnectorsNamed:expansion_small_left_LPC82XJHI33 J1
U 1 1 5F2AC8A4
P 1550 1200
F 0 "J1" H 1550 1800 50  0000 C CNN
F 1 "nuclone_small_left" H 1550 600 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X10-H010" H 1700 1150 50  0001 C CNN
F 3 "" H 1700 1150 50  0001 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
Text Label 1000 750  2    50   ~ 0
VDD
Text Label 2100 750  0    50   ~ 0
VDD
Text Label 2100 850  0    50   ~ 0
VBUS
Text Label 2100 950  0    50   ~ 0
VSS
Wire Wire Line
	1000 750  1050 750 
Wire Wire Line
	2100 950  2050 950 
Wire Wire Line
	2050 850  2100 850 
Wire Wire Line
	2100 750  2050 750 
Wire Notes Line
	2500 3250 550  3250
Wire Notes Line
	550  3250 550  550 
Wire Notes Line
	550  550  2500 550 
Text Notes 2050 3200 0    50   ~ 0
Connectors
Wire Notes Line
	5900 7550 6850 7550
$Comp
L SquantorConnectorsNamed:DevBoardUartInput J5
U 1 1 5F2EE742
P 1100 3700
F 0 "J5" H 1100 4000 50  0000 C CNN
F 1 "DevBoardUartInput" H 950 3400 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal" H 1100 3700 50  0001 C CNN
F 3 "" H 1100 3700 50  0001 C CNN
	1    1100 3700
	1    0    0    -1  
$EndComp
Text Label 1350 3550 0    50   ~ 0
VSS
Text Label 1350 3650 0    50   ~ 0
VBUS
$Comp
L Device:R R1
U 1 1 5F2F3702
P 1500 3850
F 0 "R1" V 1450 3700 50  0000 C CNN
F 1 "100" V 1500 3850 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1430 3850 50  0001 C CNN
F 3 "~" H 1500 3850 50  0001 C CNN
	1    1500 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F2F4505
P 1500 3750
F 0 "R2" V 1450 3600 50  0000 C CNN
F 1 "100" V 1500 3750 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1430 3750 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3850 1350 3850
Wire Wire Line
	1350 3750 1300 3750
Text Label 1700 3850 0    50   ~ 0
UART_RX
Text Label 1700 3750 0    50   ~ 0
UART_TX
Wire Wire Line
	1300 3550 1350 3550
Wire Wire Line
	1350 3650 1300 3650
Wire Wire Line
	1650 3750 1700 3750
Wire Wire Line
	1650 3850 1700 3850
$Comp
L SquantorOpto:PPG_sensor_PD_flipped U1
U 1 1 5F30F2AF
P 3300 2650
F 0 "U1" H 3300 2900 50  0000 C CNN
F 1 "PPG_sensor" H 3200 2400 50  0000 C CNN
F 2 "SquantorOpto:PPG_sensor_reverse_PD_antiparallel" H 3300 2600 50  0001 C CNN
F 3 "" H 3300 2600 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  3350 550  4100
Wire Notes Line
	550  4100 2050 4100
Wire Notes Line
	2050 3350 550  3350
Text Notes 1350 4050 0    50   ~ 0
UART connection
Wire Notes Line
	1300 4100 1300 3950
Wire Notes Line
	1300 3950 2050 3950
Text Notes 3650 2200 0    50   ~ 0
LED drive
Wire Notes Line
	2600 1400 4050 1400
Wire Notes Line
	4050 1400 4050 2250
Wire Notes Line
	4050 2250 2600 2250
Wire Notes Line
	2600 2250 2600 1400
Text Label 3000 2650 2    50   ~ 0
PD_BIAS
Text Label 3600 2650 0    50   ~ 0
PD_OUT
Wire Wire Line
	3000 2550 3050 2550
Wire Wire Line
	3050 2650 3000 2650
Wire Wire Line
	3000 2750 3050 2750
Wire Wire Line
	3550 2750 3600 2750
Wire Wire Line
	3600 2650 3550 2650
Wire Wire Line
	3550 2550 3600 2550
Text Notes 3550 2950 0    50   ~ 0
PPG sensor
Wire Notes Line
	2600 2350 4050 2350
Wire Notes Line
	4050 3000 2600 3000
Text Label 2950 950  2    50   ~ 0
PD_BIAS
Text Notes 3100 1250 0    50   ~ 0
PD bias selection
Wire Notes Line
	2600 550  3800 550 
Wire Notes Line
	3800 550  3800 1300
Wire Notes Line
	3800 1300 2600 1300
Wire Notes Line
	2600 1300 2600 550 
Wire Notes Line
	3050 1300 3050 1150
Wire Notes Line
	3050 1150 3800 1150
Text Label 900  4350 2    50   ~ 0
PD_OUT
Wire Wire Line
	900  4350 900  4450
Wire Wire Line
	900  4750 900  4850
$Comp
L Device:R R8
U 1 1 5F3AF303
P 1300 4850
F 0 "R8" V 1250 4700 50  0000 C CNN
F 1 "100K" V 1300 4850 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1230 4850 50  0001 C CNN
F 3 "~" H 1300 4850 50  0001 C CNN
	1    1300 4850
	0    -1   -1   0   
$EndComp
Text Label 1500 4600 0    50   ~ 0
I_reset
Text Notes 950  5100 0    50   ~ 0
PD integrator and reset
Wire Notes Line
	550  4200 1900 4200
Wire Notes Line
	1900 4200 1900 5150
Wire Notes Line
	1900 5150 550  5150
Wire Notes Line
	550  5150 550  4200
Wire Notes Line
	900  5150 900  5000
Wire Notes Line
	900  5000 1900 5000
Wire Wire Line
	900  4350 1100 4350
Wire Wire Line
	1100 4400 1100 4350
Wire Wire Line
	1100 4800 1100 4850
Wire Wire Line
	1100 4850 1150 4850
Wire Wire Line
	1400 4600 1500 4600
Wire Wire Line
	1450 4850 1500 4850
Wire Wire Line
	1500 4850 1500 4600
Wire Notes Line
	2500 550  2500 3250
Wire Notes Line
	2050 3350 2050 4100
Wire Notes Line
	2000 3100 2000 3250
Wire Notes Line
	2500 3100 2000 3100
Text Label 1000 2050 2    50   ~ 0
VDDA
Text Label 2100 2050 0    50   ~ 0
VDDA
Wire Wire Line
	1000 2050 1050 2050
Wire Wire Line
	1050 2150 1000 2150
Wire Wire Line
	2100 2050 2050 2050
Text Label 2100 1650 0    50   ~ 0
UART_TX
Text Label 1000 1650 2    50   ~ 0
UART_RX
Wire Wire Line
	1000 1650 1050 1650
Wire Wire Line
	2100 1650 2050 1650
Text Label 3550 950  0    50   ~ 0
VDDA
Wire Notes Line
	4050 2850 3500 2850
Wire Notes Line
	3500 2850 3500 3000
Wire Notes Line
	4050 2100 3600 2100
Wire Notes Line
	3600 2100 3600 2250
Wire Wire Line
	1000 1050 1050 1050
Wire Wire Line
	2050 1050 2100 1050
Wire Wire Line
	1100 4850 900  4850
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5F666A62
P 1200 4600
F 0 "Q1" H 1350 4750 50  0000 L CNN
F 1 "DMG1012" H 850 4450 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 1400 4700 50  0001 C CNN
F 3 "~" H 1200 4600 50  0001 C CNN
	1    1200 4600
	-1   0    0    -1  
$EndComp
Text Label 2100 1150 0    50   ~ 0
I_reset
Wire Wire Line
	2100 1150 2050 1150
Text Label 900  4850 2    50   ~ 0
VSS
Connection ~ 1100 4850
Text Label 1000 2150 2    50   ~ 0
VSS
Wire Wire Line
	1100 4350 1150 4350
Connection ~ 1100 4350
Text Label 1550 4350 0    50   ~ 0
PD_ADC
Text Label 1000 2250 2    50   ~ 0
PD_ADC
Wire Wire Line
	1050 2250 1000 2250
$Comp
L SquantorConnectorsNamed:expansion_small_right_LPC82XJHI33 J2
U 1 1 5F2AD81B
P 1550 2500
F 0 "J2" H 1550 1900 50  0000 C CNN
F 1 "nuclone_small_right" H 1550 3100 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X10-H010" H 1550 2450 50  0001 C CNN
F 3 "" H 1550 2450 50  0001 C CNN
	1    1550 2500
	-1   0    0    1   
$EndComp
NoConn ~ 1050 1150
NoConn ~ 1050 1250
NoConn ~ 1050 1350
NoConn ~ 1050 1450
NoConn ~ 1050 1550
NoConn ~ 2050 1550
NoConn ~ 2050 1450
NoConn ~ 2050 1350
NoConn ~ 2050 1250
NoConn ~ 1050 950 
NoConn ~ 1050 850 
NoConn ~ 2050 2150
Wire Notes Line
	2600 2350 2600 3000
Wire Notes Line
	4050 2350 4050 3000
$Comp
L Device:Ferrite_Bead FB3
U 1 1 5FA8F62F
P 3300 950
F 0 "FB3" V 3250 1100 50  0000 C CNN
F 1 "Ferrite_Bead" V 3450 950 50  0000 C CNN
F 2 "SquantorRcl:L_0402" V 3230 950 50  0001 C CNN
F 3 "~" H 3300 950 50  0001 C CNN
	1    3300 950 
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FA94DA7
P 3300 700
F 0 "C1" V 3250 750 50  0000 L CNN
F 1 "1u" V 3350 550 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 3338 550 50  0001 C CNN
F 3 "~" H 3300 700 50  0001 C CNN
	1    3300 700 
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FDE999B
P 3100 1600
F 0 "R10" V 3150 1450 50  0000 C CNN
F 1 "1K" V 3100 1600 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3030 1600 50  0001 C CNN
F 3 "~" H 3100 1600 50  0001 C CNN
	1    3100 1600
	0    1    1    0   
$EndComp
Text Label 2900 1600 2    50   ~ 0
LED1_A
$Comp
L Device:R R11
U 1 1 5FE2E212
P 3100 1900
F 0 "R11" V 3150 1750 50  0000 C CNN
F 1 "1K" V 3100 1900 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3030 1900 50  0001 C CNN
F 3 "~" H 3100 1900 50  0001 C CNN
	1    3100 1900
	0    1    1    0   
$EndComp
Text Label 2900 1900 2    50   ~ 0
LED2_A
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP2
U 1 1 5FE39C17
P 3550 1600
F 0 "JP2" H 3550 1750 50  0000 C CNN
F 1 "LED_VDD" H 3850 1550 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP6
U 1 1 5FE3B27B
P 3550 1900
F 0 "JP6" H 3550 2050 50  0000 C CNN
F 1 "LED_VBUS" H 3850 1850 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3550 1900 50  0001 C CNN
F 3 "" H 3550 1900 50  0001 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
Text Label 3750 1900 0    50   ~ 0
VBUS
Text Label 3750 1600 0    50   ~ 0
VDD
Wire Wire Line
	3350 1600 3300 1600
Wire Wire Line
	3350 1900 3300 1900
Wire Wire Line
	3300 1900 3300 1600
Text Label 3300 1500 2    50   ~ 0
LED_VDD
Text Label 3600 2550 0    50   ~ 0
LED1_C
Text Label 3000 2550 2    50   ~ 0
LED1_A
Text Label 3600 2750 0    50   ~ 0
LED2_C
Text Label 3000 2750 2    50   ~ 0
LED2_A
Wire Wire Line
	3150 700  3100 700 
Wire Wire Line
	3100 700  3100 950 
Wire Wire Line
	3100 950  2950 950 
Wire Wire Line
	3150 950  3100 950 
Connection ~ 3100 950 
Text Label 3550 700  0    50   ~ 0
VSS
Wire Wire Line
	3450 700  3550 700 
$Comp
L Device:C C9
U 1 1 5F38C9B5
P 900 4600
F 0 "C9" H 800 4700 50  0000 L CNN
F 1 "4n7" H 900 4500 50  0000 L CNN
F 2 "SquantorRcl:C_0805+0603" H 938 4450 50  0001 C CNN
F 3 "~" H 900 4600 50  0001 C CNN
	1    900  4600
	1    0    0    -1  
$EndComp
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP7
U 1 1 5FDACA0D
P 1350 4350
F 0 "JP7" H 1550 4300 50  0000 C CNN
F 1 "PD_ADC" H 1350 4200 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 1350 4350 50  0001 C CNN
F 3 "" H 1350 4350 50  0001 C CNN
	1    1350 4350
	1    0    0    -1  
$EndComp
Text Label 2100 1050 0    50   ~ 0
LED2_C
Text Label 1000 1050 2    50   ~ 0
LED1_C
$Comp
L Device:R R3
U 1 1 602D49AD
P 700 4600
F 0 "R3" V 650 4450 50  0000 C CNN
F 1 "TBD" V 700 4600 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 630 4600 50  0001 C CNN
F 3 "~" H 700 4600 50  0001 C CNN
	1    700  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4350 700  4350
Wire Wire Line
	700  4350 700  4450
Connection ~ 900  4350
Wire Wire Line
	900  4850 700  4850
Wire Wire Line
	700  4850 700  4750
Connection ~ 900  4850
Wire Wire Line
	3450 950  3550 950 
Wire Wire Line
	3300 1600 3300 1500
Connection ~ 3300 1600
Wire Wire Line
	3300 1600 3250 1600
Wire Wire Line
	3300 1900 3250 1900
Connection ~ 3300 1900
Wire Wire Line
	2950 1900 2900 1900
Wire Wire Line
	2950 1600 2900 1600
NoConn ~ 1050 2850
NoConn ~ 2050 2750
Wire Wire Line
	1000 2350 1050 2350
Wire Wire Line
	1050 2450 1000 2450
Wire Wire Line
	1050 2550 1000 2550
Wire Wire Line
	1000 2650 1050 2650
Wire Wire Line
	1050 2750 1000 2750
Wire Wire Line
	1000 2950 1050 2950
Wire Wire Line
	2050 2950 2100 2950
Wire Wire Line
	2100 2850 2050 2850
Wire Wire Line
	2100 2650 2050 2650
Wire Wire Line
	2100 2550 2050 2550
Wire Wire Line
	2100 2450 2050 2450
Wire Wire Line
	2100 2350 2050 2350
Wire Wire Line
	2100 2250 2050 2250
Text Label 2100 2350 0    50   ~ 0
P0_19
Text Label 2100 2450 0    50   ~ 0
P0_21
Text Label 2100 2550 0    50   ~ 0
P0_23
Text Label 2100 2650 0    50   ~ 0
P0_00
Text Label 2100 2850 0    50   ~ 0
P0_01
Text Label 2100 2950 0    50   ~ 0
GPIO_14
Text Label 2100 2250 0    50   ~ 0
P0_17
Text Label 1000 2950 2    50   ~ 0
P0_15
Text Label 1000 2750 2    50   ~ 0
P0_07
Text Label 1000 2650 2    50   ~ 0
P0_06
Text Label 1000 2550 2    50   ~ 0
P0_14
Text Label 1000 2450 2    50   ~ 0
P0_22
Text Label 1000 2350 2    50   ~ 0
P0_20
Text Label 5200 2300 0    50   ~ 0
P0_15
Text Label 5200 2100 0    50   ~ 0
P0_07
Text Label 5200 1900 0    50   ~ 0
P0_06
Text Label 5200 1700 0    50   ~ 0
P0_14
Text Label 5200 1500 0    50   ~ 0
P0_22
Text Label 5200 1300 0    50   ~ 0
P0_20
Text Label 5200 1400 0    50   ~ 0
P0_19
Text Label 5200 1600 0    50   ~ 0
P0_21
Text Label 5200 1800 0    50   ~ 0
P0_23
Text Label 5200 2000 0    50   ~ 0
P0_00
Text Label 5200 2200 0    50   ~ 0
P0_01
Text Label 5200 1200 0    50   ~ 0
P0_17
Text Label 5200 2400 0    50   ~ 0
GPIO_14
$Comp
L SquantorProto:testpad TP7
U 1 1 603C6353
P 5000 1200
F 0 "TP7" H 4850 1250 50  0000 C CNN
F 1 "17" H 4850 1150 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 1225 50  0001 C CNN
F 3 "" H 5050 1225 50  0001 C CNN
	1    5000 1200
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP1
U 1 1 603C7A30
P 4750 1300
F 0 "TP1" H 4600 1350 50  0000 C CNN
F 1 "20" H 4600 1250 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 1325 50  0001 C CNN
F 3 "" H 4800 1325 50  0001 C CNN
	1    4750 1300
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP8
U 1 1 603C8080
P 5000 1400
F 0 "TP8" H 4850 1450 50  0000 C CNN
F 1 "19" H 4850 1350 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 1425 50  0001 C CNN
F 3 "" H 5050 1425 50  0001 C CNN
	1    5000 1400
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP2
U 1 1 603C854D
P 4750 1500
F 0 "TP2" H 4600 1550 50  0000 C CNN
F 1 "22" H 4600 1450 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 1525 50  0001 C CNN
F 3 "" H 4800 1525 50  0001 C CNN
	1    4750 1500
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP9
U 1 1 603C8A60
P 5000 1600
F 0 "TP9" H 4850 1650 50  0000 C CNN
F 1 "21" H 4850 1550 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 1625 50  0001 C CNN
F 3 "" H 5050 1625 50  0001 C CNN
	1    5000 1600
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP3
U 1 1 603C8E2B
P 4750 1700
F 0 "TP3" H 4600 1750 50  0000 C CNN
F 1 "14" H 4600 1650 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 1725 50  0001 C CNN
F 3 "" H 4800 1725 50  0001 C CNN
	1    4750 1700
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP10
U 1 1 603C928C
P 5000 1800
F 0 "TP10" H 4850 1850 50  0000 C CNN
F 1 "23" H 4850 1750 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 1825 50  0001 C CNN
F 3 "" H 5050 1825 50  0001 C CNN
	1    5000 1800
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP4
U 1 1 603C9871
P 4750 1900
F 0 "TP4" H 4600 1950 50  0000 C CNN
F 1 "06" H 4600 1850 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 1925 50  0001 C CNN
F 3 "" H 4800 1925 50  0001 C CNN
	1    4750 1900
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP11
U 1 1 603C9E7D
P 5000 2000
F 0 "TP11" H 4850 2050 50  0000 C CNN
F 1 "00" H 4850 1950 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 2025 50  0001 C CNN
F 3 "" H 5050 2025 50  0001 C CNN
	1    5000 2000
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP5
U 1 1 603CA86C
P 4750 2100
F 0 "TP5" H 4600 2150 50  0000 C CNN
F 1 "07" H 4600 2050 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 2125 50  0001 C CNN
F 3 "" H 4800 2125 50  0001 C CNN
	1    4750 2100
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP12
U 1 1 603D193C
P 5000 2200
F 0 "TP12" H 4850 2250 50  0000 C CNN
F 1 "01" H 4850 2150 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 2225 50  0001 C CNN
F 3 "" H 5050 2225 50  0001 C CNN
	1    5000 2200
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP6
U 1 1 603D1F0C
P 4750 2300
F 0 "TP6" H 4600 2350 50  0000 C CNN
F 1 "15" H 4600 2250 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 4800 2325 50  0001 C CNN
F 3 "" H 4800 2325 50  0001 C CNN
	1    4750 2300
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP13
U 1 1 603D23AB
P 5000 2400
F 0 "TP13" H 4850 2450 50  0000 C CNN
F 1 "p14" H 4850 2350 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H05R10" H 5050 2425 50  0001 C CNN
F 3 "" H 5050 2425 50  0001 C CNN
	1    5000 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 1200 5200 1200
Wire Wire Line
	5200 1300 4850 1300
Wire Wire Line
	5100 1400 5200 1400
Wire Wire Line
	5200 1500 4850 1500
Wire Wire Line
	5100 1600 5200 1600
Wire Wire Line
	5200 1700 4850 1700
Wire Wire Line
	5200 1800 5100 1800
Wire Wire Line
	4850 1900 5200 1900
Wire Wire Line
	5200 2000 5100 2000
Wire Wire Line
	5200 2100 4850 2100
Wire Wire Line
	5200 2200 5100 2200
Wire Wire Line
	5200 2300 4850 2300
Wire Wire Line
	5100 2400 5200 2400
$EndSCHEMATC

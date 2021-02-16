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
F 1 "20210215" H 6100 7150 60  0000 L CNN
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
F 2 "SquantorConnectorsNamed:nuclone_small_left" H 1700 1150 50  0001 C CNN
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
F 2 "SquantorOpto:PPG_sensor_front_universal" H 3300 2600 50  0001 C CNN
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
Text Label 650  4350 0    50   ~ 0
PD_OUT
Wire Wire Line
	1000 4400 1000 4500
Wire Wire Line
	1000 4800 1000 4900
$Comp
L Device:R R8
U 1 1 5F3AF303
P 1400 4900
F 0 "R8" V 1350 4750 50  0000 C CNN
F 1 "4.7K" V 1400 4900 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1330 4900 50  0001 C CNN
F 3 "~" H 1400 4900 50  0001 C CNN
	1    1400 4900
	0    -1   -1   0   
$EndComp
Text Label 1750 4900 0    50   ~ 0
I_reset
Text Notes 1100 5100 0    50   ~ 0
PD integrator and reset
Wire Notes Line
	550  4200 2050 4200
Wire Notes Line
	2050 4200 2050 5150
Wire Notes Line
	2050 5150 550  5150
Wire Notes Line
	550  5150 550  4200
Wire Notes Line
	1100 5150 1100 5000
Wire Notes Line
	1100 5000 2050 5000
Wire Wire Line
	1000 4400 1200 4400
Wire Wire Line
	1200 4450 1200 4400
Wire Wire Line
	1200 4850 1200 4900
Wire Wire Line
	1200 4900 1250 4900
Wire Wire Line
	1500 4650 1600 4650
Wire Wire Line
	1550 4900 1600 4900
Wire Wire Line
	1600 4900 1600 4650
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
	1200 4900 1000 4900
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5F666A62
P 1300 4650
F 0 "Q1" H 1450 4800 50  0000 L CNN
F 1 "DMG1012" H 950 4800 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 1500 4750 50  0001 C CNN
F 3 "~" H 1300 4650 50  0001 C CNN
	1    1300 4650
	-1   0    0    -1  
$EndComp
Text Label 2100 1150 0    50   ~ 0
I_reset
Wire Wire Line
	2100 1150 2050 1150
Text Label 750  4900 2    50   ~ 0
VSS
Connection ~ 1200 4900
Wire Wire Line
	1200 4400 1250 4400
Connection ~ 1200 4400
Text Label 1750 4400 0    50   ~ 0
PD_ADC
Wire Wire Line
	1050 2250 1000 2250
$Comp
L SquantorConnectorsNamed:expansion_small_right_LPC82XJHI33 J2
U 1 1 5F2AD81B
P 1550 2500
F 0 "J2" H 1550 1900 50  0000 C CNN
F 1 "nuclone_small_right" H 1550 3100 50  0000 C CNN
F 2 "SquantorConnectorsNamed:nuclone_small_right" H 1550 2450 50  0001 C CNN
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
P 1000 4650
F 0 "C9" H 900 4750 50  0000 L CNN
F 1 "4n7" H 1000 4550 50  0000 L CNN
F 2 "SquantorRcl:C_0805+0603" H 1038 4500 50  0001 C CNN
F 3 "~" H 1000 4650 50  0001 C CNN
	1    1000 4650
	1    0    0    -1  
$EndComp
Text Label 2100 1050 0    50   ~ 0
LED2_C
Text Label 1000 1050 2    50   ~ 0
LED1_C
$Comp
L Device:R R3
U 1 1 602D49AD
P 800 4650
F 0 "R3" V 750 4800 50  0000 C CNN
F 1 "TBD" V 800 4650 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 730 4650 50  0001 C CNN
F 3 "~" H 800 4650 50  0001 C CNN
	1    800  4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4400 800  4500
Connection ~ 1000 4400
Wire Wire Line
	1000 4900 800  4900
Wire Wire Line
	800  4900 800  4800
Connection ~ 1000 4900
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
Text Label 4700 2650 0    50   ~ 0
P0_15
Text Label 4700 2450 0    50   ~ 0
P0_07
Text Label 4700 2250 0    50   ~ 0
P0_06
Text Label 4700 2050 0    50   ~ 0
P0_14
Text Label 4700 1850 0    50   ~ 0
P0_22
Text Label 4700 1650 0    50   ~ 0
P0_20
Text Label 4700 1750 0    50   ~ 0
P0_19
Text Label 4700 1950 0    50   ~ 0
P0_21
Text Label 4700 2150 0    50   ~ 0
P0_23
Text Label 4700 2350 0    50   ~ 0
P0_00
Text Label 4700 2550 0    50   ~ 0
P0_01
Text Label 4700 1550 0    50   ~ 0
P0_17
Text Label 4700 2750 0    50   ~ 0
GPIO_14
$Comp
L SquantorProto:testpad TP7
U 1 1 603C6353
P 4500 1550
F 0 "TP7" H 4350 1600 50  0000 C CNN
F 1 "17" H 4350 1500 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 1575 50  0001 C CNN
F 3 "" H 4550 1575 50  0001 C CNN
	1    4500 1550
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP1
U 1 1 603C7A30
P 4250 1650
F 0 "TP1" H 4100 1700 50  0000 C CNN
F 1 "20" H 4100 1600 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 1675 50  0001 C CNN
F 3 "" H 4300 1675 50  0001 C CNN
	1    4250 1650
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP8
U 1 1 603C8080
P 4500 1750
F 0 "TP8" H 4350 1800 50  0000 C CNN
F 1 "19" H 4350 1700 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 1775 50  0001 C CNN
F 3 "" H 4550 1775 50  0001 C CNN
	1    4500 1750
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP2
U 1 1 603C854D
P 4250 1850
F 0 "TP2" H 4100 1900 50  0000 C CNN
F 1 "22" H 4100 1800 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 1875 50  0001 C CNN
F 3 "" H 4300 1875 50  0001 C CNN
	1    4250 1850
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP9
U 1 1 603C8A60
P 4500 1950
F 0 "TP9" H 4350 2000 50  0000 C CNN
F 1 "21" H 4350 1900 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 1975 50  0001 C CNN
F 3 "" H 4550 1975 50  0001 C CNN
	1    4500 1950
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP3
U 1 1 603C8E2B
P 4250 2050
F 0 "TP3" H 4100 2100 50  0000 C CNN
F 1 "14" H 4100 2000 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 2075 50  0001 C CNN
F 3 "" H 4300 2075 50  0001 C CNN
	1    4250 2050
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP10
U 1 1 603C928C
P 4500 2150
F 0 "TP10" H 4350 2200 50  0000 C CNN
F 1 "23" H 4350 2100 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 2175 50  0001 C CNN
F 3 "" H 4550 2175 50  0001 C CNN
	1    4500 2150
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP4
U 1 1 603C9871
P 4250 2250
F 0 "TP4" H 4100 2300 50  0000 C CNN
F 1 "06" H 4100 2200 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 2275 50  0001 C CNN
F 3 "" H 4300 2275 50  0001 C CNN
	1    4250 2250
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP11
U 1 1 603C9E7D
P 4500 2350
F 0 "TP11" H 4350 2400 50  0000 C CNN
F 1 "00" H 4350 2300 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 2375 50  0001 C CNN
F 3 "" H 4550 2375 50  0001 C CNN
	1    4500 2350
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP5
U 1 1 603CA86C
P 4250 2450
F 0 "TP5" H 4100 2500 50  0000 C CNN
F 1 "07" H 4100 2400 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 2475 50  0001 C CNN
F 3 "" H 4300 2475 50  0001 C CNN
	1    4250 2450
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP12
U 1 1 603D193C
P 4500 2550
F 0 "TP12" H 4350 2600 50  0000 C CNN
F 1 "01" H 4350 2500 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 2575 50  0001 C CNN
F 3 "" H 4550 2575 50  0001 C CNN
	1    4500 2550
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP6
U 1 1 603D1F0C
P 4250 2650
F 0 "TP6" H 4100 2700 50  0000 C CNN
F 1 "15" H 4100 2600 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4300 2675 50  0001 C CNN
F 3 "" H 4300 2675 50  0001 C CNN
	1    4250 2650
	-1   0    0    1   
$EndComp
$Comp
L SquantorProto:testpad TP13
U 1 1 603D23AB
P 4500 2750
F 0 "TP13" H 4350 2800 50  0000 C CNN
F 1 "p14" H 4350 2700 50  0000 C CNN
F 2 "SquantorTestPoints:TestPoint_hole_H04R07" H 4550 2775 50  0001 C CNN
F 3 "" H 4550 2775 50  0001 C CNN
	1    4500 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1550 4700 1550
Wire Wire Line
	4700 1650 4350 1650
Wire Wire Line
	4600 1750 4700 1750
Wire Wire Line
	4700 1850 4350 1850
Wire Wire Line
	4600 1950 4700 1950
Wire Wire Line
	4700 2050 4350 2050
Wire Wire Line
	4700 2150 4600 2150
Wire Wire Line
	4350 2250 4700 2250
Wire Wire Line
	4700 2350 4600 2350
Wire Wire Line
	4700 2450 4350 2450
Wire Wire Line
	4700 2550 4600 2550
Wire Wire Line
	4700 2650 4350 2650
Wire Wire Line
	4600 2750 4700 2750
Text Notes 4600 2950 0    50   ~ 0
Test points
Wire Notes Line
	4150 1400 5100 1400
Wire Notes Line
	5100 1400 5100 3000
Wire Notes Line
	5100 3000 4150 3000
Wire Notes Line
	4150 3000 4150 1400
Wire Notes Line
	4550 3000 4550 2850
Wire Notes Line
	4550 2850 5100 2850
Text Label 1000 2250 2    50   ~ 0
PD_ADC
$Comp
L Device:R R4
U 1 1 6043A3BF
P 1400 4400
F 0 "R4" V 1350 4250 50  0000 C CNN
F 1 "TBD" V 1400 4400 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1330 4400 50  0001 C CNN
F 3 "~" H 1400 4400 50  0001 C CNN
	1    1400 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 60447BC5
P 1700 4600
F 0 "C2" H 1600 4700 50  0000 L CNN
F 1 "TBD" H 1550 4500 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 1738 4450 50  0001 C CNN
F 3 "~" H 1700 4600 50  0001 C CNN
	1    1700 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 4400 1700 4450
Wire Wire Line
	1550 4400 1700 4400
Text Label 1700 4800 0    50   ~ 0
VSS
Wire Wire Line
	1700 4750 1700 4800
Wire Notes Line
	2700 3700 3550 3700
Wire Notes Line
	2700 3100 2700 3700
Wire Notes Line
	3550 3100 2700 3100
Wire Notes Line
	3550 3700 3550 3100
Wire Notes Line
	2850 3550 2850 3700
Wire Notes Line
	3550 3550 2850 3550
Text Notes 2900 3650 0    50   ~ 0
prototyping area
Wire Wire Line
	2950 3300 3000 3300
Text Label 2950 3300 2    50   ~ 0
VSS
$Comp
L SquantorProto:Proto_1pin J3
U 1 1 602B2F80
P 3250 3300
F 0 "J3" H 2950 3400 60  0000 L CNN
F 1 "Proto_1pin" H 3000 3100 60  0000 L CNN
F 2 "SquantorProto:proto-SMD-0127-08X06-P010X020+pin" H 3250 3300 60  0001 C CNN
F 3 "" H 3250 3300 60  0001 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
Text Label 1000 2150 2    50   ~ 0
VSS
NoConn ~ 1050 850 
NoConn ~ 1050 950 
NoConn ~ 2050 2150
Wire Wire Line
	1050 2150 1000 2150
Wire Wire Line
	1750 4900 1600 4900
Connection ~ 1600 4900
Wire Wire Line
	1700 4400 1750 4400
Connection ~ 1700 4400
Wire Wire Line
	800  4400 1000 4400
Wire Wire Line
	800  4400 650  4400
Wire Wire Line
	650  4400 650  4350
Connection ~ 800  4400
Wire Wire Line
	800  4900 750  4900
Connection ~ 800  4900
$EndSCHEMATC

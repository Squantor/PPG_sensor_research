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
P 1050 6850
F 0 "N1" H 1050 7000 60  0000 C CNN
F 1 "OHWLOGO" H 1050 6700 60  0000 C CNN
F 2 "Symbol:OSHW-Symbol_6.7x6mm_SilkScreen" H 1050 6850 60  0001 C CNN
F 3 "" H 1050 6850 60  0001 C CNN
	1    1050 6850
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:VYYYYMMDD N2
U 1 1 5D6A68B9
P 1050 7200
F 0 "N2" H 1000 7300 60  0000 L CNN
F 1 "20200808" H 800 7200 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 1050 7200 60  0001 C CNN
F 3 "" H 1050 7200 60  0001 C CNN
	1    1050 7200
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:Label N3
U 1 1 5D8B1B32
P 1050 7400
F 0 "N3" H 1000 7450 60  0000 L CNN
F 1 "JLCJLCJLCJLC" H 750 7350 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 1050 7400 60  0001 C CNN
F 3 "" H 1050 7400 60  0001 C CNN
	1    1050 7400
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  6650 1550 6650
Wire Notes Line
	1550 6650 1550 7750
Wire Notes Line
	1550 7750 600  7750
Wire Notes Line
	600  7750 600  6650
Text Notes 650  7700 0    50   ~ 0
Mechanical and labels
$Comp
L SquantorConnectorsNamed:nuclone_small_left J1
U 1 1 5F2AC8A4
P 1500 1200
F 0 "J1" H 1500 1800 50  0000 C CNN
F 1 "nuclone_small_left" H 1500 600 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X10-H010" H 1650 1150 50  0001 C CNN
F 3 "" H 1650 1150 50  0001 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
$Comp
L SquantorConnectorsNamed:nuclone_small_right J2
U 1 1 5F2AD81B
P 1500 2500
F 0 "J2" H 1500 1900 50  0000 C CNN
F 1 "nuclone_small_right" H 1500 3100 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X10-H010" H 1500 2450 50  0001 C CNN
F 3 "" H 1500 2450 50  0001 C CNN
	1    1500 2500
	-1   0    0    1   
$EndComp
Text Label 950  750  2    50   ~ 0
VDD
Text Label 2050 750  0    50   ~ 0
VDD
Text Label 950  850  2    50   ~ 0
VBUS
Text Label 2050 850  0    50   ~ 0
VBUS
Text Label 950  950  2    50   ~ 0
VSS
Text Label 2050 950  0    50   ~ 0
VSS
Text Label 950  1050 2    50   ~ 0
GPIO_00
Text Label 950  1150 2    50   ~ 0
GPIO_02
Text Label 950  1250 2    50   ~ 0
GPIO_04
Text Label 950  1350 2    50   ~ 0
GPIO_06
Text Label 950  1450 2    50   ~ 0
GPIO_08
Text Label 2050 1450 0    50   ~ 0
GPIO_09
Text Label 2050 1350 0    50   ~ 0
GPIO_07
Text Label 2050 1250 0    50   ~ 0
GPIO_05
Text Label 2050 1150 0    50   ~ 0
GPIO_03
Text Label 2050 1050 0    50   ~ 0
GPIO_01
Text Label 950  1550 2    50   ~ 0
GPIO_10
Text Label 950  1650 2    50   ~ 0
GPIO_12
Text Label 2050 1650 0    50   ~ 0
GPIO_13
Text Label 2050 1550 0    50   ~ 0
GPIO_11
Wire Wire Line
	950  750  1000 750 
Wire Wire Line
	1000 850  950  850 
Wire Wire Line
	950  950  1000 950 
Wire Wire Line
	1000 1050 950  1050
Wire Wire Line
	950  1150 1000 1150
Wire Wire Line
	1000 1250 950  1250
Wire Wire Line
	950  1350 1000 1350
Wire Wire Line
	1000 1450 950  1450
Wire Wire Line
	950  1550 1000 1550
Wire Wire Line
	1000 1650 950  1650
Wire Wire Line
	2000 1650 2050 1650
Wire Wire Line
	2050 1550 2000 1550
Wire Wire Line
	2000 1450 2050 1450
Wire Wire Line
	2050 1350 2000 1350
Wire Wire Line
	2000 1250 2050 1250
Wire Wire Line
	2050 1150 2000 1150
Wire Wire Line
	2000 1050 2050 1050
Wire Wire Line
	2050 950  2000 950 
Wire Wire Line
	2000 850  2050 850 
Wire Wire Line
	2050 750  2000 750 
Text Label 2050 2950 0    50   ~ 0
GPIO_14
Text Label 950  2950 2    50   ~ 0
GPIO_15
Text Label 950  2850 2    50   ~ 0
GPIO_17
Text Label 950  2750 2    50   ~ 0
GPIO_19
Text Label 2050 2750 0    50   ~ 0
GPIO_18
Text Label 2050 2850 0    50   ~ 0
GPIO_16
Text Label 950  2650 2    50   ~ 0
GPIO_21
Text Label 950  2450 2    50   ~ 0
GPIO_25
Text Label 950  2350 2    50   ~ 0
GPIO_27
Text Label 950  2250 2    50   ~ 0
GPIO_29
Text Label 950  2550 2    50   ~ 0
GPIO_23
Text Label 2050 2450 0    50   ~ 0
GPIO_24
Text Label 2050 2250 0    50   ~ 0
GPIO_28
Text Label 2050 2550 0    50   ~ 0
GPIO_22
Text Label 2050 2650 0    50   ~ 0
GPIO_20
Text Label 2050 2350 0    50   ~ 0
GPIO_26
Wire Wire Line
	950  2050 1000 2050
Wire Wire Line
	1000 2150 950  2150
Wire Wire Line
	950  2250 1000 2250
Wire Wire Line
	1000 2350 950  2350
Wire Wire Line
	1000 2450 950  2450
Wire Wire Line
	950  2550 1000 2550
Wire Wire Line
	1000 2650 950  2650
Wire Wire Line
	1000 2750 950  2750
Wire Wire Line
	950  2850 1000 2850
Wire Wire Line
	1000 2950 950  2950
Wire Wire Line
	2000 2950 2050 2950
Wire Wire Line
	2050 2850 2000 2850
Wire Wire Line
	2000 2750 2050 2750
Wire Wire Line
	2050 2650 2000 2650
Wire Wire Line
	2000 2550 2050 2550
Wire Wire Line
	2050 2450 2000 2450
Wire Wire Line
	2000 2350 2050 2350
Wire Wire Line
	2050 2250 2000 2250
Wire Wire Line
	2000 2150 2050 2150
Wire Wire Line
	2050 2050 2000 2050
Wire Notes Line
	2500 550  2500 3250
Wire Notes Line
	2500 3250 550  3250
Wire Notes Line
	550  3250 550  550 
Wire Notes Line
	550  550  2500 550 
Wire Notes Line
	2500 3100 1900 3100
Wire Notes Line
	1900 3100 1900 3250
Text Notes 1950 3200 0    50   ~ 0
Connectors
Text Label 3700 850  2    50   ~ 0
VBUS
Text Label 3700 1050 2    50   ~ 0
GPIO_00
Text Label 3700 1150 2    50   ~ 0
GPIO_01
Text Label 3700 1250 2    50   ~ 0
GPIO_02
Text Label 3700 1450 2    50   ~ 0
GPIO_04
Text Label 3700 1650 2    50   ~ 0
GPIO_06
Text Label 3700 1850 2    50   ~ 0
GPIO_08
Text Label 3700 2050 2    50   ~ 0
GPIO_10
Text Label 3700 2250 2    50   ~ 0
GPIO_12
$Comp
L SquantorConnectors:PINS_1X17 J4
U 1 1 5F34098B
P 3950 1550
F 0 "J4" H 4000 2500 60  0000 R CNN
F 1 "PINS_1X17" H 4200 600 60  0000 R CNN
F 2 "SquantorConnectors:Header-0127-1X17-H006" H 3950 2350 60  0001 C CNN
F 3 "" H 3950 2350 60  0001 C CNN
	1    3950 1550
	-1   0    0    -1  
$EndComp
Text Label 3700 1350 2    50   ~ 0
GPIO_03
Text Label 3700 1550 2    50   ~ 0
GPIO_05
Text Label 3700 1750 2    50   ~ 0
GPIO_07
Text Label 3700 1950 2    50   ~ 0
GPIO_09
Text Label 3700 2150 2    50   ~ 0
GPIO_11
Text Label 3700 2350 2    50   ~ 0
GPIO_13
Wire Wire Line
	3700 750  3750 750 
Wire Wire Line
	3750 850  3700 850 
Wire Wire Line
	3700 950  3750 950 
Wire Wire Line
	3750 1050 3700 1050
Wire Wire Line
	3700 1150 3750 1150
Wire Wire Line
	3750 1250 3700 1250
Wire Wire Line
	3700 1350 3750 1350
Wire Wire Line
	3750 1450 3700 1450
Wire Wire Line
	3700 1550 3750 1550
Wire Wire Line
	3750 1650 3700 1650
Wire Wire Line
	3700 1750 3750 1750
Wire Wire Line
	3700 1850 3750 1850
Wire Wire Line
	3750 1950 3700 1950
Wire Wire Line
	3700 2050 3750 2050
Wire Wire Line
	3750 2150 3700 2150
Wire Wire Line
	3700 2250 3750 2250
Wire Wire Line
	3750 2350 3700 2350
Text Label 3000 750  2    50   ~ 0
VDDA
Text Label 3000 850  2    50   ~ 0
VSSA
$Comp
L SquantorConnectors:PINS_1X18 J3
U 1 1 5F3585BD
P 3250 1600
F 0 "J3" H 3300 2600 60  0000 R CNN
F 1 "PINS_1X18" H 3500 600 60  0000 R CNN
F 2 "SquantorConnectors:Header-0127-1X18-H006" H 3250 2450 60  0001 C CNN
F 3 "" H 3250 2450 60  0001 C CNN
	1    3250 1600
	-1   0    0    -1  
$EndComp
Text Label 3000 950  2    50   ~ 0
GPIO_29
Text Label 3000 1050 2    50   ~ 0
GPIO_28
Text Label 3000 1150 2    50   ~ 0
GPIO_27
Text Label 3000 1350 2    50   ~ 0
GPIO_25
Text Label 3000 1550 2    50   ~ 0
GPIO_23
Text Label 3000 1750 2    50   ~ 0
GPIO_21
Text Label 3000 1950 2    50   ~ 0
GPIO_19
Text Label 3000 2150 2    50   ~ 0
GPIO_17
Text Label 3000 2350 2    50   ~ 0
GPIO_15
Text Label 3000 1250 2    50   ~ 0
GPIO_26
Text Label 3000 1450 2    50   ~ 0
GPIO_24
Text Label 3000 1650 2    50   ~ 0
GPIO_22
Text Label 3000 1850 2    50   ~ 0
GPIO_20
Text Label 3000 2050 2    50   ~ 0
GPIO_18
Text Label 3000 2250 2    50   ~ 0
GPIO_16
Text Label 3000 2450 2    50   ~ 0
GPIO_14
Wire Wire Line
	3000 750  3050 750 
Wire Wire Line
	3050 850  3000 850 
Wire Wire Line
	3000 950  3050 950 
Wire Wire Line
	3000 1050 3050 1050
Wire Wire Line
	3050 1150 3000 1150
Wire Wire Line
	3000 1250 3050 1250
Wire Wire Line
	3050 1350 3000 1350
Wire Wire Line
	3000 1450 3050 1450
Wire Wire Line
	3050 1550 3000 1550
Wire Wire Line
	3000 1650 3050 1650
Wire Wire Line
	3000 1750 3050 1750
Wire Wire Line
	3050 1850 3000 1850
Wire Wire Line
	3000 1950 3050 1950
Wire Wire Line
	3050 2050 3000 2050
Wire Wire Line
	3000 2150 3050 2150
Wire Wire Line
	3050 2250 3000 2250
Wire Wire Line
	3000 2350 3050 2350
Wire Wire Line
	3050 2450 3000 2450
Wire Notes Line
	2600 550  2600 2700
Wire Notes Line
	2600 2700 4200 2700
Wire Notes Line
	4200 2700 4200 550 
Wire Notes Line
	4200 550  2600 550 
Wire Notes Line
	3500 2700 3500 2550
Wire Notes Line
	3500 2550 4200 2550
Text Notes 3550 2650 0    50   ~ 0
breakout
Wire Notes Line
	600  7600 1550 7600
$Comp
L SquantorConnectorsNamed:DevBoardUartInput J5
U 1 1 5F2EE742
P 900 3700
F 0 "J5" H 900 4000 50  0000 C CNN
F 1 "DevBoardUartInput" H 900 3400 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S4B-PH-K_1x04_P2.00mm_Horizontal" H 900 3700 50  0001 C CNN
F 3 "" H 900 3700 50  0001 C CNN
	1    900  3700
	1    0    0    -1  
$EndComp
Text Label 3700 750  2    50   ~ 0
VDD
Text Label 3700 950  2    50   ~ 0
VSS
Text Label 950  2150 2    50   ~ 0
VSSA_RAW
Text Label 2050 2150 0    50   ~ 0
VSSA_RAW
Text Label 1150 3550 0    50   ~ 0
VSS
Text Label 1150 3650 0    50   ~ 0
VBUS
$Comp
L Device:R R1
U 1 1 5F2F3702
P 1300 3750
F 0 "R1" V 1250 3600 50  0000 C CNN
F 1 "100" V 1300 3750 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1230 3750 50  0001 C CNN
F 3 "~" H 1300 3750 50  0001 C CNN
	1    1300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F2F4505
P 1300 3850
F 0 "R2" V 1250 3700 50  0000 C CNN
F 1 "100" V 1300 3850 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1230 3850 50  0001 C CNN
F 3 "~" H 1300 3850 50  0001 C CNN
	1    1300 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 3850 1150 3850
Wire Wire Line
	1150 3750 1100 3750
Text Label 1500 3750 0    50   ~ 0
UART_RX
Text Label 1500 3850 0    50   ~ 0
UART_TX
Wire Wire Line
	1100 3550 1150 3550
Wire Wire Line
	1150 3650 1100 3650
$Comp
L Connector:TestPoint TP1
U 1 1 5F3061B8
P 1750 3750
F 0 "TP1" V 1750 3950 50  0000 L CNN
F 1 "UART RX" V 1750 4100 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1950 3750 50  0001 C CNN
F 3 "~" H 1950 3750 50  0001 C CNN
	1    1750 3750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5F306926
P 1750 3850
F 0 "TP2" V 1750 4050 50  0000 L CNN
F 1 "UART TX" V 1750 4200 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1950 3850 50  0001 C CNN
F 3 "~" H 1950 3850 50  0001 C CNN
	1    1750 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3750 1750 3750
Wire Wire Line
	1450 3850 1750 3850
$Comp
L SquantorOpto:PPG_sensor_PD_flipped U1
U 1 1 5F30F2AF
P 3300 3350
F 0 "U1" H 3300 3600 50  0000 C CNN
F 1 "PPG_sensor" H 3300 3100 50  0000 C CNN
F 2 "SquantorOpto:PPG_sensor_reverse" H 3300 3300 50  0001 C CNN
F 3 "" H 3300 3300 50  0001 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  3350 550  4100
Wire Notes Line
	550  4100 2500 4100
Wire Notes Line
	2500 4100 2500 3350
Wire Notes Line
	2500 3350 550  3350
Text Notes 1800 4050 0    50   ~ 0
UART connection
Wire Notes Line
	1750 4100 1750 3950
Wire Notes Line
	1750 3950 2500 3950
$Comp
L Connector:TestPoint TP3
U 1 1 5F314C6B
P 1350 4300
F 0 "TP3" V 1350 4500 50  0000 L CNN
F 1 "LED1 drive" V 1350 4650 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1550 4300 50  0001 C CNN
F 3 "~" H 1550 4300 50  0001 C CNN
	1    1350 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5F3177F7
P 1350 4400
F 0 "TP4" V 1350 4600 50  0000 L CNN
F 1 "LED2 drive" V 1350 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1550 4400 50  0001 C CNN
F 3 "~" H 1550 4400 50  0001 C CNN
	1    1350 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F317D47
P 1550 4300
F 0 "R3" V 1500 4150 50  0000 C CNN
F 1 "1K" V 1550 4300 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1480 4300 50  0001 C CNN
F 3 "~" H 1550 4300 50  0001 C CNN
	1    1550 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F3189C9
P 1550 4400
F 0 "R4" V 1500 4250 50  0000 C CNN
F 1 "1K" V 1550 4400 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1480 4400 50  0001 C CNN
F 3 "~" H 1550 4400 50  0001 C CNN
	1    1550 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 4300 1400 4300
Wire Wire Line
	1400 4400 1350 4400
Wire Wire Line
	1700 4300 1750 4300
Wire Wire Line
	1700 4400 1750 4400
Text Label 1750 4300 0    50   ~ 0
LED1
Text Label 1750 4400 0    50   ~ 0
LED2
Text Notes 1500 4550 0    50   ~ 0
LED control
Wire Notes Line
	550  4200 2000 4200
Wire Notes Line
	2000 4200 2000 4600
Wire Notes Line
	2000 4600 550  4600
Wire Notes Line
	550  4600 550  4200
Wire Notes Line
	1450 4600 1450 4450
Wire Notes Line
	1450 4450 2000 4450
Text Label 3000 3250 2    50   ~ 0
LED1
Text Label 3000 3450 2    50   ~ 0
LED2
Text Label 3600 3250 0    50   ~ 0
VSS
Text Label 3600 3450 0    50   ~ 0
VSS
Text Label 3000 3350 2    50   ~ 0
PD_BIAS
Text Label 3600 3350 0    50   ~ 0
PD_OUT
Wire Wire Line
	3000 3250 3050 3250
Wire Wire Line
	3050 3350 3000 3350
Wire Wire Line
	3000 3450 3050 3450
Wire Wire Line
	3550 3450 3600 3450
Wire Wire Line
	3600 3350 3550 3350
Wire Wire Line
	3550 3250 3600 3250
$Comp
L Connector:TestPoint TP6
U 1 1 5F35EBAD
P 3400 3000
F 0 "TP6" V 3400 3200 50  0000 L CNN
F 1 "guard" V 3400 3350 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 3600 3000 50  0001 C CNN
F 3 "~" H 3600 3000 50  0001 C CNN
	1    3400 3000
	0    -1   -1   0   
$EndComp
Text Label 3450 3000 0    50   ~ 0
PD_OUT_GUARD
Wire Wire Line
	3400 3000 3450 3000
$Comp
L Connector:TestPoint TP5
U 1 1 5F366186
P 3400 2900
F 0 "TP5" V 3400 3100 50  0000 L CNN
F 1 "guard" V 3400 3250 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 3600 2900 50  0001 C CNN
F 3 "~" H 3600 2900 50  0001 C CNN
	1    3400 2900
	0    -1   -1   0   
$EndComp
Text Label 3450 2900 0    50   ~ 0
PD_OUT_GUARD
Wire Wire Line
	3400 2900 3450 2900
Text Notes 3600 3600 0    50   ~ 0
PPG sensor
Wire Notes Line
	2650 2800 4150 2800
Wire Notes Line
	4150 2800 4150 3650
Wire Notes Line
	4150 3650 2650 3650
Wire Notes Line
	2650 3650 2650 2800
Text Label 950  2050 2    50   ~ 0
VDDA_RAW
Text Label 2050 2050 0    50   ~ 0
VDDA_RAW
Text Label 950  4800 2    50   ~ 0
VDDA_RAW
Text Label 950  5200 2    50   ~ 0
VSSA_RAW
$Comp
L Device:C C1
U 1 1 5F3977F9
P 1000 5000
F 0 "C1" H 900 5100 50  0000 L CNN
F 1 "1u" H 1050 4900 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 1038 4850 50  0001 C CNN
F 3 "~" H 1000 5000 50  0001 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4800 1000 4800
Wire Wire Line
	1000 4800 1000 4850
Wire Wire Line
	950  5200 1000 5200
Wire Wire Line
	1000 5200 1000 5150
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5F3A2C0B
P 1150 4800
F 0 "FB1" V 1100 4700 50  0000 C CNN
F 1 "600" V 1100 4950 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 1080 4800 50  0001 C CNN
F 3 "~" H 1150 4800 50  0001 C CNN
	1    1150 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 5200 1050 5200
Connection ~ 1000 5200
Wire Wire Line
	1000 4800 1050 4800
Connection ~ 1000 4800
$Comp
L Device:C C2
U 1 1 5F3AFB21
P 1300 5000
F 0 "C2" H 1350 5100 50  0000 L CNN
F 1 "10u" H 1350 4900 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 1338 4850 50  0001 C CNN
F 3 "~" H 1300 5000 50  0001 C CNN
	1    1300 5000
	1    0    0    -1  
$EndComp
Text Label 1400 4800 0    50   ~ 0
VDDA
Text Label 1400 5200 0    50   ~ 0
VSSA
Wire Wire Line
	1250 4800 1300 4800
Wire Wire Line
	1300 4850 1300 4800
Connection ~ 1300 4800
Wire Wire Line
	1300 4800 1400 4800
Wire Wire Line
	1250 5200 1300 5200
Wire Wire Line
	1300 5200 1300 5150
Connection ~ 1300 5200
Wire Wire Line
	1300 5200 1400 5200
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5F3A36F4
P 1150 5200
F 0 "FB2" V 1200 5050 50  0000 C CNN
F 1 "600" V 1200 5300 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 1080 5200 50  0001 C CNN
F 3 "~" H 1150 5200 50  0001 C CNN
	1    1150 5200
	0    1    1    0   
$EndComp
Text Notes 1050 5400 0    50   ~ 0
Analog supply
Wire Notes Line
	1600 4700 1600 5450
Wire Notes Line
	1600 5450 550  5450
Wire Notes Line
	550  5450 550  4700
Wire Notes Line
	550  4700 1600 4700
Wire Notes Line
	1000 5450 1000 5300
Wire Notes Line
	1000 5300 1600 5300
Wire Notes Line
	3550 3650 3550 3500
Wire Notes Line
	3550 3500 4150 3500
Text Label 4550 850  2    50   ~ 0
VDDA
Text Label 4550 950  2    50   ~ 0
VSSA
Text Label 4650 650  2    50   ~ 0
PD_BIAS
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP1
U 1 1 5F40E401
P 5450 850
F 0 "JP1" H 5450 1000 50  0000 C CNN
F 1 "bias VDD" H 5450 700 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 5450 850 50  0001 C CNN
F 3 "" H 5450 850 50  0001 C CNN
	1    5450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 850  5250 850 
Wire Wire Line
	4650 650  5700 650 
Wire Wire Line
	5700 650  5700 850 
Wire Wire Line
	5700 850  5650 850 
$Comp
L SquantorGenericAnalog:reference_sot23-3 U2
U 1 1 5F422666
P 4900 2300
F 0 "U2" H 5100 2450 50  0000 C CNN
F 1 "reference_sot23-3" H 4900 2050 50  0000 C CNN
F 2 "SquantorIC:SOT23-3" H 4900 2300 50  0001 C CNN
F 3 "" H 4900 2300 50  0001 C CNN
	1    4900 2300
	-1   0    0    -1  
$EndComp
Text Label 5200 2200 0    50   ~ 0
VDDA
Text Label 4550 2300 2    50   ~ 0
VSSA
$Comp
L Device:C C3
U 1 1 5F43C25C
P 4600 1450
F 0 "C3" H 4500 1550 50  0000 L CNN
F 1 "1u" H 4650 1350 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 4638 1300 50  0001 C CNN
F 3 "~" H 4600 1450 50  0001 C CNN
	1    4600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1250 4600 1250
Wire Wire Line
	4600 1250 4600 1300
Wire Wire Line
	4550 1650 4600 1650
Wire Wire Line
	4600 1650 4600 1600
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5F43C26A
P 4750 1250
F 0 "FB3" V 4700 1150 50  0000 C CNN
F 1 "600" V 4700 1400 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 4680 1250 50  0001 C CNN
F 3 "~" H 4750 1250 50  0001 C CNN
	1    4750 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 1650 4650 1650
Connection ~ 4600 1650
Wire Wire Line
	4600 1250 4650 1250
Connection ~ 4600 1250
$Comp
L Device:C C4
U 1 1 5F43C278
P 4900 1450
F 0 "C4" H 4950 1550 50  0000 L CNN
F 1 "10u" H 4950 1350 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 4938 1300 50  0001 C CNN
F 3 "~" H 4900 1450 50  0001 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1250 4900 1250
Wire Wire Line
	4900 1300 4900 1250
Connection ~ 4900 1250
Wire Wire Line
	4900 1250 5250 1250
Wire Wire Line
	4850 1650 4900 1650
Wire Wire Line
	4900 1650 4900 1600
Connection ~ 4900 1650
Wire Wire Line
	4900 1650 5000 1650
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5F43C28A
P 4750 1650
F 0 "FB4" V 4800 1500 50  0000 C CNN
F 1 "600" V 4800 1750 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 4680 1650 50  0001 C CNN
F 3 "~" H 4750 1650 50  0001 C CNN
	1    4750 1650
	0    1    1    0   
$EndComp
Text Label 4550 1650 2    50   ~ 0
VSS
Text Label 4550 1250 2    50   ~ 0
VBUS
Text Label 5000 1650 0    50   ~ 0
VSSA
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP2
U 1 1 5F461F8A
P 5450 1250
F 0 "JP2" H 5450 1400 50  0000 C CNN
F 1 "bias VBUS" H 5450 1100 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 5450 1250 50  0001 C CNN
F 3 "" H 5450 1250 50  0001 C CNN
	1    5450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 850  5700 1250
Wire Wire Line
	5700 1250 5650 1250
Connection ~ 5700 850 
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP3
U 1 1 5F4B1706
P 5450 2400
F 0 "JP3" H 5450 2550 50  0000 C CNN
F 1 "bias REF" H 5450 2250 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 5450 2400 50  0001 C CNN
F 3 "" H 5450 2400 50  0001 C CNN
	1    5450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1250 5700 2400
Wire Wire Line
	5700 2400 5650 2400
Connection ~ 5700 1250
$Comp
L Device:C C5
U 1 1 5F4B91DE
P 4900 1950
F 0 "C5" V 4850 2000 50  0000 L CNN
F 1 "1u" V 4950 1800 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 4938 1800 50  0001 C CNN
F 3 "~" H 4900 1950 50  0001 C CNN
	1    4900 1950
	0    1    1    0   
$EndComp
Text Label 4700 1950 2    50   ~ 0
VSSA
Text Label 5100 1950 0    50   ~ 0
VDDA
$Comp
L Device:C C6
U 1 1 5F4E3D6E
P 4900 2700
F 0 "C6" V 4850 2750 50  0000 L CNN
F 1 "10u" V 4950 2550 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 4938 2550 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	0    1    1    0   
$EndComp
Text Label 4700 2700 2    50   ~ 0
VSSA
Wire Wire Line
	4550 2300 4650 2300
Wire Wire Line
	5150 2200 5200 2200
Wire Wire Line
	5150 2400 5200 2400
Wire Wire Line
	5050 2700 5200 2700
Wire Wire Line
	5200 2700 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	5200 2400 5250 2400
Wire Wire Line
	4700 2700 4750 2700
Wire Wire Line
	4700 1950 4750 1950
Wire Wire Line
	5050 1950 5100 1950
Text Notes 5050 2850 0    50   ~ 0
PD bias selection
Wire Notes Line
	4300 550  5750 550 
Wire Notes Line
	5750 550  5750 2900
Wire Notes Line
	5750 2900 4300 2900
Wire Notes Line
	4300 2900 4300 550 
Wire Notes Line
	5000 2900 5000 2750
Wire Notes Line
	5000 2750 5750 2750
Text Label 5400 2700 0    50   ~ 0
VREF
Wire Wire Line
	5200 2700 5400 2700
Connection ~ 5200 2700
$EndSCHEMATC

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
P 1000 6350
F 0 "N1" H 1000 6500 60  0000 C CNN
F 1 "OHWLOGO" H 1000 6200 60  0000 C CNN
F 2 "Symbol:OSHW-Symbol_6.7x6mm_SilkScreen" H 1000 6350 60  0001 C CNN
F 3 "" H 1000 6350 60  0001 C CNN
	1    1000 6350
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:VYYYYMMDD N2
U 1 1 5D6A68B9
P 1000 6700
F 0 "N2" H 950 6800 60  0000 L CNN
F 1 "20200808" H 750 6700 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 1000 6700 60  0001 C CNN
F 3 "" H 1000 6700 60  0001 C CNN
	1    1000 6700
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:Label N3
U 1 1 5D8B1B32
P 1000 6900
F 0 "N3" H 950 6950 60  0000 L CNN
F 1 "JLCJLCJLCJLC" H 700 6850 60  0000 L CNN
F 2 "SquantorLabels:Label_Generic" H 1000 6900 60  0001 C CNN
F 3 "" H 1000 6900 60  0001 C CNN
	1    1000 6900
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  6150 1500 6150
Wire Notes Line
	1500 6150 1500 7250
Wire Notes Line
	1500 7250 550  7250
Wire Notes Line
	550  7250 550  6150
Text Notes 600  7200 0    50   ~ 0
Mechanical and labels
$Comp
L SquantorConnectorsNamed:nuclone_small_left J1
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
Text Label 1000 850  2    50   ~ 0
VBUS
Text Label 2100 850  0    50   ~ 0
VBUS
Text Label 1000 950  2    50   ~ 0
VSS
Text Label 2100 950  0    50   ~ 0
VSS
Text Label 2100 1450 0    50   ~ 0
GPIO_09
Text Label 2100 1350 0    50   ~ 0
GPIO_07
Text Label 2100 1250 0    50   ~ 0
GPIO_05
Text Label 2100 1150 0    50   ~ 0
GPIO_03
Text Label 2100 1050 0    50   ~ 0
GPIO_01
Wire Wire Line
	1000 750  1050 750 
Wire Wire Line
	1050 850  1000 850 
Wire Wire Line
	1000 950  1050 950 
Wire Wire Line
	1050 1050 1000 1050
Wire Wire Line
	1000 1150 1050 1150
Wire Wire Line
	1050 1250 1000 1250
Wire Wire Line
	1000 1350 1050 1350
Wire Wire Line
	1050 1450 1000 1450
Wire Wire Line
	1000 1550 1050 1550
Wire Wire Line
	1050 1650 1000 1650
Wire Wire Line
	2050 1650 2100 1650
Wire Wire Line
	2100 1550 2050 1550
Wire Wire Line
	2050 1450 2100 1450
Wire Wire Line
	2100 1350 2050 1350
Wire Wire Line
	2050 1250 2100 1250
Wire Wire Line
	2100 1150 2050 1150
Wire Wire Line
	2050 1050 2100 1050
Wire Wire Line
	2100 950  2050 950 
Wire Wire Line
	2050 850  2100 850 
Wire Wire Line
	2100 750  2050 750 
Text Label 2100 2950 0    50   ~ 0
GPIO_14
Text Label 1000 2950 2    50   ~ 0
GPIO_15
Text Label 1000 2850 2    50   ~ 0
GPIO_17
Text Label 1000 2750 2    50   ~ 0
GPIO_19
Text Label 2100 2750 0    50   ~ 0
GPIO_18
Text Label 2100 2850 0    50   ~ 0
GPIO_16
Text Label 1000 2650 2    50   ~ 0
GPIO_21
Text Label 1000 2450 2    50   ~ 0
GPIO_25
Text Label 1000 2350 2    50   ~ 0
GPIO_27
Text Label 1000 2250 2    50   ~ 0
GPIO_29
Text Label 1000 2550 2    50   ~ 0
GPIO_23
Text Label 2100 2450 0    50   ~ 0
GPIO_24
Text Label 2100 2250 0    50   ~ 0
GPIO_28
Text Label 2100 2550 0    50   ~ 0
GPIO_22
Text Label 2100 2650 0    50   ~ 0
GPIO_20
Text Label 2100 2350 0    50   ~ 0
GPIO_26
Wire Wire Line
	1000 2050 1050 2050
Wire Wire Line
	1050 2150 1000 2150
Wire Wire Line
	1000 2250 1050 2250
Wire Wire Line
	1050 2350 1000 2350
Wire Wire Line
	1050 2450 1000 2450
Wire Wire Line
	1000 2550 1050 2550
Wire Wire Line
	1050 2650 1000 2650
Wire Wire Line
	1050 2750 1000 2750
Wire Wire Line
	1000 2850 1050 2850
Wire Wire Line
	1050 2950 1000 2950
Wire Wire Line
	2050 2950 2100 2950
Wire Wire Line
	2100 2850 2050 2850
Wire Wire Line
	2050 2750 2100 2750
Wire Wire Line
	2100 2650 2050 2650
Wire Wire Line
	2050 2550 2100 2550
Wire Wire Line
	2100 2450 2050 2450
Wire Wire Line
	2050 2350 2100 2350
Wire Wire Line
	2100 2250 2050 2250
Wire Wire Line
	2050 2150 2100 2150
Wire Wire Line
	2100 2050 2050 2050
Wire Notes Line
	2500 3250 550  3250
Wire Notes Line
	550  3250 550  550 
Wire Notes Line
	550  550  2500 550 
Text Notes 2050 3200 0    50   ~ 0
Connectors
Wire Notes Line
	550  7100 1500 7100
$Comp
L SquantorConnectorsNamed:DevBoardUartInput J5
U 1 1 5F2EE742
P 900 3700
F 0 "J5" H 900 4000 50  0000 C CNN
F 1 "DevBoardUartInput" H 900 3400 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B4B-PH-SM4-TB_1x04-1MP_P2.00mm_Vertical" H 900 3700 50  0001 C CNN
F 3 "" H 900 3700 50  0001 C CNN
	1    900  3700
	1    0    0    -1  
$EndComp
Text Label 1000 2150 2    50   ~ 0
VSSA_RAW
Text Label 2100 2150 0    50   ~ 0
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
F 1 "RX" V 1750 4100 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1950 3750 50  0001 C CNN
F 3 "~" H 1950 3750 50  0001 C CNN
	1    1750 3750
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5F306926
P 1750 3850
F 0 "TP2" V 1750 4050 50  0000 L CNN
F 1 "TX" V 1750 4200 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1950 3850 50  0001 C CNN
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
P 3250 3600
F 0 "U1" H 3250 3850 50  0000 C CNN
F 1 "PPG_sensor" H 3250 3350 50  0000 C CNN
F 2 "SquantorOpto:PPG_sensor_reverse_PD_antiparallel" H 3250 3550 50  0001 C CNN
F 3 "" H 3250 3550 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  3350 550  4100
Wire Notes Line
	550  4100 2500 4100
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
F 1 "LED1" V 1350 4650 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1550 4300 50  0001 C CNN
F 3 "~" H 1550 4300 50  0001 C CNN
	1    1350 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5F3177F7
P 1350 4400
F 0 "TP4" V 1350 4600 50  0000 L CNN
F 1 "LED2" V 1350 4750 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1550 4400 50  0001 C CNN
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
Text Label 2950 3500 2    50   ~ 0
LED1
Text Label 2950 3700 2    50   ~ 0
LED2
Text Label 3550 3500 0    50   ~ 0
VSS
Text Label 3550 3700 0    50   ~ 0
VSS
Text Label 2950 3600 2    50   ~ 0
PD_BIAS
Text Label 3550 3600 0    50   ~ 0
PD_OUT
Wire Wire Line
	2950 3500 3000 3500
Wire Wire Line
	3000 3600 2950 3600
Wire Wire Line
	2950 3700 3000 3700
Wire Wire Line
	3500 3700 3550 3700
Wire Wire Line
	3550 3600 3500 3600
Wire Wire Line
	3500 3500 3550 3500
$Comp
L Connector:TestPoint TP6
U 1 1 5F35EBAD
P 4000 3250
F 0 "TP6" V 4000 3450 50  0000 L CNN
F 1 "guard" V 4000 3600 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_pad_circle_D05" H 4200 3250 50  0001 C CNN
F 3 "~" H 4200 3250 50  0001 C CNN
	1    4000 3250
	0    -1   -1   0   
$EndComp
Text Label 4050 3100 2    50   ~ 0
PD_OUT_GUARD
$Comp
L Connector:TestPoint TP5
U 1 1 5F366186
P 4000 3150
F 0 "TP5" V 4000 3350 50  0000 L CNN
F 1 "guard" V 4000 3500 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_pad_circle_D05" H 4200 3150 50  0001 C CNN
F 3 "~" H 4200 3150 50  0001 C CNN
	1    4000 3150
	0    -1   -1   0   
$EndComp
Text Notes 3550 3850 0    50   ~ 0
PPG sensor
Wire Notes Line
	2600 3000 4100 3000
Wire Notes Line
	4100 3000 4100 3900
Wire Notes Line
	4100 3900 2600 3900
Wire Notes Line
	2600 3900 2600 3000
Text Label 1000 2050 2    50   ~ 0
VDDA_RAW
Text Label 2100 2050 0    50   ~ 0
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
	1250 5200 1300 5200
Wire Wire Line
	1300 5200 1300 5150
Connection ~ 1300 5200
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
Text Notes 1300 5400 0    50   ~ 0
Analog supply
Wire Notes Line
	1850 4700 1850 5450
Wire Notes Line
	1850 5450 550  5450
Wire Notes Line
	550  5450 550  4700
Wire Notes Line
	550  4700 1850 4700
Wire Notes Line
	1250 5450 1250 5300
Wire Notes Line
	1250 5300 1850 5300
Wire Notes Line
	3500 3900 3500 3750
Wire Notes Line
	3500 3750 4100 3750
Text Label 2850 850  2    50   ~ 0
VDDA
Text Label 2950 650  2    50   ~ 0
PD_BIAS
Wire Wire Line
	2850 850  3550 850 
Wire Wire Line
	2950 650  4000 650 
Wire Wire Line
	4000 650  4000 850 
Wire Wire Line
	4000 850  3950 850 
$Comp
L SquantorGenericAnalog:reference_sot23-3 U2
U 1 1 5F422666
P 3200 2300
F 0 "U2" H 3400 2450 50  0000 C CNN
F 1 "reference_sot23-3" H 3200 2050 50  0000 C CNN
F 2 "SquantorIC:SOT23-3" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	-1   0    0    -1  
$EndComp
Text Label 3500 2200 0    50   ~ 0
VDDA
Text Label 2850 2300 2    50   ~ 0
VSSA
$Comp
L Device:C C3
U 1 1 5F43C25C
P 2900 1450
F 0 "C3" H 2800 1550 50  0000 L CNN
F 1 "1u" H 2950 1350 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 2938 1300 50  0001 C CNN
F 3 "~" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1250 2900 1250
Wire Wire Line
	2900 1250 2900 1300
Wire Wire Line
	2850 1650 2900 1650
Wire Wire Line
	2900 1650 2900 1600
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5F43C26A
P 3050 1250
F 0 "FB3" V 3000 1150 50  0000 C CNN
F 1 "600" V 3000 1400 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 2980 1250 50  0001 C CNN
F 3 "~" H 3050 1250 50  0001 C CNN
	1    3050 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1650 2950 1650
Connection ~ 2900 1650
Wire Wire Line
	2900 1250 2950 1250
Connection ~ 2900 1250
$Comp
L Device:C C4
U 1 1 5F43C278
P 3200 1450
F 0 "C4" H 3250 1550 50  0000 L CNN
F 1 "10u" H 3250 1350 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 3238 1300 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1250 3200 1250
Wire Wire Line
	3200 1300 3200 1250
Connection ~ 3200 1250
Wire Wire Line
	3200 1250 3550 1250
Wire Wire Line
	3150 1650 3200 1650
Wire Wire Line
	3200 1650 3200 1600
Connection ~ 3200 1650
Wire Wire Line
	3200 1650 3300 1650
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5F43C28A
P 3050 1650
F 0 "FB4" V 3100 1500 50  0000 C CNN
F 1 "600" V 3100 1750 50  0000 C CNN
F 2 "SquantorRcl:L_0603" V 2980 1650 50  0001 C CNN
F 3 "~" H 3050 1650 50  0001 C CNN
	1    3050 1650
	0    1    1    0   
$EndComp
Text Label 2850 1650 2    50   ~ 0
VSS
Text Label 2850 1250 2    50   ~ 0
VBUS
Text Label 3300 1650 0    50   ~ 0
VSSA
Wire Wire Line
	4000 850  4000 1250
Wire Wire Line
	4000 1250 3950 1250
Connection ~ 4000 850 
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP3
U 1 1 5F4B1706
P 3750 2400
F 0 "JP3" H 3750 2550 50  0000 C CNN
F 1 "bias REF" H 3750 2250 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3750 2400 50  0001 C CNN
F 3 "" H 3750 2400 50  0001 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1250 4000 2400
Wire Wire Line
	4000 2400 3950 2400
Connection ~ 4000 1250
$Comp
L Device:C C5
U 1 1 5F4B91DE
P 3200 1950
F 0 "C5" V 3150 2000 50  0000 L CNN
F 1 "1u" V 3250 1800 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 3238 1800 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	0    1    1    0   
$EndComp
Text Label 3000 1950 2    50   ~ 0
VSSA
Text Label 3400 1950 0    50   ~ 0
VDDA
$Comp
L Device:C C6
U 1 1 5F4E3D6E
P 3200 2700
F 0 "C6" V 3150 2750 50  0000 L CNN
F 1 "10u" V 3250 2500 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 3238 2550 50  0001 C CNN
F 3 "~" H 3200 2700 50  0001 C CNN
	1    3200 2700
	0    1    1    0   
$EndComp
Text Label 3000 2700 2    50   ~ 0
VSSA
Wire Wire Line
	2850 2300 2950 2300
Wire Wire Line
	3450 2200 3500 2200
Wire Wire Line
	3450 2400 3500 2400
Wire Wire Line
	3350 2700 3500 2700
Wire Wire Line
	3500 2700 3500 2400
Connection ~ 3500 2400
Wire Wire Line
	3500 2400 3550 2400
Wire Wire Line
	3000 2700 3050 2700
Wire Wire Line
	3000 1950 3050 1950
Wire Wire Line
	3350 1950 3400 1950
Text Notes 3350 2850 0    50   ~ 0
PD bias selection
Wire Notes Line
	2600 550  4050 550 
Wire Notes Line
	4050 550  4050 2900
Wire Notes Line
	4050 2900 2600 2900
Wire Notes Line
	2600 2900 2600 550 
Wire Notes Line
	3300 2900 3300 2750
Wire Notes Line
	3300 2750 4050 2750
Text Label 3700 2700 0    50   ~ 0
VREF
Wire Wire Line
	3500 2700 3700 2700
Connection ~ 3500 2700
$Comp
L Connector:TestPoint TP7
U 1 1 5F3452B2
P 1500 4800
F 0 "TP7" V 1500 5000 50  0000 L CNN
F 1 "VDDA" V 1600 4950 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1700 4800 50  0001 C CNN
F 3 "~" H 1700 4800 50  0001 C CNN
	1    1500 4800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5F345FFB
P 1500 5200
F 0 "TP8" V 1500 5400 50  0000 L CNN
F 1 "VSSA" V 1400 5350 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 1700 5200 50  0001 C CNN
F 3 "~" H 1700 5200 50  0001 C CNN
	1    1500 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4800 1500 4800
Wire Wire Line
	1300 5200 1500 5200
$Comp
L Connector:TestPoint TP9
U 1 1 5F31E965
P 4000 3350
F 0 "TP9" V 4000 3550 50  0000 L CNN
F 1 "guard" V 4000 3700 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 4200 3350 50  0001 C CNN
F 3 "~" H 4200 3350 50  0001 C CNN
	1    4000 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3100 4050 3150
Wire Wire Line
	4050 3350 4000 3350
Wire Wire Line
	4000 3250 4050 3250
Connection ~ 4050 3250
Wire Wire Line
	4050 3250 4050 3350
Wire Wire Line
	4050 3150 4000 3150
Connection ~ 4050 3150
Wire Wire Line
	4050 3150 4050 3250
$Comp
L Device:C C7
U 1 1 5F3819D6
P 4550 1000
F 0 "C7" H 4450 1100 50  0000 L CNN
F 1 "4n7" H 4550 900 50  0000 L CNN
F 2 "SquantorRcl:C_0805+0603" H 4588 850 50  0001 C CNN
F 3 "~" H 4550 1000 50  0001 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
Text Label 4500 1200 2    50   ~ 0
VSSA
Text Label 4500 700  2    50   ~ 0
PD_OUT
Wire Wire Line
	4500 700  4550 700 
Wire Wire Line
	4550 700  4550 850 
Wire Wire Line
	4550 1150 4550 1200
Wire Wire Line
	4550 1200 4500 1200
$Comp
L Device:C C8
U 1 1 5F38C809
P 4750 1000
F 0 "C8" H 4650 1100 50  0000 L CNN
F 1 "4n7" H 4750 900 50  0000 L CNN
F 2 "SquantorRcl:C_0805+0603" H 4788 850 50  0001 C CNN
F 3 "~" H 4750 1000 50  0001 C CNN
	1    4750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F38C9B5
P 4950 1000
F 0 "C9" H 4850 1100 50  0000 L CNN
F 1 "4n7" H 4950 900 50  0000 L CNN
F 2 "SquantorRcl:C_0805+0603" H 4988 850 50  0001 C CNN
F 3 "~" H 4950 1000 50  0001 C CNN
	1    4950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 700  4750 700 
Wire Wire Line
	4950 700  4950 850 
Connection ~ 4550 700 
Wire Wire Line
	4950 1150 4950 1200
Wire Wire Line
	4950 1200 4750 1200
Connection ~ 4550 1200
Wire Wire Line
	4750 1150 4750 1200
Connection ~ 4750 1200
Wire Wire Line
	4750 1200 4550 1200
Wire Wire Line
	4750 850  4750 700 
Connection ~ 4750 700 
Wire Wire Line
	4750 700  4950 700 
$Comp
L Device:R R8
U 1 1 5F3AF303
P 5350 1200
F 0 "R8" V 5300 1050 50  0000 C CNN
F 1 "100K" V 5350 1200 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5280 1200 50  0001 C CNN
F 3 "~" H 5350 1200 50  0001 C CNN
	1    5350 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F3B58A6
P 5750 950
F 0 "R11" V 5700 800 50  0000 C CNN
F 1 "4K7" V 5750 950 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5680 950 50  0001 C CNN
F 3 "~" H 5750 950 50  0001 C CNN
	1    5750 950 
	0    -1   -1   0   
$EndComp
Text Label 5950 950  0    50   ~ 0
I_reset
$Comp
L Connector:TestPoint TP10
U 1 1 5F3C5825
P 5300 700
F 0 "TP10" V 5200 900 50  0000 L CNN
F 1 "PD out" V 5300 900 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 5500 700 50  0001 C CNN
F 3 "~" H 5500 700 50  0001 C CNN
	1    5300 700 
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5F3CE4E3
P 6150 950
F 0 "TP12" V 6050 1150 50  0000 L CNN
F 1 "I reset" V 6150 1150 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 6350 950 50  0001 C CNN
F 3 "~" H 6350 950 50  0001 C CNN
	1    6150 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 950  6150 950 
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP2
U 1 1 5F461F8A
P 3750 1250
F 0 "JP2" H 3750 1400 50  0000 C CNN
F 1 "bias VBUS" H 3750 1100 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3750 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0001 C CNN
	1    3750 1250
	1    0    0    -1  
$EndComp
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP1
U 1 1 5F40E401
P 3750 850
F 0 "JP1" H 3750 1000 50  0000 C CNN
F 1 "bias VDD" H 3750 700 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3750 850 50  0001 C CNN
F 3 "" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
Text Notes 5700 1250 0    50   ~ 0
PD integrator and reset
Wire Notes Line
	4150 550  6750 550 
Wire Notes Line
	6750 550  6750 1300
Wire Notes Line
	6750 1300 4150 1300
Wire Notes Line
	4150 1300 4150 550 
Wire Notes Line
	5650 1300 5650 1150
Wire Notes Line
	5650 1150 6750 1150
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5F39FB42
P 5250 950
F 0 "Q1" H 5400 1100 50  0000 L CNN
F 1 "BC846" H 5000 800 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 5450 1050 50  0001 C CNN
F 3 "~" H 5250 950 50  0001 C CNN
	1    5250 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 700  5150 700 
Connection ~ 4950 700 
Wire Wire Line
	5150 750  5150 700 
Connection ~ 5150 700 
Wire Wire Line
	5150 700  5300 700 
Wire Wire Line
	4950 1200 5150 1200
Connection ~ 4950 1200
Wire Wire Line
	5150 1150 5150 1200
Connection ~ 5150 1200
Wire Wire Line
	5150 1200 5200 1200
Wire Wire Line
	5450 950  5550 950 
Wire Wire Line
	5500 1200 5550 1200
Wire Wire Line
	5550 1200 5550 950 
Connection ~ 5550 950 
Wire Wire Line
	5550 950  5600 950 
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP4
U 1 1 5F4739A8
P 4650 1650
F 0 "JP4" H 4650 1800 50  0000 C CNN
F 1 "AVDD divider" H 4650 1500 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 4650 1650 50  0001 C CNN
F 3 "" H 4650 1650 50  0001 C CNN
	1    4650 1650
	1    0    0    -1  
$EndComp
Text Label 4400 1650 2    50   ~ 0
VDDA
Text Label 4400 2050 2    50   ~ 0
VREF
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP5
U 1 1 5F474801
P 4650 2050
F 0 "JP5" H 4650 2200 50  0000 C CNN
F 1 "VREF divider" H 4650 1900 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 4650 2050 50  0001 C CNN
F 3 "" H 4650 2050 50  0001 C CNN
	1    4650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2050 4450 2050
Wire Wire Line
	4450 1650 4400 1650
$Comp
L Device:R R5
U 1 1 5F48D3D0
P 5100 1650
F 0 "R5" V 5050 1800 50  0000 C CNN
F 1 "R" V 5100 1650 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5030 1650 50  0001 C CNN
F 3 "~" H 5100 1650 50  0001 C CNN
	1    5100 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F48E386
P 5100 1850
F 0 "R6" V 5050 2000 50  0000 C CNN
F 1 "R" V 5100 1850 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5030 1850 50  0001 C CNN
F 3 "~" H 5100 1850 50  0001 C CNN
	1    5100 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F48E66A
P 5100 2050
F 0 "R7" V 5050 2200 50  0000 C CNN
F 1 "R" V 5100 2050 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5030 2050 50  0001 C CNN
F 3 "~" H 5100 2050 50  0001 C CNN
	1    5100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1650 4900 1650
Wire Wire Line
	4900 1650 4900 1850
Wire Wire Line
	4900 2050 4950 2050
Wire Wire Line
	4850 2050 4900 2050
Connection ~ 4900 2050
Wire Wire Line
	4950 1850 4900 1850
Connection ~ 4900 1850
Wire Wire Line
	4900 1850 4900 2050
Wire Wire Line
	4950 1650 4900 1650
Connection ~ 4900 1650
$Comp
L Device:R R9
U 1 1 5F4B8CB5
P 5500 1650
F 0 "R9" V 5450 1800 50  0000 C CNN
F 1 "R" V 5500 1650 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5430 1650 50  0001 C CNN
F 3 "~" H 5500 1650 50  0001 C CNN
	1    5500 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F4B8FA1
P 5500 1850
F 0 "R10" V 5450 2050 50  0000 C CNN
F 1 "R" V 5500 1850 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5430 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 1850 5300 1850
Wire Wire Line
	5350 1650 5300 1650
Wire Wire Line
	5300 1650 5300 1850
Connection ~ 5300 1650
Wire Wire Line
	5300 1650 5250 1650
Connection ~ 5300 1850
Wire Wire Line
	5300 1850 5350 1850
Wire Wire Line
	5650 1650 5750 1650
Wire Wire Line
	5750 1650 5750 1850
Wire Wire Line
	5250 2050 5750 2050
Wire Wire Line
	5650 1850 5750 1850
Connection ~ 5750 1850
Wire Wire Line
	5750 1850 5750 2050
$Comp
L Device:R R13
U 1 1 5F4E24EB
P 5950 1850
F 0 "R13" V 5900 2050 50  0000 C CNN
F 1 "R" V 5950 1850 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5880 1850 50  0001 C CNN
F 3 "~" H 5950 1850 50  0001 C CNN
	1    5950 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F4E289E
P 5950 2050
F 0 "R14" V 5900 2250 50  0000 C CNN
F 1 "R" V 5950 2050 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5880 2050 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F4E2B8C
P 5950 1650
F 0 "R12" V 5900 1850 50  0000 C CNN
F 1 "R" V 5950 1650 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 5880 1650 50  0001 C CNN
F 3 "~" H 5950 1650 50  0001 C CNN
	1    5950 1650
	0    1    1    0   
$EndComp
Text Label 6200 1850 0    50   ~ 0
VSSA
Wire Wire Line
	5750 1650 5800 1650
Connection ~ 5750 1650
Wire Wire Line
	5800 1850 5750 1850
Wire Wire Line
	5750 2050 5800 2050
Connection ~ 5750 2050
Wire Wire Line
	6100 2050 6150 2050
Wire Wire Line
	6150 2050 6150 1850
Wire Wire Line
	6150 1850 6200 1850
Wire Wire Line
	6150 1850 6150 1650
Wire Wire Line
	6150 1650 6100 1650
Connection ~ 6150 1850
Wire Wire Line
	6100 1850 6150 1850
Text Label 5650 1500 2    50   ~ 0
Divider_out
$Comp
L Connector:TestPoint TP11
U 1 1 5F5119A4
P 5900 1500
F 0 "TP11" V 5850 1400 50  0000 L CNN
F 1 "Div out" V 5900 1700 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 6100 1500 50  0001 C CNN
F 3 "~" H 6100 1500 50  0001 C CNN
	1    5900 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1650 5750 1500
Wire Wire Line
	5750 1500 5900 1500
Wire Wire Line
	5650 1500 5750 1500
Connection ~ 5750 1500
Text Notes 5800 2250 0    50   ~ 0
Resistor divider
Wire Notes Line
	4150 1400 6450 1400
Wire Notes Line
	6450 1400 6450 2300
Wire Notes Line
	6450 2300 4150 2300
Wire Notes Line
	4150 2300 4150 1400
Wire Notes Line
	5750 2300 5750 2150
Wire Notes Line
	5750 2150 6450 2150
$Comp
L SquantorMicrochip:MCP6541 U3
U 1 1 5F30EAFC
P 8050 1050
F 0 "U3" H 8050 1300 50  0000 C CNN
F 1 "MCP6541" H 8050 800 50  0000 C CNN
F 2 "SquantorIC:SOT23-5-Microchip-OT" H 8130 1200 20  0001 C CNN
F 3 "" H 8100 1050 60  0001 C CNN
	1    8050 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F311417
P 8050 650
F 0 "C10" V 8000 700 50  0000 L CNN
F 1 "1u" V 8100 500 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 8088 500 50  0001 C CNN
F 3 "~" H 8050 650 50  0001 C CNN
	1    8050 650 
	0    1    1    0   
$EndComp
Text Label 7850 650  2    50   ~ 0
VSSA
Text Label 8250 650  0    50   ~ 0
VDDA
Text Label 7650 1050 2    50   ~ 0
VSSA
Text Label 8450 950  0    50   ~ 0
VDDA
Wire Wire Line
	7900 650  7850 650 
Wire Wire Line
	7650 1050 7700 1050
Wire Wire Line
	8200 650  8250 650 
Wire Wire Line
	8400 950  8450 950 
Text Label 7650 950  2    50   ~ 0
CMP_OUT
$Comp
L Connector:TestPoint TP13
U 1 1 5F3337A1
P 7400 950
F 0 "TP13" V 7500 1150 50  0000 L CNN
F 1 "Cmp Out" V 7400 1150 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 7600 950 50  0001 C CNN
F 3 "~" H 7600 950 50  0001 C CNN
	1    7400 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 950  7700 950 
$Comp
L Device:R R18
U 1 1 5F34DE3E
P 8650 1150
F 0 "R18" V 8600 1300 50  0000 C CNN
F 1 "R" V 8650 1150 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 8580 1150 50  0001 C CNN
F 3 "~" H 8650 1150 50  0001 C CNN
	1    8650 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F34ED02
P 8650 1050
F 0 "R17" V 8600 1200 50  0000 C CNN
F 1 "R" V 8650 1050 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 8580 1050 50  0001 C CNN
F 3 "~" H 8650 1050 50  0001 C CNN
	1    8650 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5F34F0F0
P 7450 1150
F 0 "R15" V 7400 1300 50  0000 C CNN
F 1 "R" V 7450 1150 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 7380 1150 50  0001 C CNN
F 3 "~" H 7450 1150 50  0001 C CNN
	1    7450 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F34F5CC
P 7450 1250
F 0 "R16" V 7400 1400 50  0000 C CNN
F 1 "R" V 7450 1250 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 7380 1250 50  0001 C CNN
F 3 "~" H 7450 1250 50  0001 C CNN
	1    7450 1250
	0    1    1    0   
$EndComp
Text Label 7250 1250 2    50   ~ 0
CMP_OUT
Text Label 8850 1050 0    50   ~ 0
CMP_OUT
Wire Wire Line
	7250 1250 7300 1250
Wire Wire Line
	7600 1250 7650 1250
Wire Wire Line
	7650 1250 7650 1150
Wire Wire Line
	7650 1150 7700 1150
Wire Wire Line
	8400 1150 8450 1150
Wire Wire Line
	8450 1150 8450 1050
Wire Wire Line
	8450 1050 8500 1050
Wire Wire Line
	8800 1050 8850 1050
Wire Wire Line
	7600 1150 7650 1150
Connection ~ 7650 1150
Wire Wire Line
	8450 1150 8500 1150
Connection ~ 8450 1150
Text Label 7250 1150 2    50   ~ 0
PD_OUT
Text Label 8850 1150 0    50   ~ 0
Divider_out
Wire Wire Line
	7250 1150 7300 1150
Wire Wire Line
	8800 1150 8850 1150
Text Notes 8750 1300 0    50   ~ 0
Comparator
Wire Notes Line
	6850 1350 9300 1350
Wire Notes Line
	9300 1350 9300 550 
Wire Notes Line
	9300 550  6850 550 
Wire Notes Line
	6850 550  6850 1350
Wire Notes Line
	8650 1350 8650 1200
Wire Notes Line
	8650 1200 9300 1200
Text Label 2100 1550 0    50   ~ 0
GPIO_11
Text Label 2100 1650 0    50   ~ 0
GPIO_13
Text Label 1000 1650 2    50   ~ 0
GPIO_12
Text Label 1000 1550 2    50   ~ 0
GPIO_10
Text Label 1000 1450 2    50   ~ 0
GPIO_08
Text Label 1000 1350 2    50   ~ 0
GPIO_06
Text Label 1000 1250 2    50   ~ 0
GPIO_04
Text Label 1000 1150 2    50   ~ 0
GPIO_02
Text Label 1000 1050 2    50   ~ 0
GPIO_00
NoConn ~ 1000 1050
NoConn ~ 1000 1150
NoConn ~ 1000 1250
NoConn ~ 1000 1350
NoConn ~ 1000 1450
NoConn ~ 1000 1550
NoConn ~ 1000 1650
NoConn ~ 2100 1650
NoConn ~ 2100 1550
NoConn ~ 2100 1450
NoConn ~ 2100 1350
NoConn ~ 2100 1250
NoConn ~ 2100 1150
NoConn ~ 2100 1050
NoConn ~ 1000 2250
NoConn ~ 1000 2350
NoConn ~ 1000 2450
NoConn ~ 1000 2550
NoConn ~ 1000 2650
NoConn ~ 1000 2750
NoConn ~ 1000 2850
NoConn ~ 1000 2950
NoConn ~ 2100 2950
NoConn ~ 2100 2850
NoConn ~ 2100 2750
NoConn ~ 2100 2650
NoConn ~ 2100 2550
NoConn ~ 2100 2450
NoConn ~ 2100 2350
NoConn ~ 2100 2250
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F544F80
P 1000 5750
F 0 "#FLG0101" H 1000 5825 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5878 50  0000 L CNN
F 2 "" H 1000 5750 50  0001 C CNN
F 3 "~" H 1000 5750 50  0001 C CNN
	1    1000 5750
	0    1    1    0   
$EndComp
$Comp
L SquantorConnectorsNamed:nuclone_small_right J2
U 1 1 5F2AD81B
P 1550 2500
F 0 "J2" H 1550 1900 50  0000 C CNN
F 1 "nuclone_small_right" H 1550 3100 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X10-H010" H 1550 2450 50  0001 C CNN
F 3 "" H 1550 2450 50  0001 C CNN
	1    1550 2500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F54EBF3
P 1000 5850
F 0 "#FLG0102" H 1000 5925 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5978 50  0000 L CNN
F 2 "" H 1000 5850 50  0001 C CNN
F 3 "~" H 1000 5850 50  0001 C CNN
	1    1000 5850
	0    1    1    0   
$EndComp
Wire Notes Line
	2500 550  2500 3250
Wire Notes Line
	2500 3350 2500 4100
Text Label 950  5750 2    50   ~ 0
VDDA_RAW
Text Label 950  5850 2    50   ~ 0
VSSA_RAW
Wire Wire Line
	950  5750 1000 5750
Wire Wire Line
	1000 5850 950  5850
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F658CE3
P 1000 5650
F 0 "#FLG0103" H 1000 5725 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5778 50  0000 L CNN
F 2 "" H 1000 5650 50  0001 C CNN
F 3 "~" H 1000 5650 50  0001 C CNN
	1    1000 5650
	0    1    1    0   
$EndComp
Wire Notes Line
	2000 3100 2000 3250
Wire Notes Line
	2500 3100 2000 3100
Text Label 950  5650 2    50   ~ 0
VDD
Wire Wire Line
	950  5650 1000 5650
Text Notes 1400 6000 0    50   ~ 0
Power flags
Wire Notes Line
	1850 6050 1850 5550
Wire Notes Line
	1850 5550 550  5550
Wire Notes Line
	550  5550 550  6050
Wire Notes Line
	550  6050 1850 6050
Wire Notes Line
	1850 5900 1350 5900
Wire Notes Line
	1350 5900 1350 6050
$EndSCHEMATC

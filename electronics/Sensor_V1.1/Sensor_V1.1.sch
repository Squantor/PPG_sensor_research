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
F 1 "20200908" H 6100 7150 60  0000 L CNN
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
Text Label 1000 850  2    50   ~ 0
VBUS
Text Label 2100 850  0    50   ~ 0
VBUS
Text Label 1000 950  2    50   ~ 0
VSS
Text Label 2100 950  0    50   ~ 0
VSS
Wire Wire Line
	1000 750  1050 750 
Wire Wire Line
	1050 850  1000 850 
Wire Wire Line
	1000 950  1050 950 
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
P 1500 3750
F 0 "R1" V 1450 3600 50  0000 C CNN
F 1 "100" V 1500 3750 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1430 3750 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F2F4505
P 1500 3850
F 0 "R2" V 1450 3700 50  0000 C CNN
F 1 "100" V 1500 3850 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1430 3850 50  0001 C CNN
F 3 "~" H 1500 3850 50  0001 C CNN
	1    1500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3850 1350 3850
Wire Wire Line
	1350 3750 1300 3750
Text Label 1700 3750 0    50   ~ 0
UART_RX
Text Label 1700 3850 0    50   ~ 0
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
P 3250 2500
F 0 "U1" H 3250 2750 50  0000 C CNN
F 1 "PPG_sensor" H 3150 2250 50  0000 C CNN
F 2 "SquantorOpto:PPG_sensor_reverse_PD_antiparallel" H 3250 2450 50  0001 C CNN
F 3 "" H 3250 2450 50  0001 C CNN
	1    3250 2500
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
$Comp
L Device:R R3
U 1 1 5F317D47
P 1350 4550
F 0 "R3" V 1300 4400 50  0000 C CNN
F 1 "1K" V 1350 4550 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1280 4550 50  0001 C CNN
F 3 "~" H 1350 4550 50  0001 C CNN
	1    1350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F3189C9
P 2250 4550
F 0 "R4" V 2200 4400 50  0000 C CNN
F 1 "1K" V 2250 4550 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2180 4550 50  0001 C CNN
F 3 "~" H 2250 4550 50  0001 C CNN
	1    2250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4750 1350 4700
Wire Wire Line
	2250 4700 2250 4750
Wire Wire Line
	1350 4400 1350 4350
Wire Wire Line
	2250 4400 2250 4350
Text Label 1350 4350 2    50   ~ 0
LED1
Text Label 2250 4350 2    50   ~ 0
LED2
Text Notes 1950 5400 0    50   ~ 0
LED drive
Wire Notes Line
	550  4200 2350 4200
Wire Notes Line
	2350 4200 2350 5450
Wire Notes Line
	2350 5450 550  5450
Wire Notes Line
	550  5450 550  4200
Text Label 2950 2500 2    50   ~ 0
PD_BIAS
Text Label 3550 2500 0    50   ~ 0
PD_OUT
Wire Wire Line
	2950 2400 3000 2400
Wire Wire Line
	3000 2500 2950 2500
Wire Wire Line
	2950 2600 3000 2600
Wire Wire Line
	3500 2600 3550 2600
Wire Wire Line
	3550 2500 3500 2500
Wire Wire Line
	3500 2400 3550 2400
Text Notes 3550 2800 0    50   ~ 0
PPG sensor
Wire Notes Line
	2600 2200 4050 2200
Wire Notes Line
	4050 2200 4050 2850
Wire Notes Line
	4050 2850 2600 2850
Wire Notes Line
	2600 2850 2600 2200
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
P 3200 1500
F 0 "U2" H 3400 1650 50  0000 C CNN
F 1 "reference_sot23-3" H 3200 1250 50  0000 C CNN
F 2 "SquantorIC:SOT23-3" H 3200 1500 50  0001 C CNN
F 3 "" H 3200 1500 50  0001 C CNN
	1    3200 1500
	-1   0    0    -1  
$EndComp
Connection ~ 4000 850 
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP3
U 1 1 5F4B1706
P 3750 1600
F 0 "JP3" H 3750 1750 50  0000 C CNN
F 1 "bias REF" H 3750 1450 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 3750 1600 50  0001 C CNN
F 3 "" H 3750 1600 50  0001 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1600 3950 1600
$Comp
L Device:C C5
U 1 1 5F4B91DE
P 3200 1150
F 0 "C5" V 3150 1200 50  0000 L CNN
F 1 "1u" V 3250 1000 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 3238 1000 50  0001 C CNN
F 3 "~" H 3200 1150 50  0001 C CNN
	1    3200 1150
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5F4E3D6E
P 3200 1900
F 0 "C6" V 3150 1950 50  0000 L CNN
F 1 "10u" V 3250 1700 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 3238 1750 50  0001 C CNN
F 3 "~" H 3200 1900 50  0001 C CNN
	1    3200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 1500 2950 1500
Wire Wire Line
	3450 1400 3500 1400
Wire Wire Line
	3450 1600 3500 1600
Wire Wire Line
	3350 1900 3500 1900
Wire Wire Line
	3500 1900 3500 1600
Connection ~ 3500 1600
Wire Wire Line
	3500 1600 3550 1600
Wire Wire Line
	3000 1900 3050 1900
Wire Wire Line
	3000 1150 3050 1150
Wire Wire Line
	3350 1150 3400 1150
Text Notes 3350 2050 0    50   ~ 0
PD bias selection
Wire Notes Line
	2600 550  4050 550 
Wire Notes Line
	4050 550  4050 2100
Wire Notes Line
	4050 2100 2600 2100
Wire Notes Line
	2600 2100 2600 550 
Wire Notes Line
	3300 2100 3300 1950
Wire Notes Line
	3300 1950 4050 1950
Text Label 3700 1900 0    50   ~ 0
VREF
Wire Wire Line
	3500 1900 3700 1900
Connection ~ 3500 1900
Text Label 4500 1200 2    50   ~ 0
VSS_PD
Text Label 4500 700  2    50   ~ 0
PD_OUT
$Comp
L Device:C C9
U 1 1 5F38C9B5
P 4600 950
F 0 "C9" H 4500 1050 50  0000 L CNN
F 1 "4n7" H 4600 850 50  0000 L CNN
F 2 "SquantorRcl:C_1206" H 4638 800 50  0001 C CNN
F 3 "~" H 4600 950 50  0001 C CNN
	1    4600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 700  4600 800 
Wire Wire Line
	4600 1100 4600 1200
$Comp
L Device:R R8
U 1 1 5F3AF303
P 5100 1200
F 0 "R8" V 5050 1050 50  0000 C CNN
F 1 "100K" V 5100 1200 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 5030 1200 50  0001 C CNN
F 3 "~" H 5100 1200 50  0001 C CNN
	1    5100 1200
	0    -1   -1   0   
$EndComp
Text Label 5300 950  0    50   ~ 0
I_reset
$Comp
L Connector:TestPoint TP10
U 1 1 5F3C5825
P 5050 700
F 0 "TP10" V 4950 900 50  0000 L CNN
F 1 "PD out" V 5050 900 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 5250 700 50  0001 C CNN
F 3 "~" H 5250 700 50  0001 C CNN
	1    5050 700 
	0    1    1    0   
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
Wire Wire Line
	4600 700  4900 700 
Connection ~ 4600 700 
Wire Wire Line
	4900 750  4900 700 
Connection ~ 4900 700 
Wire Wire Line
	4900 700  5050 700 
Wire Wire Line
	4900 1150 4900 1200
Wire Wire Line
	4900 1200 4950 1200
Wire Wire Line
	5200 950  5300 950 
Wire Wire Line
	5250 1200 5300 1200
Wire Wire Line
	5300 1200 5300 950 
$Comp
L Device:R R7
U 1 1 5F48E66A
P 5200 1800
F 0 "R7" V 5150 1950 50  0000 C CNN
F 1 "R" V 5200 1800 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 5130 1800 50  0001 C CNN
F 3 "~" H 5200 1800 50  0001 C CNN
	1    5200 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1800 5450 1800
Wire Wire Line
	5450 1800 5450 2000
$Comp
L Device:R R12
U 1 1 5F4E2B8C
P 5650 1800
F 0 "R12" V 5600 2000 50  0000 C CNN
F 1 "R" V 5650 1800 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 5580 1800 50  0001 C CNN
F 3 "~" H 5650 1800 50  0001 C CNN
	1    5650 1800
	0    1    1    0   
$EndComp
Text Label 5900 1900 0    50   ~ 0
VSSA
Wire Wire Line
	5450 1800 5500 1800
Connection ~ 5450 1800
Wire Wire Line
	5500 2000 5450 2000
Wire Wire Line
	5850 1800 5800 1800
Wire Wire Line
	5800 2000 5850 2000
$Comp
L Connector:TestPoint TP11
U 1 1 5F5119A4
P 5600 1650
F 0 "TP11" V 5550 1550 50  0000 L CNN
F 1 "Div out" V 5600 1850 50  0000 L CNN
F 2 "SquantorTestPoints:TestPoint_hole_H03R05" H 5800 1650 50  0001 C CNN
F 3 "~" H 5800 1650 50  0001 C CNN
	1    5600 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1800 5450 1650
Wire Wire Line
	5450 1650 5600 1650
Wire Wire Line
	5350 1650 5450 1650
Connection ~ 5450 1650
Text Notes 5500 2250 0    50   ~ 0
Resistor divider
Wire Notes Line
	4150 1400 6150 1400
Wire Notes Line
	6150 1400 6150 2300
Wire Notes Line
	6150 2300 4150 2300
Wire Notes Line
	4150 2300 4150 1400
Wire Notes Line
	5450 2300 5450 2150
Wire Notes Line
	5450 2150 6150 2150
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
F 2 "SquantorRcl:C_0402" H 8088 500 50  0001 C CNN
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
Wire Wire Line
	7650 950  7700 950 
$Comp
L Device:R R18
U 1 1 5F34DE3E
P 8650 1150
F 0 "R18" V 8600 1300 50  0000 C CNN
F 1 "R" V 8650 1150 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 8580 1150 50  0001 C CNN
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
F 2 "SquantorRcl:R_0402_hand" V 8580 1050 50  0001 C CNN
F 3 "~" H 8650 1050 50  0001 C CNN
	1    8650 1050
	0    1    1    0   
$EndComp
Text Label 8850 1050 0    50   ~ 0
CMP_OUT
Wire Wire Line
	8400 1150 8450 1150
Wire Wire Line
	8450 1150 8450 1050
Wire Wire Line
	8450 1050 8500 1050
Wire Wire Line
	8800 1050 8850 1050
Wire Wire Line
	8450 1150 8500 1150
Connection ~ 8450 1150
Text Label 8850 1150 0    50   ~ 0
Divider_out
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
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F544F80
P 1000 5950
F 0 "#FLG0101" H 1000 6025 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 6078 50  0000 L CNN
F 2 "" H 1000 5950 50  0001 C CNN
F 3 "~" H 1000 5950 50  0001 C CNN
	1    1000 5950
	0    1    1    0   
$EndComp
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
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F54EBF3
P 1000 6050
F 0 "#FLG0102" H 1000 6125 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 6178 50  0000 L CNN
F 2 "" H 1000 6050 50  0001 C CNN
F 3 "~" H 1000 6050 50  0001 C CNN
	1    1000 6050
	0    1    1    0   
$EndComp
Wire Notes Line
	2500 550  2500 3250
Wire Notes Line
	2050 3350 2050 4100
Text Label 950  5950 2    50   ~ 0
VDDA_RAW
Text Label 950  6050 2    50   ~ 0
VSSA_RAW
Wire Wire Line
	950  5950 1000 5950
Wire Wire Line
	1000 6050 950  6050
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F658CE3
P 1000 5850
F 0 "#FLG0103" H 1000 5925 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5978 50  0000 L CNN
F 2 "" H 1000 5850 50  0001 C CNN
F 3 "~" H 1000 5850 50  0001 C CNN
	1    1000 5850
	0    1    1    0   
$EndComp
Wire Notes Line
	2000 3100 2000 3250
Wire Notes Line
	2500 3100 2000 3100
Text Label 950  5850 2    50   ~ 0
VDD
Wire Wire Line
	950  5850 1000 5850
Text Notes 1050 6250 0    50   ~ 0
Power flags
Wire Notes Line
	1550 6300 1550 5550
Wire Notes Line
	1550 5550 550  5550
Wire Notes Line
	550  5550 550  6300
Wire Notes Line
	550  6300 1550 6300
Wire Notes Line
	1550 6150 1000 6150
Wire Notes Line
	1000 6150 1000 6300
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F87EC8A
P 1000 5750
F 0 "#FLG0104" H 1000 5825 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5878 50  0000 L CNN
F 2 "" H 1000 5750 50  0001 C CNN
F 3 "~" H 1000 5750 50  0001 C CNN
	1    1000 5750
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5F87EE86
P 1000 5650
F 0 "#FLG0105" H 1000 5725 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 5778 50  0000 L CNN
F 2 "" H 1000 5650 50  0001 C CNN
F 3 "~" H 1000 5650 50  0001 C CNN
	1    1000 5650
	0    1    1    0   
$EndComp
Text Label 950  5750 2    50   ~ 0
VDDA
Text Label 950  5650 2    50   ~ 0
VSSA
Wire Wire Line
	950  5650 1000 5650
Wire Wire Line
	1000 5750 950  5750
$Comp
L Device:C C11
U 1 1 5F328139
P 5650 2000
F 0 "C11" V 5600 2050 50  0000 L CNN
F 1 "1u" V 5700 1850 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 5688 1850 50  0001 C CNN
F 3 "~" H 5650 2000 50  0001 C CNN
	1    5650 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1800 5850 1900
Wire Wire Line
	5850 1900 5900 1900
Wire Wire Line
	5850 2000 5850 1900
Connection ~ 5850 1900
Text Label 5350 1650 2    50   ~ 0
Divider_out
Wire Wire Line
	4900 1600 4900 1800
Wire Wire Line
	4850 2000 4900 2000
Wire Wire Line
	4850 1600 4900 1600
Wire Wire Line
	4450 1600 4400 1600
Wire Wire Line
	4400 2000 4450 2000
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP5
U 1 1 5F474801
P 4650 2000
F 0 "JP5" H 4650 2150 50  0000 C CNN
F 1 "VREF divider" H 4650 1850 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 4650 2000 50  0001 C CNN
F 3 "" H 4650 2000 50  0001 C CNN
	1    4650 2000
	1    0    0    -1  
$EndComp
Text Label 4400 2000 2    50   ~ 0
VREF
Text Label 4400 1600 2    50   ~ 0
VDDA
$Comp
L SquantorSpecial:Solderjumper_2way_noconn JP4
U 1 1 5F4739A8
P 4650 1600
F 0 "JP4" H 4650 1750 50  0000 C CNN
F 1 "AVDD divider" H 4650 1450 50  0000 C CNN
F 2 "SquantorSpecial:solder_jumper_2way_noconn" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1800 4900 1800
Connection ~ 4900 1800
Wire Wire Line
	4900 1800 4900 2000
Text Label 1000 2050 2    50   ~ 0
VDDA
Text Label 1000 2150 2    50   ~ 0
VSS
Text Label 2100 2050 0    50   ~ 0
VDDA
Text Label 2100 2150 0    50   ~ 0
VSS
Wire Wire Line
	1000 2050 1050 2050
Wire Wire Line
	1050 2150 1000 2150
Wire Wire Line
	2050 2150 2100 2150
Wire Wire Line
	2100 2050 2050 2050
Text Label 1000 1650 2    50   ~ 0
UART_TX
Text Label 2100 1650 0    50   ~ 0
UART_RX
Wire Wire Line
	1000 1650 1050 1650
Wire Wire Line
	2100 1650 2050 1650
Wire Wire Line
	4000 850  4000 1600
Text Label 2850 850  2    50   ~ 0
VDD
Text Label 3400 1150 0    50   ~ 0
VDD
Text Label 3500 1400 0    50   ~ 0
VDD
Text Label 3000 1150 2    50   ~ 0
VSS
Text Label 2850 1500 2    50   ~ 0
VSS
Text Label 3000 1900 2    50   ~ 0
VSS
Wire Notes Line
	4050 2700 3500 2700
Wire Notes Line
	3500 2700 3500 2850
Text Label 3550 2400 0    50   ~ 0
LED1
Text Label 3550 2600 0    50   ~ 0
LED2
Text Label 2950 2400 2    50   ~ 0
VDD
Text Label 2950 2600 2    50   ~ 0
VDD
$Comp
L Device:Q_NMOS_GSD Q3
U 1 1 5F664A5A
P 2150 4950
F 0 "Q3" H 2000 5100 50  0000 L CNN
F 1 "DMG1012" H 1900 4800 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 2350 5050 50  0001 C CNN
F 3 "~" H 2150 4950 50  0001 C CNN
	1    2150 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5F68147A
P 1250 4950
F 0 "Q2" H 1100 5100 50  0000 L CNN
F 1 "DMG1012" H 1000 4800 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 1450 5050 50  0001 C CNN
F 3 "~" H 1250 4950 50  0001 C CNN
	1    1250 4950
	1    0    0    -1  
$EndComp
Text Label 1350 5250 2    50   ~ 0
VSS
Text Label 2250 5250 2    50   ~ 0
VSS
Wire Wire Line
	1350 5150 1350 5250
Wire Wire Line
	2250 5250 2250 5150
Text Label 900  4950 2    50   ~ 0
LED1_EN
Text Label 1800 4950 2    50   ~ 0
LED2_EN
$Comp
L Device:R R5
U 1 1 5F6D84ED
P 1000 4550
F 0 "R5" V 950 4400 50  0000 C CNN
F 1 "10K" V 1000 4550 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 930 4550 50  0001 C CNN
F 3 "~" H 1000 4550 50  0001 C CNN
	1    1000 4550
	1    0    0    -1  
$EndComp
Text Label 1000 4350 2    50   ~ 0
VSS
$Comp
L Device:R R6
U 1 1 5F6D8D5D
P 1900 4550
F 0 "R6" V 1850 4400 50  0000 C CNN
F 1 "10K" V 1900 4550 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1830 4550 50  0001 C CNN
F 3 "~" H 1900 4550 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
Text Label 1900 4350 2    50   ~ 0
VSS
Wire Wire Line
	1000 4350 1000 4400
Wire Wire Line
	1050 4950 1000 4950
Wire Wire Line
	1000 4700 1000 4950
Connection ~ 1000 4950
Wire Wire Line
	1000 4950 900  4950
Wire Wire Line
	1800 4950 1900 4950
Wire Wire Line
	1900 4950 1900 4700
Connection ~ 1900 4950
Wire Wire Line
	1900 4950 1950 4950
Wire Wire Line
	1900 4400 1900 4350
Wire Notes Line
	2350 5300 1900 5300
Wire Notes Line
	1900 5300 1900 5450
Text Label 1000 1050 2    50   ~ 0
LED1_EN
Text Label 2100 1050 0    50   ~ 0
LED2_EN
Wire Wire Line
	1000 1050 1050 1050
Wire Wire Line
	2050 1050 2100 1050
Wire Wire Line
	4500 700  4600 700 
Wire Wire Line
	4500 1200 4600 1200
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5F666A62
P 5000 950
F 0 "Q1" H 4850 1100 50  0000 L CNN
F 1 "DMG1012" H 4750 800 50  0000 L CNN
F 2 "SquantorIC:SOT23-3" H 5200 1050 50  0001 C CNN
F 3 "~" H 5000 950 50  0001 C CNN
	1    5000 950 
	-1   0    0    -1  
$EndComp
Text Label 2100 1150 0    50   ~ 0
I_reset
Wire Wire Line
	2100 1150 2050 1150
Text Label 4900 1200 2    50   ~ 0
VSS
Text Label 7650 1150 2    50   ~ 0
PD_OUT
Wire Wire Line
	7650 1150 7700 1150
$EndSCHEMATC

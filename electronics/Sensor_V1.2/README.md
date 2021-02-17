# PPG sensor hardware Version 1.2
After the lessons learned from version 1.2 it is time to simplify the hardware and explore more sensor combinations
* Try again the internal comparator but do not reserve space for this
* LPC pins broken out
* Go fully for the ADC concept, maybe via wires go to the internal comparator
* Make use of the smaller LPC824HI33 nuclone
* investigate a top only sensor without PCB cutouts with 3d printed spacers
* remove most of the superfluous hardware
# HSI (Hardware Software Interface)
What microcontroller pins are connected to what hardware and what are the needed settings
* PIO0_13 is connected to anode of LED1, should be set as output. Low turns on the LED1
* PIO0_12 is connected to anode of LED1, should be set as output. Low turns on the LED2
* PIO0_4 is connected to the gate of a transistor that resets the integrator capacitor, pulled down by a 10K resistor, should be set as output
* PIO0_25 is connected to UART receive via 100Ohm series resistor, should be set as output
* PIO0_24 is connected to UART transmit via a 100Ohm series resistor, should be set as input
* PIO0_18 is connected to the Photodiode integrator node via a normally open jumper, should be set as analog input
## TODO's
Still some things need to be done:
* Sign off to production
* Assembly
* Test & characterise, make a separate document in the documentation directory
* update Readme.md with pictures and BOM
## BOM
This design is made so flexible it accepts many different light detecting elements and LED's, some sensors/LED's tried out are are:
* [SFH2440](https://www.osram.com/ecat/DIL%20SMT%20Ambient%20Light%20Sensor%20SFH%202440/com/en/class_pim_web_catalog_103489/global/prd_pim_device_2219615/) Photodiode
* [SFH3710](https://lcsc.com/product-detail/Sensors_OSRAM_SFH3710-Z_SFH-3710-Z_C129152.html) Phototransistor
* [NCD0805G1](https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_Emerald-SMDLED-Iv-220-270mcd-atIF-5mA_C84260.html) 525nm LED
* [SIR15-21C/TR8 ](https://lcsc.com/product-detail/Others_Everlight-Elec-SIR15-21C-TR8_C264405.html) 875nm IR LED
## Pictures

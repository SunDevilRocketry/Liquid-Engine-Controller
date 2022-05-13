<h1>Liquids Engine Controller</h1>

<p>Current PCB Revision: 4.0</p>
<p>PCB Part Number: L0002</p>

<p>The Liquids Engine Controller PCB is the main embedded processor of SDR's 
 Liquid Engine. The Controller is equipped with an STM32 ARM Cortex M7 processor 
 and 4Mb of external flash for data logging. The board includes a micro-SD card 
 jack for easy access to the logged data. The board includes many power sources 
 for flexible use of the controller during testing and normal operation. These 
 include a 12V power jack, a USB Type B connector, and female header pins which 
 are regulated down to 5V and 3.3V with a buck converter and linear regulator 
 power supply. The board includes a UART to USB transceiver for easy PC interfacing. 
 The screw terminals on the board connect to the ignition wires, 
 consisting of an ignition e-match and two continuity wires. The board supplies 2A 
 to the ignition e-match using a power MOSFET, and the continuity wires provide 
 feedback to the controller on the status of the solid propellant slug and main 
 propellant ignition statuses. Additionally, the board includes a reset button 
 and several LEDs for visual indication of the power and firmware status of the 
 controller. </p>

<p><b>Working Directory Structure:</b></p>

<p>
   doc: documentation
   
   src: source design files, e.g. schematic and PCB layout files

   lib: libraries for schematic symbols and footprints

   production: files needed for pcb fabrication, e.g. gerbers, profile, drill file

   sim: simulation models/files 

   cad: 3d models
  
   img: images of circuit/footprints for github display 
</p>

<h2>3D Model: </h2>

<img src="img/Engine-Controller-TOP.jpg">
<img src="img/Engine-Controller-BOTTOM.jpg">

<h2>Schematic: </h2>

<h3>Microcontroller:</h3>

<img src="img/MCU-Schematic-2.png">

<h3>5V Buck Converter: </h3>

<img src="img/Buck-Converter-Schematic.png">

<h3>3.3V Linear Regulator: </h3>

<img src="img/3V3-Schematic.png">

<h3>SD Card: </h3>

<img src="img/SDcard-Schematic.png">

<h3>USB: </h3>

<img src="img/USB-Schematic.png">

<h3>Ignition: </h3>

<img src="img/Ignition-Schematic.png">

<h3>Pressure Transducer Programmable Amplifier: </h3>

<img src="img/PT-Amplifier-Schematic.png">

<h3>Thermocouple Cold Junction Compensation: </h3>

<img src="img/Thermocouple-Schematic.png">

<h3>Load Cell Amplifier: </h3>

<img src="img/Load-Cell-Schematic.png">

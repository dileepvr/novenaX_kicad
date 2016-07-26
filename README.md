These are kicad schematics and design files for PCBs used in the
Novena-X project, which aims to build a laptop around the Novena
motherboard released by Kosagi. These design files are being released
(as of this writing on the 30th of April, 2016) under the CERN Open
Hardware License v1.2 (see file LICENSE.txt for text of the license).
All future versions of the CERN Open Hardware License automatically
apply.

For more information about the Novena motherboard, visit: http://www.kosagi.com/w/index.php?title=Novena_Main_Page

For more information about Project Novena-X, visit: http://rightshift.info and refer to the posts titled "Project Novena-X"

The PCB is split into three circuits. One of them is meant to
interface between the Novena front-panel FFC cable and a Dell 0WX4JF
backlit keyboard. It also consists of LEDs driven by six pins from the
FPGA onboard the Novena, as well as buttons for power, reset, and
bluetooth association. The board houses an ATMEGA32u4 microcontroller.

A second circuit merely hosts a pushbutton meant to detect when the case is open/closed.

The third circuit communicates through specific pins on Novena's LVDS
panel FFC cable, and houses two ATMEGA32u4 microcontrollers, as well
as a USB hub (TUSB2046BVFR). This circuit interfaces with an
NHD-044DAZ-FL-YBW 40x4 character LCD screen from New Haven displays,
an e-ink panel arduino shield called ePaper v2 by Seeedstudio, a USB
camera, an nRF24L01+ radio module from Nordic, as well as i2c chips
such as the BME280 weather monitor, the ATAE5132A encrypted EEPROM,
and a AT97SC3205T TPM chip from Atmel.

- Dileep V. Reddy
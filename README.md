# mimasV2-clock
This is a simple project to practice FPGA programming with verilog. It will be a 12 hour clock with am/pm display.\
As devkit only contains 3 7-seg displays, will need an alternate display method; this will be a 16x4 LCD display with a HD44780 (or equivalent) driver.\
Programming is done using Xilinx ISE WebPACK 14.7.\
User constraints file obtained from product website.

## Specifications
- [x] Generate a 1Hz clock signal
- [x] Count a clock signal in a hh:mm:ss format
- [x] Have an alternating am/pm signal when the time rolls over
- [x] Ability to change the time
- [x] Display the time on an output device
- [x] Method of using input device to change the time
- [ ] Implement HDL on FPGA

## Hardware
- Mimas V2 Spartan 6 FPGA Development Board with DDR SDRAM
- WH1604A-TMI-JT# (16x4 LCD)

## Links
- https://numato.com/product/mimas-v2-spartan-6-fpga-development-board-with-ddr-sdram/
- https://cpcireland.farnell.com/winstar/wh1604a-tmi-jt/lcd-display-module-16x4-blue-whi/dp/SC15009

## Basys 3 constraints for:
## A      = SW0-SW3
## B      = SW4-SW7
## ALUOp  = SW8-SW11
## Y      = LED0-LED7

## A input switches
set_property PACKAGE_PIN V17 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]

## B input switches
set_property PACKAGE_PIN W15 [get_ports {B[0]}]
set_property PACKAGE_PIN V15 [get_ports {B[1]}]
set_property PACKAGE_PIN W14 [get_ports {B[2]}]
set_property PACKAGE_PIN W13 [get_ports {B[3]}]

## ALUOp switches
set_property PACKAGE_PIN V2 [get_ports {ALUOp[0]}]
set_property PACKAGE_PIN T3 [get_ports {ALUOp[1]}]
set_property PACKAGE_PIN T2 [get_ports {ALUOp[2]}]
set_property PACKAGE_PIN R3 [get_ports {ALUOp[3]}]

## Output LEDs
set_property PACKAGE_PIN U16 [get_ports {Y[0]}]
set_property PACKAGE_PIN E19 [get_ports {Y[1]}]
set_property PACKAGE_PIN U19 [get_ports {Y[2]}]
set_property PACKAGE_PIN V19 [get_ports {Y[3]}]
set_property PACKAGE_PIN W18 [get_ports {Y[4]}]
set_property PACKAGE_PIN U15 [get_ports {Y[5]}]
set_property PACKAGE_PIN U14 [get_ports {Y[6]}]
set_property PACKAGE_PIN V14 [get_ports {Y[7]}]

## I/O standards
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALUOp[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Y[*]}]
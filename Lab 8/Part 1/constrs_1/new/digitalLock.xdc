set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

set_property PACKAGE_PIN T18 [get_ports {passin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {passin[0]}]
#Bank = 14, Pin name = ,	Sch name = BTNL
set_property PACKAGE_PIN W19 [get_ports {passin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {passin[1]}]
#Bank = 14, Pin name = ,							Sch name = BTNR
set_property PACKAGE_PIN T17 [get_ports {passin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {passin[2]}]
#Bank = 14, Pin name = ,					Sch name = BTND
set_property PACKAGE_PIN U17 [get_ports {passin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {passin[3]}]

set_property PACKAGE_PIN U16 [get_ports {out}]
set_property IOSTANDARD LVCMOS33 [get_ports {out}]

set_property PACKAGE_PIN V17 [get_ports {rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst}]

set_property PACKAGE_PIN W7 [get_ports {svnsgmnt[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[0]}]
#Bank = 34, Pin name = ,					Sch name = CB
set_property PACKAGE_PIN W6 [get_ports {svnsgmnt[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[1]}]
#Bank = 34, Pin name = ,					Sch name = CC
set_property PACKAGE_PIN U8 [get_ports {svnsgmnt[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[2]}]
#Bank = 34, Pin name = ,						Sch name = CD
set_property PACKAGE_PIN V8 [get_ports {svnsgmnt[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[3]}]
#Bank = 34, Pin name = ,						Sch name = CE
set_property PACKAGE_PIN U5 [get_ports {svnsgmnt[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[4]}]
#Bank = 34, Pin name = ,						Sch name = CF
set_property PACKAGE_PIN V5 [get_ports {svnsgmnt[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[5]}]
#Bank = 34, Pin name = ,						Sch name = CG
set_property PACKAGE_PIN U7 [get_ports {svnsgmnt[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {svnsgmnt[6]}]




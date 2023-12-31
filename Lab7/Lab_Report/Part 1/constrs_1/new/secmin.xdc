set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

set_property PACKAGE_PIN V17 [get_ports {rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst]}]
set_property PACKAGE_PIN V16 [get_ports {en}]
set_property IOSTANDARD LVCMOS33 [get_ports {en}]

set_property PACKAGE_PIN U16 [get_ports {secten[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secten[0]}]
set_property PACKAGE_PIN E19 [get_ports {secten[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secten[1]}]
set_property PACKAGE_PIN U19 [get_ports {secten[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secten[2]}]
set_property PACKAGE_PIN V19 [get_ports {secten[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secten[3]}]
set_property PACKAGE_PIN W18 [get_ports {secsix[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secsix[0]}]
set_property PACKAGE_PIN U15 [get_ports {secsix[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secsix[1]}]
set_property PACKAGE_PIN U14 [get_ports {secsix[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {secsix[2]}]

set_property PACKAGE_PIN V14 [get_ports {minten[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minten[0]}]
set_property PACKAGE_PIN V13 [get_ports {minten[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minten[1]}]
set_property PACKAGE_PIN V3 [get_ports {minten[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minten[2]}]
set_property PACKAGE_PIN W3 [get_ports {minten[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minten[3]}]
set_property PACKAGE_PIN U3 [get_ports {minsix[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minsix[0]}]
set_property PACKAGE_PIN P3 [get_ports {minsix[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minsix[1]}]
set_property PACKAGE_PIN N3 [get_ports {minsix[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {minsix[2]}]

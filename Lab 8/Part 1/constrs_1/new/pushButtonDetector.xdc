set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]


set_property PACKAGE_PIN U18 [get_ports {in}]
set_property IOSTANDARD LVCMOS33 [get_ports {in}]

set_property PACKAGE_PIN V17 [get_ports {rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst}]

set_property PACKAGE_PIN U16 [get_ports {out}]
set_property IOSTANDARD LVCMOS33 [get_ports {out}]
# Reloj
set_property PACKAGE_PIN E3 [get_ports CLK100MHZ]
set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
create_clock -period 10.000 -name clk [get_ports CLK100MHZ]

# Reset
set_property PACKAGE_PIN C12 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]

# Botón central
set_property PACKAGE_PIN N17 [get_ports btn_n17]
set_property IOSTANDARD LVCMOS33 [get_ports btn_n17]

# UART
set_property PACKAGE_PIN C4 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property PACKAGE_PIN D4 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
#spdi
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports { acl_miso }]
set_property -dict { PACKAGE_PIN F14 IOSTANDARD LVCMOS33 } [get_ports { acl_mosi }]
set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS33 } [get_ports { acl_sclk }]
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS33 } [get_ports { acl_csn }]

# LEDs
set_property PACKAGE_PIN H17 [get_ports {leds[0]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property PACKAGE_PIN K15 [get_ports {leds[1]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN J13 [get_ports {leds[2]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN N14 [get_ports {leds[3]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN R18 [get_ports {leds[4]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property PACKAGE_PIN V17 [get_ports {leds[5]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property PACKAGE_PIN U17 [get_ports {leds[6]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property PACKAGE_PIN U16 [get_ports {leds[7]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]
set_property PACKAGE_PIN V16 [get_ports {leds[8]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[8]}]
set_property PACKAGE_PIN T15 [get_ports {leds[9]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[9]}]
set_property PACKAGE_PIN U14 [get_ports {leds[10]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[10]}]
set_property PACKAGE_PIN T16 [get_ports {leds[11]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[11]}]
set_property PACKAGE_PIN V15 [get_ports {leds[12]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[12]}]
set_property PACKAGE_PIN V14 [get_ports {leds[13]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[13]}]
set_property PACKAGE_PIN V12 [get_ports {leds[14]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[14]}]
set_property PACKAGE_PIN V11 [get_ports {leds[15]}]; set_property IOSTANDARD LVCMOS33 [get_ports {leds[15]}]
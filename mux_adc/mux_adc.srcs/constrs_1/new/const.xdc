
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[0]}]



#pin 32 A4
set_property PACKAGE_PIN W2 [get_ports {gpio_io_o[7]}]
#pin 33 A3
set_property PACKAGE_PIN V2 [get_ports {gpio_io_o[6]}]
#pin 34 A2
set_property PACKAGE_PIN W3 [get_ports {gpio_io_o[5]}]
#pin 35 A1
set_property PACKAGE_PIN V3 [get_ports {gpio_io_o[4]}]
#pin 36 A0
set_property PACKAGE_PIN W5 [get_ports {gpio_io_o[3]}]
#pin 37 CS_N
set_property PACKAGE_PIN V4 [get_ports {gpio_io_o[2]}]
#pin 38 WR_N
set_property PACKAGE_PIN U4 [get_ports {gpio_io_o[1]}]
#pin 39 EN_N
set_property PACKAGE_PIN V5 [get_ports {gpio_io_o[0]}]



# Analog XADC Pins
# Only declare these if you want to use pins 15 and 16 as single ended analog inputs. pin 15 -> vaux4, pin16 -> vaux12
#IO_L1N_T0_AD4N_35 Sch=ain_n[15]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { xa_n[0] }]; 
 #IO_L1P_T0_AD4P_35 Sch=ain_p[15]
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { xa_p[0] }];
 #IO_L2N_T0_AD12N_35 Sch=ain_n[16]
  #IO_L2P_T0_AD12P_35 Sch=ain_p[16]
 set_property IOSTANDARD LVCMOS33 [get_ports vauxp12];
 set_property IOSTANDARD LVCMOS33 [get_ports vauxn12];
 set_property  PACKAGE_PIN H2 [get_ports vauxp12 ];
set_property  PACKAGE_PIN J2 [get_ports vauxn12 ];

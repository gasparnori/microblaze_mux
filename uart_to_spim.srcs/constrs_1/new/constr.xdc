set_property IOSTANDARD LVCMOS33 [get_ports SCK]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_IN0]
set_property IOSTANDARD LVCMOS33 [get_ports CVN0]

set_property IOSTANDARD LVCMOS33 [get_ports ADC_IN1]
set_property IOSTANDARD LVCMOS33 [get_ports CVN1]

set_property IOSTANDARD LVCMOS33 [get_ports ADC_IN2]
set_property IOSTANDARD LVCMOS33 [get_ports CVN2]


set_property IOSTANDARD LVCMOS33 [get_ports SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports CS]

set_property IOSTANDARD LVCMOS33 [get_ports {MUX_ADDR[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MUX_ADDR[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MUX_ADDR[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MUX_ADDR[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {MUX_ADDR[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports MUX_CS]
set_property IOSTANDARD LVCMOS33 [get_ports MUX_EN]

set_property IOSTANDARD LVCMOS33 [get_ports MUX_WR0]
set_property IOSTANDARD LVCMOS33 [get_ports MUX_WR1]
set_property IOSTANDARD LVCMOS33 [get_ports MUX_WR2]
    
set_property IOSTANDARD LVCMOS33 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports LED1]
set_property IOSTANDARD LVCMOS33 [get_ports LED2]

# Clock signal 12 MHz   #IO_L12P_T1_MRCC_14 Sch=gclk
#set_property IOSTANDARD LVCMOS33 [get_ports { CLK }]

#create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports {CLK}];

#set_property IOSTANDARD LVCMOS33 [get_ports CLK12]
#set_property PACKAGE_PIN L17 [get_ports CLK12]
#create_clock -period 83.330 -name sys_clk_pin -waveform {0.000 41.660} -add [get_ports CLK12]
#create_clock -period 10.000 -name CLK -waveform {0.000 5.000} [get_ports CLK100]

#set_property IOSTANDARD LVCMOS33 [get_ports BTN]
#set_property PACKAGE_PIN B18 [get_ports BTN]

#set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports RST_IN]

##pin 13
set_property PACKAGE_PIN L1 [get_ports ADC_IN0]
##pin 12
set_property PACKAGE_PIN K2 [get_ports ADC_IN1]
##pin 11
set_property PACKAGE_PIN J1 [get_ports ADC_IN2]



##pin 40: not used on the PCB
set_property PACKAGE_PIN W4 [get_ports SCK] 
##pin 42
set_property PACKAGE_PIN U2 [get_ports CVN0]
##pin 43
set_property PACKAGE_PIN W6 [get_ports CVN1]
##pin 44
set_property PACKAGE_PIN U3 [get_ports CVN2]

#pin 46
set_property PACKAGE_PIN W7 [get_ports LED0]
#pin 47
set_property PACKAGE_PIN U8 [get_ports LED1]
#pin 48
set_property PACKAGE_PIN V8 [get_ports LED2]



#pin 39 A0
set_property PACKAGE_PIN V5 [get_ports {MUX_ADDR[0]}]
#pin 38 A1
set_property PACKAGE_PIN U4 [get_ports {MUX_ADDR[1]}]
#pin 37 A2
set_property PACKAGE_PIN V4 [get_ports {MUX_ADDR[2]}]
#pin 36 A3
set_property PACKAGE_PIN W5 [get_ports {MUX_ADDR[3]}]
#pin 35 A4
set_property PACKAGE_PIN V3 [get_ports {MUX_ADDR[4]}]
#pin 34 CS_N
set_property PACKAGE_PIN W3 [get_ports MUX_CS]
#pin 33 WR_0
set_property PACKAGE_PIN V2 [get_ports MUX_WR0]

#pin 30 EN_N
set_property PACKAGE_PIN T2 [get_ports MUX_EN]

#pin 32 WR_1
set_property PACKAGE_PIN W2 [get_ports MUX_WR1]
#pin 31 WR_2
set_property PACKAGE_PIN U1 [get_ports MUX_WR2]



#pin 9
set_property PACKAGE_PIN A14 [get_ports MISO]
#pin 3
set_property PACKAGE_PIN A16 [get_ports SCLK]
#pin 7
set_property PACKAGE_PIN A15 [get_ports MOSI]
#pin 5
set_property PACKAGE_PIN C15 [get_ports CS]


## UART
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { uart_rxd_out }]; #IO_L7N_T1_D10_14 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { uart_txd_in  }]; #IO_L7P_T1_D09_14 Sch=uart_txd_in




#set_property IOSTANDARD LVCMOS33 [get_ports CLK100]

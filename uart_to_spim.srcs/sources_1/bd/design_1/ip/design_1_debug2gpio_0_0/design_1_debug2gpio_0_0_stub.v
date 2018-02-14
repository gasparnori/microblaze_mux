// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 31 14:07:12 2018
// Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               d:/Nora/Intan_project/uart_to_spim/uart_to_spim.srcs/sources_1/bd/design_1/ip/design_1_debug2gpio_0_0/design_1_debug2gpio_0_0_stub.v
// Design      : design_1_debug2gpio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "debug2gpio,Vivado 2017.4" *)
module design_1_debug2gpio_0_0(Debug_ADC_counter, Debug_command_read, 
  Debug_active_read, SPI_signals, toGPIO)
/* synthesis syn_black_box black_box_pad_pin="Debug_ADC_counter[5:0],Debug_command_read[7:0],Debug_active_read[1:0],SPI_signals[3:0],toGPIO[19:0]" */;
  input [5:0]Debug_ADC_counter;
  input [7:0]Debug_command_read;
  input [1:0]Debug_active_read;
  input [3:0]SPI_signals;
  output [19:0]toGPIO;
endmodule
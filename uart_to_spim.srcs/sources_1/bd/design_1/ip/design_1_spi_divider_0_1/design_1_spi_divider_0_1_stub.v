// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 31 13:33:21 2018
// Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               d:/Nora/Intan_project/uart_to_spim/uart_to_spim.srcs/sources_1/bd/design_1/ip/design_1_spi_divider_0_1/design_1_spi_divider_0_1_stub.v
// Design      : design_1_spi_divider_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_divider,Vivado 2017.4" *)
module design_1_spi_divider_0_1(SCLK, MISO, CS, MOSI, SCLK_forward, MISO_forward, 
  MOSI_forward, CS_forward, to_uart_out, SCLK_out, MISO_out, MOSI_out, CS_out)
/* synthesis syn_black_box black_box_pad_pin="SCLK,MISO,CS,MOSI,SCLK_forward,MISO_forward,MOSI_forward,CS_forward,to_uart_out[3:0],SCLK_out,MISO_out,MOSI_out,CS_out" */;
  input SCLK;
  output MISO;
  input CS;
  input MOSI;
  output SCLK_forward;
  input MISO_forward;
  output MOSI_forward;
  output CS_forward;
  output [3:0]to_uart_out;
  output SCLK_out;
  output MISO_out;
  output MOSI_out;
  output CS_out;
endmodule

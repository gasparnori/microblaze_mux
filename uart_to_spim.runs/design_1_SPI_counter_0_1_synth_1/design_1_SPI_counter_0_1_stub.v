// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Feb 13 23:00:41 2018
// Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPI_counter_0_1_stub.v
// Design      : design_1_SPI_counter_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI_counter,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SCLK, CS, MISO, MOSI, SCK, LED0, CVN0, ADC_IN0, LED1, CVN1, 
  ADC_IN1, LED2, CVN2, ADC_IN2, MUX_ADDR, MUX_CS, MUX_EN, MUX_WR0, MUX_WR1, MUX_WR2, Debug_ADC_counter, 
  Debug_command_read, Debug_active_read)
/* synthesis syn_black_box black_box_pad_pin="SCLK,CS,MISO,MOSI,SCK,LED0,CVN0,ADC_IN0,LED1,CVN1,ADC_IN1,LED2,CVN2,ADC_IN2,MUX_ADDR[4:0],MUX_CS,MUX_EN,MUX_WR0,MUX_WR1,MUX_WR2,Debug_ADC_counter[5:0],Debug_command_read[7:0],Debug_active_read[1:0]" */;
  input SCLK;
  input CS;
  output MISO;
  input MOSI;
  output SCK;
  output LED0;
  output CVN0;
  input ADC_IN0;
  output LED1;
  output CVN1;
  input ADC_IN1;
  output LED2;
  output CVN2;
  input ADC_IN2;
  output [4:0]MUX_ADDR;
  output MUX_CS;
  output MUX_EN;
  output MUX_WR0;
  output MUX_WR1;
  output MUX_WR2;
  output [5:0]Debug_ADC_counter;
  output [7:0]Debug_command_read;
  output [1:0]Debug_active_read;
endmodule

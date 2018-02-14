// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 31 13:33:21 2018
// Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Nora/Intan_project/uart_to_spim/uart_to_spim.srcs/sources_1/bd/design_1/ip/design_1_spi_divider_0_1/design_1_spi_divider_0_1_sim_netlist.v
// Design      : design_1_spi_divider_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_divider_0_1,spi_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "spi_divider,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_spi_divider_0_1
   (SCLK,
    MISO,
    CS,
    MOSI,
    SCLK_forward,
    MISO_forward,
    MOSI_forward,
    CS_forward,
    to_uart_out,
    SCLK_out,
    MISO_out,
    MOSI_out,
    CS_out);
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

  wire CS;
  wire MISO_forward;
  wire MOSI;
  wire SCLK;

  assign CS_forward = CS;
  assign CS_out = CS;
  assign MISO = MISO_forward;
  assign MISO_out = MISO_forward;
  assign MOSI_forward = MOSI;
  assign MOSI_out = MOSI;
  assign SCLK_forward = SCLK;
  assign SCLK_out = SCLK;
  assign to_uart_out[3] = SCLK;
  assign to_uart_out[2] = MOSI;
  assign to_uart_out[1] = CS;
  assign to_uart_out[0] = MISO_forward;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

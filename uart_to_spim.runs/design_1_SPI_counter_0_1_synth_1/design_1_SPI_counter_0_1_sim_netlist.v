// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Feb 13 23:00:41 2018
// Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPI_counter_0_1_sim_netlist.v
// Design      : design_1_SPI_counter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter
   (CVN0,
    LED1,
    CVN2,
    Q,
    \Debug_active_read[1] ,
    \Debug_active_read[0] ,
    Debug_command_read,
    MISO,
    MUX_CS,
    MUX_WR1,
    MUX_WR2,
    MUX_WR0,
    SCLK,
    CS,
    MOSI,
    ADC_IN0,
    ADC_IN1,
    ADC_IN2);
  output CVN0;
  output LED1;
  output CVN2;
  output [5:0]Q;
  output \Debug_active_read[1] ;
  output \Debug_active_read[0] ;
  output [7:0]Debug_command_read;
  output MISO;
  output MUX_CS;
  output MUX_WR1;
  output MUX_WR2;
  output MUX_WR0;
  input SCLK;
  input CS;
  input MOSI;
  input ADC_IN0;
  input ADC_IN1;
  input ADC_IN2;

  wire ADC_IN0;
  wire ADC_IN1;
  wire ADC_IN2;
  wire [5:0]ADC_counter;
  wire CS;
  wire CVN0;
  wire CVN2;
  wire \Debug_active_read[0] ;
  wire \Debug_active_read[1] ;
  wire [7:0]Debug_command_read;
  wire LED1;
  wire MISO;
  wire MOSI;
  wire MUX_CS;
  wire MUX_WR0;
  wire MUX_WR1;
  wire MUX_WR2;
  wire [5:0]Q;
  wire SCLK;
  wire active_read0;
  wire \active_read[0]_i_1_n_0 ;
  wire \active_read[0]_i_2_n_0 ;
  wire \active_read[0]_i_3_n_0 ;
  wire \active_read[1]_i_1_n_0 ;
  wire \active_read[1]_i_2_n_0 ;
  wire [3:0]bitcounter;
  wire \bitcounter[0]_i_1_n_0 ;
  wire \bitcounter[1]_i_1_n_0 ;
  wire \bitcounter[2]_i_1_n_0 ;
  wire \bitcounter[3]_i_1_n_0 ;
  wire conv0_reg_i_2_n_0;
  wire conv0_reg_i_3_n_0;
  wire conv10;
  wire conv1_reg_i_2_n_0;
  wire conv1_reg_i_3_n_0;
  wire conv2_reg_i_2_n_0;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire \readcmd[10]_i_1_n_0 ;
  wire \readcmd[11]_i_1_n_0 ;
  wire \readcmd[11]_i_2_n_0 ;
  wire \readcmd[12]_i_1_n_0 ;
  wire \readcmd[12]_i_2_n_0 ;
  wire \readcmd[13]_i_1_n_0 ;
  wire \readcmd[14]_i_1_n_0 ;
  wire \readcmd[15]_i_1_n_0 ;
  wire \readcmd[8]_i_1_n_0 ;
  wire \readcmd[9]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ADC_counter[0]_i_1 
       (.I0(Q[0]),
        .O(ADC_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_counter[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(ADC_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ADC_counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(ADC_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ADC_counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(ADC_counter[3]));
  LUT6 #(
    .INIT(64'h1CCCCCCCCCCCCCCC)) 
    \ADC_counter[4]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(ADC_counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAA2AAAAAAA)) 
    \ADC_counter[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(ADC_counter[5]));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[0] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[1] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[2] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[3] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[4] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADC_counter_reg[5] 
       (.C(SCLK),
        .CE(1'b1),
        .D(ADC_counter[5]),
        .Q(Q[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    MISO_INST_0
       (.I0(ADC_IN0),
        .I1(\Debug_active_read[1] ),
        .I2(ADC_IN1),
        .I3(\Debug_active_read[0] ),
        .I4(ADC_IN2),
        .I5(CS),
        .O(MISO));
  LUT6 #(
    .INIT(64'h0700000000000070)) 
    MUX_CS_INST_0
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(MUX_CS));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    MUX_WR0_INST_0
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(MUX_WR0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    MUX_WR1_INST_0
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(MUX_WR1));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    MUX_WR2_INST_0
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(MUX_WR2));
  LUT6 #(
    .INIT(64'hDFDFCCFF00000C00)) 
    \active_read[0]_i_1 
       (.I0(\active_read[0]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\active_read[0]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\Debug_active_read[0] ),
        .O(\active_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \active_read[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\active_read[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \active_read[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\active_read[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active_read[1]_i_1 
       (.I0(\active_read[1]_i_2_n_0 ),
        .I1(active_read0),
        .I2(\Debug_active_read[1] ),
        .O(\active_read[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFC)) 
    \active_read[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\active_read[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000007)) 
    \active_read[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(active_read0));
  FDRE #(
    .INIT(1'b0)) 
    \active_read_reg[0] 
       (.C(CS),
        .CE(1'b1),
        .D(\active_read[0]_i_1_n_0 ),
        .Q(\Debug_active_read[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_read_reg[1] 
       (.C(CS),
        .CE(1'b1),
        .D(\active_read[1]_i_1_n_0 ),
        .Q(\Debug_active_read[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \bitcounter[0]_i_1 
       (.I0(bitcounter[1]),
        .I1(bitcounter[3]),
        .I2(bitcounter[2]),
        .I3(bitcounter[0]),
        .O(\bitcounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8FF0)) 
    \bitcounter[1]_i_1 
       (.I0(bitcounter[2]),
        .I1(bitcounter[3]),
        .I2(bitcounter[0]),
        .I3(bitcounter[1]),
        .O(\bitcounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBFC0)) 
    \bitcounter[2]_i_1 
       (.I0(bitcounter[3]),
        .I1(bitcounter[1]),
        .I2(bitcounter[0]),
        .I3(bitcounter[2]),
        .O(\bitcounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \bitcounter[3]_i_1 
       (.I0(bitcounter[2]),
        .I1(bitcounter[1]),
        .I2(bitcounter[0]),
        .I3(bitcounter[3]),
        .O(\bitcounter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bitcounter_reg[0] 
       (.C(SCLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\bitcounter[0]_i_1_n_0 ),
        .Q(bitcounter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bitcounter_reg[1] 
       (.C(SCLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\bitcounter[1]_i_1_n_0 ),
        .Q(bitcounter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bitcounter_reg[2] 
       (.C(SCLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\bitcounter[2]_i_1_n_0 ),
        .Q(bitcounter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bitcounter_reg[3] 
       (.C(SCLK),
        .CE(1'b1),
        .CLR(CS),
        .D(\bitcounter[3]_i_1_n_0 ),
        .Q(bitcounter[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b0)) 
    conv0_reg
       (.D(1'b0),
        .G(p_0_in2_in),
        .GE(1'b1),
        .PRE(conv0_reg_i_2_n_0),
        .Q(CVN0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    conv0_reg_i_1
       (.I0(CS),
        .I1(\Debug_active_read[0] ),
        .I2(\Debug_active_read[1] ),
        .O(p_0_in2_in));
  LUT5 #(
    .INIT(32'h00003332)) 
    conv0_reg_i_2
       (.I0(Q[5]),
        .I1(CS),
        .I2(conv0_reg_i_3_n_0),
        .I3(\Debug_active_read[0] ),
        .I4(\Debug_active_read[1] ),
        .O(conv0_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    conv0_reg_i_3
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(conv0_reg_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b0)) 
    conv1_reg
       (.D(1'b0),
        .G(conv10),
        .GE(1'b1),
        .PRE(conv1_reg_i_2_n_0),
        .Q(LED1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    conv1_reg_i_1
       (.I0(\Debug_active_read[1] ),
        .I1(\Debug_active_read[0] ),
        .I2(CS),
        .I3(LED1),
        .O(conv10));
  LUT6 #(
    .INIT(64'h000000003C2C2C2C)) 
    conv1_reg_i_2
       (.I0(Q[5]),
        .I1(\Debug_active_read[1] ),
        .I2(\Debug_active_read[0] ),
        .I3(conv1_reg_i_3_n_0),
        .I4(Q[4]),
        .I5(CS),
        .O(conv1_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    conv1_reg_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(conv1_reg_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b0)) 
    conv2_reg
       (.D(1'b0),
        .G(p_0_in3_in),
        .GE(1'b1),
        .PRE(conv2_reg_i_2_n_0),
        .Q(CVN2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    conv2_reg_i_1
       (.I0(CS),
        .I1(\Debug_active_read[0] ),
        .I2(\Debug_active_read[1] ),
        .O(p_0_in3_in));
  LUT5 #(
    .INIT(32'h0008000F)) 
    conv2_reg_i_2
       (.I0(conv0_reg_i_3_n_0),
        .I1(Q[5]),
        .I2(CS),
        .I3(\Debug_active_read[0] ),
        .I4(\Debug_active_read[1] ),
        .O(conv2_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \readcmd[10]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[11]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[2]),
        .O(\readcmd[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \readcmd[11]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[11]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[3]),
        .O(\readcmd[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readcmd[11]_i_2 
       (.I0(bitcounter[2]),
        .I1(bitcounter[3]),
        .O(\readcmd[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \readcmd[12]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[12]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[4]),
        .O(\readcmd[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \readcmd[12]_i_2 
       (.I0(bitcounter[3]),
        .I1(bitcounter[2]),
        .O(\readcmd[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \readcmd[13]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[12]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[5]),
        .O(\readcmd[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \readcmd[14]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[12]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[6]),
        .O(\readcmd[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \readcmd[15]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[12]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[7]),
        .O(\readcmd[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \readcmd[8]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[11]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[0]),
        .O(\readcmd[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \readcmd[9]_i_1 
       (.I0(MOSI),
        .I1(bitcounter[0]),
        .I2(\readcmd[11]_i_2_n_0 ),
        .I3(bitcounter[1]),
        .I4(CS),
        .I5(Debug_command_read[1]),
        .O(\readcmd[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[10] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[10]_i_1_n_0 ),
        .Q(Debug_command_read[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[11] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[11]_i_1_n_0 ),
        .Q(Debug_command_read[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[12] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[12]_i_1_n_0 ),
        .Q(Debug_command_read[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[13] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[13]_i_1_n_0 ),
        .Q(Debug_command_read[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[14] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[14]_i_1_n_0 ),
        .Q(Debug_command_read[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[15] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[15]_i_1_n_0 ),
        .Q(Debug_command_read[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[8] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[8]_i_1_n_0 ),
        .Q(Debug_command_read[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \readcmd_reg[9] 
       (.C(SCLK),
        .CE(1'b1),
        .D(\readcmd[9]_i_1_n_0 ),
        .Q(Debug_command_read[1]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SPI_counter_0_1,SPI_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SPI_counter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SCLK,
    CS,
    MISO,
    MOSI,
    SCK,
    LED0,
    CVN0,
    ADC_IN0,
    LED1,
    CVN1,
    ADC_IN1,
    LED2,
    CVN2,
    ADC_IN2,
    MUX_ADDR,
    MUX_CS,
    MUX_EN,
    MUX_WR0,
    MUX_WR1,
    MUX_WR2,
    Debug_ADC_counter,
    Debug_command_read,
    Debug_active_read);
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

  wire \<const0> ;
  wire \<const1> ;
  wire ADC_IN0;
  wire ADC_IN1;
  wire ADC_IN2;
  wire CS;
  wire CVN0;
  wire CVN2;
  wire [5:0]Debug_ADC_counter;
  wire [1:0]Debug_active_read;
  wire [7:0]Debug_command_read;
  wire LED1;
  wire MISO;
  wire MOSI;
  wire MUX_CS;
  wire MUX_WR0;
  wire MUX_WR1;
  wire MUX_WR2;
  wire SCLK;

  assign CVN1 = LED1;
  assign LED0 = \<const1> ;
  assign LED2 = CVN2;
  assign MUX_ADDR[4:0] = Debug_command_read[4:0];
  assign MUX_EN = \<const0> ;
  assign SCK = SCLK;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter U0
       (.ADC_IN0(ADC_IN0),
        .ADC_IN1(ADC_IN1),
        .ADC_IN2(ADC_IN2),
        .CS(CS),
        .CVN0(CVN0),
        .CVN2(CVN2),
        .\Debug_active_read[0] (Debug_active_read[0]),
        .\Debug_active_read[1] (Debug_active_read[1]),
        .Debug_command_read(Debug_command_read),
        .LED1(LED1),
        .MISO(MISO),
        .MOSI(MOSI),
        .MUX_CS(MUX_CS),
        .MUX_WR0(MUX_WR0),
        .MUX_WR1(MUX_WR1),
        .MUX_WR2(MUX_WR2),
        .Q(Debug_ADC_counter),
        .SCLK(SCLK));
  VCC VCC
       (.P(\<const1> ));
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

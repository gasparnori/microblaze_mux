-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 31 13:33:21 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi_divider_0_1_stub.vhdl
-- Design      : design_1_spi_divider_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SCLK : in STD_LOGIC;
    MISO : out STD_LOGIC;
    CS : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    SCLK_forward : out STD_LOGIC;
    MISO_forward : in STD_LOGIC;
    MOSI_forward : out STD_LOGIC;
    CS_forward : out STD_LOGIC;
    to_uart_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SCLK_out : out STD_LOGIC;
    MISO_out : out STD_LOGIC;
    MOSI_out : out STD_LOGIC;
    CS_out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SCLK,MISO,CS,MOSI,SCLK_forward,MISO_forward,MOSI_forward,CS_forward,to_uart_out[3:0],SCLK_out,MISO_out,MOSI_out,CS_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi_divider,Vivado 2017.4";
begin
end;

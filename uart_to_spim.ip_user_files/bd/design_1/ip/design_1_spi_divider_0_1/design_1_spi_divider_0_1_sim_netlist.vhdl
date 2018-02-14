-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 31 13:33:21 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Nora/Intan_project/uart_to_spim/uart_to_spim.srcs/sources_1/bd/design_1/ip/design_1_spi_divider_0_1/design_1_spi_divider_0_1_sim_netlist.vhdl
-- Design      : design_1_spi_divider_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_divider_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_divider_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_divider_0_1 : entity is "design_1_spi_divider_0_1,spi_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_spi_divider_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_spi_divider_0_1 : entity is "spi_divider,Vivado 2017.4";
end design_1_spi_divider_0_1;

architecture STRUCTURE of design_1_spi_divider_0_1 is
  signal \^cs\ : STD_LOGIC;
  signal \^miso_forward\ : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
begin
  CS_forward <= \^cs\;
  CS_out <= \^cs\;
  MISO <= \^miso_forward\;
  MISO_out <= \^miso_forward\;
  MOSI_forward <= \^mosi\;
  MOSI_out <= \^mosi\;
  SCLK_forward <= \^sclk\;
  SCLK_out <= \^sclk\;
  \^cs\ <= CS;
  \^miso_forward\ <= MISO_forward;
  \^mosi\ <= MOSI;
  \^sclk\ <= SCLK;
  to_uart_out(3) <= \^sclk\;
  to_uart_out(2) <= \^mosi\;
  to_uart_out(1) <= \^cs\;
  to_uart_out(0) <= \^miso_forward\;
end STRUCTURE;

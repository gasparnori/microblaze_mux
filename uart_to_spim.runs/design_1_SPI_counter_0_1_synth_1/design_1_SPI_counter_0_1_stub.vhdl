-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Feb 13 23:00:41 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPI_counter_0_1_stub.vhdl
-- Design      : design_1_SPI_counter_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SCLK : in STD_LOGIC;
    CS : in STD_LOGIC;
    MISO : out STD_LOGIC;
    MOSI : in STD_LOGIC;
    SCK : out STD_LOGIC;
    LED0 : out STD_LOGIC;
    CVN0 : out STD_LOGIC;
    ADC_IN0 : in STD_LOGIC;
    LED1 : out STD_LOGIC;
    CVN1 : out STD_LOGIC;
    ADC_IN1 : in STD_LOGIC;
    LED2 : out STD_LOGIC;
    CVN2 : out STD_LOGIC;
    ADC_IN2 : in STD_LOGIC;
    MUX_ADDR : out STD_LOGIC_VECTOR ( 4 downto 0 );
    MUX_CS : out STD_LOGIC;
    MUX_EN : out STD_LOGIC;
    MUX_WR0 : out STD_LOGIC;
    MUX_WR1 : out STD_LOGIC;
    MUX_WR2 : out STD_LOGIC;
    Debug_ADC_counter : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Debug_command_read : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Debug_active_read : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SCLK,CS,MISO,MOSI,SCK,LED0,CVN0,ADC_IN0,LED1,CVN1,ADC_IN1,LED2,CVN2,ADC_IN2,MUX_ADDR[4:0],MUX_CS,MUX_EN,MUX_WR0,MUX_WR1,MUX_WR2,Debug_ADC_counter[5:0],Debug_command_read[7:0],Debug_active_read[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SPI_counter,Vivado 2017.4";
begin
end;

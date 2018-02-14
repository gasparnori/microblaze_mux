-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 31 14:07:12 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_debug2gpio_0_0_stub.vhdl
-- Design      : design_1_debug2gpio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Debug_ADC_counter : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Debug_command_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Debug_active_read : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPI_signals : in STD_LOGIC_VECTOR ( 3 downto 0 );
    toGPIO : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Debug_ADC_counter[5:0],Debug_command_read[7:0],Debug_active_read[1:0],SPI_signals[3:0],toGPIO[19:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "debug2gpio,Vivado 2017.4";
begin
end;

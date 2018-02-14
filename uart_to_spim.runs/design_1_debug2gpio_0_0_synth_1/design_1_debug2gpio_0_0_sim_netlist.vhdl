-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 31 14:07:12 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_debug2gpio_0_0_sim_netlist.vhdl
-- Design      : design_1_debug2gpio_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Debug_ADC_counter : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Debug_command_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Debug_active_read : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPI_signals : in STD_LOGIC_VECTOR ( 3 downto 0 );
    toGPIO : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_debug2gpio_0_0,debug2gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "debug2gpio,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^debug_adc_counter\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^debug_active_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^debug_command_read\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^spi_signals\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^debug_active_read\(1 downto 0) <= Debug_active_read(1 downto 0);
  \^debug_adc_counter\(5 downto 0) <= Debug_ADC_counter(5 downto 0);
  \^debug_command_read\(7 downto 0) <= Debug_command_read(7 downto 0);
  \^spi_signals\(3 downto 0) <= SPI_signals(3 downto 0);
  toGPIO(19 downto 16) <= \^spi_signals\(3 downto 0);
  toGPIO(15 downto 14) <= \^debug_active_read\(1 downto 0);
  toGPIO(13 downto 6) <= \^debug_command_read\(7 downto 0);
  toGPIO(5 downto 0) <= \^debug_adc_counter\(5 downto 0);
end STRUCTURE;

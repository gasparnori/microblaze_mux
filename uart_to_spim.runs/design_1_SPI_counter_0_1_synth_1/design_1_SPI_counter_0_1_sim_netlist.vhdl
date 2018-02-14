-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Feb 13 23:00:41 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPI_counter_0_1_sim_netlist.vhdl
-- Design      : design_1_SPI_counter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter is
  port (
    CVN0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;
    CVN2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Debug_active_read[1]\ : out STD_LOGIC;
    \Debug_active_read[0]\ : out STD_LOGIC;
    Debug_command_read : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MISO : out STD_LOGIC;
    MUX_CS : out STD_LOGIC;
    MUX_WR1 : out STD_LOGIC;
    MUX_WR2 : out STD_LOGIC;
    MUX_WR0 : out STD_LOGIC;
    SCLK : in STD_LOGIC;
    CS : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    ADC_IN0 : in STD_LOGIC;
    ADC_IN1 : in STD_LOGIC;
    ADC_IN2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter is
  signal ADC_counter : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^debug_active_read[0]\ : STD_LOGIC;
  signal \^debug_active_read[1]\ : STD_LOGIC;
  signal \^debug_command_read\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^led1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal active_read0 : STD_LOGIC;
  signal \active_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \active_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \active_read[0]_i_3_n_0\ : STD_LOGIC;
  signal \active_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \active_read[1]_i_2_n_0\ : STD_LOGIC;
  signal bitcounter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal conv0_reg_i_2_n_0 : STD_LOGIC;
  signal conv0_reg_i_3_n_0 : STD_LOGIC;
  signal conv10 : STD_LOGIC;
  signal conv1_reg_i_2_n_0 : STD_LOGIC;
  signal conv1_reg_i_3_n_0 : STD_LOGIC;
  signal conv2_reg_i_2_n_0 : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal \readcmd[10]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[11]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[11]_i_2_n_0\ : STD_LOGIC;
  signal \readcmd[12]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[12]_i_2_n_0\ : STD_LOGIC;
  signal \readcmd[13]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[14]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[15]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[8]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADC_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ADC_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ADC_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ADC_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \active_read[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \active_read[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \active_read[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of conv0_reg : label is "LDP";
  attribute SOFT_HLUTNM of conv0_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of conv0_reg_i_3 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of conv1_reg : label is "LDP";
  attribute SOFT_HLUTNM of conv1_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of conv1_reg_i_3 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of conv2_reg : label is "LDP";
  attribute SOFT_HLUTNM of conv2_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \readcmd[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \readcmd[12]_i_2\ : label is "soft_lutpair7";
begin
  \Debug_active_read[0]\ <= \^debug_active_read[0]\;
  \Debug_active_read[1]\ <= \^debug_active_read[1]\;
  Debug_command_read(7 downto 0) <= \^debug_command_read\(7 downto 0);
  LED1 <= \^led1\;
  Q(5 downto 0) <= \^q\(5 downto 0);
\ADC_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => ADC_counter(0)
    );
\ADC_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => ADC_counter(1)
    );
\ADC_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => ADC_counter(2)
    );
\ADC_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => ADC_counter(3)
    );
\ADC_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => ADC_counter(4)
    );
\ADC_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => ADC_counter(5)
    );
\ADC_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(0),
      Q => \^q\(0),
      R => '0'
    );
\ADC_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(1),
      Q => \^q\(1),
      R => '0'
    );
\ADC_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(2),
      Q => \^q\(2),
      R => '0'
    );
\ADC_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(3),
      Q => \^q\(3),
      R => '0'
    );
\ADC_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(4),
      Q => \^q\(4),
      R => '0'
    );
\ADC_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => ADC_counter(5),
      Q => \^q\(5),
      R => '0'
    );
MISO_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => ADC_IN0,
      I1 => \^debug_active_read[1]\,
      I2 => ADC_IN1,
      I3 => \^debug_active_read[0]\,
      I4 => ADC_IN2,
      I5 => CS,
      O => MISO
    );
MUX_CS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000070"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => MUX_CS
    );
MUX_WR0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => MUX_WR0
    );
MUX_WR1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => MUX_WR1
    );
MUX_WR2_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => MUX_WR2
    );
\active_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFCCFF00000C00"
    )
        port map (
      I0 => \active_read[0]_i_2_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \active_read[0]_i_3_n_0\,
      I4 => \^q\(3),
      I5 => \^debug_active_read[0]\,
      O => \active_read[0]_i_1_n_0\
    );
\active_read[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \active_read[0]_i_2_n_0\
    );
\active_read[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \active_read[0]_i_3_n_0\
    );
\active_read[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \active_read[1]_i_2_n_0\,
      I1 => active_read0,
      I2 => \^debug_active_read[1]\,
      O => \active_read[1]_i_1_n_0\
    );
\active_read[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \active_read[1]_i_2_n_0\
    );
\active_read[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000007"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => active_read0
    );
\active_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CS,
      CE => '1',
      D => \active_read[0]_i_1_n_0\,
      Q => \^debug_active_read[0]\,
      R => '0'
    );
\active_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CS,
      CE => '1',
      D => \active_read[1]_i_1_n_0\,
      Q => \^debug_active_read[1]\,
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => bitcounter(1),
      I1 => bitcounter(3),
      I2 => bitcounter(2),
      I3 => bitcounter(0),
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF0"
    )
        port map (
      I0 => bitcounter(2),
      I1 => bitcounter(3),
      I2 => bitcounter(0),
      I3 => bitcounter(1),
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFC0"
    )
        port map (
      I0 => bitcounter(3),
      I1 => bitcounter(1),
      I2 => bitcounter(0),
      I3 => bitcounter(2),
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => bitcounter(2),
      I1 => bitcounter(1),
      I2 => bitcounter(0),
      I3 => bitcounter(3),
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      CLR => CS,
      D => \bitcounter[0]_i_1_n_0\,
      Q => bitcounter(0)
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      CLR => CS,
      D => \bitcounter[1]_i_1_n_0\,
      Q => bitcounter(1)
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      CLR => CS,
      D => \bitcounter[2]_i_1_n_0\,
      Q => bitcounter(2)
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      CLR => CS,
      D => \bitcounter[3]_i_1_n_0\,
      Q => bitcounter(3)
    );
conv0_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => p_0_in2_in,
      GE => '1',
      PRE => conv0_reg_i_2_n_0,
      Q => CVN0
    );
conv0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => CS,
      I1 => \^debug_active_read[0]\,
      I2 => \^debug_active_read[1]\,
      O => p_0_in2_in
    );
conv0_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003332"
    )
        port map (
      I0 => \^q\(5),
      I1 => CS,
      I2 => conv0_reg_i_3_n_0,
      I3 => \^debug_active_read[0]\,
      I4 => \^debug_active_read[1]\,
      O => conv0_reg_i_2_n_0
    );
conv0_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => conv0_reg_i_3_n_0
    );
conv1_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => conv10,
      GE => '1',
      PRE => conv1_reg_i_2_n_0,
      Q => \^led1\
    );
conv1_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^debug_active_read[1]\,
      I1 => \^debug_active_read[0]\,
      I2 => CS,
      I3 => \^led1\,
      O => conv10
    );
conv1_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003C2C2C2C"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^debug_active_read[1]\,
      I2 => \^debug_active_read[0]\,
      I3 => conv1_reg_i_3_n_0,
      I4 => \^q\(4),
      I5 => CS,
      O => conv1_reg_i_2_n_0
    );
conv1_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => conv1_reg_i_3_n_0
    );
conv2_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => p_0_in3_in,
      GE => '1',
      PRE => conv2_reg_i_2_n_0,
      Q => CVN2
    );
conv2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => CS,
      I1 => \^debug_active_read[0]\,
      I2 => \^debug_active_read[1]\,
      O => p_0_in3_in
    );
conv2_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008000F"
    )
        port map (
      I0 => conv0_reg_i_3_n_0,
      I1 => \^q\(5),
      I2 => CS,
      I3 => \^debug_active_read[0]\,
      I4 => \^debug_active_read[1]\,
      O => conv2_reg_i_2_n_0
    );
\readcmd[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[11]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(2),
      O => \readcmd[10]_i_1_n_0\
    );
\readcmd[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[11]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(3),
      O => \readcmd[11]_i_1_n_0\
    );
\readcmd[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bitcounter(2),
      I1 => bitcounter(3),
      O => \readcmd[11]_i_2_n_0\
    );
\readcmd[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(4),
      O => \readcmd[12]_i_1_n_0\
    );
\readcmd[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcounter(3),
      I1 => bitcounter(2),
      O => \readcmd[12]_i_2_n_0\
    );
\readcmd[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(5),
      O => \readcmd[13]_i_1_n_0\
    );
\readcmd[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(6),
      O => \readcmd[14]_i_1_n_0\
    );
\readcmd[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(7),
      O => \readcmd[15]_i_1_n_0\
    );
\readcmd[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[11]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(0),
      O => \readcmd[8]_i_1_n_0\
    );
\readcmd[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(0),
      I2 => \readcmd[11]_i_2_n_0\,
      I3 => bitcounter(1),
      I4 => CS,
      I5 => \^debug_command_read\(1),
      O => \readcmd[9]_i_1_n_0\
    );
\readcmd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[10]_i_1_n_0\,
      Q => \^debug_command_read\(2),
      R => '0'
    );
\readcmd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[11]_i_1_n_0\,
      Q => \^debug_command_read\(3),
      R => '0'
    );
\readcmd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[12]_i_1_n_0\,
      Q => \^debug_command_read\(4),
      R => '0'
    );
\readcmd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[13]_i_1_n_0\,
      Q => \^debug_command_read\(5),
      R => '0'
    );
\readcmd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[14]_i_1_n_0\,
      Q => \^debug_command_read\(6),
      R => '0'
    );
\readcmd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[15]_i_1_n_0\,
      Q => \^debug_command_read\(7),
      R => '0'
    );
\readcmd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[8]_i_1_n_0\,
      Q => \^debug_command_read\(0),
      R => '0'
    );
\readcmd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[9]_i_1_n_0\,
      Q => \^debug_command_read\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_SPI_counter_0_1,SPI_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_counter,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^cvn2\ : STD_LOGIC;
  signal \^debug_command_read\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^led1\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
begin
  CVN1 <= \^led1\;
  CVN2 <= \^cvn2\;
  Debug_command_read(7 downto 0) <= \^debug_command_read\(7 downto 0);
  LED0 <= \<const1>\;
  LED1 <= \^led1\;
  LED2 <= \^cvn2\;
  MUX_ADDR(4 downto 0) <= \^debug_command_read\(4 downto 0);
  MUX_EN <= \<const0>\;
  SCK <= \^sclk\;
  \^sclk\ <= SCLK;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_counter
     port map (
      ADC_IN0 => ADC_IN0,
      ADC_IN1 => ADC_IN1,
      ADC_IN2 => ADC_IN2,
      CS => CS,
      CVN0 => CVN0,
      CVN2 => \^cvn2\,
      \Debug_active_read[0]\ => Debug_active_read(0),
      \Debug_active_read[1]\ => Debug_active_read(1),
      Debug_command_read(7 downto 0) => \^debug_command_read\(7 downto 0),
      LED1 => \^led1\,
      MISO => MISO,
      MOSI => MOSI,
      MUX_CS => MUX_CS,
      MUX_WR0 => MUX_WR0,
      MUX_WR1 => MUX_WR1,
      MUX_WR2 => MUX_WR2,
      Q(5 downto 0) => Debug_ADC_counter(5 downto 0),
      SCLK => \^sclk\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 31 14:07:13 2018
-- Host        : YGGDRASIL running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Nora/Intan_project/uart_to_spim/uart_to_spim.srcs/sources_1/bd/design_1/ip/design_1_SPI_counter_0_1/design_1_SPI_counter_0_1_sim_netlist.vhdl
-- Design      : design_1_SPI_counter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_counter_0_1_SPI_counter is
  port (
    CVN0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;
    LED2 : out STD_LOGIC;
    MUX_ADDR : out STD_LOGIC_VECTOR ( 4 downto 0 );
    MISO : out STD_LOGIC;
    MUX_WR1 : out STD_LOGIC;
    MUX_WR2 : out STD_LOGIC;
    MUX_WR0 : out STD_LOGIC;
    CS : in STD_LOGIC;
    SCLK : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    ADC_IN0 : in STD_LOGIC;
    ADC_IN1 : in STD_LOGIC;
    ADC_IN2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_counter_0_1_SPI_counter : entity is "SPI_counter";
end design_1_SPI_counter_0_1_SPI_counter;

architecture STRUCTURE of design_1_SPI_counter_0_1_SPI_counter is
  signal ADC_counter : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ADC_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \ADC_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \ADC_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \ADC_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \ADC_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \ADC_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \^led1\ : STD_LOGIC;
  signal \^led2\ : STD_LOGIC;
  signal \^mux_addr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal active_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \active_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \active_read[1]_i_1_n_0\ : STD_LOGIC;
  signal bitcounter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal conv03_out : STD_LOGIC;
  signal conv0_reg_i_1_n_0 : STD_LOGIC;
  signal conv0_reg_i_3_n_0 : STD_LOGIC;
  signal conv0_reg_i_4_n_0 : STD_LOGIC;
  signal conv12_out : STD_LOGIC;
  signal conv1_reg_i_1_n_0 : STD_LOGIC;
  signal conv1_reg_i_3_n_0 : STD_LOGIC;
  signal conv21_out : STD_LOGIC;
  signal conv2_reg_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \readcmd[10]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[10]_i_2_n_0\ : STD_LOGIC;
  signal \readcmd[11]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[11]_i_2_n_0\ : STD_LOGIC;
  signal \readcmd[12]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[12]_i_2_n_0\ : STD_LOGIC;
  signal \readcmd[8]_i_1_n_0\ : STD_LOGIC;
  signal \readcmd[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADC_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ADC_counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ADC_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \active_read[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \active_read[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bitcounter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of conv0_reg : label is "LD";
  attribute SOFT_HLUTNM of conv0_reg_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of conv0_reg_i_4 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of conv1_reg : label is "LD";
  attribute SOFT_HLUTNM of conv1_reg_i_3 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of conv2_reg : label is "LD";
  attribute SOFT_HLUTNM of \readcmd[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \readcmd[11]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \readcmd[12]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \readcmd[9]_i_2\ : label is "soft_lutpair0";
begin
  LED1 <= \^led1\;
  LED2 <= \^led2\;
  MUX_ADDR(4 downto 0) <= \^mux_addr\(4 downto 0);
\ADC_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[0]\,
      O => ADC_counter(0)
    );
\ADC_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[1]\,
      I1 => \ADC_counter_reg_n_0_[0]\,
      O => ADC_counter(1)
    );
\ADC_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[2]\,
      I1 => \ADC_counter_reg_n_0_[1]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      O => ADC_counter(2)
    );
\ADC_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[3]\,
      I1 => \ADC_counter_reg_n_0_[1]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[2]\,
      O => ADC_counter(3)
    );
\ADC_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[5]\,
      I1 => \ADC_counter_reg_n_0_[4]\,
      I2 => \ADC_counter_reg_n_0_[2]\,
      I3 => \ADC_counter_reg_n_0_[0]\,
      I4 => \ADC_counter_reg_n_0_[1]\,
      I5 => \ADC_counter_reg_n_0_[3]\,
      O => ADC_counter(4)
    );
\ADC_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA2AAAAAAA"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[5]\,
      I1 => \ADC_counter_reg_n_0_[3]\,
      I2 => \ADC_counter_reg_n_0_[1]\,
      I3 => \ADC_counter_reg_n_0_[0]\,
      I4 => \ADC_counter_reg_n_0_[2]\,
      I5 => \ADC_counter_reg_n_0_[4]\,
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
      Q => \ADC_counter_reg_n_0_[0]\,
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
      Q => \ADC_counter_reg_n_0_[1]\,
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
      Q => \ADC_counter_reg_n_0_[2]\,
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
      Q => \ADC_counter_reg_n_0_[3]\,
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
      Q => \ADC_counter_reg_n_0_[4]\,
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
      Q => \ADC_counter_reg_n_0_[5]\,
      R => '0'
    );
MISO_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => ADC_IN0,
      I1 => active_read(0),
      I2 => ADC_IN1,
      I3 => active_read(1),
      I4 => ADC_IN2,
      I5 => CS,
      O => MISO
    );
MUX_WR0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => MUX_WR0
    );
MUX_WR1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => MUX_WR1
    );
MUX_WR2_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => MUX_WR2
    );
\active_read[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_read(0),
      I1 => active_read(1),
      O => \active_read[0]_i_1_n_0\
    );
\active_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => active_read(0),
      I1 => active_read(1),
      O => \active_read[1]_i_1_n_0\
    );
\active_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CS,
      CE => '1',
      D => \active_read[0]_i_1_n_0\,
      Q => active_read(0),
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
      Q => active_read(1),
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => bitcounter(1),
      I1 => bitcounter(2),
      I2 => bitcounter(3),
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
      INIT => X"BCCC"
    )
        port map (
      I0 => bitcounter(3),
      I1 => bitcounter(2),
      I2 => bitcounter(0),
      I3 => bitcounter(1),
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
conv0_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => conv0_reg_i_1_n_0,
      G => conv03_out,
      GE => '1',
      Q => CVN0
    );
conv0_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => conv0_reg_i_1_n_0
    );
conv0_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => conv0_reg_i_3_n_0,
      I1 => \ADC_counter_reg_n_0_[5]\,
      I2 => \ADC_counter_reg_n_0_[4]\,
      I3 => conv0_reg_i_4_n_0,
      I4 => CS,
      O => conv03_out
    );
conv0_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[3]\,
      I1 => \ADC_counter_reg_n_0_[1]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[2]\,
      I4 => \ADC_counter_reg_n_0_[4]\,
      O => conv0_reg_i_3_n_0
    );
conv0_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[2]\,
      I1 => \ADC_counter_reg_n_0_[1]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[3]\,
      O => conv0_reg_i_4_n_0
    );
conv1_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => conv1_reg_i_1_n_0,
      G => conv12_out,
      GE => '1',
      Q => \^led1\
    );
conv1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => conv1_reg_i_1_n_0
    );
conv1_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045404040"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[5]\,
      I1 => conv1_reg_i_3_n_0,
      I2 => \ADC_counter_reg_n_0_[4]\,
      I3 => \^led1\,
      I4 => conv0_reg_i_4_n_0,
      I5 => CS,
      O => conv12_out
    );
conv1_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[2]\,
      I1 => \ADC_counter_reg_n_0_[0]\,
      I2 => \ADC_counter_reg_n_0_[1]\,
      I3 => \ADC_counter_reg_n_0_[3]\,
      O => conv1_reg_i_3_n_0
    );
conv2_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => conv2_reg_i_1_n_0,
      G => conv21_out,
      GE => '1',
      Q => \^led2\
    );
conv2_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \ADC_counter_reg_n_0_[4]\,
      I1 => \ADC_counter_reg_n_0_[2]\,
      I2 => \ADC_counter_reg_n_0_[0]\,
      I3 => \ADC_counter_reg_n_0_[1]\,
      I4 => \ADC_counter_reg_n_0_[3]\,
      I5 => \ADC_counter_reg_n_0_[5]\,
      O => conv2_reg_i_1_n_0
    );
conv2_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => \^led2\,
      I1 => conv0_reg_i_4_n_0,
      I2 => \ADC_counter_reg_n_0_[4]\,
      I3 => \ADC_counter_reg_n_0_[5]\,
      I4 => conv0_reg_i_3_n_0,
      I5 => CS,
      O => conv21_out
    );
\readcmd[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(3),
      I2 => \readcmd[10]_i_2_n_0\,
      I3 => bitcounter(2),
      I4 => CS,
      I5 => \^mux_addr\(2),
      O => \readcmd[10]_i_1_n_0\
    );
\readcmd[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bitcounter(0),
      I1 => bitcounter(1),
      O => \readcmd[10]_i_2_n_0\
    );
\readcmd[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(3),
      I2 => \readcmd[11]_i_2_n_0\,
      I3 => bitcounter(2),
      I4 => CS,
      I5 => \^mux_addr\(3),
      O => \readcmd[11]_i_1_n_0\
    );
\readcmd[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitcounter(1),
      I1 => bitcounter(0),
      O => \readcmd[11]_i_2_n_0\
    );
\readcmd[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(3),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(2),
      I4 => CS,
      I5 => \^mux_addr\(4),
      O => \readcmd[12]_i_1_n_0\
    );
\readcmd[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bitcounter(1),
      I1 => bitcounter(0),
      O => \readcmd[12]_i_2_n_0\
    );
\readcmd[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => MOSI,
      I1 => bitcounter(3),
      I2 => \readcmd[12]_i_2_n_0\,
      I3 => bitcounter(2),
      I4 => CS,
      I5 => \^mux_addr\(0),
      O => \readcmd[8]_i_1_n_0\
    );
\readcmd[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI,
      I1 => p_0_in(9),
      I2 => \^mux_addr\(1),
      O => \readcmd[9]_i_1_n_0\
    );
\readcmd[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => bitcounter(3),
      I1 => bitcounter(0),
      I2 => bitcounter(1),
      I3 => bitcounter(2),
      I4 => CS,
      O => p_0_in(9)
    );
\readcmd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK,
      CE => '1',
      D => \readcmd[10]_i_1_n_0\,
      Q => \^mux_addr\(2),
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
      Q => \^mux_addr\(3),
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
      Q => \^mux_addr\(4),
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
      Q => \^mux_addr\(0),
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
      Q => \^mux_addr\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_counter_0_1 is
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
  attribute NotValidForBitStream of design_1_SPI_counter_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_counter_0_1 : entity is "design_1_SPI_counter_0_1,SPI_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_counter_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_counter_0_1 : entity is "SPI_counter,Vivado 2017.4";
end design_1_SPI_counter_0_1;

architecture STRUCTURE of design_1_SPI_counter_0_1 is
  signal \<const1>\ : STD_LOGIC;
  signal \^led1\ : STD_LOGIC;
  signal \^led2\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
begin
  CVN1 <= \^led1\;
  CVN2 <= \^led2\;
  LED0 <= \<const1>\;
  LED1 <= \^led1\;
  LED2 <= \^led2\;
  MUX_CS <= \<const1>\;
  MUX_EN <= \<const1>\;
  SCK <= \^sclk\;
  \^sclk\ <= SCLK;
  Debug_ADC_counter(0) <= 'Z';
  Debug_ADC_counter(1) <= 'Z';
  Debug_ADC_counter(2) <= 'Z';
  Debug_ADC_counter(3) <= 'Z';
  Debug_ADC_counter(4) <= 'Z';
  Debug_ADC_counter(5) <= 'Z';
  Debug_active_read(0) <= 'Z';
  Debug_active_read(1) <= 'Z';
  Debug_command_read(0) <= 'Z';
  Debug_command_read(1) <= 'Z';
  Debug_command_read(2) <= 'Z';
  Debug_command_read(3) <= 'Z';
  Debug_command_read(4) <= 'Z';
  Debug_command_read(5) <= 'Z';
  Debug_command_read(6) <= 'Z';
  Debug_command_read(7) <= 'Z';
U0: entity work.design_1_SPI_counter_0_1_SPI_counter
     port map (
      ADC_IN0 => ADC_IN0,
      ADC_IN1 => ADC_IN1,
      ADC_IN2 => ADC_IN2,
      CS => CS,
      CVN0 => CVN0,
      LED1 => \^led1\,
      LED2 => \^led2\,
      MISO => MISO,
      MOSI => MOSI,
      MUX_ADDR(4 downto 0) => MUX_ADDR(4 downto 0),
      MUX_WR0 => MUX_WR0,
      MUX_WR1 => MUX_WR1,
      MUX_WR2 => MUX_WR2,
      SCLK => \^sclk\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

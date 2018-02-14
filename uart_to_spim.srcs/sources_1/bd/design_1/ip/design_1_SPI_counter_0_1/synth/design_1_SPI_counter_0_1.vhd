-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:SPI_counter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_SPI_counter_0_1 IS
  PORT (
    SCLK : IN STD_LOGIC;
    CS : IN STD_LOGIC;
    MISO : OUT STD_LOGIC;
    MOSI : IN STD_LOGIC;
    SCK : OUT STD_LOGIC;
    LED0 : OUT STD_LOGIC;
    CVN0 : OUT STD_LOGIC;
    ADC_IN0 : IN STD_LOGIC;
    LED1 : OUT STD_LOGIC;
    CVN1 : OUT STD_LOGIC;
    ADC_IN1 : IN STD_LOGIC;
    LED2 : OUT STD_LOGIC;
    CVN2 : OUT STD_LOGIC;
    ADC_IN2 : IN STD_LOGIC;
    MUX_ADDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    MUX_CS : OUT STD_LOGIC;
    MUX_EN : OUT STD_LOGIC;
    MUX_WR0 : OUT STD_LOGIC;
    MUX_WR1 : OUT STD_LOGIC;
    MUX_WR2 : OUT STD_LOGIC;
    Debug_ADC_counter : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    Debug_command_read : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Debug_active_read : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END design_1_SPI_counter_0_1;

ARCHITECTURE design_1_SPI_counter_0_1_arch OF design_1_SPI_counter_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_SPI_counter_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT SPI_counter IS
    PORT (
      SCLK : IN STD_LOGIC;
      CS : IN STD_LOGIC;
      MISO : OUT STD_LOGIC;
      MOSI : IN STD_LOGIC;
      SCK : OUT STD_LOGIC;
      LED0 : OUT STD_LOGIC;
      CVN0 : OUT STD_LOGIC;
      ADC_IN0 : IN STD_LOGIC;
      LED1 : OUT STD_LOGIC;
      CVN1 : OUT STD_LOGIC;
      ADC_IN1 : IN STD_LOGIC;
      LED2 : OUT STD_LOGIC;
      CVN2 : OUT STD_LOGIC;
      ADC_IN2 : IN STD_LOGIC;
      MUX_ADDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      MUX_CS : OUT STD_LOGIC;
      MUX_EN : OUT STD_LOGIC;
      MUX_WR0 : OUT STD_LOGIC;
      MUX_WR1 : OUT STD_LOGIC;
      MUX_WR2 : OUT STD_LOGIC;
      Debug_ADC_counter : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      Debug_command_read : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Debug_active_read : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT SPI_counter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_SPI_counter_0_1_arch: ARCHITECTURE IS "SPI_counter,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_SPI_counter_0_1_arch : ARCHITECTURE IS "design_1_SPI_counter_0_1,SPI_counter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_SPI_counter_0_1_arch: ARCHITECTURE IS "design_1_SPI_counter_0_1,SPI_counter,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_counter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
BEGIN
  U0 : SPI_counter
    PORT MAP (
      SCLK => SCLK,
      CS => CS,
      MISO => MISO,
      MOSI => MOSI,
      SCK => SCK,
      LED0 => LED0,
      CVN0 => CVN0,
      ADC_IN0 => ADC_IN0,
      LED1 => LED1,
      CVN1 => CVN1,
      ADC_IN1 => ADC_IN1,
      LED2 => LED2,
      CVN2 => CVN2,
      ADC_IN2 => ADC_IN2,
      MUX_ADDR => MUX_ADDR,
      MUX_CS => MUX_CS,
      MUX_EN => MUX_EN,
      MUX_WR0 => MUX_WR0,
      MUX_WR1 => MUX_WR1,
      MUX_WR2 => MUX_WR2,
      Debug_ADC_counter => Debug_ADC_counter,
      Debug_command_read => Debug_command_read,
      Debug_active_read => Debug_active_read
    );
END design_1_SPI_counter_0_1_arch;

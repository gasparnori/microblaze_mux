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

-- IP VLNV: xilinx.com:module_ref:spi_divider:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_spi_divider_0_1 IS
  PORT (
    SCLK : IN STD_LOGIC;
    MISO : OUT STD_LOGIC;
    CS : IN STD_LOGIC;
    MOSI : IN STD_LOGIC;
    SCLK_forward : OUT STD_LOGIC;
    MISO_forward : IN STD_LOGIC;
    MOSI_forward : OUT STD_LOGIC;
    CS_forward : OUT STD_LOGIC;
    to_uart_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    SCLK_out : OUT STD_LOGIC;
    MISO_out : OUT STD_LOGIC;
    MOSI_out : OUT STD_LOGIC;
    CS_out : OUT STD_LOGIC
  );
END design_1_spi_divider_0_1;

ARCHITECTURE design_1_spi_divider_0_1_arch OF design_1_spi_divider_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_spi_divider_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT spi_divider IS
    PORT (
      SCLK : IN STD_LOGIC;
      MISO : OUT STD_LOGIC;
      CS : IN STD_LOGIC;
      MOSI : IN STD_LOGIC;
      SCLK_forward : OUT STD_LOGIC;
      MISO_forward : IN STD_LOGIC;
      MOSI_forward : OUT STD_LOGIC;
      CS_forward : OUT STD_LOGIC;
      to_uart_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      SCLK_out : OUT STD_LOGIC;
      MISO_out : OUT STD_LOGIC;
      MOSI_out : OUT STD_LOGIC;
      CS_out : OUT STD_LOGIC
    );
  END COMPONENT spi_divider;
BEGIN
  U0 : spi_divider
    PORT MAP (
      SCLK => SCLK,
      MISO => MISO,
      CS => CS,
      MOSI => MOSI,
      SCLK_forward => SCLK_forward,
      MISO_forward => MISO_forward,
      MOSI_forward => MOSI_forward,
      CS_forward => CS_forward,
      to_uart_out => to_uart_out,
      SCLK_out => SCLK_out,
      MISO_out => MISO_out,
      MOSI_out => MOSI_out,
      CS_out => CS_out
    );
END design_1_spi_divider_0_1_arch;

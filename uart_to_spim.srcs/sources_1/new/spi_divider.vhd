----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/30/2018 10:56:47 AM
-- Design Name: 
-- Module Name: spi_divider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_divider is
    Port ( 
        SCLK : in STD_LOGIC;
        MISO : out STD_LOGIC;
        CS : in STD_LOGIC;
        MOSI : in STD_LOGIC;
        SCLK_forward : out STD_LOGIC;
        MISO_forward : in STD_LOGIC;
        MOSI_forward : out STD_LOGIC;
        CS_forward : out STD_LOGIC;
        to_uart_out : out STD_LOGIC_VECTOR (3 downto 0);
        SCLK_out : out STD_LOGIC;
        MISO_out : out STD_LOGIC;
        MOSI_out : out STD_LOGIC;
        CS_out : out STD_LOGIC
    );
end spi_divider;

architecture Behavioral of spi_divider is

begin
SCLK_forward<=SCLK;
SCLK_out<=SCLK;
to_uart_out(3)<=SCLK;

MOSI_forward<=MOSI;
MOSI_out<=MOSI;
to_uart_out(2)<=MOSI;

CS_forward<=CS;
CS_out<=CS;
to_uart_out(1)<=CS;

MISO<=MISO_forward;
MISO_out<=MISO_forward;
to_uart_out(0)<= MISO_forward;

end Behavioral;

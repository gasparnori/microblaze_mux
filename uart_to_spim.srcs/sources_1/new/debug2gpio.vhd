----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/31/2018 01:58:55 PM
-- Design Name: 
-- Module Name: debug2gpio - Behavioral
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

entity debug2gpio is
    Port ( 
        Debug_ADC_counter : in STD_LOGIC_VECTOR (5 downto 0);
        Debug_command_read : in STD_LOGIC_VECTOR (7 downto 0);
        Debug_active_read : in STD_LOGIC_VECTOR (1 downto 0);
        SPI_signals : in STD_LOGIC_VECTOR (3 downto 0);
        toGPIO : out STD_LOGIC_VECTOR (19 downto 0)
           );
end debug2gpio;

architecture Behavioral of debug2gpio is

begin
toGPIO(5 downto 0)<= Debug_ADC_counter;
toGPIO(13 downto 6)<= Debug_command_read;
toGPIO(15 downto 14)<= Debug_active_read;
toGPIO(19 downto 16)<= SPI_signals;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2016 08:03:22 PM
-- Design Name: 
-- Module Name: adg732_control - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adg732_control is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           EN_N : out STD_LOGIC;
           CS_N : out STD_LOGIC;
           WR_N : out STD_LOGIC;
           CHANNEL : out STD_LOGIC_VECTOR (4 downto 0));
end adg732_control;

architecture Behavioral of adg732_control is
    signal A: integer:=0;
    signal lock: std_logic:= '1';
    signal clk_counter: integer:= 0;
begin
	process(CLK, EN)
    begin
        if EN='1' then
            CS_N<=not EN;
            if rising_edge(clk) then --100 MHz: 10ns
                if clk_counter=0 then --0ns
                    lock<='0';
                    A<=A;
                    clk_counter<=clk_counter+1;
                elsif clk_counter=1 then --10ns
                    lock<='0';
                    A<=A+1;
                    clk_counter<=clk_counter+1;
                elsif clk_counter=2 then-- 20ns
                    lock<='1';
                    A<=A;
                    clk_counter<=clk_counter+1; 
                elsif clk_counter=2 then-- 30ns
                    lock<='1';
                    A<=A;
                    clk_counter<=clk_counter+1; 
                elsif clk_counter=5 then-- 30ns
                    lock<='1';
                    A<=A;
                    clk_counter<=0; 
                else
                    lock<='1';
                    A<=A;
                    clk_counter<=clk_counter+1; 
                end if;
            
            end if;
        else
           CS_N<='1';
        end if; 
end process;
    WR_N<=lock;
    CHANNEL<= std_logic_vector(to_unsigned(A, CHANNEL'length));
    EN_N<=not EN;
end Behavioral;

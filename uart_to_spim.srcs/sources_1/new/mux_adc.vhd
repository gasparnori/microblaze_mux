----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2017 10:53:57 AM
-- Design Name: 
-- Module Name: SPI_counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity SPI_counter is
    Port ( 
--           RST_IN: in STD_LOGIC;
           SCLK : in STD_LOGIC;
           CS   : in STD_LOGIC;
           MISO : out STD_LOGIC;
           MOSI : in STD_LOGIC;
           
           ----- ADC control -----
           SCK  : out STD_LOGIC;
           -----------------------------
           LED0 : out STD_LOGIC;
           CVN0 : out STD_LOGIC;
           ADC_IN0: in STD_LOGIC;
           -----------------------------
           -----------------------------
           LED1 : out STD_LOGIC;
           CVN1 : out STD_LOGIC;
           ADC_IN1: in STD_LOGIC;
           -----------------------------
           LED2 : out STD_LOGIC;
           CVN2 : out STD_LOGIC;
           ADC_IN2: in STD_LOGIC;
       --------external control outputs to MUX----------------------
          MUX_ADDR : out STD_LOGIC_VECTOR (4 downto 0);
          MUX_CS : out STD_LOGIC;
          MUX_EN : out STD_LOGIC;
          MUX_WR0 : out STD_LOGIC;
          MUX_WR1 : out STD_LOGIC;
          MUX_WR2 : out STD_LOGIC; 
          ------------microblaze debugging signals ----------------
          Debug_ADC_counter: out STD_LOGIC_VECTOR (5 downto 0);
          Debug_command_read: out STD_LOGIC_VECTOR (7 downto 0);
          Debug_active_read: out STD_LOGIC_VECTOR (1 downto 0)
          );
end SPI_counter;

architecture Behavioral of SPI_counter is

----------temporary-------
signal RST: STD_LOGIC:='1';
--------------------------


--signal ADC0_data: STD_LOGIC_VECTOR(15 downto 0):="1000100010001111";
--signal ADC1_data: STD_LOGIC_VECTOR(15 downto 0):="1000100011111001";
--signal ADC2_data: STD_LOGIC_VECTOR(15 downto 0):="1000111110001001";
--signal to_write : STD_LOGIC_VECTOR(15 downto 0):="1000111110001001";
signal readcmd: STD_LOGIC_VECTOR(15 downto 0):=(OTHERS=>'0');
signal data_out : STD_LOGIC:='0';

signal MUX_start_signals: STD_LOGIC_VECTOR(2 downto 0):="000";
signal next_channel: unsigned(4 downto 0):=(OTHERS=>'0');


signal conv0: STD_LOGIC:='0';
signal conv1: STD_LOGIC:='0';
signal conv2: STD_LOGIC:='0';
signal ADC_counter: integer range 0 to 47:=0;
signal active_read: integer range 0 to 2:=0;


constant COMMAND_LENGTH: integer:=16;
constant MSB_LENGTH: integer:=8;

-------the ADC_counter value when the ADC data is ready
constant DELAY0: integer:=32;
constant DELAY1: integer:=0;
constant DELAY2: integer:=16;

begin


count: process(SCLK)

begin
  if rising_edge(SCLK) then
  --    if RST='1' then
            if ADC_counter=47 then
                ADC_counter<=0;
            else
                ADC_counter<=ADC_counter+1;
            end if;
 --     else
      ---default values after reset
  --      ADC_counter<=0;
  --    end if;   
  end if;
end process count;

-----------------------------------  MISO output multiplexer ------------------------------
read_data:process(ADC_IN0, ADC_IN1, ADC_IN2, CS, active_read)
begin
    if CS='0' then
        case active_read is
            when 0 => MISO<=ADC_IN1;    ----- it should be shifted by 2!!!!
            when 1 => MISO<=ADC_IN2;
            when others => MISO<=ADC_IN0;
        end case;
    else
    MISO<='0';
    end if;
end process;

rhytm:process(CS)
begin
    if rising_edge(CS) then
        if ADC_counter=0 or ADC_counter=47 then
             active_read<=0;
        elsif ADC_counter=16 then
             active_read<=1;
        elsif ADC_counter=32 then
             active_read<=2;
        end if;
       -- if active_read=2 then
           
        --else
        --    active_read<=active_read+1;
        --end if;
    end if;
end process rhytm;

conv0_control: process(CS, ADC_counter, active_read)
begin
    if CS='0' and active_read=0 and ADC_counter>MSB_LENGTH then
        conv0<='1';
    elsif CS='0' and active_read=1 then
        conv0<='1';
    elsif CS='0' and active_read=2 then
        conv0<='0';
    end if;
end process conv0_control;

conv1_control: process(CS, ADC_counter, active_read, conv1)
begin
    if CS='0' and active_read=1 and ADC_counter > COMMAND_LENGTH+MSB_LENGTH then
        conv1<='1';
    elsif CS='0' and active_read=2 then
        conv1<='1';
    elsif CS='0' and active_read=0 and conv1='1' then
        conv1<='0';
    end if;
end process conv1_control;

conv2_control: process(CS, ADC_counter, active_read, conv2)
begin
    if CS='0' and active_read=2 and ADC_counter > COMMAND_LENGTH*2+MSB_LENGTH then
        conv2<='1';
    elsif CS='0' and active_read=0 then
        conv2<='1';
    elsif CS='0' and active_read=1 then
        conv2<='0';
    end if;

end process conv2_control;

readSPI: process(SCLK, MOSI, CS)
   variable bitcounter: integer range 0 to 16:=0;
   begin
       if CS='1' then
            bitcounter:=0;
       else
           if rising_edge(SCLK) then
              readcmd(15-bitcounter)<=MOSI;
              if bitcounter=15 then
                   bitcounter:=15;
              else
                   bitcounter:=bitcounter+1;
              end if;
           end if;
       end if;
 end process readSPI;
 
mux_wr0_proc: process(ADC_counter)
 begin
     case ADC_counter is  --if 0: the channels can be changed, if 1: the channels are fixed
        when MSB_LENGTH => MUX_WR0<='0';
        when MSB_LENGTH+1 => MUX_WR0<='1';
        when others => MUX_WR0<='0';
     end case; 
 end process mux_wr0_proc;
 
mux_wr1_proc: process(ADC_counter)
  begin
      case ADC_counter is  --if 0: the channels can be changed, if 1: the channels are fixed
         when MSB_LENGTH+COMMAND_LENGTH => MUX_WR1<='0';
         when MSB_LENGTH+COMMAND_LENGTH+1 => MUX_WR1<='1';
         when others => MUX_WR1<='0';
      end case;
 end process mux_wr1_proc;
  
mux_wr2_proc: process(ADC_counter)
    begin
        case ADC_counter is  --if 0: the channels can be changed, if 1: the channels are fixed
           when MSB_LENGTH+COMMAND_LENGTH*2 => MUX_WR2<='0';
           when MSB_LENGTH+COMMAND_LENGTH*2+1 => MUX_WR2<='1';
           when others => MUX_WR2<='0';
        end case;
end process mux_wr2_proc;
 
muxCS_proc: process(ADC_counter)
begin
  
  case ADC_counter is  --if 0: the channels can be changed, if 1: the channels are fixed
     when MSB_LENGTH-1 =>  MUX_CS<='1';
     when MSB_LENGTH =>  MUX_CS<='1';
     when MSB_LENGTH+COMMAND_LENGTH-1 => MUX_CS<='1';
     when MSB_LENGTH+COMMAND_LENGTH => MUX_CS<='1';
     when MSB_LENGTH+COMMAND_LENGTH*2-1 => MUX_CS<='1';
     when MSB_LENGTH+COMMAND_LENGTH*2 => MUX_CS<='1';
     when others => MUX_CS<='0';
  end case;
       --doesn't have to be synchronized, only matters when WR is low
  MUX_ADDR<=readcmd(12 downto 8); --chooses the channel to latch
end process muxCS_proc;


LED0<=RST;
LED1<=conv1;
LED2<=conv2;

SCK<=SCLK;
CVN0<=conv0;
CVN1<=conv1;
CVN2<=conv2;

MUX_EN<='0';

--RST<=not RST_IN;

--------------  debug signals ----------------------------
          ------------microblaze debugging signals ----------------
Debug_ADC_counter<= std_logic_vector(to_unsigned(ADC_counter,Debug_ADC_counter'length));
Debug_command_read<=readcmd(15 downto 8);
Debug_active_read<=std_logic_vector(to_unsigned(active_read,Debug_active_read'length));



end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:29:08 10/11/2018 
-- Design Name: 
-- Module Name:    IO - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IO is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           IE : in  STD_LOGIC;
           OE : in  STD_LOGIC;
			  WE : in STD_LOGIC;
           IO_SWBTT : out  STD_LOGIC_VECTOR (7 downto 0);
           IO_LEDS : in  STD_LOGIC_VECTOR (7 downto 0);
           swbtt : in  STD_LOGIC_VECTOR (7 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0);
			  MUXE : out  STD_LOGIC);
end IO;

architecture Behavioral of IO is

begin
	process (clk, reset) is
	begin
		if reset = '1' then
			leds <= (others => '0');
			IO_SWBTT <= (others => '0');
			MUXE <= '0';
		elsif rising_edge(clk) then
			if IE = '1' AND WE = '0' then
				MUXE <= '1';
				IO_SWBTT <= swbtt;
			elsif OE = '1' AND WE = '1' then
				MUXE <= '0';
				leds <= IO_LEDS;
			else
				MUXE <= '0';
			end if;
		end if;
	end process;
end Behavioral;

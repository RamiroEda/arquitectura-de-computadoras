----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:23 11/25/2020 
-- Design Name: 
-- Module Name:    SP - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SP is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           push : in  STD_LOGIC;
           pull : in  STD_LOGIC;
           SP_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end SP;

architecture Behavioral of SP is
	signal res : STD_LOGIC_VECTOR (7 downto 0) := (others => '1');
begin

	process(clk, reset, push, pull)
	begin
	
		if rising_edge(clk) then
			if push = '1' then -- Se decrementa el valor de la salida en 1
				res <= std_logic_vector(unsigned(res) - 1);
			elsif pull = '1' then -- Se incrementa el valor de la salida en 1
				res <= std_logic_vector(unsigned(res) + 1);
			end if;
		end if;
	
		if reset = '1' then -- La salida regresa al ultimo registro
			res <= (others => '1');
		end if;
	end process;
	
	SP_OUT <= res;
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:07 11/25/2020 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           PC_CMD : in  STD_LOGIC_VECTOR (1 downto 0);
           PC_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           PC_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is
	signal res : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
	process (clk, reset)
	begin
	
		if rising_edge(clk) then
			if PC_CMD = "01" then -- Se incrementa 1 a la salida
				res <= std_logic_vector(unsigned(res) + 1);
			elsif PC_CMD = "10" then -- Se agrega el valor S a la salida
				res <= std_logic_vector(unsigned(res) + unsigned(S));
			elsif PC_CMD = "11" then -- La salida es PC_IN
				res <= PC_IN;
			end if;
		end if;
		
		if reset = '1' then
			res <= (others => '0');
		end if;
	
	end process;
	
	PC_OUT <= res;
end Behavioral;


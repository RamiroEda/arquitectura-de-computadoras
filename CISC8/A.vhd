----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:07:03 11/24/2020 
-- Design Name: 
-- Module Name:    A - Behavioral 
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

entity A is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           A_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           S_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           A_CMD : in  STD_LOGIC_VECTOR (1 downto 0);
           A_ALU : out  STD_LOGIC_VECTOR (7 downto 0));
end A;

architecture Behavioral of A is

begin

	process(clk, reset)
	begin

		if A_CMD = "01" then --Si es 01 entonces la salida es S_IN
			A_ALU <= S_IN;
		elsif A_CMD = "10" then --Si es 10 entonces la salida es A_IN
			A_ALU <= A_IN;
		elsif A_CMD = "11" then --Si es 11 se hace la salida 0000000
			A_ALU <= (others => '0');
		end if;
		
		if reset = '1' then --Si hay reset se hace la salida 0000000
			A_ALU <= (others => '0');
		end if;

	end process;

end Behavioral;


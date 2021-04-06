----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:51 11/25/2020 
-- Design Name: 
-- Module Name:    IR - Behavioral 
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

entity IR is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           IR_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           IR_CMD : in  STD_LOGIC;
           IR_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end IR;

architecture Behavioral of IR is

begin

	process (clk, reset, IR_CMD)
	begin
		if IR_CMD = '1' then -- Si IR_CMD es 1 el resultado es IR
			IR_OUT <= IR_IN;
		end if;
		
		if reset = '1' then -- La salida se vuelve 0
			IR_OUT <= (others => '0');
		end if;
	end process;

end Behavioral;


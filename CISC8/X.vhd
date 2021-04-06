----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:14 11/24/2020 
-- Design Name: 
-- Module Name:    X - Behavioral 
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

entity X is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           X_CMD : in  STD_LOGIC;
           X_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           N : in  STD_LOGIC_VECTOR (2 downto 0);
           X_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end X;

architecture Behavioral of X is
	-- Los registros donde almacenar los datos
	type RegBank is array ( 0 to 7 ) of std_logic_vector( 7 downto 0 );
	signal Regs: RegBank;
begin

	process (clk, reset)
	begin
		if X_CMD = '1' then -- Se agregan todos los registros consecutivos en los 8 lugares
			for i in 0 to 7 loop
				Regs(i) <= std_logic_vector(unsigned(X_IN) + to_unsigned(i, X_IN'length));
			end loop;
		end if;
		
		if reset = '1' then -- Se reinician todos los registros
			for i in 0 to 7 loop
				Regs(i)<= (others => '0');
			end loop;
		end if;
	end process;

	-- Salida en el indice N
	X_OUT <= Regs(to_integer(unsigned(N)));

end Behavioral;


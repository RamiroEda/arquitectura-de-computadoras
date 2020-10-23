----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:59 10/22/2020 
-- Design Name: 
-- Module Name:    ProgCount - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgCount is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           IncPC : in  STD_LOGIC;
           OutPC : out  STD_LOGIC_VECTOR (7 downto 0) );
end ProgCount;

architecture Behavioral of ProgCount is
	signal valor : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin
	process(clk,rst)
	begin
		-- Si RST esta en ALTO se va a limpiar el registro
		if rst = '1' then
			valor<="00000000";
		end if;
		if clk = '1' then
			-- Si INCPC esta en ALTO entonces se va a aumentar 1 en este ciclo.
			if IncPC = '1' then
				valor<= std_logic_vector( unsigned(valor) + 1 );
			end if;
		end if;
	end process;
	
	-- El valor actual del registro se manda a OUTPC
	OutPC<= valor;
end Behavioral;


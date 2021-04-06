library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    Port ( Input0 : in  STD_LOGIC_VECTOR (15 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Selection : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (15 downto 0));
end Mux;

architecture Behavioral of Mux is

begin
process(Input0,Input1,Selection)
begin
--Si selection es 0 manda la entrada 0 a la salida
	if Selection = '0' then
		Output <= Input0;
--Si selection es 1 entonces manda la entrada 1 a la salida
	else
		Output <=Input1;
	end if;
	end process;
end Behavioral;


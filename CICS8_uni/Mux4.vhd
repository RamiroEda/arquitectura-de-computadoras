library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4 is
    Port ( Input0 : in  STD_LOGIC_VECTOR (7 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Input3 : in  STD_LOGIC_VECTOR (7 downto 0);
           Selection : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux4;

architecture Behavioral of Mux4 is
begin
process (Selection,Input0,Input1,Input2,Input3)
begin
--Segun sea el Selection es lo que se mandara a la salida
	case Selection is
		when "00" => Output <=Input0;--Para el caso 00 se manda la entrada 0
		when "01" => Output <=Input1;--Para el caso 01 se manda la entrada 1
		when "10" => Output <=Input2;--Para el caso 10 se manda la entrada 2
		when "11" => Output <=Input3;--Para el caso 11 se manda la entrada 3
		when others =>--No hay otros casos
	end case;
end process;
end Behavioral;


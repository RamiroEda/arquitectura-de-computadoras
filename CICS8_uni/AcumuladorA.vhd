library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

process(clk,reset)
begin
	--Si reset es 1 limpia la salida
	if reset = '1' then
		A_ALU <= (others =>'0');
	--En el ciclo de reloj en alto
	elsif rising_edge(clk) then
	--Si es 01 manda S_IN
		IF A_CMD = "01" THEN
			A_ALU <= S_IN;
	--Si es 10 manda a la salida A_11
		ELSIF A_CMD = "10" THEN
			A_ALU <= A_IN;
	--Si es 11 manda a la salida puros 0
		ELSIF A_CMD = "11" THEN
			A_ALU <= (others =>'0');
	--Como en 00 no cambia no se agrego al codigo
		END IF;
	END IF;
end process;

end Behavioral;


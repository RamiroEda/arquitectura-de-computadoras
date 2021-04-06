library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flags is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  FLAGS_CMD : in STD_LOGIC;
           FLAGS_ALU : in  STD_LOGIC_VECTOR (4 downto 0);
           FLAGS_OUT : out  STD_LOGIC_VECTOR (4 downto 0));
end Flags;

architecture Behavioral of Flags is
signal Faux : STD_LOGIC_VECTOR(4 DOWNTO 0);
begin

process(clk, reset)
begin
	--Si el ciclo de reloj esa arriba manda a la salida lo de la entrada
	--Como no cuenta con una señal load se coloca antes del reset para evitar que si hay 1 reset mande a la salida la entrada
	--Porque si no primero limpiaria y cargaria lgo los datos a pesar de ser un reset
	if rising_edge(clk) then
		Faux <= FLAGS_ALU;	
	end if;
	--Manda 0 a la salida
	if reset = '1' then
		Faux <= (others =>'0');
	end if;
	
end process;
--Asigna lo que hay en el auxiliar a la salida
FLAGS_OUT <= Faux;
end Behavioral;


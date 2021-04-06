library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity SP is
    Port ( clk : in  STD_LOGIC;--Reloj
           reset : in  STD_LOGIC;--Reset
           push : in  STD_LOGIC;--Decremento
           pull : in  STD_LOGIC;--Incremento
           SP_OUT : out  STD_LOGIC_VECTOR (7 downto 0));--Salida
end SP;

	architecture Behavioral of SP is
		signal aux  : STD_LOGIC_VECTOR(7 downto 0);--Se usa para guardar el cambio
		begin
		process(reset,clk,push,pull,aux)
		begin
		if rising_edge(clk) then
			if push = '1' then
				aux <= aux-1;--Cuando se push es 1 entonces se le quita 1 a lo que tiene el auxiliar(la direccion decrementa 1 unidad)
			elsif pull = '1' then
				aux <= aux+1;--Cuando es pull aumenta 1 en el auxilar(osea la direccion aumenta en 1 unidad)
			end if;
		end if;

		if reset = '1' then--Con reset coloca la memoria en la ultima posicion
			aux <= "11111111";
			end if;
		end process;
			SP_OUT <= aux;--Manda lo que tiene la señal a la salida
	end Behavioral;


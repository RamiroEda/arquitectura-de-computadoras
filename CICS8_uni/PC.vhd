library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity PC is
		 Port ( clk : in  STD_LOGIC; --Reloj
				  reset : in  STD_LOGIC; --Reseteo
				  PC_CMD : in  STD_LOGIC_VECTOR (1 downto 0); --Casos
				  PC_IN : in  STD_LOGIC_VECTOR (7 downto 0);--Datos de entrada
				  S : in  STD_LOGIC_VECTOR (3 downto 0);--Datos para suma
				  PC_OUT : out  STD_LOGIC_VECTOR (7 downto 0));--Salida
	end PC;

	architecture Behavioral of PC is
	signal Aux : STD_LOGIC_VECTOR (7 downto 0) := "00000000";--Señal auxiliar para operaciones
	begin

	process(clk,reset)
	begin
	if rising_edge(clk) then--En ciclo de reloj en alto
		if PC_CMD = "01" then --Cuando el caso de PC_CMD es 01 suma una unidad.
			Aux <= Aux+1;
		elsif PC_CMD = "10" then --Cuando el caso de PC_CMD es 1o suma S
			Aux <= Aux+S;
		elsif pc_CMD = "11" then --Cuando el caso de PC_CMD es 11 reemplaza los datos por los de PC_IN
			Aux <= PC_IN;
		end if;
	end if;
	if reset = '1' then--Si es 1 resetea la señal a 0
		Aux <= "00000000";
	end if;
	end process;
	
	PC_OUT <= Aux;--Manda a la salida todo lo que hace aux fuera del proceso.

	end Behavioral;

						
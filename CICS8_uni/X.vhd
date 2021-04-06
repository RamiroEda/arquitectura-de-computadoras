library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;


entity X is
    Port ( clk : in  STD_LOGIC; --Reloj
           reset : in  STD_LOGIC; --Reseteo
           X_CMD : in  STD_LOGIC; --Señal de control
           X_IN : in  STD_LOGIC_VECTOR (7 downto 0); --Datos de entrada
           N : in  STD_LOGIC_VECTOR (2 downto 0); --Direcciòn
           X_OUT : out  STD_LOGIC_VECTOR (7 downto 0)); --Datos de salida
end X;

architecture Behavioral of X is
--Banco de registros, son 8 de tipo vector.
type RegBank is array ( 0 to 7) of std_logic_vector( 7 downto 0 );
signal Regs: RegBank;

begin
process(reset,clk)
begin
--Si el ciclo de reloj esta en alto
if rising_edge(clk) then
--Y si la señal de control es igual a 1
	if X_CMD = '1' then
	--Entonces manda a la señal Regs los datos de entrada convirtiendo en un vector de tamaño 8
        Regs(0) <= X_IN + std_logic_vector(to_unsigned(0,8));
        Regs(1) <= X_IN + std_logic_vector(to_unsigned(1,8));
        Regs(2) <= X_IN + std_logic_vector(to_unsigned(2,8));
        Regs(3) <= X_IN + std_logic_vector(to_unsigned(3,8));
        Regs(4) <= X_IN + std_logic_vector(to_unsigned(4,8));
        Regs(5) <= X_IN + std_logic_vector(to_unsigned(5,8));
        Regs(6) <= X_IN + std_logic_vector(to_unsigned(6,8));
        Regs(7) <= X_IN + std_logic_vector(to_unsigned(7,8));
		end if;
end if;

if reset = '1' then--Si reset es 1 pone todos los Regs en 0.
	Regs(7) <= "00000000";
	Regs(6) <= "00000000";
	Regs(5) <= "00000000";
	Regs(4) <= "00000000";
	Regs(3) <= "00000000";
	Regs(2) <= "00000000";
   Regs(1) <= "00000000";
	Regs(0) <= "00000000";
end if;

end process;

X_OUT <= Regs(to_integer(unsigned(N)));--Manda a la salida lo que tienen los registros segun sea N


end Behavioral;


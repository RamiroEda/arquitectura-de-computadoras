----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:37:35 10/19/2020 
-- Design Name: 
-- Module Name:    Registro - Behavioral 
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

entity Registro is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load : in  STD_LOGIC;
           E : in  STD_LOGIC_VECTOR(7 downto 0);
           S : out  STD_LOGIC_VECTOR(7 downto 0));
end Registro;

architecture Behavioral of Registro is
	--Se va a guardar el valor actual del registro en una señal
	signal valor : STD_LOGIC_VECTOR(7 downto 0);
begin
	--Proceso con variable de sensibilidad en CLK.
	--Cuando el reloj cambia de valor se ejecuta el proceso que evalua el LOAD y el RESET.
	process(clk)
	begin
		--Si el LOAD esta en ALTO se va a cambiar el valor del registro al valor de la entrada.
		if load = '1' then
			valor <= E;
		end if;

		--Si el RESET esta en ALTO se va a borrar el contenido del registro.
		if reset = '1' then
			valor <= "00000000";
		end if;

	end process;

	--El valor de la salida es el valor del registro
	S <= valor;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:38 11/24/2020 
-- Design Name: 
-- Module Name:    Flags - Behavioral 
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

entity Flags is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           FLAGS_ALU : in  STD_LOGIC_VECTOR (4 downto 0);
           FLAGS_OUT : out  STD_LOGIC_VECTOR (4 downto 0));
end Flags;

architecture Behavioral of Flags is
	--Se va a guardar el valor actual del registro en una señal
	signal valor : STD_LOGIC_VECTOR(4 downto 0);
begin
	--Proceso con variable de sensibilidad en CLK y reset.
	process(clk, reset)
	begin
		--Se va a cambiar el valor del registro al valor de la entrada.
		valor <= FLAGS_ALU;

		--Si el RESET esta en ALTO se va a borrar el contenido del registro.
		if reset = '1' then
			valor <= (others => '0');
		end if;

	end process;

	--El valor de la salida es el valor del registro
	FLAGS_OUT <= valor;

end Behavioral;

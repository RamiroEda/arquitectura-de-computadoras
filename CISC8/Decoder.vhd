----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:13:15 12/04/2020 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any -ilin- primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder is
    Port ( I_DEC : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_DEC : out  STD_LOGIC_VECTOR (5 downto 0);
           N_DEC : out  STD_LOGIC_VECTOR (2 downto 0);
           S_DEC : out  STD_LOGIC_VECTOR (3 downto 0);
           ACC_DEC : out  STD_LOGIC);
end Decoder;

architecture Behavioral of Decoder is
	signal codigoOperacion : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal codigoExtendido : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal S : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal N : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal ACC : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal ShiftLeftN : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
	codigoOperacion <= I_DEC(7 downto 4); -- Codigo de operacion separado de la entrada
	codigoExtendido <= I_DEC(3 downto 0); -- Codigo extendido separado de la entrada
	
	ACC(0) <= I_DEC(0); -- El ACC es el bit menos significativo
	
	S(3 downto 0) <= codigoExtendido when ((codigoOperacion >= "0111") and (codigoOperacion <= "1100")) else "0000"; -- S es el codigo extendido desde 0111 hasta 1100
									
									
	N(2 downto 0) <= codigoExtendido(3 downto 1) 					when (((codigoOperacion >= "0001") and (codigoOperacion <= "0011")) -- En este rango se usan los 3 bits del codigo extendido
																						or ((codigoOperacion >= "1101") and (codigoOperacion <= "1110"))) else 
							codigoExtendido(3 downto 1) and "011" 		when ((codigoOperacion >= "0100") and (codigoOperacion <= "0101")) else "000"; -- En este rango se usan solo 2 bits del codigo extendido
									
	ShiftLeftN <= std_logic_vector(shift_left(unsigned(N), 1)); -- Se recorre 1 bit hacia la izquierda para concatenar en la siguiente parte con un OR
	
	OP_DEC <= "000000" when (I_DEC = "00000000") else			-- Todos los codigos de operacion con N y S concatenados donde se necesita
					"000000" when (I_DEC = "00000001") else
					"000001" when (I_DEC = "00000010") else
					"000001" when (I_DEC = "00000011") else
					"000010" when (I_DEC = "00000100") else
					"000010" when (I_DEC = "00000101") else
					"000011" when (I_DEC = "00000110") else
					"000011" when (I_DEC = "00000111") else
					"000100" when (I_DEC = "00001000") else
					"000100" when (I_DEC = "00001001") else
					"000101" when (I_DEC = "00001010") else
					"000101" when (I_DEC = "00001011") else
					"000110" when (I_DEC = ("00001100" or ACC)) else
					"000111" when (I_DEC = ("00001110" or ACC)) else
					"001000" when (I_DEC = ("00010000" or ShiftLeftN)) else
					"001001" when (I_DEC = ("00010001" or ShiftLeftN)) else
					"001010" when (I_DEC = ("00100000" or ShiftLeftN)) else
					"001011" when (I_DEC = ("00100001" or ShiftLeftN)) else
					"001100" when (I_DEC = ("00110000" or ShiftLeftN)) else
					"001101" when (I_DEC = ("00110001" or ShiftLeftN)) else
					"001110" when (I_DEC = ("01000000" or ShiftLeftN)) else
					"001111" when (I_DEC = ("01000001" or ShiftLeftN)) else
					"010000" when (I_DEC = ("01001000" or ShiftLeftN)) else
					"010001" when (I_DEC = ("01001001" or ShiftLeftN)) else
					"010010" when (I_DEC = ("01010000" or ShiftLeftN)) else
					"010011" when (I_DEC = ("01010001" or ShiftLeftN)) else
					"010100" when (I_DEC = ("01011000" or ShiftLeftN)) else
					"010101" when (I_DEC = ("01011001" or ShiftLeftN)) else
					"010110" when (I_DEC = "01100000") else
					"010111" when (I_DEC = "01100001") else
					"011000" when (I_DEC = "01100010") else
					"011001" when (I_DEC = "01100011") else
					"011010" when (I_DEC = "01100100") else
					"011011" when (I_DEC = "01100101") else
					"011100" when (I_DEC = "01100110") else
					"011101" when (I_DEC = "01100111") else
					"011110" when (I_DEC = "01101000") else
					"011111" when (I_DEC = "01101001") else
					"100000" when (I_DEC = "01101010") else
					"100001" when (I_DEC = "01101011") else
					"100010" when (I_DEC = "01101100") else
					"100011" when (I_DEC = "01101101") else
					"100100" when (I_DEC = "01101110") else
					"100101" when (I_DEC = "01101111") else
					"100110" when (I_DEC = ("01110000" or S)) else
					"100111" when (I_DEC = ("10000000" or S)) else
					"101000" when (I_DEC = ("10010000" or S)) else
					"101001" when (I_DEC = ("10100000" or S)) else
					"101010" when (I_DEC = ("10110000" or S)) else
					"101011" when (I_DEC = ("11000000" or S)) else
					"101100" when (I_DEC = ("11010000" or ShiftLeftN)) else
					"101101" when (I_DEC = ("11010001" or ShiftLeftN)) else
					"101110" when (I_DEC = ("11100000" or ShiftLeftN)) else
					"101111" when (I_DEC = ("11100001" or ShiftLeftN)) else
					"110000" when (I_DEC = "11110000") else
					"110001" when (I_DEC = "11110001") else
					"110010" when (I_DEC = "11110010") else
					"110011" when (I_DEC = "11110011") else
					"110100" when (I_DEC = "11110100") else
					"110101" when (I_DEC = "11110101") else
					"110110" when (I_DEC = "11110110") else
					"110111" when (I_DEC = "11110111") else
					"111000" when (I_DEC = "11111000") else
					"111001" when (I_DEC = "11111001") else
					"111010" when (I_DEC = "11111010") else
					"111011" when (I_DEC = "11111011") else
					"111100" when (I_DEC = "11111100") else
					"111101" when (I_DEC = "11111101") else
					"111110" when (I_DEC = "11111110") else
					"111111" when (I_DEC = "11111111") else
					"000000";
					
					
	N_DEC <= N(2 downto 0); --Salida de N de 8 a 3 bits
	S_DEC <= S(3 downto 0); -- Salida de S de 8 a 4 bits
	ACC_DEC <= ACC(0); -- Salida de ACC de 8 a 1 bit
end Behavioral;


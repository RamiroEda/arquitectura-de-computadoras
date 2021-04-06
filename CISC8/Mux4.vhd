----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:46 11/25/2020 
-- Design Name: 
-- Module Name:    Mux4 - Behavioral 
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

	Output <= 	Input0 when (Selection = "00") else -- Cuando es 00 la salida es In0
					Input1 when (Selection = "01") else -- Cuando es 01 la salida es In1
					Input2 when (Selection = "10") else -- Cuando es 10 la salida es In2
					Input3 when (Selection = "11"); -- Cuando es 11 la salida es In3

end Behavioral;


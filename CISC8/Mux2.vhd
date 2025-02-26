----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:14:28 11/25/2020 
-- Design Name: 
-- Module Name:    Mux2 - Behavioral 
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

entity Mux2 is
	 Generic (width : integer := 7);
    Port ( Input0 : in  STD_LOGIC_VECTOR (width downto 0);
           Input1 : in  STD_LOGIC_VECTOR (width downto 0);
           Selection : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (width downto 0));
end Mux2;

architecture Behavioral of Mux2 is

begin
	
	Output <= Input1 when (Selection = '1') else Input0; -- Si es 1 la salida es In1, si es 0 la salida es In0

end Behavioral;


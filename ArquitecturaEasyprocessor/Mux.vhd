----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:45 11/19/2020 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
    Port ( Results : in  STD_LOGIC_VECTOR (7 downto 0);
           DataOut : in  STD_LOGIC_VECTOR (7 downto 0);
			  LoadMem : in  STD_LOGIC;
           DataWrite : out STD_LOGIC_VECTOR (7 downto 0));
end Mux;

architecture Behavioral of Mux is

begin

	DataWrite <= DataOut when (LoadMem = '1') else Results;

end Behavioral;


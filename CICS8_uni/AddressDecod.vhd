----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:07:38 10/17/2018 
-- Design Name: 
-- Module Name:    AddressDecod - Behavioral 
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

entity AddressDecod is
    Port ( address : in  STD_LOGIC_VECTOR (7 downto 0);
			  ME : out  STD_LOGIC;
           IE : out  STD_LOGIC;
           OE : out  STD_LOGIC);
end AddressDecod;

architecture Behavioral of AddressDecod is

begin
	process (address)                                                
	begin
		if address = X"80" then
			ME <= '0';
			IE <= '1';
			OE <= '0';
		elsif address = X"81" then
			ME <= '0';
			IE <= '0';
			OE <= '1';
		else
			ME <= '1';
			IE <= '0';
			OE <= '0';
		end if;
	end process;
end Behavioral;

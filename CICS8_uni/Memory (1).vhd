----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:00 09/19/2018 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
    port (clk : in STD_LOGIC;
          DATA_EN : in STD_LOGIC;
			 DATA_WE : in STD_LOGIC;
          DATA_A : in STD_LOGIC_VECTOR (7 downto 0);
			 DATA_DI : in STD_LOGIC_VECTOR (7 downto 0);
          DATA_DO : out STD_LOGIC_VECTOR(7 downto 0));
end Memory;


architecture Behavioral of Memory is
type ram_type is array (0 to 2**(8)-1) of STD_LOGIC_VECTOR (7 downto 0);
	impure function makeRAM (PROGRAMA : in string) return ram_type is                                                   
		FILE Program : text is in "PROGRAM.MIF";                       
		variable L : line;                                 
		variable MyRAM : ram_type;
	begin
		for I in ram_type'range loop
			readline (Program, L);
			read (L, MyRAM(I));
		end loop;
	return MyRAM;
	end function;

signal MyRAM : ram_type := makeRAM("PROGRAM.MIF");

begin
	process (clk)                                                
	begin                                                        
		if  rising_edge(clk) then
			if DATA_EN = '1' then
				if DATA_WE = '1' then
					MyRAM(to_integer(unsigned(Data_a))) <= DATA_DI;
				end if;
				DATA_DO <= MyRAM(to_integer(unsigned(DATA_A)));
			end if;
		end if;                                                      
    end process;	 
end Behavioral;
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
    Port ( Address : in  STD_LOGIC_VECTOR (7 downto 0);
           DataMem : out  STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is
	type rom_type is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
	impure function makeROM (PROGRAMA : in string) return rom_type is                                                   
		FILE Program : text is in "PROGRAM.MIF";                      
		variable L : line;                                 
		variable IROM : rom_type;
	begin
		for I in rom_type'range loop
			readline (Program, L);
			read (L, IROM(I));
		end loop;
	return IROM;
	end function;
	
	signal IROM : rom_type := makeROM("PROGRAM.MIF");

begin

	DataMem <= IROM(to_integer(unsigned(Address(7 downto 0))));

end Behavioral;

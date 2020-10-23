----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:54 10/23/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Operate : in  STD_LOGIC;
           Operation : in  STD_LOGIC_VECTOR (1 downto 0);
           Result : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
	
begin
	process(Operate, Operation, A, B)
	begin
		if Operate = '1' then
			--Si OPERATE esta en ALTO entonces va a realizar la operacion
		
			--No me deja porque me pide el VHDL 2008 :c
			--Result <=	std_logic_vector(unsigned(A)+unsigned(B)) when Operation = "00" else
			--				std_logic_vector(unsigned(A)-unsigned(B)) when Operation = "01" else
			--				(A and B) 											when Operation = "10" else
			--				(A or B) 											when Operation = "11";
			
			
			if Operation = "00" then -- Suma
				Result<= std_logic_vector(unsigned(A)+unsigned(B));
			elsif Operation = "01" then -- Resta
				Result<= std_logic_vector(unsigned(A)-unsigned(B));
			elsif Operation = "10" then -- AND
				Result<= A and B;
			elsif Operation = "11" then -- OR
				Result<= A or B;
			end if;
		else
			-- Si OPERATE esta en BAJO entonces Result es A
			Result <= A;
		end if;
	end process;
end Behavioral;


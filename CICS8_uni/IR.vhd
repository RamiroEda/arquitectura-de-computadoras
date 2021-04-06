library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           IR_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           IR_CMD : in  STD_LOGIC;
           IR_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end IR;

architecture Behavioral of IR is

begin

process(clk,reset)
begin
--Cuando reset esta en 1 limpia la salida con 0's
if reset = '1' then
	IR_OUT <= (others =>'0');

--Si IR_CMD esta en 1 manda la entrada a la salida
elsif IR_CMD = '1' then
	IR_OUT <= IR_IN;
end if;
end process;
end Behavioral;


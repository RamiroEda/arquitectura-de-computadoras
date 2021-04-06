----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:39:22 09/16/2016 
-- Design Name: 
-- Module Name:    latch - Behavioral 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InterruptHandler is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  irq : in  STD_LOGIC;
			  irq_end : in STD_LOGIC;
			  irq_out : out  STD_LOGIC);
end InterruptHandler;

architecture Behavioral of InterruptHandler is
	constant counter_size  :  integer := 1;
	signal flipflops   : STD_LOGIC_VECTOR(1 DOWNTO 0); --input flip flops
	signal counter_set : STD_LOGIC;                    --sync reset to zero
	signal counter_out : STD_LOGIC_VECTOR(counter_size DOWNTO 0) := (OTHERS => '0'); --counter output
	signal irq_clean : STD_LOGIC;
	type state_type is (s0,s1,s2); --type for State Machine
	signal current_state,next_state: state_type; --current State and next State
begin
	
	counter_set <= flipflops(0) xor flipflops(1);   --determine when to start/reset counter
  
	process(clk, reset, irq)
	begin
		if reset = '1' then
			irq_clean <= '0';
			counter_out <= (others => '0');
			flipflops <= "00";
		elsif rising_edge(clk) then
			flipflops(0) <= irq;
			flipflops(1) <= flipflops(0);
			if(counter_set = '1') then                  --reset counter because input is changing
				counter_out <= (others => '0');
			elsif(counter_out(counter_size) = '0') then --stable input time is not yet met
				counter_out <= std_logic_vector(unsigned(counter_out) + 1);
			else                                        --stable input time is met
				irq_clean <= flipflops(1);
			end if;
		end if;
	end process;
	
	process (clk,reset)
	begin
		if (reset='1') then
			current_state <= s0; --initial state.
		elsif (rising_edge(clk)) then
			current_state <= next_state; --state change.
		end if;
	end process;

	process (current_state, irq_clean, irq_end)
	begin
		case current_state is
			when s0 => --when current stste is "s0"
				irq_out <= '0';
				if irq_clean = '1' then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
			when s1 => --when current stste is "s1"
				irq_out <= '1';
				if irq_end = '1' then
					next_state <= s2;
				else
					next_state <= s1;
				end if;
			when s2 => --when current stste is "s2"
				irq_out <= '0';
				if irq_clean = '1' then
					next_state <= s2;
				else
					next_state <= s0;
				end if;
			end case;
	end process;	
	
end Behavioral;

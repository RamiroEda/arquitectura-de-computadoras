
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CISC8_TB IS
END CISC8_TB;
 
ARCHITECTURE behavior OF CISC8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT CISC8
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         irq : IN  std_logic;
         swbtt : IN  std_logic_vector(7 downto 0);
         leds : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal irq : std_logic := '0';
   signal swbtt : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal leds : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CISC8 PORT MAP (
          clk => clk,
          reset => reset,
          irq => irq,
          swbtt => swbtt,
          leds => leds
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;
		reset <= '0';
		
		wait for 700 ns;
		
		irq <= '1';
		swbtt <= "10100101";

      wait for clk_period*20;
		
		irq <= '0';
		
      -- insert stimulus here 

      wait;
   end process;

END;

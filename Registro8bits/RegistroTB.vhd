LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY RegistroTB IS
END RegistroTB;
 
ARCHITECTURE behavior OF RegistroTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registro
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         E : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
   signal E : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registro PORT MAP (
          clk => clk,
          reset => reset,
          load => load,
          E => E,
          S => S
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
		variable error_cnt : integer := 0;
		variable test_cnt : integer := 0;
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';

      wait for 50 ns;
		
		reset <= '0';

		assert  S = X"00" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 0 " severity ERROR;
		if (S /= X"00") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		     

      wait for 25 ns;
		
		assert  S = X"00" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 0 " severity ERROR;
		if (S /= X"00") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		wait for 25 ns;		
		
		E <= "10101100";
		
		assert  S = X"00" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 0 " severity ERROR;
		if (S /= X"00") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		load <= '1';
		
		assert  S = X"00" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 0 " severity ERROR;
		if (S /= X"00") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "11011101";
		
		assert  S = X"AC" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 172 " severity ERROR;
		if (S /= X"AC") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "11111111";
		
		assert  S = X"DD" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 221 " severity ERROR;
		if (S /= X"DD") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		load <= '0';
		E <= "11000011";
		
		assert  S = X"FF" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 255 " severity ERROR;
		if (S /= X"FF") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "11010011";
		
		assert  S = X"FF" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 255 " severity ERROR;
		if (S /= X"FF") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
			
		E <= "00001100";
		
		assert  S = X"FF" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 255 " severity ERROR;
		if (S /= X"FF") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "00100011";
		load <= '1';
		
		assert  S = X"FF" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 255 " severity ERROR;
		if (S /= X"FF") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "11100011";
		
		assert  S = X"23" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 35 " severity ERROR;
		if (S /= X"23") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "00001111";
		load <= '0';
		
		assert  S = X"E3" report "El registro no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 227 " severity ERROR;
		if (S /= X"E3") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
		E <= "11010100";
		
		assert  S = X"E3" report "El registro S no cambia. Valor de S = " & integer'image(to_integer(unsigned(S))) & ", valor esperado de S = 227 " severity ERROR;
		if (S /= X"E3") then
			error_cnt := error_cnt +1;
		end if;
		test_cnt := test_cnt +1;
		
		wait for clk_period;
		
--		cs <= "01011";
--		
--		assert  a = X"0" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 0 " severity ERROR;
--		if (a /= X"0") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "01111";
--		
--		assert  a = X"0" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 0 " severity ERROR;
--		if (a /= X"0") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10000";
--		
--		assert  a = X"0" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 0 " severity ERROR;
--		if (a /= X"0") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10001";
--		
--		assert  a = X"0" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 0 " severity ERROR;
--		if (a /= X"0") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10010";
--		datoin <= "1101";
--		
--		assert  a = X"A" report "El registro A carga dato. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10011";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10100";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10101";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10110";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "10111";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11000";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11001";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11010";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11011";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11100";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11101";
--		
--		assert  a = X"A" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 10 " severity ERROR;
--		if (a /= X"A") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11110";
--		
--		assert  a = X"D" report "El registro A carga dato. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 13 " severity ERROR;
--		if (a /= X"D") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--		
--		wait for clk_period;
--		
--		cs <= "11111";
--		
--		assert  a = X"D" report "El registro A no cambia. Valor de a = " & integer'image(to_integer(unsigned(a))) & ", valor esperado de a = 13 " severity ERROR;
--		if (a /= X"D") then
--			error_cnt := error_cnt +1;
--		end if;
--		test_cnt := test_cnt +1;
--
--      wait for clk_period*10;

      -- insert stimulus here 
		
		
		report CR & LF & "Número de pruebas realizadas: " & integer'image(test_cnt) & CR & LF & "Número de pruebas no superadas: " & integer'image(error_cnt) & CR & LF severity NOTE;
      wait;
   end process;

END;

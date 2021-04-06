library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LogControl is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           DataMem : in  STD_LOGIC_VECTOR (7 downto 0);
			  DataOut: out  STD_LOGIC_VECTOR (7 downto 0);
           LoadA : out  STD_LOGIC;
           LoadB : out  STD_LOGIC;
           LoadResult : out  STD_LOGIC;
           LoadMAR : out  STD_LOGIC;
           IncPC : out  STD_LOGIC;
           LoadMem : out  STD_LOGIC;
           Operate : out  STD_LOGIC;
           Operation : out  STD_LOGIC_VECTOR (1 downto 0);
           SelReadReg : out  STD_LOGIC_VECTOR (1 downto 0);
           SelWriteReg : out  STD_LOGIC_VECTOR (1 downto 0);
           WriteEnable: out  STD_LOGIC);
end LogControl;

architecture Behavioral of LogControl is

	type state_type is ( ResetPC, Fetch, Decode, PCOperation, IncrementPC );
	signal State : State_type;
	type Operation_type is ( OPAdd, OPSub, OPAnd, OPor, OPLoad, OPStore, OPStorex );
	signal Oper : Operation_type;
	signal IR : std_logic_vector( 7 downto 0 );
	type Inter_type is ( onein, twoin, threein, fourin );
	signal Inter : Inter_type;

begin

	process (clk, rst )
	begin
		if rst = '1' then
			state <= Fetch;
			Inter <= onein;
			LoadMem <= '1'; LoadA <= '0';
			LoadB <= '0'; LoadResult <= '0';
			IncPC <= '0'; Operate <= '0';
			WriteEnable<= '0'; LoadMAR <= '0';
			Operation <= "00"; SelReadReg <= "00";
			SelWriteReg <= "00";
			IR <= (others => '0');
			DataOut <= (others => '0');
		else
			if rising_edge(clk) then
				LoadMem <= '1'; LoadA <= '0';
				LoadB <= '0'; LoadResult <= '0';
				IncPC <= '0'; Operate <= '0';
				WriteEnable<= '0'; LoadMAR <= '0';
				Operation <= "00"; SelReadReg <= "00";
				SelWriteReg <= "00";
				case State is
					when Fetch =>
						LoadMem <= '0'; LoadA <= '0';
						LoadB <= '0'; LoadResult <= '0';
						IncPC <= '0'; Operate <= '0';
						WriteEnable<= '0'; LoadMAR <= '0';
						state <= Decode;
						IR <= DataMem;
					when Decode =>
						LoadMem <= '0'; LoadA <= '0';
						LoadB <= '0'; LoadResult <= '0';
						IncPC <= '0'; Operate <= '0';
						WriteEnable<= '0'; LoadMAR <= '0';
						case IR( 7 downto 5 ) is
							when "000" =>
								Oper <= OPAdd;
							when "001" =>
								Oper <= OPAdd;
							when "010" =>
								Oper <= OPSub;
							when "011" =>
								Oper <= OPSub;
							when "100" =>
								Oper <= OPLoad;
							when "101" =>
								Oper <= OPLoad;
							when "110" =>
								Oper <= OPStore;
							when "111" =>
								Oper <= OPStorex;
							when others =>
						end case;
						State <= PCOperation;
						Inter <= onein;
					when PCOperation =>
						case Oper is
							when OPAdd=>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '1';
								IncPC <= '0'; Operate <= '1';
								WriteEnable<= '0'; LoadMAR <= '0';
								Operation <= "00";
								State <= IncrementPC;
							when OPSub=>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '1';
								IncPC <= '0'; Operate <= '1';
								WriteEnable<= '0'; LoadMAR <= '0';
								Operation <= "01";
								State <= IncrementPC;
							when OPLoad =>
								LoadMem <= '0'; LoadResult <= '0';
								IncPC <= '0'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '0';
								SelReadReg <= IR( 1 downto 0 );
								if IR( 5 ) = '1' then
									LoadB <= '1';
									LoadA <= '0';
								else
									LoadB <= '0';
									LoadA <= '1';
								end if;
								State <= IncrementPC;
							when OPStore=>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '0';
								IncPC <= '0'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '0';
								case Inter is
									when onein =>
										SelWriteReg <= IR( 1 downto 0 );
										WriteEnable<= '1';
										Inter <= twoin;
									when twoin =>
										WriteEnable<= '0';
										State <= IncrementPC;
										Inter <= onein;
									when others =>
										Inter <= onein;
								end case;
							when OPStorex=>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '0';
								IncPC <= '0'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '0';
								case Inter is
									when onein =>
										LoadMem <= '0'; LoadA <= '0';
										LoadB <= '0'; LoadResult <= '0';
										IncPC <= '1'; Operate <= '0';
										WriteEnable<= '0'; LoadMAR <= '0';
										Inter <= twoin;
									when twoin =>
										LoadMAR <= '1';
										Inter <= threein;
									when threein =>
										Inter <= fourin;
									when others =>
										DataOut <= DataMem;
										SelWriteReg <= IR( 1 downto 0 );
										WriteEnable<= '1';
										LoadMem <= '1';--
										State <= IncrementPC;
										Inter <= onein;
								end case;
						end case;
						
					when IncrementPC =>
						case Inter is
							when onein =>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '0';
								IncPC <= '1'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '0';
								Inter <= twoin;
							when twoin =>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '0';
								IncPC <= '0'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '1';
								Inter <= threein;
							when others =>
								LoadMem <= '0'; LoadA <= '0';
								LoadB <= '0'; LoadResult <= '0';
								IncPC <= '0'; Operate <= '0';
								WriteEnable<= '0'; LoadMAR <= '0';
								Inter <= onein;
								state <= Fetch;
						end case;
				end case;
			end if;
		end if;
	end Process;

end Behavioral;


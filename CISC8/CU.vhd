library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity CU is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           OP_CU : in  STD_LOGIC_VECTOR (5 downto 0);
           FLAGS_CU : in  STD_LOGIC_VECTOR (4 downto 0);
           IRQ_CU : in  STD_LOGIC;
           ACC_CU : in  STD_LOGIC;
           A_CMD : out  STD_LOGIC_VECTOR (1 downto 0);
           B_CMD : out  STD_LOGIC_VECTOR (1 downto 0);
           FLAGS_CMD : out STD_LOGIC;
           X_CMD : out  STD_LOGIC;
           PC_CMD : out  STD_LOGIC_VECTOR (1 downto 0);
           IR_CMD : out  STD_LOGIC;
           DATA_WE : out  STD_LOGIC;
           push : out  STD_LOGIC;
           pull : out  STD_LOGIC;
           MUX_DATA : out  STD_LOGIC_VECTOR (1 downto 0);
           MUX_ADDRESS : out  STD_LOGIC_VECTOR (1 downto 0);
           MUX_INT : out  STD_LOGIC;
           MUX_FLG : out  STD_LOGIC;
           IRQ_END : out STD_LOGIC);
end CU;

architecture Behavioral of CU is

--Declaramos estados para los posibles estados de la maquina
  type estados is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22);
--Signal para indicar el estado actual y el siguiente
  signal estado, estadoSiguiente : estados; 
  
begin

--Proceso para maquina de estados
process(OP_CU, FLAGS_CU, IRQ_CU, ACC_CU, estado, estadoSiguiente)
begin
--Se inicializan en 0
	A_CMD <= "00";
	B_CMD <= "00";
	FLAGS_CMD <= '0';
	X_CMD <= '0';
	PC_CMD <= "00";
	IR_CMD <= '0';
	DATA_WE <= '0';
	push <= '0';
	pull <= '0';
	MUX_DATA <= "00";
	MUX_ADDRESS <= "00";
	MUX_INT <= '0';
	MUX_FLG <= '0';
	IRQ_END <= '0';
					
case(estadoSiguiente) is 
	  when S0 => --Estado 0
	  
		 if IRQ_CU = '0' or FLAGS_CU(4) = '0' then
			 IR_CMD <= '1';
			 PC_CMD <= "01";
			 estado <= S1;
		 elsif IRQ_CU = '1' and FLAGS_CU(4) = '1' then
			 MUX_ADDRESS <= "01";
			 DATA_WE <= '1';
			 push <= '1';
			 estado <= S20;			 
		 end if;

	  when S1 => --Estado 1

		 if OP_CU = 24 or OP_CU = 25 or OP_CU = 26 or OP_CU = 27 or OP_CU = 28 or OP_CU = 29 then
			 FLAGS_CMD <= '1';
			 estado <= S0;			 
		 elsif OP_CU >= 0 and OP_CU <= 17 and ACC_CU = '0' then
			 A_CMD <= "01";
			 estado <= S0;
		 elsif OP_CU >= 0 and OP_CU <= 17 and ACC_CU = '1' then
			 B_CMD <= "01";
			 estado <= S0;
		 elsif ((OP_CU >= 18 and OP_CU <= 23) or (OP_CU >= 30 and OP_CU <= 37)) and ACC_CU = '0' then
			 A_CMD <= "01";
			 FLAGS_CMD <= '1';
			 estado <= S0;
		 elsif ((OP_CU >= 18 and OP_CU <= 23) or (OP_CU >= 30 and OP_CU <= 37)) and ACC_CU = '1' then
			 B_CMD <= "01";
			 FLAGS_CMD <= '1';
			 estado <= S0;
		  elsif OP_CU = "110101" then
			 estado <= S0;	
		  elsif OP_CU = "110110" then
			 A_CMD <= "11";
			 estado <= S0;				 
		  elsif OP_CU = "110111" then
			 B_CMD <= "11";
			 estado <= S0;	
		  elsif OP_CU = "101010" and FLAGS_CU(0) = '0' then
			 estado <= S0;	
		  elsif OP_CU = "101011" and FLAGS_CU(1) = '0' then
			 estado <= S0;		
		  elsif OP_CU >= 38 and OP_CU <= 41 then
			 FLAGS_CMD <= '1';	
			 estado <= S2;					 
		  elsif OP_CU = "101010" and FLAGS_CU(0) = '1' then
			 PC_CMD <= "10";
			 estado <= S3;
		  elsif OP_CU = "101011" and FLAGS_CU(1) = '1' then
			 PC_CMD <= "10";
			 estado <= S3;
		  elsif OP_CU = "101110" then
			 MUX_ADDRESS <= "10";
			 DATA_WE  <= '1';	
			 estado <= S3;
		  elsif OP_CU = "101111" then
			 MUX_ADDRESS <= "10";
			 MUX_DATA <= "01";
			 DATA_WE  <= '1';	
			 estado <= S3;
		  elsif OP_CU = "111000" then
			 MUX_ADDRESS <= "01";
			 DATA_WE  <= '1';	
			 push <= '1';
			 estado <= S3;
		  elsif OP_CU = "111001" then
			 MUX_ADDRESS <= "01";
			 DATA_WE  <= '1';	
			 MUX_DATA <= "01";
			 push <= '1';
			 estado <= S3;
		  elsif OP_CU = "101100" or OP_CU = "101101" then
			 MUX_ADDRESS <= "10";
			 estado <= S4;
		  elsif OP_CU = "110000" or OP_CU = "110001" then
			 PC_CMD <= "01";
			 estado <= S5; 
		  elsif OP_CU = "110010" then
			 PC_CMD <= "01";
			 estado <= S6;
		  elsif OP_CU = "110011" or OP_CU = "110100" then
			 PC_CMD <= "01";
			 estado <= S8;
		  elsif OP_CU = "111010" or OP_CU = "111011" then
			 pull <= '1';
			 estado <= S9;
		  elsif OP_CU = "111100" then
			 pull <= '1';
			 estado <= S10;
		  elsif OP_CU = "111101" then
			 pull <= '1';
			 estado <= S15;
		  elsif OP_CU = "111110" then
			 MUX_ADDRESS <= "01";
			 MUX_DATA <= "10";
			 DATA_WE <= '1';
			 push <= '1';
			 estado <= S18;
		  elsif OP_CU = "111111" then
			 estado <= S19;
		 end if;

	  when S2 => --Estado 2
	  
		 if OP_CU = "100110" and FLAGS_CU(2) = '0' then 
			 estado <= S0;
		 elsif OP_CU = "100111" and FLAGS_CU(2) = '1' then
			 estado <= S0;
		 elsif OP_CU = "101000" and FLAGS_CU(3) = '0' then
			 estado <= S0;
		 elsif OP_CU = "101001" and (FLAGS_CU(2) /= '0' or FLAGS_CU(3) /= '0') then
			 estado <= S0;
		 elsif OP_CU = "100110" and FLAGS_CU(2) = '1' then
			 PC_CMD <= "10";
			 estado <= S3;
		 elsif OP_CU = "100111" and FLAGS_CU(2) = '0' then
			 PC_CMD <= "10";
			 estado <= S3;
		 elsif OP_CU = "101000" and FLAGS_CU(3) = '1' then
			 PC_CMD <= "10";
			 estado <= S3;
		 elsif OP_CU = "101001" and FLAGS_CU(2) = '0' and FLAGS_CU(3) = '0' then
			 PC_CMD <= "10";
			 estado <= S3;
		 end if;
		 
		 
	  when S3 => --Estado 3 pasa al estado 0
	  
		 estado <= S0;
		 
	  when S4 => --Estado 4
	  
		 if ACC_CU = '1' then
			B_CMD <= "10";
			estado <= S0;
		 elsif ACC_CU = '0' then
			A_CMD <= "10";
			estado <= S0;
		 end if;
		 
	  when S5 => --Estado 5
	  
		  MUX_ADDRESS <= "11";
		  estado <= S4;
		  
	  when S6 =>   --Estado 6
	 
		  MUX_ADDRESS <= "11";
		  estado <= S7;
		  
	  when S7 =>	--Estado 7

		  X_CMD  <= '1';
		  estado <= S0;
		  
	  when S8 => --Estado 8
  
		  if ACC_CU = '0' then	      
				MUX_ADDRESS <= "11";
				DATA_WE <= '1';
				MUX_DATA <= "01";
				estado <= S3;
		  elsif ACC_CU = '1' then
				MUX_ADDRESS <= "11";
				DATA_WE <= '1';
				estado <= S3;
		  end if;
		  
	  when S9 => --Estado 9
			 
			 MUX_ADDRESS <= "01";
			 estado <= S4;
			 
	  when S10 => --Estado 10
	  	 
			 MUX_ADDRESS <= "01";
			 pull <= '1';
			 estado <= S11;
			 
	  when S11 =>	--Estado 10
	 	 
			 MUX_ADDRESS <= "01";
			 pull <= '1';
			 MUX_FLG <= '1';
			 FLAGS_CMD <= '1';
			 estado <= S12;
			 
	  when S12 => --Estado 12
			 
			 MUX_ADDRESS  <= "01";
			 pull <= '1';
			 PC_CMD <= "11";
			 estado <= S13;
			 
	  when S13 =>	--Estado 13
			 
			 MUX_ADDRESS  <= "01";
			 B_CMD  <= "10";
			 estado <= S14;
			 
	  when S14 => --Estado 14
			 
			 A_CMD  <= "10";
			 estado <= S0;

			 
	  when S15 =>	--Estado 15
			 
			 MUX_ADDRESS  <= "01";
			 estado <= S16;
			 
	  when S16 => --Estado 16
			 
			 PC_CMD   <= "11";
			 estado <= S17;
			 
	  when S17 =>	--Estado 17 
			 
			 PC_CMD   <= "01";
			 estado <= S3;
			 
	  when S18 => --Estado 18
			 estado <= S19;
			 
	  when S19 =>	--Estado 19
			 
			 PC_CMD   <= "11";
			 estado <= S3;
			 
	  when S20 => --Estado 20
			 
			 MUX_ADDRESS   <= "01";
			 MUX_DATA <= "01";
			 DATA_WE <=  '1';
			 push <= '1';
			 estado <= S21;
			 
	  when S21 =>	--Estado 21
			 
			 MUX_ADDRESS   <= "01";
			 MUX_DATA <= "10";
			 DATA_WE <=  '1';
			 push <= '1';
			 PC_CMD <= "11";
			 MUX_INT <= '1';
			 estado <= S22;
			 
	  when S22 => --Estado 22
	  
			 IRQ_END <= '1';
			 IR_CMD <= '1';
			 MUX_ADDRESS   <= "01";
			 MUX_DATA <= "11";
			 DATA_WE <=  '1';
			 push <= '1';
			 estado <= S3;
			 when others => null; 

end case; 

end process;

--Proceso para los ciclos de reloj
	process(clk, reset)
	begin
	  if clk'event and clk='1' then 
			if reset = '1' then 
				 estadoSiguiente <= S0; 
			else 
				 estadoSiguiente <= estado; 
			end if; 
		end if; 

end process;
end Behavioral; 
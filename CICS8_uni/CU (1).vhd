library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

--se declaran basicamente todos los nodos de la maquina
  type estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22);
  signal estado_siguiente, estado : estados; --y 2 señales del tipo anterior que sirven como el estado en el que se esta, y el estado proximo

begin

process(estado_siguiente, estado,OP_CU, FLAGS_CU, IRQ_CU, ACC_CU)
begin
--Se inicializan todas las salidas en 0
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
--Casos posibles de en donde este el estado					      
		case(estado) is
		--Para S0 asigna valores al IR, PC, y MUX y Data dependiendo si se cumple la condición, despues manda a s1 o a s20.
		--Basicamente en este estado todo depende del IRQ y la posicion 4 del FLAGS
        when S0 =>
			 if IRQ_CU = '0' or FLAGS_CU(4) = '0' then
			    IR_CMD <= '1';
				 PC_CMD <= "01";
				 estado_siguiente <= S1;
				elsif IRQ_CU = '1' and FLAGS_CU(4) = '1' then
				 MUX_ADDRESS <= "01";
				 DATA_WE <= '1';
				 push <= '1';
				 estado_siguiente <= S20;			 
			 end if;
			 
		--Basicamente en este estado depende del valor de OP_CU y en algunos casos del ACC
        when S1 =>
			 if OP_CU > std_logic_vector(to_unsigned(23,6)) AND OP_CU < std_logic_vector(to_unsigned(30,6)) then
			    FLAGS_CMD <= '1';
				 estado_siguiente <= s0;
			 elsif OP_CU < std_logic_vector(to_unsigned(18,6)) and ACC_CU = '0' then   
				 A_CMD <= "01";
				 estado_siguiente <= s0;
			 elsif OP_CU < std_logic_vector(to_unsigned(18,6)) and ACC_CU = '1' then
				 B_CMD <= "01";
				 estado_siguiente <= s0;
			 elsif ((OP_CU > std_logic_vector(to_unsigned(17,6)) and OP_CU < std_logic_vector(to_unsigned(24,6))) or (OP_CU > std_logic_vector(to_unsigned(29,6)) and OP_CU < std_logic_vector(to_unsigned(38,6)))) and ACC_CU = '0' then 
				 A_CMD <= "01";
				 FLAGS_CMD <= '1';
				 estado_siguiente <= s0;
			 elsif ((OP_CU > std_logic_vector(to_unsigned(17,6)) and OP_CU < std_logic_vector(to_unsigned(24,6))) or (OP_CU > std_logic_vector(to_unsigned(29,6)) and OP_CU < std_logic_vector(to_unsigned(38,6)))) and ACC_CU = '1' then
				 B_CMD <= "01";
				 FLAGS_CMD <= '1';
				 estado_siguiente <= s0;
			  elsif OP_CU = std_logic_vector(to_unsigned(53,6)) then
			    estado_siguiente <= s0;	
           elsif OP_CU = std_logic_vector(to_unsigned(54,6)) then
             A_CMD <= "11";
             estado_siguiente <= s0;				 
           elsif OP_CU = std_logic_vector(to_unsigned(55,6)) then
             B_CMD <= "11";
				 estado_siguiente <= s0;	
           elsif OP_CU = std_logic_vector(to_unsigned(42,6)) and FLAGS_CU(0) = '0' then
			    estado_siguiente <= s0;	
           elsif OP_CU = std_logic_vector(to_unsigned(43,6)) and FLAGS_CU(1) = '0' then
			    estado_siguiente <= s0;		
           elsif OP_CU > std_logic_vector(to_unsigned(37,6)) and OP_CU < std_logic_vector(to_unsigned(42,6)) then			
             FLAGS_CMD <= '1';	
             estado_siguiente <= s2;
           elsif OP_CU = std_logic_vector(to_unsigned(42,6)) and FLAGS_CU(0) = '1' then			    		
             PC_CMD <= "10";
				 estado_siguiente <= s3;				
           elsif OP_CU = std_logic_vector(to_unsigned(43,6)) and FLAGS_CU(1) = '1' then			    
             PC_CMD <= "10";
				 estado_siguiente <= s3;
           elsif OP_CU = std_logic_vector(to_unsigned(46,6)) then			    
             MUX_ADDRESS <= "10";
             DATA_WE  <= '1';	
				 estado_siguiente <= s3;
           elsif OP_CU = std_logic_vector(to_unsigned(47,6)) then			    				 
				 MUX_ADDRESS <= "10";
				 MUX_DATA <= "01";
				 DATA_WE  <= '1';	
				 estado_siguiente <= s3;			
           elsif OP_CU = std_logic_vector(to_unsigned(56,6)) then			    
				 MUX_ADDRESS <= "01";
				 DATA_WE  <= '1';	
				 push <= '1';
				 estado_siguiente <= s3;				 
           elsif OP_CU = std_logic_vector(to_unsigned(57,6)) then			    
				 MUX_ADDRESS <= "01";
				 DATA_WE  <= '1';	
				 MUX_DATA <= "01";
				 push <= '1';
				 estado_siguiente <= s3;
           elsif OP_CU = std_logic_vector(to_unsigned(44,6)) or OP_CU = std_logic_vector(to_unsigned(45,6)) then			    
				 MUX_ADDRESS <= "10";
				 estado_siguiente <= s4;				 
           elsif OP_CU = std_logic_vector(to_unsigned(48,6)) or OP_CU = std_logic_vector(to_unsigned(49,6)) then			    
				 PC_CMD <= "01";
				 estado_siguiente <= s5;				 
           elsif OP_CU = std_logic_vector(to_unsigned(50,6)) then			    
				 PC_CMD <= "01";
				 estado_siguiente <= s6;				 
           elsif OP_CU = std_logic_vector(to_unsigned(51,6)) or OP_CU = std_logic_vector(to_unsigned(52,6)) then			    
				 PC_CMD <= "01";
				 estado_siguiente <= s8;				 
			  elsif OP_CU = std_logic_vector(to_unsigned(58,6)) or OP_CU = std_logic_vector(to_unsigned(59,6)) then			    
				 pull <= '1';
				 estado_siguiente <= s9;				 
			  elsif OP_CU = std_logic_vector(to_unsigned(60,6)) then			    
				 pull <= '1';
				 estado_siguiente <= s10;				 
			  elsif OP_CU = std_logic_vector(to_unsigned(61,6)) then			    
				 pull <= '1';
				 estado_siguiente <= s15;				 
			  elsif OP_CU = std_logic_vector(to_unsigned(62,6)) then			    
				 MUX_ADDRESS <= "01";
				 MUX_DATA <= "10";
				 DATA_WE <= '1';
				 push <= '1';
				 estado_siguiente <= s18;				 
			  elsif OP_CU = std_logic_vector(to_unsigned(63,6)) then
			    estado_siguiente <= s19;				 
			 end if;
		--Usa el valor del OP_CU y del flags en la posicion 2 o 3 para las condiciones 
        when S2 =>
          if OP_CU = std_logic_vector(to_unsigned(38,6)) and FLAGS_CU(2) = '0' then 
			    estado_siguiente <= S0;
          elsif OP_CU = std_logic_vector(to_unsigned(39,6)) and FLAGS_CU(2) = '1' then
			    estado_siguiente <= S0;
			 elsif OP_CU = std_logic_vector(to_unsigned(40,6)) and FLAGS_CU(3) = '0' then
			    estado_siguiente <= S0;
			 elsif OP_CU = std_logic_vector(to_unsigned(41,6)) and (FLAGS_CU(2) = '1' or FLAGS_CU(3) = '1') then
			    estado_siguiente <= S0;
			 elsif OP_CU = std_logic_vector(to_unsigned(38,6)) and FLAGS_CU(2) = '1' then
				 PC_CMD <= "10";
				 estado_siguiente <= S3;
			 elsif OP_CU = std_logic_vector(to_unsigned(39,6)) and FLAGS_CU(2) = '0' then			    
				 PC_CMD <= "10";
				 estado_siguiente <= S3;				 
			 elsif OP_CU = std_logic_vector(to_unsigned(40,6)) and FLAGS_CU(3) = '1' then			    
				 PC_CMD <= "10";
				 estado_siguiente <= S3;				 
			 elsif OP_CU = std_logic_vector(to_unsigned(41,6)) and FLAGS_CU(2) = '0' and FLAGS_CU(3) = '0' then			    
				 PC_CMD <= "10";
				 estado_siguiente <= S3;				 
          end if;
			 
		--Todo lo que ha llegado lo retorna a S0	 
        when S3 =>
          estado_siguiente <= S0;
		
		--Dependiendo de lo que se tenga en ACC manda datos a A o a B	y los retorna a s0	
        when S4 => 
			 if ACC_CU = '1' then
			   B_CMD <= "10";
			   estado_siguiente <= S0;		
			 elsif ACC_CU = '0' then
			   A_CMD <= "10";
			   estado_siguiente <= S0;
			 end if;
		
		--Da valores al mux
        when S5 => 
			  MUX_ADDRESS <= "11";
			  estado_siguiente <= S4;	

		--Da valores con el mux	  
        when S6 => 
			  MUX_ADDRESS <= "11";
			  estado_siguiente <= S7;
			
		--Asigna valor de 1 a X cuando llega a este punto		
        when S7 =>
			  X_CMD  <= '1';
			  estado_siguiente <= S0;

		--Segun lo que tenga el ACC manda datos a MUX y Data, pero si es el acc igual a 1 tambien asigna al mux_data 1
        when S8 => 
			  if ACC_CU = '0' then	      
					MUX_ADDRESS <= "11";
					DATA_WE <= '1';
					MUX_DATA <= "01";
					estado_siguiente <= S3;					
			  elsif ACC_CU = '1' then			      
					MUX_ADDRESS <= "11";
					DATA_WE <= '1';
					estado_siguiente <= S3;					
			  end if;
			
		--Manda al mux address valor
        when S9 =>             
				 MUX_ADDRESS <= "01";
				 estado_siguiente <= S4;
				 
		--Manda al mux address y pull valor			
        when S10 => 
				 MUX_ADDRESS <= "01";
				 pull <= '1';
				 estado_siguiente <= S11;
		--Asignaciones de maloes al address, al flg, pull y flags_cmd	 
        when S11 =>
				 MUX_ADDRESS <= "01";
				 pull <= '1';
				 MUX_FLG <= '1';
				 FLAGS_CMD <= '1';
				 estado_siguiente <= S12;
		--Asigna valores al mux_address, pull y pc_cmd		 
		  when S12 => 		       
				 MUX_ADDRESS  <= "01";
				 pull <= '1';
				 PC_CMD <= "11";
				 estado_siguiente <= S13;
		
      --Asigna al mux_address y B_CMD
        when S13 =>			       
				 MUX_ADDRESS  <= "01";
				 B_CMD  <= "10";
				 estado_siguiente <= S14;
		
		--Asigna valor al A_CMD
        when S14 => 		       
				 A_CMD  <= "10";
				 estado_siguiente <= S0;
		
		--Asigna al mux_address valores
        when S15 =>			       
				 MUX_ADDRESS  <= "01";
				 estado_siguiente <= S16;
		
		--Asigna al PC_CMD VALOR
        when S16 => 		       
				 PC_CMD   <= "11";
				 estado_siguiente <= S17;
			
		--Asigna al PC_CMD VALOR	
        when S17 =>	 		       
				 PC_CMD   <= "01";
				 estado_siguiente <= S3;
			
		--Manda a s19 lo que le ha llegado hasta el momento	
        when S18 => 
		       estado_siguiente <= S19;
				
		--Asigna al PC_CMD VALOR		
        when S19 =>	             
				 PC_CMD   <= "11";
				 estado_siguiente <= S3;
				
		--Asigna diferentes valores		
        when S20 => 		       
				 MUX_ADDRESS   <= "01";
				 MUX_DATA <= "01";
				 DATA_WE <=  '1';
				 push <= '1';
				 estado_siguiente <= S21;
			
		--Asigna diferentes valores	
        when S21 =>	             
				 MUX_ADDRESS   <= "01";
				 MUX_DATA <= "10";
				 DATA_WE <=  '1';
				 push <= '1';
				 PC_CMD <= "11";
				 MUX_INT <= '1';
				 estado_siguiente <= S22;
				
		--Asigna diferentes valores		
        when S22 => 		  
             IRQ_END <= '1';
             IR_CMD <= '1';
				 MUX_ADDRESS   <= "01";
				 MUX_DATA <= "11";
				 DATA_WE <=  '1';
				 push <= '1';
             estado_siguiente <= S3;
 
        when others => null; 
      end case; 
end process;

--Proceso que se hace aparte porque segun investigacion en internet cuando se maneja 1 maquina de estados con 1 proceso se desfasa 1 ciclo de reloj
process(clk, reset)--Proceso para manejar el reset y los ciclos de reloj
    begin
        if rising_edge(clk) then --Cuando el ciclo de reloj este arriba manda a estado lo que tiene estado_siguiente, haciendo funcion de moverse por los nodos
                estado <= estado_siguiente; 
        end if;
		  
		  if reset = '1' then--Reset completamente asincrono que coloca a la maquina en el estado principal(s0)
          estado <= S0; 
        end if;
end process;


end Behavioral;


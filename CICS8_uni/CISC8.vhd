library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CISC8 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           irq : in  STD_LOGIC;
           swbtt : in  STD_LOGIC_VECTOR (7 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end CISC8;

architecture Behavioral of CISC8 is

	component AddressDecod
    Port ( address : in  STD_LOGIC_VECTOR (7 downto 0);
			  me : out  STD_LOGIC;
           ie : out  STD_LOGIC;
           oe : out  STD_LOGIC);
			  --muxe : out  STD_LOGIC);
	end component;
	
	component ALU
		 Port ( A_ALU : in  STD_LOGIC_VECTOR (7 downto 0);
				  B_ALU : in  STD_LOGIC_VECTOR (7 downto 0);
				  OP_ALU : in  STD_LOGIC_VECTOR (5 downto 0);
				  N_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
				  I_IN : in STD_LOGIC;
				  V_IN : in STD_LOGIC;
				  C_IN : in STD_LOGIC;
				  S_ALU : out  STD_LOGIC_VECTOR (7 downto 0);
				  FLAGS_ALU : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	component A
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  A_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				  S_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				  A_CMD : in  STD_LOGIC_VECTOR (1 downto 0);
				  A_ALU : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component CU
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
	end component;
	
	component Decoder
		 Port ( I_DEC : in  STD_LOGIC_VECTOR (7 downto 0);
				  OP_DEC : out  STD_LOGIC_VECTOR (5 downto 0);
				  N_DEC : out  STD_LOGIC_VECTOR (2 downto 0);
				  S_DEC : out  STD_LOGIC_VECTOR (3 downto 0);
				  ACC_DEC : out  STD_LOGIC);
	end component;
	
	component Flags
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  FLAGS_CMD : in STD_LOGIC;
				  FLAGS_ALU : in  STD_LOGIC_VECTOR (4 downto 0);
				  FLAGS_OUT : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	component InterruptHandler
		 Port ( clk : in STD_LOGIC;
				  reset : in STD_LOGIC;
				  irq : in  STD_LOGIC;
				  irq_end : in STD_LOGIC;
				  irq_out : out  STD_LOGIC);
	end component;	
	
	component IO
		Port ( clk : in  STD_LOGIC;
				 reset : in  STD_LOGIC;
				 IE : in  STD_LOGIC;
				 OE : in  STD_LOGIC;
				 WE : in  STD_LOGIC;
				 IO_SWBTT : out  STD_LOGIC_VECTOR (7 downto 0);
				 IO_LEDS : in  STD_LOGIC_VECTOR (7 downto 0);
				 swbtt : in  STD_LOGIC_VECTOR (7 downto 0);
				 leds : out  STD_LOGIC_VECTOR (7 downto 0);
				 muxe : out  STD_LOGIC);
	end component;
	
	component IR
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  IR_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				  IR_CMD : in  STD_LOGIC;
				  IR_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component Memory
		 port (clk : in STD_LOGIC;
				 DATA_EN : in STD_LOGIC;
				 DATA_WE : in STD_LOGIC;
				 DATA_A : in STD_LOGIC_VECTOR (7 downto 0);
				 DATA_DI : in STD_LOGIC_VECTOR (7 downto 0);
				 DATA_DO : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	component Mux2 is
	    Generic (width : integer := 8);
		 port ( Input0 : in  STD_LOGIC_VECTOR (width - 1 downto 0);
				  Input1 : in  STD_LOGIC_VECTOR (width - 1 downto 0);
              Selection : in  STD_LOGIC;
				  Output : out  STD_LOGIC_VECTOR (width - 1 downto 0));
	end component;
	
	component Mux4 is
		 port ( Input0 : in  STD_LOGIC_VECTOR (7 downto 0);
				  Input1 : in  STD_LOGIC_VECTOR (7 downto 0);
				  Input2 : in  STD_LOGIC_VECTOR (7 downto 0);
				  Input3 : in  STD_LOGIC_VECTOR (7 downto 0);
              Selection : in  STD_LOGIC_VECTOR (1 downto 0);
				  Output : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component PC
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  PC_CMD : in  STD_LOGIC_VECTOR (1 downto 0);
				  PC_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				  S : in  STD_LOGIC_VECTOR (3 downto 0);
				  PC_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component SP
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  push : in  STD_LOGIC;
				  pull : in  STD_LOGIC;
				  SP_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component X
		 Port ( clk : in  STD_LOGIC;
				  reset : in  STD_LOGIC;
				  X_CMD : in  STD_LOGIC;
				  X_IN : in  STD_LOGIC_VECTOR (7 downto 0);
				  N : in  STD_LOGIC_VECTOR (2 downto 0);
				  X_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal A_ALU, B_ALU, S, DI, DO, I, IR_IN, PC_OUT, SP_OUT, X_OUT, DATA_A, PC_IN, IO_SWBTT, FLAGS8 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal OP : STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal FLAGS_IN, FLAGS_OUT, FLAGS_ALU : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal BRA : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal N : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal A_CMD, B_CMD, PC_CMD, MUX_ADDRESS, MUX_DATA : STD_LOGIC_VECTOR (1 downto 0)  := (others => '0');
	signal IR_CMD, FLAGS_CMD, X_CMD, push, pull, ACC, ME, IE, OE, WE, MUXE, IRQ_IN, IRQ_END, MUX_INT, MUX_FLG : STD_LOGIC := '0';
	
begin

	CISC_AddressDecod : AddressDecod port map ( address => DATA_A,
															  me => ME ,
															  ie => IE,
															  oe => OE);

	
	CISC_ALU : ALU port map ( A_ALU => A_ALU,
									  B_ALU => B_ALU,
									  OP_ALU => OP,
									  N_ALU => N,
									  I_IN => FLAGS_OUT(4),
									  V_IN => FLAGS_OUT(1),
									  C_IN => FLAGS_OUT(0),
									  S_ALU => S,
									  FLAGS_ALU => FLAGS_ALU);
	
	CISC_A : A port map (clk => clk,
								reset => reset,
								A_IN => IR_IN,
								S_IN => S,
								A_CMD => A_CMD,
								A_ALU => A_ALU);
								
	CISC_B : A port map (clk => clk,
								reset => reset,
								A_IN => IR_IN,
								S_IN => S,
								A_CMD => B_CMD,
								A_ALU => B_ALU);
								
	CISC_CU : CU port map ( clk => clk,
									reset => reset,
									OP_CU => OP,
									FLAGS_CU => FLAGS_OUT,
									IRQ_CU => IRQ_IN,
									ACC_CU => ACC,
									A_CMD => A_CMD ,
									B_CMD => B_CMD,
									FLAGS_CMD => FLAGS_CMD,
									X_CMD => X_CMD,
									PC_CMD => PC_CMD,
									IR_CMD => IR_CMD,
									DATA_WE => WE,
									push => push,
									pull => pull,
									MUX_DATA => MUX_DATA,
									MUX_ADDRESS => MUX_ADDRESS,
									MUX_INT => MUX_INT,
									MUX_FLG => MUX_FLG,
									IRQ_END => IRQ_END);
	
	CISC_Decoder : Decoder port map ( I_DEC => I,
												 OP_DEC => OP,
												 N_DEC => N,
												 S_DEC => BRA,
												 ACC_DEC => ACC);
	
	CISC_Flags : Flags port map ( clk => clk,
											reset => reset,
											FLAGS_CMD => FLAGS_CMD,
											FLAGS_ALU => FLAGS_IN,
											FLAGS_OUT => FLAGS_OUT);
											
	CISC_InterruptHandler: InterruptHandler port map ( clk => clk,
																		reset => reset,
																		irq => irq,
																		irq_end => irq_end,
																		irq_out => irq_in);
						
	CISC_IO : IO port map ( clk => clk,
									reset => reset,
									IE => IE,
									OE => OE,
									WE => WE,
									IO_SWBTT => IO_SWBTT,
									IO_LEDS => DI,
									swbtt => swbtt,
									leds => leds,
									muxe => MUXE);	
	
	CISC_IR : IR port map ( clk => clk,
									reset => reset,
									IR_IN => IR_IN,
									IR_CMD => IR_CMD,
									IR_OUT => I);
	
	CISC_Memory : Memory port map (clk => clk,
											 DATA_EN => ME,
											 DATA_WE => WE,
											 DATA_A => DATA_A,
											 DATA_DI => DI,
											 DATA_DO => DO);
	
	CISC_MuxI : Mux2 port map (Input0 => DO,
										 Input1 => IO_SWBTT,
										 Selection => MUXE,
										 Output => IR_IN);

	CISC_MuxINT : Mux2 port map (Input0 => IR_IN,
										  Input1 => "10100000",
										  Selection => MUX_INT,
										  Output => PC_IN);
										  
	CISC_MuxFLG : Mux2 generic map (width => 5)
							 port map (Input0 => FLAGS_ALU,
										  Input1 => IR_IN (4 downto 0),
										  Selection => MUX_FLG,
										  Output => FLAGS_IN);										  
										 
	CISC_MuxADDRESS : Mux4 port map (Input0 => PC_OUT,
												Input1 => SP_OUT,
												Input2 => X_OUT,
												Input3 => IR_IN,
												Selection => MUX_ADDRESS,
												Output => DATA_A);
										 											 
	CISC_MuxDATA : Mux4 port map (Input0 => A_ALU,
											Input1 => B_ALU,
											Input2 => PC_OUT,
											Input3 => FLAGS8,
											Selection => MUX_DATA,
											Output => DI);

	CISC_PC : PC port map ( clk => clk,
									reset => reset,
									PC_CMD => PC_CMD,
									PC_IN => PC_IN,
									S => BRA,
									PC_OUT => PC_OUT);

	CISC_SP : SP port map ( clk => clk,
									reset => reset,
									push => push,
									pull => pull,
									SP_OUT => SP_OUT );

	CISC_X : X port map ( clk => clk,
								 reset => reset,
								 X_CMD => X_CMD,
								 X_IN => IR_IN,
								 N => N,
								 X_OUT => X_OUT);

	FLAGS8 <= "000" & FLAGS_OUT;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity RISC16 is
	Port (clk : in STD_LOGIC;
		 reset : in STD_LOGIC;
		 salida : out STD_LOGIC_VECTOR (15 downto 0));
end RISC16;

architecture Behavioral of RISC16 is
	-- Definicion de componentes
	component ALU 
		Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           RC : out  STD_LOGIC_VECTOR (15 downto 0);
           OpCode : in  STD_LOGIC_VECTOR (4 downto 0);
           Esp : in  STD_LOGIC_VECTOR (1 downto 0);
           Inm5 : in  STD_LOGIC_VECTOR (4 downto 0);
           Inm8 : in  STD_LOGIC_VECTOR (7 downto 0);
           Branch : out STD_LOGIC;
           Inm16 : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
  
	component ControlUnit
		Port ( OpCode : in  STD_LOGIC_VECTOR (4 downto 0);
              Branch : in  STD_LOGIC;
              RegEnable : out  STD_LOGIC;
              WriteEnable : out  STD_LOGIC;
              Data_we : out  STD_LOGIC;
              Data_en : out  STD_LOGIC;
              PC_cmd : out  STD_LOGIC_VECTOR (1 downto 0);
              Link : out  STD_LOGIC);
	end component;
  
	component DataMemory
		Port (clk : in STD_LOGIC;
				Data_we : in STD_LOGIC;
				Data_en : in STD_LOGIC;
				Data_a : in STD_LOGIC_VECTOR (15 downto 0);
				Data_di : in STD_LOGIC_VECTOR (15 downto 0);
				Data_do : out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	component Decoder
		Port ( Instr : in  STD_LOGIC_VECTOR (15 downto 0);
           OpCode : out  STD_LOGIC_VECTOR (4 downto 0);              
           RAselect : out  STD_LOGIC_VECTOR (2 downto 0);
           RBselect : out  STD_LOGIC_VECTOR (2 downto 0);
           RCselect : out  STD_LOGIC_VECTOR (2 downto 0);
           Esp : out  STD_LOGIC_VECTOR (1 downto 0);
           Inm5 : out  STD_LOGIC_VECTOR (4 downto 0);
           Inm8 : out  STD_LOGIC_VECTOR (7 downto 0);
           Inm11 : out  STD_LOGIC_VECTOR (10 downto 0));
	end component;
	
	component InstructionMemory
		Port ( I_a : in  STD_LOGIC_VECTOR (15 downto 0);
           I_do : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	component PC
		Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           PCin : in  STD_LOGIC_VECTOR (15 downto 0);
           PCout : out  STD_LOGIC_VECTOR (15 downto 0);
           PC_cmd : in STD_LOGIC_VECTOR (1 downto 0);
           Inm5 : in  STD_LOGIC_VECTOR (4 downto 0);
           Inm11 : in  STD_LOGIC_VECTOR (10 downto 0);
           Inm16 : in  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	component Reg8
		Port( clk : IN  std_logic;
         reset : IN  std_logic;
         RegEnable : IN  std_logic;
         WriteEnable : IN  std_logic;
         RAselect : IN  std_logic_vector(2 downto 0);
         RBselect : IN  std_logic_vector(2 downto 0);
         RCselect : IN  std_logic_vector(2 downto 0);
         RA : OUT  std_logic_vector(15 downto 0);
         RB : OUT  std_logic_vector(15 downto 0);
         RC : IN  std_logic_vector(15 downto 0));
	end component;
	
	component Mux
		Port ( Input0 : in  STD_LOGIC_VECTOR (15 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Selection : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	--Definicion de se�ales
	signal Reg8RA, Reg8RB, ALUInm16, MUX0, MUX1, MUX2_MUX1, I_do, Data_do, PC_OUT, MUX1_O : STD_LOGIC_VECTOR(15 downto 0);
	signal Inm11 : STD_LOGIC_VECTOR(10 downto 0);
	signal Inm8 : STD_LOGIC_VECTOR(7 downto 0);
	signal Inm5, OpCode : STD_LOGIC_VECTOR(4 downto 0);
	signal RASelect, RBSelect, RCSelect : STD_LOGIC_VECTOR(2 downto 0);
	signal Esp, Pc_cmd : STD_LOGIC_VECTOR(1 downto 0);
	signal Reg_enable, Write_enable, Data_we, Data_en, Link, Branch : STD_LOGIC;
	
begin
	-- Mapeo de puertos
	mALU : ALU port map (
		RA => Reg8RA,
		RB => Reg8RB,
		RC => MUX0,
		OpCode => OpCode,
		Esp => Esp,
		Inm5 => Inm5,
		Inm8 => Inm8, 
		Branch => Branch,
		Inm16 => ALUInm16);
		
	mControlUnit : ControlUnit port map(
		OpCode => OpCode,
		Branch => Branch, 
		RegEnable => Reg_enable,
		WriteEnable =>Write_enable,
		Data_we => Data_we,
		Data_en => Data_en,
		Link =>Link,
		PC_cmd => Pc_cmd);
		
	mDataMemory : DataMemory port map (
		clk => clk, 
		Data_we =>Data_we, 
		Data_en => Data_en, 
		Data_a => ALUInm16,
		Data_di =>Reg8RB, 
		Data_do => Data_do);
	
	mDecoder : Decoder port map (
		Instr => I_do,
		OpCode =>OpCode, 
		RCselect => RCSelect, 
		RAselect => RASelect,
		RBselect => RBSelect, 
		Esp => Esp,
		Inm5 => Inm5,
		Inm8 => Inm8, 
		Inm11 => Inm11);
		
	mInstructionMemory : InstructionMemory port map (
		I_a => PC_OUT,
		I_do => I_do);
		
	mPC : PC port map (
		clk => clk, 
		reset => reset, 
		PC_cmd => Pc_cmd,
		PCin => PC_OUT,
		Inm5 => Inm5, 
		Inm11 => Inm11,
		Inm16 =>ALUInm16,
		PCout => PC_OUT);
	
	mReg8 : Reg8 port map (
		clk => clk,
		reset => reset, 
		RegEnable =>Reg_enable, 
		WriteEnable => Write_enable, 
		RCselect => RCSelect, 
		RAselect => RASelect, 
		RBselect => RBSelect, 
		RC =>MUX1_O,
		RA => Reg8RA, 
		RB => Reg8RB);
	
	mMux1 : Mux port map (
		Input0 => MUX1,
		Input1 => MUX2_MUX1, 
		Selection =>Link,
		Output => MUX1_O);
	
	mMux2 : Mux port map (
		Input0 => Data_do,
		Input1 => MUX0, 
		Selection =>Data_en, 
		Output => MUX2_MUX1);
	
	
	MUX1 <= STD_LOGIC_VECTOR(unsigned(PC_OUT)+1);
	
	salida <= MUX0; -- Salida
end Behavioral;


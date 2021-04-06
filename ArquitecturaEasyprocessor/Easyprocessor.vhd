----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:18 11/19/2020 
-- Design Name: 
-- Module Name:    Easyprocessor - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Easyprocessor is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ResultOut : out  std_logic_vector(7 downto 0));
end Easyprocessor;

architecture Behavioral of Easyprocessor is
	-- Declaracion de los componentes del easyprocessor
	COMPONENT ProgCount
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         IncPC : IN  std_logic;
         OutPC : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Operate : IN  std_logic;
         Operation : IN  std_logic_vector(1 downto 0);
         Result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT Reg
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         load : IN  std_logic;
         InR : IN  std_logic_vector(7 downto 0);
         OutR : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT Registers
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         DataWrite : IN  std_logic_vector(7 downto 0);
         SelWriteReg : IN  std_logic_vector(1 downto 0);
         WriteEnable : IN  std_logic;
         SelReadReg : IN  std_logic_vector(1 downto 0);
         DataRead : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT LogControl
	 Port( clk : in  STD_LOGIC;
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
	  END COMPONENT;
	  
	  COMPONENT Memory
	  Port ( Address : in  STD_LOGIC_VECTOR (7 downto 0);
           DataMem : out  STD_LOGIC_VECTOR (7 downto 0));
	  END COMPONENT;
	  
	  COMPONENT Mux
	  Port ( Results : in  STD_LOGIC_VECTOR (7 downto 0);
           DataOut : in  STD_LOGIC_VECTOR (7 downto 0);
			  LoadMem : in  STD_LOGIC;
           DataWrite : out   std_logic_vector(7 downto 0));
	  END COMPONENT;
	  

		--Declaracion de las entradas y salidas de cada componente
		signal A : std_logic_vector(7 downto 0) := (others => '0');
		signal B : std_logic_vector(7 downto 0) := (others => '0');
		signal Operate : std_logic := '0';
		signal Operation : std_logic_vector(1 downto 0) := (others => '0');
		signal Result : std_logic_vector(7 downto 0);
		signal IncPC : std_logic := '0';
		signal OutPC : std_logic_vector(7 downto 0);
		signal loadA : std_logic := '0';
		signal InRA : std_logic_vector(7 downto 0) := (others => '0');
		signal OutRA : std_logic_vector(7 downto 0);
		signal loadB : std_logic := '0';
		signal InRB : std_logic_vector(7 downto 0) := (others => '0');
		signal OutRB : std_logic_vector(7 downto 0);
		signal loadRes : std_logic := '0';
		signal InRRes : std_logic_vector(7 downto 0) := (others => '0');
		signal OutRRes : std_logic_vector(7 downto 0);
		signal loadMar : std_logic := '0';
		signal InRMar : std_logic_vector(7 downto 0) := (others => '0');
		signal OutRMar : std_logic_vector(7 downto 0);
		signal DataWrite : std_logic_vector(7 downto 0) := (others => '0');
		signal SelWriteReg : std_logic_vector(1 downto 0) := (others => '0');
		signal WriteEnable : std_logic := '0';
		signal SelReadReg : std_logic_vector(1 downto 0) := (others => '0');
		signal DataRead : std_logic_vector(7 downto 0) := (others => '0');
		signal DataMemLog : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		signal DataOutLog: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		signal LoadALog : STD_LOGIC := '0';
		signal LoadBLog : STD_LOGIC := '0';
		signal LoadResultLog : STD_LOGIC := '0';
		signal LoadMARLog : STD_LOGIC := '0';
		signal IncPCLog : STD_LOGIC := '0';
		signal LoadMemLog : STD_LOGIC := '0';
		signal OperateLog : STD_LOGIC := '0';
		signal OperationLog : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
		signal SelReadRegLog : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
		signal SelWriteRegLog : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
		signal WriteEnableLog : STD_LOGIC := '0';
		signal Address : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
      signal DataMem : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		signal ResultsMux : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
      signal DataOutMux : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		signal LoadMemMux : STD_LOGIC := '0';
      signal DataWriteMux :  std_logic_vector(7 downto 0) := (others => '0');
	  
begin
	-- Asignacion de las señales a cada componente
	count: ProgCount PORT MAP (
			 clk => clk,
			 rst => rst,
			 IncPC => IncPC,
			 OutPC => OutPC
		  );
		  
	memoryProgram: Memory PORT MAP (
			Address => Address,
			DataMem => DataMem
		);

	alux: ALU PORT MAP (
          A => A,
          B => B,
          Operate => Operate,
          Operation => Operation,
          Result => Result
        );
		  
	regA: Reg PORT MAP (
          clk => clk,
          rst => rst,
          load => loadA,
          InR => InRA,
          OutR => OutRA
        );
		  
	regB: Reg PORT MAP (
          clk => clk,
          rst => rst,
          load => loadB,
          InR => InRB,
          OutR => OutRB
        );
		  
	regResult: Reg PORT MAP (
          clk => clk,
          rst => rst,
          load => loadRes,
          InR => InRRes,
          OutR => OutRRes
        );
		  
	regMar: Reg PORT MAP (
          clk => clk,
          rst => rst,
          load => loadMar,
          InR => InRMar,
          OutR => OutRMar
        );
		  
	registros: Registers PORT MAP (
          clk => clk,
          rst => rst,
          DataWrite => DataWrite,
          SelWriteReg => SelWriteReg,
          WriteEnable => WriteEnable,
          SelReadReg => SelReadReg,
          DataRead => DataRead
        );
		  
	unidadControl : LogControl PORT MAP(
			clk => clk,
			rst => rst,
			DataMem => DataMemLog,
			DataOut => DataOutLog,
			LoadA => LoadALog,
			LoadB => LoadBLog,
			LoadResult => LoadResultLog,
			LoadMAR => LoadMARLog,
			IncPC => IncPCLog,
			LoadMem => LoadMemLog,
			Operate => OperateLog,
			Operation => OperationLog,
			SelReadReg => SelReadRegLog,
			SelWriteReg => SelWriteRegLog,
			WriteEnable => WriteEnableLog
	);
	
	multiplexor : Mux PORT MAP(
			Results => ResultsMux,
			DataOut => DataOutMux,
			LoadMem => LoadMemMux,
			DataWrite => DataWriteMux
	);
	
	-- Debug de las salidas del Easyprocessor
	process (clk, rst, Operate, WriteEnable, LoadMemLog, LoadA, LoadB, Result, DataOutLog, DataWrite, DataRead)
	begin
	
		if Operate = '1' then
			ResultOut <= Result;
		elsif (WriteEnable = '1') and (LoadMemLog = '1') then
			ResultOut <= DataOutLog;
		elsif (WriteEnable = '1') and (LoadMemLog = '0') then
			ResultOut <= DataWrite;
		elsif (LoadA = '1') or (LoadB = '1') then
			ResultOut <= DataRead;
		else
			ResultOut <= (others => '0');
		end if;
	
	end process;
	
	-- Conexiones del procesador
	DataMemLog <= DataMem;
	DataOutMux <= DataOutLog;
	LoadA <= LoadALog;
	LoadB <= LoadBLog;
	LoadRes <= LoadResultLog;
	LoadMar <= LoadMarLog;
	IncPC <= IncPCLog;
	LoadMemMux <= LoadMemLog;
	Operate <= OperateLog;
	Operation <= OperationLog;
	SelReadReg <= SelReadRegLog;
	SelWriteReg <= SelWriteRegLog;
	WriteEnable <= WriteEnableLog;
	
	InRMar <= OutPC;
	
	Address <= OutRMar;
	
	ResultsMux <= OutRRes;
	
	DataWrite <= DataWriteMux;
	
	InRA <= DataRead;
	InRB <= DataRead;
	
	A <= OutRA;
	B <= OutRB;
	
	InRRes <= Result;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
 Port ( A_ALU : in  STD_LOGIC_VECTOR (7 downto 0);--Acumulador A
        B_ALU : in  STD_LOGIC_VECTOR (7 downto 0);--Acumulador B
        OP_ALU : in  STD_LOGIC_VECTOR (5 downto 0);--Operación
        N_ALU : in  STD_LOGIC_VECTOR (2 downto 0);--Cuanto se desplaza
        I_IN : in STD_LOGIC;
        V_IN : in STD_LOGIC;--Desborde
        C_IN : in STD_LOGIC;--Carry
        S_ALU : out  STD_LOGIC_VECTOR (7 downto 0);--Salida
        FLAGS_ALU : out  STD_LOGIC_VECTOR (4 downto 0));--Banderas
end ALU;

architecture Behavioral of ALU is
		
begin
		S_ALU <= A_ALU AND B_ALU when (OP_ALU = std_logic_vector(to_unsigned(0,6))) else --Para <- A AND B y B <- A AND B
					A_ALU OR B_ALU when (OP_ALU = std_logic_vector(to_unsigned(1,6))) else --Para A <- A OR B y B <- A OR B
					A_ALU XOR B_ALU when (OP_ALU = std_logic_vector(to_unsigned(2,6))) else --Para A <- A XOR B y B <- A XOR B
					A_ALU NAND B_ALU when(OP_ALU = std_logic_vector(to_unsigned(3,6))) else --Para A <- A NAND B y B <- A NAND B
					A_ALU NOR B_ALU when (OP_ALU = std_logic_vector(to_unsigned(4,6))) else --Para A <- A NOR B y B <- A NOR B
					A_ALU XNOR B_ALU when (OP_ALU = std_logic_vector(to_unsigned(5,6))) else --Para A <- A XNOR B B <- A XNOR B
					NOT A_ALU when (OP_ALU = std_logic_vector(to_unsigned(6,6))) else --Para Acc <- NOT A
					NOT B_ALU when (OP_ALU = std_logic_vector(to_unsigned(7,6))) else --Para Acc <- NOT B
					std_logic_vector(signed(A_ALU) sll to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(8,6))) else --Para A <- A SLL N
					std_logic_vector(signed(B_ALU) sll to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(9,6))) else --Para B <- B SLL N
					std_logic_vector(signed(A_ALU) srl to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(10,6))) else --Para A <- A SRL N
					std_logic_vector(signed(B_ALU) srl to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(11,6))) else --Para B <- B SRL N
					to_stdlogicvector(to_bitvector(A_ALU) sra to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(12,6))) else --Para A <- A SRA N
					to_stdlogicvector(to_bitvector(B_ALU) sra to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(13,6))) else --Para B <- B SRA N
					to_stdlogicvector(to_bitvector(A_ALU) rol to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(14,6))) else --Para A <- A ROL N
					to_stdlogicvector(to_bitvector(B_ALU) rol to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(15,6))) else --Para B <- B ROL N
					to_stdlogicvector(to_bitvector(A_ALU) ror to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(16,6))) else --Para A <- A ROR N
					to_stdlogicvector(to_bitvector(B_ALU) ror to_integer(signed(N_ALU))) when (OP_ALU = std_logic_vector(to_unsigned(17,6))) else --Para B <- B ROR N
					to_stdlogicvector(to_bitvector(C_IN & A_ALU) rol to_integer(signed(N_ALU)))(7 downto 0) when (OP_ALU = std_logic_vector(to_unsigned(18,6))) else --Para A <- A RCL N
					to_stdlogicvector(to_bitvector(C_IN & B_ALU) rol to_integer(signed(N_ALU)))(7 downto 0) when (OP_ALU = std_logic_vector(to_unsigned(19,6))) else --Para B <- B RCL N
					to_stdlogicvector(to_bitvector(C_IN & A_ALU) ror to_integer(signed(N_ALU)))(7 downto 0) when (OP_ALU = std_logic_vector(to_unsigned(20,6))) else --Para A <- A RCR N
					to_stdlogicvector(to_bitvector(C_IN & B_ALU) ror to_integer(signed(N_ALU)))(7 downto 0) when (OP_ALU = std_logic_vector(to_unsigned(21,6))) else --Para B <- B RCR N
					std_logic_vector(signed(NOT A_ALU + 1)) when (OP_ALU = std_logic_vector(to_unsigned(22,6))) else --Para A <-(NOT A +1)
					std_logic_vector(signed(NOT B_ALU + 1)) when (OP_ALU = std_logic_vector(to_unsigned(23,6))) else --Para B <-(NOT B +1)
					std_logic_vector(signed(A_ALU) + signed(B_ALU)) when (OP_ALU = std_logic_vector(to_unsigned(30,6))) else --Para A <- A + B
					std_logic_vector(signed(A_ALU) + signed(B_ALU)) when (OP_ALU = std_logic_vector(to_unsigned(31,6))) else --Para B <- A + B
					std_logic_vector(signed(A_ALU) - signed(B_ALU)) when (OP_ALU = std_logic_vector(to_unsigned(32,6)))else --Para A <- A - B
					std_logic_vector(signed(B_ALU) - signed(A_ALU)) when (OP_ALU = std_logic_vector(to_unsigned(33,6))) else --Para B <- B - A
					std_logic_vector(signed(A_ALU) + 1) when (OP_ALU = std_logic_vector(to_unsigned(34,6))) else --Para A <- A + 1
					std_logic_vector(signed(B_ALU) + 1) when (OP_ALU = std_logic_vector(to_unsigned(35,6))) else --Para B <- B + 1
					std_logic_vector(signed(A_ALU) - 1) when (OP_ALU = std_logic_vector(to_unsigned(36,6))) else --Para A <- A - 1
					std_logic_vector(signed(B_ALU) - 1) when (OP_ALU = std_logic_vector(to_unsigned(37,6))) else --Para B <- B - 1
					"00000000";
		
		--FLAGS que representa C con varias operaciones que usan carry
		FLAGS_ALU(0) <= '0' when (OP_ALU = "011000"
										  OR (OP_ALU = std_logic_vector(to_unsigned(31,6)))) 
								  else '1' when (OP_ALU = "011001"
										  OR (OP_ALU = std_logic_vector(to_unsigned(18,6)))
										  OR (OP_ALU = std_logic_vector(to_unsigned(19,6)))
										  OR (OP_ALU = std_logic_vector(to_unsigned(20,6)))
										  OR (OP_ALU = std_logic_vector(to_unsigned(30,6)))
										  OR (OP_ALU = std_logic_vector(to_unsigned(32,6)))
										  OR (OP_ALU = std_logic_vector(to_unsigned(35,6))))					
								  else C_IN;
								  
		--FLAGS que representa V con varias operaciones que usan overflow	
		FLAGS_ALU(1) <= '0' when (OP_ALU = "011010"
											OR (OP_ALU = std_logic_vector(to_unsigned(22,6)))) 
			else '1' when (OP_ALU = "011011"
											OR (OP_ALU = std_logic_vector(to_unsigned(23,6)))
											OR (OP_ALU = std_logic_vector(to_unsigned(31,6)))
											OR (OP_ALU = std_logic_vector(to_unsigned(32,6)))
											OR (OP_ALU = std_logic_vector(to_unsigned(34,6)))) 
			else V_IN;
			
		--FLAGS que representa Z segun el criterio de mandar 1 si es igual a 0	
		FLAGS_ALU(2) <= '1' when (to_integer(signed(A_ALU)) - to_integer(signed(B_ALU))) = 0 
								  else '0';
								  
		--FLAGS que representa N segun el criterio de mandar 1 si es menor a 0						  
		FLAGS_ALU(3) <= '1' when (to_integer(signed(A_ALU)) - to_integer(signed(B_ALU))) < 0
								  else '0';
								  
		--FLAGS que representa I						  
		FLAGS_ALU(4) <= '0' when (OP_ALU = "011100")
							     else '1' when (OP_ALU = "011101")
								  else I_IN;
	
end Behavioral;
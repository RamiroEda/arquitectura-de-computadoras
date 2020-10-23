----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:25 10/22/2020 
-- Design Name: 
-- Module Name:    Registers - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registers is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           DataWrite : in  STD_LOGIC_VECTOR (7 downto 0);
           SelWriteReg : in  STD_LOGIC_VECTOR (1 downto 0);
           WriteEnable : in  STD_LOGIC;
           SelReadReg : in  STD_LOGIC_VECTOR (1 downto 0);
           DataRead : out  STD_LOGIC_VECTOR (7 downto 0));
end Registers;

architecture Behavioral of Registers is
	-- Los registros donde almacenar los datos
	type RegBank is array ( 0 to 3 ) of std_logic_vector( 7 downto 0 );
	signal Regs: RegBank;
begin
	process(clk, rst)
	begin
		if rst = '1' then
			-- Si esta el RST en ALTO va a limpiar todos los registros
			for i in 0 to 3 loop
				Regs(i)<="00000000";
			end loop;
		end if;
		if clk = '1' then
			-- Si se puede escribir entonces va a asignar el valor de DATAWRITE a el registro habilitado con SELWRITEREG
			if WriteEnable = '1' then
				Regs(to_integer(unsigned(SelWriteReg)))<= DataWrite;
			end if;
		end if;
	end process;

	-- Se va a mostrar en la salida el registro seleccionado con SELREADREG
	DataRead<= Regs(to_integer(unsigned(SelReadReg)));
end Behavioral;


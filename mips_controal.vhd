LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use work.mips_pkg.all;

ENTITY mips_controal IS

	PORT
	(
		clk_50	: IN std_logic;
		opcode	: IN std_logic_vector (5 DOWNTO 0);
		RegDest	: OUT std_logic;
		jump		: OUT std_logic;
		branch	: OUT std_logic;
		MemRead	: OUT std_logic;
		MemToReg	: OUT std_logic;
		ALUop		: OUT std_logic_vector (1 DOWNTO 0);
		MemWrite	: OUT std_logic;
		ALUsrc	: OUT std_logic;
		RegWrite : OUT std_logic
	);
	
END ENTITY;

ARCHITECTURE control_op OF mips_controal IS

	BEGIN
	
	PROCESS(clk_50)
	BEGIN
		IF (clk_50'EVENT and clk_50 = '1') THEN
			CASE opcode IS
				WHEN iLW =>
				--LW
				RegDest	<='0';
				jump		<='0';
				branch	<='0';
				MemRead	<='1';
				MemToReg	<='1';
				ALUop		<="00";
				MemWrite	<='0';
				ALUsrc	<='1';
				RegWrite <='1';
				
				WHEN iSW =>
				--SW
				RegDest	<='0';
				jump		<='0';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="00";
				MemWrite	<='1';
				ALUsrc	<='1';
				RegWrite <='0';
				
				WHEN iRTYPE =>
				--ADD, SUB, AND, OR, NOR, XOR, SLT, SLL, SRL, SRA, 
				RegDest	<='1';
				jump		<='0';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="10";
				MemWrite	<='0';
				ALUsrc	<='0';
				RegWrite <='1';
				
				WHEN iADDI =>
				--ADDI
				RegDest	<='0';
				jump		<='0';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="00";
				MemWrite	<='0';
				ALUsrc	<='1';
				RegWrite <='1';
				
				WHEN iORI =>
				--ORI
				RegDest	<='0';
				jump		<='0';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="10";
				MemWrite	<='0';
				ALUsrc	<='1';
				RegWrite <='1';
				
				WHEN iJ =>
				--J
				RegDest	<='0';
				jump		<='1';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="00";
				MemWrite	<='0';
				ALUsrc	<='0';
				RegWrite <='0';
				
				WHEN iBEQ =>
				--BEQ
				RegDest	<='0';
				jump		<='0';
				branch	<='1';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="01";
				MemWrite	<='0';
				ALUsrc	<='0';
				RegWrite <='0';
				
				WHEN iBNE =>
				--BNE
				RegDest	<='0';
				jump		<='0';
				branch	<='1';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="01";
				MemWrite	<='0';
				ALUsrc	<='0';
				RegWrite <='0';
				
				WHEN OTHERS =>
				--NOP
				RegDest	<='0';
				jump		<='0';
				branch	<='0';
				MemRead	<='0';
				MemToReg	<='0';
				ALUop		<="00";
				MemWrite	<='0';
				ALUsrc	<='0';
				RegWrite <='0';
				
			END CASE;
		END IF;
	END PROCESS;
	
END control_op;
			
			
			
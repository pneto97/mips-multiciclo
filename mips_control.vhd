LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use work.mips_pkg.all;

ENTITY mips_control IS

	PORT
	(
		clk, rst	: IN std_logic;
		opcode	: IN std_logic_vector (5 DOWNTO 0);
		wr_ir		: OUT std_logic;
		wr_pc		: OUT std_logic;
		wr_mem	: OUT std_logic;
		is_beq	: OUT std_logic; 
		is_bne	: OUT std_logic;
		s_datareg: OUT std_logic;
		op_alu	: OUT std_logic_vector (1 DOWNTO 0);
		s_mem_add: OUT std_logic;
		s_PCin	: OUT std_logic_vector (1 DOWNTO 0);
		s_aluAin : OUT std_logic;
		s_aluBin : OUT std_logic_vector (1 DOWNTO 0); 
		wr_breg	: OUT std_logic;
		s_reg_add: OUT std_logic;
		s_extensor_imm : OUT std_logic; -- Novo sinal para controlar o mux que faz extensão de sinal (0 com sinal, 1 sem sinal)
		 -- sinais de load
		mux_8_load: OUT std_logic_vector(1 downto 0);
		mux_16_load	: OUT std_logic; 
		resize32_8: OUT std_logic;
		resize32_16: OUT std_logic;
		mux_32_load: OUT std_logic_vector(1 downto 0)
		
	);
	
END ENTITY;

ARCHITECTURE control_op OF mips_control IS

	type ctr_state is (	fetch_st,     -- 0000
								decode_st,    -- 0001
								c_mem_add_st, -- 0010
								readmem_st, 
								ldreg_st, 
								writemem_st, 
								rtype_ex_st, 
								writereg_st, 
								branch_ex_st, 
								jump_ex_st,
								arith_imm_st, -- escreve resultado op arit. imediato
								logic_imm_st -- escreve resultado op arit. logic
								);  
	signal pstate, nstate : ctr_state;

	BEGIN
	
reg: process(clk, rst)
	begin
		if (rst = '1') then 
			pstate <= fetch_st;
		elsif (rising_edge(clk)) then 
			pstate <= nstate;
		end if;
	end process;
		
logic: process (opcode, pstate)
	begin
		wr_ir		<= '0';
		wr_pc		<= '0';
		wr_mem		<= '0';
		wr_breg		<= '0';
		is_beq 		<= '0';
		is_bne 		<= '0';
		op_alu		<= "00";
		s_datareg 	<= '0';
		s_mem_add 	<= '0';
		s_PCin		<= "00";
		s_aluAin 	<= '0';
		s_aluBin  	<= "00";
		s_reg_add 	<= '0';
		s_extensor_imm <= '0'; -- Novo sinal que escolhe se vai extender com sinal (0) ou sem sinal (1)
		
		case pstate is 
			when fetch_st 		=> wr_pc 	<= '1';
										s_aluBin <= "01";
										wr_ir 	<= '1';
								
			when decode_st 	=>	s_aluBin <= "11";
								
			when c_mem_add_st => s_aluAin <= '1';
										s_aluBin <= "10";
									
			when readmem_st 	=> s_mem_add <= '1';
								 
			when ldreg_st 		=>	s_datareg <= '1';
										wr_breg	  <= '1';
								
			when writemem_st 	=> wr_mem 	 <= '1';
										s_mem_add <= '1';
									
			when rtype_ex_st	=> 	op_alu <= "10";
											s_aluAin <= '1';
										
									
			when writereg_st 	=> s_reg_add <= '1';
										wr_breg <= '1';
								  
			when branch_ex_st => s_aluAin <= '1';
										op_alu <= "01";
										s_PCin <= "01";
										if opcode = iBEQ 
										then is_beq <= '1';
										else is_bne <= '1';
										end if;
									
			when jump_ex_st 	=>	s_PCin  <= "10";
										wr_pc   <= '1';
										
			when arith_imm_st => wr_breg <= '1';
										s_extensor_imm <= '0'; -- imediato extende com sinal
										s_reg_add <= '0'; -- escreve em rt
										
			when logic_imm_st => wr_breg <= '1';
										s_extensor_imm <= '1'; -- imediato extende sem sinal
										s_reg_add <= '0'; -- escreve em rt
		end case;
	end process;
	
new_state: process (opcode, pstate)
		begin
		
			nstate <= fetch_st;
			
			case pstate is
			when fetch_st => 	nstate <= decode_st;
			when decode_st =>	case opcode is
									when iRTYPE => nstate <= rtype_ex_st;
									when iLW | iSW | iADDI | iORI | iANDI | iLH | iLHU | iLB | iLBU | iSH | iSB  => nstate <= c_mem_add_st; 
									when iBEQ | iBNE => nstate <= branch_ex_st;
									when iJ => nstate <= jump_ex_st;
									when others => null;
									end case;
			when c_mem_add_st => case opcode is 
									when iLW | iLH | iLHU | iLB | iLBU => nstate <= readmem_st; -- aqui ficaram todas as instrucoes de leitura da mem
									when iSW | iSH | iSB => nstate <= writemem_st; -- aqui ficaram todas as instrucoes de escrita da mem
									when iADDI => nstate <= arith_imm_st; -- aqui ficaram as instrucoes aritmeticas com imm, n tenho ctz
									when iORI | iANDI => nstate <= logic_imm_st; -- instrucoes logicas
									when others => null;
								 end case;
			when readmem_st 	=> nstate <= ldreg_st;
			when rtype_ex_st 	=> nstate <= writereg_st;
			when others 		=> nstate <= fetch_st;
			end case;
		end process;
		
end control_op;
				
	
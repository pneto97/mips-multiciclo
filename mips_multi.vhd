-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;
use IEEE.numeric_std.all;

entity Multiciclo is
	port 
	(
		clk		: in std_logic;
		clk_rom	: in std_logic;
		rst	   : in std_logic;
		debug		: in std_logic_vector(1 downto 0);
		data  	: out std_logic_vector(WORD_SIZE-1 downto 0)
	);
end entity;

architecture rtl of Multiciclo is

--=======================================================================
-- Convencoes:
--        _v - sufixo para std_logic_vector
--	       _s - sufixo para std_logic
--
--=======================================================================


signal 	pcin_v 		: std_logic_vector(WORD_SIZE-1 downto 0) := (others => '0');		-- entrada PC
signal 
			pcout_v,  		-- saida PC
			pccond_v,		-- PC somado ao offset
			pcbranch_v,		-- Saida primeiro mux PC
			pcjump_v,  		-- Endereco de Jump
			regdata_v,		-- entrada de dados BREG
			memout_v,		-- saida da memoria
			rdmout_v,		-- saida do registrador de dados da memoria
			rULA_out_v,		-- registrador na saida da ula
			memadd_v,		-- endereco da memoria
			datadd_v,		-- endereco de dado na memoria
			regAin_v,		-- saida A do BREG
			regBin_v,		-- saida B do BREG
			regA_v,			-- saida A do BREG
			regB_v,			-- saida B do BREG
			aluA_v,			-- entrada A da ULA
			aluB_v,			-- entrada B da ULA
			alu_out_v,		-- saida ULA
			PCouA_v,			-- saida do mux que decide entre o PC ou a saida A do reg
			instruction_v,	-- saida do reg de instrucoes
			imm32_x4_v,	   -- imediato extendido e multiplicado por 4
			imm32_v,			-- imediato extendido a 32 bits
			imm32usng_v,	-- imediato extendido sem sinal a 32 bits
			shamt32usng_v,	-- shamt extendido sem sinal a 32 bits
			ext_out_v		-- o valor extendido final de acordo o sel_extensor_v
			: std_logic_vector(WORD_SIZE-1 downto 0);
			
signal addsht2_v 			: std_logic_vector(WORD_SIZE-1 downto 0);
signal rset_s, clock_s 	: std_logic;
signal iwreg_v 			: std_logic_vector(4 downto 0);  -- indice registador escrito
signal alu_sel_v			: std_logic_vector(3 downto 0);  -- indice registador escrito
signal sel_aluB_v 		: std_logic_vector(1 downto 0);	-- seleciona entrada B da ula
signal alu_op_v			: std_logic_vector(2 downto 0);	-- codigo op ula
signal org_pc_v			: std_logic_vector(1 downto 0);	-- selecao entrada do PC
signal byte_en_v			: std_logic_vector(3 downto 0);	-- sinal de byte enable (0001 pega o byte 1, 0010 pega o byte 2, ...)
signal memadd_final_v   : std_logic_vector(7 downto 0);  -- sinal que entra de endereço na memoria

signal 	
			branch_s,		-- beq ou bne
			is_beq_s,    	-- beq
			is_bne_s,		-- bne
			ir_wr_s,			-- escreve instrucao no ir
			jump_s,			-- instrucao jump
			mem_read_s,		-- leitura memoria
			mem_reg_s,		-- controle dado breg
			mem_wr_s,		-- escrita na memoria
			--ovfl_s,			-- overflow da ULA
			pc_wr_s,			-- escreve pc
			reg_dst_s,		-- controle endereco reg
			reg_wr_s,		-- escreve breg
			sel_aluA_s,		-- seleciona entrada A da ula
			sel_shamt_s,	-- seleciona o shamt ou nao para operacoes shift
			sel_extensor_s,-- seleciona o extensor (imm sem sinal ou imm com sinal)
			sel_end_mem_s,	-- seleciona endereco memoria
			zero_s			-- sinal zero da ula
			: std_logic;
			

			
alias    func_field_v 	: std_logic_vector(5 downto 0)  is instruction_v(5 downto 0);
alias    rs_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(25 downto 21);
alias    rt_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(20 downto 16);
alias    rd_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(15 downto 11);
alias    imm16_field_v	: std_logic_vector(15 downto 0) is instruction_v(15 downto 0);
alias 	imm26_field_v  : std_logic_vector(25 downto 0) is instruction_v(25 downto 0);
alias 	sht_field_v		: std_logic_vector(4 downto 0)  is instruction_v(10 downto 6);
alias    op_field_v		: std_logic_vector(5 downto 0)  is instruction_v(31 downto 26);

-- ======================
-- Logica de load e store
-- ======================


-- Sinais de saida do esquematico de loads

signal mux_8_load_out_v	: std_logic_vector(7 downto 0); -- Saida do mux de entradas de 8 bits do circuito de load
signal mux_16_load_out_v : std_logic_vector(15 downto 0); -- Saída do mux de entradas de 16 bits do circ. de load
signal resize32_8_out_v	:	std_logic_vector(31 downto 0); -- saida do resize de 8 para 32
signal resize32_16_out_v :	std_logic_vector(31 downto 0); -- saida do resize de  16 para 32
signal mux_32_load_out_v : std_logic_vector(31 downto 0); -- Saida do ultimo mux do esquematico do load

-- Sinais de controle para tratamento de loads
signal mux_8_load_sel_v	:	std_logic_vector(1 downto 0); 
signal mux_16_load_sel_s	:	std_logic; 
signal resize32_8_sel_s:	std_logic;
signal resize32_16_sel_s:	std_logic;
signal mux_32_load_sel_v:	std_logic_vector(1 downto 0);

-- Sinais de saida para tratamento de store
signal byte_out_v:	std_logic_vector(31 downto 0); 
signal half_word_out_v: std_logic_vector(31 downto 0);
signal mem_in: std_logic_vector(31 downto 0); -- O sinal que vai entrar na memoria ram 
 
-- Sinais de controle para tratamento de stores
signal store_sel: 	std_logic_vector(1 downto 0); 
begin

data 			<=  pcout_v when debug = "00" else
					 alu_out_v when debug = "01" else
					 instruction_v when debug = "10" else
					 memout_v;

pcjump_v 	<= pcout_v(31 downto 28) & imm26_field_v & "00";

pc_wr_s 		<= jump_s or (zero_s and is_beq_s) or ((not zero_s) and is_bne_s);

imm32_x4_v 	<= imm32_v(29 downto 0) & "00";

--datadd_v		<= X"000000" & '1' & rulA_out_v(8 downto 2);
datadd_v		<= X"00000" & "001" & rulA_out_v(8 downto 0);
--=======================================================================
-- PC - Contador de programa
--=======================================================================
pc:	reg 
		generic map (SIZE => 32)
		port map (sr_in => pcin_v, sr_out => pcout_v, rst => rst, clk => clk, enable => pc_wr_s);

--=======================================================================
-- mux para enderecamento da memoria
--=======================================================================		
mux_mem: mux_2
		port map (
			in0 	=> pcout_v,
			in1 	=> datadd_v,
			sel 	=> sel_end_mem_s,
			m_out => memadd_v
			);
--=======================================================================
-- mux para enderecamento da memoria 2
--=======================================================================	
mux_mem2: mux2_8bits
		port map (
			in0 	=> memadd_v(9 downto 2), -- se for PC
			in1 	=> memadd_v(9 downto 2), -- se for dado
			sel 	=> sel_end_mem_s,
			m_out => memadd_final_v
			);
		
--=======================================================================
-- Decodificacao do byte enable
--=======================================================================	
decoder: decoder2_4
		port map
		( B => memadd_v(1 downto 0),A => store_sel, X => byte_en_v, EN => '1');
		
--=======================================================================
-- Caminho entre REG B e memoria - Trata os STORES
--=======================================================================	

byte_selector: byte_select
		port map
		(
		w_in	=> regB_v(7 downto 0),
		sel	=> memadd_v(1 downto 0),	
		w_out	=> byte_out_v
		);
		
half_word_selector: half_word_select
		port map
		(
		w_in	=> regB_v(15 downto 0),
		sel	=> memadd_v(1),	
		w_out	=> half_word_out_v
		);

mux32_s: mux_32
		port map(in0 => byte_out_v,
					in1 => half_word_out_v,
					in2 => regB_v,
					sel => store_sel,
					m_out => mem_in);
		
--=======================================================================
-- Memoria do MIPS com o byte enable
--=======================================================================		
mem:  mips_ram
		port map (address => memadd_final_v, byteena => byte_en_v, data => mem_in, wren => mem_wr_s, clock => clk_rom, Q => memout_v );
	
--=======================================================================
-- RI - registrador de instruções
--=======================================================================	
ir:	reg
		generic map (SIZE => 32)
		port map (sr_in => memout_v, sr_out => instruction_v, rst => '0', clk => clk, enable => ir_wr_s );
		
--=======================================================================
-- Caminho entre Memoria e reg de dados - Trata os LOADS
--=======================================================================	


mux8_l:	mux_8_load
		port map(in0 => memout_v(31 downto 24),
					in1 => memout_v(23 downto 16),
					in2 => memout_v(15 downto 8),
					in3 => memout_v(7 downto 0),
					--sel => mux_8_load_sel_v,
					sel => memadd_v(1 downto 0), -- pega offset do byte
					m_out => mux_8_load_out_v);


mux16_l:	mux_16_load
		port map(in0 => memout_v(31 downto 16),
					in1 => memout_v(15 downto 0),
					--sel => mux_16_load_sel_s,
					sel => memadd_v(1), -- pega offset do half word
					m_out => mux_16_load_out_v);	
					
res32_8: resize32_8
		port map(rs_in => mux_8_load_out_v,
					sel => resize32_8_sel_s,
					rs_out => resize32_8_out_v);
					
res32_16: resize32_16
		port map(rs_in => mux_16_load_out_v,
					sel => resize32_16_sel_s,
					rs_out => resize32_16_out_v);
					
mux32_l: mux_32
		port map(in0 => resize32_8_out_v,
					in1 => resize32_16_out_v,
					in2 => memout_v,
					sel => mux_32_load_sel_v,
					m_out => mux_32_load_out_v);
		

--=======================================================================
-- RDM - registrador de dados da memoria
--=======================================================================
rdm:	regbuf 
		generic map (SIZE => 32)
		--port map (sr_in => memout_v, clk => clk, sr_out => rdmout_v);
		port map (sr_in => mux_32_load_out_v, clk => clk, sr_out => rdmout_v);
	
--=======================================================================
-- Mux para enderecamento do registrador a ser escrito
--=======================================================================
mux_reg_add: mux_2 
		generic map (SIZE => 5)
		port map (in0 => rt_field_v,
					 in1 => rd_field_v,
					 sel => reg_dst_s,
					 m_out => iwreg_v);
					 
--=======================================================================
-- Mux de selecao de dado para escrita no banco de registradores
--=======================================================================					 
breg_data_mux: mux_2 
		generic map (SIZE => 32)
		port map (in0 => rULA_out_v,
					 in1 => rdmout_v,
					 sel => mem_reg_s,
					 m_out => regdata_v);
		
--=======================================================================
-- Banco de registradores
--=======================================================================		
bcoreg: breg 
		port map (
			clk		=> clk,
			enable	=> reg_wr_s,
			idxA		=> rs_field_v,
			idxB		=> rt_field_v,
			idxwr		=> iwreg_v,
			data_in	=> regdata_v,
			regA 		=> regAin_v,
			regB 		=> regBin_v
			);
			
--=======================================================================
-- Registrador A
--=======================================================================			
rgA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regAin_v, clk => clk, sr_out => regA_v);

--=======================================================================
-- Registrador B
--=======================================================================
rgB:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regBin_v, clk => clk, sr_out => regB_v);
		
--=======================================================================
-- Modulo de extensao de sinal: 16 para 32 bits
--=======================================================================
sgnx:	extsgn
		port map (
			input => imm16_field_v, output => imm32_v
		);

--=======================================================================
-- Modulo de extensao sem sinal: 16 para 32 bits
--=======================================================================
usgnx:	extusgn
		port map (
			input => imm16_field_v, output => imm32usng_v
		);
		
--=======================================================================
-- Modulo de extensao do shamt (sem sinal): 5 para 32 bits
--=======================================================================
shamtx:	extshamt
		port map (
			input => sht_field_v, output => shamt32usng_v
		);
		
--=======================================================================
-- Mux para selecao de qual extensor de sinal devo usar
--=======================================================================		
mux_extensor: mux_2
		port map (
			in0 	=> imm32_v, 
			in1 	=> imm32usng_v,
			sel 	=> sel_extensor_s,
			m_out => ext_out_v
		);	

		
--=======================================================================
-- Mux para escolher o shamt ou a saida do mux de cima da ula (Pc ou A)
--=======================================================================		
mux_shift: mux_2
		port map (
			in0 	=> PCouA_v, 
			in1 	=> shamt32usng_v,
			sel 	=> sel_shamt_s,
			m_out => aluA_v
		);
		
--=======================================================================
-- Mux para selecao da entrada de cima da ula
--=======================================================================		
mux_ulaA: mux_2
		port map (
			in0 	=> pcout_v, 
			in1 	=> regA_v,
			sel 	=> sel_aluA_s,
			m_out => PCouA_v
		);
		
--=======================================================================
-- Mux para selecao da entrada de baixo da ULA
--=======================================================================				
mux_ulaB: mux_4
		port map (
			in0 	=> regB_v, 
			in1 	=> INC_PC,
			in2	=> ext_out_v,
			in3	=> imm32_x4_v,
			sel 	=> sel_aluB_v,
			m_out => aluB_v
		);	

--=======================================================================
-- Modulo de controle da ULA
--=======================================================================		
actr: alu_ctr
			port map (
				op_alu 	=> alu_op_v,
				funct	 	=> func_field_v,
				alu_ctr	=> alu_sel_v,
				shift => sel_shamt_s
			);

--=======================================================================
-- ULA
--=======================================================================		
alu:	ulamips 
		port map (
			aluctl => alu_sel_v,
			A 		 => aluA_v,
			B		 => aluB_v,
			aluout => alu_out_v,
			zero	 => zero_s
			--ovfl 	 => ovfl_s
		);
		
--=======================================================================
-- Registrador que armazena a saida da ULA
--=======================================================================			
regULA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => alu_out_v, clk => clk, sr_out => rULA_out_v);		
		
--=======================================================================
-- Mux para selecao da entrada do PC
--=======================================================================		
mux_pc: mux_3
		port map (
			in0 	=> alu_out_v,
			in1 	=> rULA_out_v,
			in2   => pcjump_v,
			sel 	=> org_pc_v,
			m_out => pcin_v
			);
			
--=======================================================================
-- Unidade de Controle do MIPS
--=======================================================================		
ctr_mips: mips_control
		port map (	
			clk 		=> clk,
			rst 		=> rst,
			opcode 	=> op_field_v,	
			wr_ir		=> ir_wr_s,
			wr_pc		=> jump_s,
			wr_mem	=> mem_wr_s,
			is_beq	=> is_beq_s,
			is_bne	=> is_bne_s,
			s_datareg => mem_reg_s,
			op_alu	=> alu_op_v,
			s_mem_add => sel_end_mem_s,
			s_PCin	=> org_pc_v,
			s_aluAin => sel_aluA_s,
			s_aluBin => sel_aluB_v,
			wr_breg	=> reg_wr_s,
			s_reg_add => reg_dst_s,
			s_extensor_imm => sel_extensor_s,
			
			-- load
--			mux_8_load => mux_8_load_sel_v,
--			mux_16_load	=> mux_16_load_sel_s,
			resize32_8 => resize32_8_sel_s,
			resize32_16 => resize32_16_sel_s,
			mux_32_load => mux_32_load_sel_v,
			-- Store
			store_sel_ctr => store_sel

			
		);
		
end architecture;
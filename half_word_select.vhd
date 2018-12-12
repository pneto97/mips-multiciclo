--library ieee;
--use ieee.std_logic_1164.all;
--use work.mips_pkg.all;
--
--entity half_word_select is
--	generic (
--		SIZE : natural := 32);
--	port 
--	(
--		w_in	   : in std_logic_vector(SIZE-1 downto 0); --Palavra de entrada
--		sel		: in std_logic; --seleciona a posicao do offset
--		w_out	: out std_logic_vector(SIZE-1 downto 0) -- Palavra de saida com os zeros
--		
--	);
--end entity;
--
--architecture rtl of half_word_select is
--begin
--	w_out <= (w_in and X"0000FFFF") when (sel = '0') else
--				(w_in and X"FFFF0000");
--end rtl;

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity half_word_select is
	generic (
		SIZE : natural := 32);
	port 
	(
		w_in	   : in std_logic_vector(15 downto 0); -- Half word de entrada
		sel		: in std_logic ; --seleciona a posicao do offset
		w_out	: out std_logic_vector(SIZE-1 downto 0) -- Palavra de saida com os zeros
		
	);
end entity;

architecture rtl of half_word_select is
signal tmp1 : std_logic_vector(31 downto 0);
signal tmp2 : std_logic_vector(31 downto 0);
begin
	tmp1 <= w_in & w_in;
	
	
	
	tmp2 <= 	(tmp1 and X"0000FFFF") when (sel = '0') else
				(tmp1 and X"FFFF0000");
	
	w_out <= tmp2;
end rtl;
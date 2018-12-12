library ieee;
use ieee.std_logic_1164.all;

entity half_word_select is
	generic (
		SIZE : natural := 32);
	port 
	(
		w_in	   : in std_logic_vector(SIZE-1 downto 0); --Palavra de entrada
		sel		: in std_logic; --seleciona a posicao do offset
		w_out	: out std_logic_vector(SIZE-1 downto 0) -- Palavra de saida com os zeros
		
	);
end entity;

architecture rtl of half_word_select is
begin
	w_out <= (w_in and X"0000FFFF") when (sel = '0') else
				(w_in and X"FFFF0000");
end rtl;

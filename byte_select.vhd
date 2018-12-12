library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity byte_select is
	generic (
		SIZE : natural := 32);
	port 
	(
		w_in	   : in std_logic_vector(7 downto 0); --B de entrada
		sel		: in std_logic_vector(1 downto 0); --seleciona a posicao do offset
		w_out	: out std_logic_vector(SIZE-1 downto 0) -- Palavra de saida com os zeros
		
	);
end entity;

architecture rtl of byte_select is
signal tmp1 : std_logic_vector(31 downto 0);
signal tmp2 : std_logic_vector(31 downto 0);
begin

	tmp1 <= w_in & w_in & w_in & w_in;
	
	tmp2 <= 	(tmp1 and X"000000FF") when (sel = "00") else 
				(tmp1 and X"0000FF00") when (sel = "01") else
				(tmp1 and X"00FF0000") when (sel = "10") else
				(tmp1 and X"FF000000"); 
	
	w_out <= tmp2;
end rtl;
-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity byte_select_tb is
end entity;

architecture tb of byte_select_tb is

signal w_in	:   std_logic_vector(7 downto 0); --B de entrada
signal sel	:	std_logic_vector(1 downto 0); --seleciona a posicao do offset
signal w_out:	std_logic_vector(31 downto 0); -- Palavra de saida com os zeros

COMPONENT byte_selector
	port 
	(
		w_in	   : in std_logic_vector(7 downto 0); --B de entrada
		sel		: in std_logic_vector(1 downto 0); --seleciona a posicao do offset
		w_out	: out std_logic_vector(31 downto 0) -- Palavra de saida com os zeros
		
	);
END COMPONENT;

begin

i3 : byte_select
PORT MAP (
w_in => w_in,
sel => sel,
w_out => w_out
);

w_in 	<= X"AA" after 30 ps, X"BB" after 60 ps, X"CC" after 90 ps, X"DD" after 130 ps; 
sel  <= "00" after 30 ps, "01" after 60 ps, "10" after 90 ps, "11" after 130 ps; 



end architecture;
				
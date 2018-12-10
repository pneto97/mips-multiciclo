library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

entity mux_n is
	generic (
		W_SIZE 	: natural := 32
		B_SIZE	: natura := 8
			);
	port (
	 	in0: in std_logic_vector(W_SIZE-1 downto 0);
		sel						: in std_logic_vector(1 downto 0);
		d_out0						: out std_logic_vector(B_SIZE-1 downto 0);
		d_out1						: out std_logic_vector(B_SIZE-1 downto 0);
		d_out2						: out std_logic_vector(B_SIZE-1 downto 0);
		d_out3						: out std_logic_vector(B_SIZE-1 downto 0);
		
		
		);
end entity;

architecture rtl of mux_n is 
begin
	d_out <= in0(7 downto 0) when (sel = "00") else 
				in0(15 downto 8) when (sel = "01") else
				in0(23 downto 16) when (sel = "10") else
				in0(31 downto 24);
end architecture;
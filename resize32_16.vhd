library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity resize32_16 is
	generic (
		WSIZE : natural := 32);
	port 
	(

		rs_in	   : in std_logic_vector(15 downto 0);
	   sel			: in std_logic; -- 1 lh, 0 lhu
		rs_out	: out std_logic_vector(WSIZE-1 downto 0)
	);
end entity;

architecture rtl of resize32_16 is
begin
	rs_out <= std_logic_vector(resize(unsigned(rs_in), rs_out'length)) when (sel = '0') else
				std_logic_vector(resize(signed(rs_in), rs_out'length));
end rtl;

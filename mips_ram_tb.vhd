-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity mips_ram_tb is
end entity;

architecture tb of mips_ram_tb is

signal address :		STD_LOGIC_VECTOR (7 DOWNTO 0);
signal byteena		:  STD_LOGIC_VECTOR (3 DOWNTO 0) :=  (OTHERS => '1');
signal clock		:  STD_LOGIC  := '1';
signal data		: 		STD_LOGIC_VECTOR (31 DOWNTO 0);
signal wren		: STD_LOGIC := '1';
signal q		:  STD_LOGIC_VECTOR (31 DOWNTO 0);

COMPONENT ram
port (
	address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	byteena		: IN STD_LOGIC_VECTOR (3 DOWNTO 0) :=  (OTHERS => '1');
	clock		: IN STD_LOGIC  := '1';
	data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	wren		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END COMPONENT;

begin

i2 : mips_RAM
PORT MAP (
address => address,
byteena => byteena,
clock => clock,
data => data,
wren => wren,
q => q
);


init : PROCESS         
begin
-- le addr 0
address <= "00000000";
byteena <= "1111";
wren <= '0';

wait for 30 ps;

-- le addr 1
address <= "00000001";
byteena <= "1111";
wren <= '0';
wait for 30 ps;

--le addr 2
address <= "00000010";
byteena <= "1111";
wren <= '0';

wait for 30 ps;

--escreve no addr 2
address <= "00000010";
byteena <= "0001";
data     <= X"1234ABCD";
wren <= '1';
wait for 30 ps;

--escreve no addr 1
address <= "00000001";
byteena <= "1100";
data     <= X"12340000";
wren <= '1';
wait for 30 ps;

--escreve no addr 4
address <= "00000100";
byteena <= "1100";
data     <= X"AAAA0100";
wren <= '1';
wait for 30 ps;

--address 	<= "00000000" after 30 ps, "00000001" after 60 ps, "00000010" after 90 ps; 
--byteena  <= "0001" after 30 ps, "1100" after 60 ps, "1110" after 90 ps; 
--data     <= X"1234ABCD" after 30 ps, X"FFDDCCBB" after 60 ps, X"12345678" after 90 ps;

END PROCESS init; 


genclk: 	process (clock) begin
				clock <= not clock after 10 ps;
			end process;


end architecture;
				
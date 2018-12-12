--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity decoder2_4 is
--    Port ( A  : in  STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
--           X  : out STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit output
--           EN : in  STD_LOGIC);                     -- enable input
--end decoder2_4;
--
--architecture Behavioral of decoder2_4 is
--begin
--process (A, EN)
--begin
--    X <= "1111";        -- default output value
--    if (EN = '1') then  -- active high enable pin
--		case A is
--            when "00" => X <= "0001";
--            when "01" => X <= "0010";
--            when "10" => X <= "0100";
--            when "11" => X <= "1000";
--            when others => X <= "1111";
--		end case;
--    end if;
--end process;
--end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder2_4 is
    Port ( 	A  : in  STD_LOGIC_VECTOR (1 downto 0);  -- Qual tipo de store: 00 => sb, 01 => sh, 10 => sw
				B  : in  STD_LOGIC_VECTOR (1 downto 0);  -- Os bits a1a0 que dizem qual byte ou half word queremos
				X  : out STD_LOGIC_VECTOR (3 downto 0);  -- Byte enable decodificado para 4 bits
				EN : in  STD_LOGIC);                     -- enable input
end decoder2_4;

architecture Behavioral of decoder2_4 is
signal selec : STD_LOGIC_VECTOR (3 downto 0);
begin

selec <= A & B;
process (selec, EN)
begin
    X <= "1111";        -- default output value
    if (EN = '1') then  -- active high enable pin
		case selec is
            when "0000" => X <= "0001"; -- sb, primeiro byte
            when "0001" => X <= "0010"; -- sb, segundo byte
            when "0010" => X <= "0100"; -- sb, terceiro byte
            when "0011" => X <= "1000"; -- sb, quarto byte
				when "0100" => X <= "0011"; -- sh, primeira meia palavra
				when "0101" => X <= "0011"; -- sh, primeira meia palavra
            when "0110" => X <= "1100"; -- sh, segunda meia palavra 
				 when "0111" => X <= "1100"; -- sh, segunda meia palavra 
            when others => X <= "1111"; -- sw, palavra inteira
		end case;
    end if;
end process;
end Behavioral;


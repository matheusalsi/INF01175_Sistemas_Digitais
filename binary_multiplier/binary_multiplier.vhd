----------------------------------------------------------------------------------
-- Sistemas Digitais Para Computadores A
-- 30/08/2022
-- Multiplicador Binário - Slide12_SD_PCPO_ASM
-- Matheus Almeida Silva - 00316326
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity binary_multiplier is
    Port ( clk : in  STD_LOGIC;
           st : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
           InputA : in  STD_LOGIC_VECTOR (3 downto 0);
           InputB : in  STD_LOGIC_VECTOR (3 downto 0);
           OutputP : out  STD_LOGIC_VECTOR (8 downto 0);
			  done : out STD_LOGIC );
end binary_multiplier;

architecture Behavioral of binary_multiplier is
type state_type is (s0, s1, s2, s3);
signal state : state_type;
signal counterK : STD_LOGIC_VECTOR (3 downto 0);
signal reg : STD_LOGIC_VECTOR (8 downto 0);

signal load, shift, ad : STD_LOGIC;

begin
reg(3 downto 0) <=  inputA(3 downto 0);

-- PARTE CONTROLE
-- FSM
process (clk, rst)
begin
	if rst = '1' then
        state <= s0;
    elsif(clk'event and clk='1') then
        case state is
				when s0 =>
					if start = '1' then
						state <= s1;
					else
						state <= s0;
					end if;
			end case;
    end if;
end process;

process (state, start)
begin
end process;


-- PARTE OPERATIVA
process (clk, rst)
begin
	if rst='1' then
		reg <= "00000000";
   elsif (clk'event and clk='1') then
		if (load = '1') then
			if (shift = '1') then
				
			elsif (ad = '1') then
				reg(7 downto 4) <=
			else
				
			end if;		
		else
			reg <= reg;
		end if;
	end if;
end process;

end Behavioral;


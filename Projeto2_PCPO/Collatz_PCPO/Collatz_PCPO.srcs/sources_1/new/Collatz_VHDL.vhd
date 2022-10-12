----------------------------------------------------------------------------------
-- Projeto 2 - Conjectura De Collatz
-- Alunos:  Luccas da Silva Lima  - 324683
--          Matheus Almeida Silva - 316326
-- VHDL do PCPO da Conjectura de Collatz
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Collatz_VHDL is
    Port ( start : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in  STD_LOGIC;
           inputX : in STD_LOGIC_VECTOR (7 downto 0);
           done : out STD_LOGIC;
           greatest : out STD_LOGIC_VECTOR (15 downto 0);
           steps : out STD_LOGIC_VECTOR (7 downto 0));
end Collatz_VHDL;

architecture Behavioral of Collatz_VHDL is
    --MUX
    signal SEL: STD_LOGIC := '0';
    signal outputMuxA: STD_LOGIC_VECTOR (15 downto 0);
    signal outputMuxB: STD_LOGIC_VECTOR (15 downto 0);
    --RA
    signal LDA_RA: STD_LOGIC := '0';
    signal RST_RA: STD_LOGIC := '0';
    signal SHR_RA: STD_LOGIC := '0';
    signal outputRA: STD_LOGIC_VECTOR (15 downto 0);
    --RB
    signal LDA_RB: STD_LOGIC := '0';
    signal RST_RB: STD_LOGIC := '0';
    signal outputRB: STD_LOGIC_VECTOR (15 downto 0);
    --COUNT
    signal INC_COUNT: STD_LOGIC := '0';
    signal RST_COUNT: STD_LOGIC := '0';
    signal outputCOUNT: STD_LOGIC_VECTOR (7 downto 0);
    --TESTS
    signal outputT1: STD_LOGIC := '0';
    signal outputT2: STD_LOGIC := '0';
    signal outputT3: STD_LOGIC := '0';
    signal outputT4: STD_LOGIC := '0';
    -- Estados
    type state_type is (S0, S1, S2, S3, S4, S5, S6, SF, S1T, S2T, S5T);
    signal state, nextState : state_type;
    
    begin
    -- PARTE OPERATIVA
    -- PROCESS MUX
    MUX : process(SEL, inputX, outputRA)
    variable inputMUXA : STD_LOGIC_VECTOR(31 downto 0);
    begin
        if  (SEL = '1') then
            outputMuxA(15 downto 8) <= "00000000";
            outputMuxA(7 downto 0) <= inputX;
            outputMuxB(15 downto 8) <= "00000000";
            outputMuxB(7 downto 0) <= inputX;
        else
            inputMuxA := STD_LOGIC_VECTOR(unsigned(outputRA) * 3 + 1);
            outputMUXA <= inputMUXA(15 downto 0);
            outputMuxB <= outputRA;
        end if;
    end process;
    -- PROCESS RA
    RA : process(clk, rst)
    begin
        if rst = '1' then
                outputRA <= "0000000000000000";
        elsif rising_edge(clk) then
            if (LDA_RA = '1') then
                if (SHR_RA = '1') then
                    outputRA <= STD_LOGIC_VECTOR(shift_right(unsigned(outputRA),1));
                else
                    outputRA <= outputMuxA;
                end if; 
            elsif (RST_RA = '1') then
                outputRA <= "0000000000000000";
            else
                outputRA <= outputRA;
            end if;
        end if;
    end process;
    -- PROCESS RB
    RB : process(clk, rst)
    begin
        if rst = '1' then
                outputRB <= "0000000000000000";
        elsif rising_edge(clk) then
            if (LDA_RB = '1') then
                outputRB <= outputMuxB;
            elsif (RST_RA = '1') then
                outputRB <= "0000000000000000";
            else
                outputRB <= outputRB;
            end if;
        end if;
    end process;
    -- PROCESS COUNT
    COUNT : process(clk, rst)
    begin
        if rst = '1' then
                outputCOUNT <= "00000000";
        elsif rising_edge(clk) then
            if (INC_COUNT = '1') then
                outputCOUNT <= STD_LOGIC_VECTOR(unsigned(outputCOUNT) + 1);
            elsif (RST_COUNT = '1') then
                outputCOUNT <= "00000000";
            end if;
        end if;
    end process;
    -- PROCESS TESTS
    TESTS : process(outputRA, outputRB)
    begin
        if (outputRA > "0000000000000000") then
            outputT1 <= '1';
        else
            outputT1 <= '0';
        end if;
        if (outputRA = "0000000000000001") then
            outputT2 <= '1';
        else
            OutputT2 <= '0';
        end if;
        if (outputRA(0) = '0') then
            outputT3 <= '1';
        else
            outputT3 <= '0';
        end if;
        if (outputRA > outputRB) then
            outputT4 <= '1';
        else
            outputT4 <= '0';
        end if;
    end process;
    
    --PARTE CONTROLE
    --PROCESS STATES REGISTERS
    RStates: process(rst, clk)
    begin
        if rst = '1' then
            state <= S0;
        elsif rising_edge(clk) then
            state <= nextState;
        end if;
    end process;
    
    --PROCESS FSM
    FSM : process(state, nextState, start, outputT1, outputT2, outputT3, outputT4)
    begin
        LDA_RA <= '0';
        RST_RA <= '0';
        SHR_RA <= '0';
        LDA_RB <= '0';
        RST_RB <= '0';
        RST_COUNT <= '0';
        INC_COUNT <= '0';
        SEL <= '0';
        DONE <= '0';
        
        case state is
            when S0=>
                RST_RA <= '1';
                RST_RB <= '1';
                RST_COUNT <= '1';
                if (start = '1') then
                    nextState <= S1;
                else
                    nextState <= S0;
                end if;
            when S1=>
                LDA_RA <= '1';
                LDA_RB <= '1';
                RST_RA <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                SEL <= '1';
                nextState <= S1T;
            when S1T=>
                if (outputT1 = '1') then
                    if (outputT2 = '1') then
                        nextState <= S3;
                    else
                        nextState <= S2;
                    end if;
                else
                    nextState <= SF;
                end if;
            when S2=>
                LDA_RA <= '0';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '0';
                DONE <= '0';
                nextState <= S2T;
            when S2T=>
                if (outputT2 = '1') then
                    nextState <= SF;
                else
                    if (outputT3 = '1') then
                        nextState <= S4;
                    else
                        nextState <= S5;
                    end if;
                end if;
            when S3=>
                LDA_RA <= '0';
                LDA_RB <= '1';
                SEL <= '0';
                nextState <= SF;
            when S4=>
                LDA_RA <= '1';
                SHR_RA <= '1';
                INC_COUNT <= '1';
                nextState <= S2;
            when S5=>
                LDA_RA <= '1';
                INC_COUNT <= '1';
                nextState <= S5T;
            when S5T=>
                if (outputT4 = '1') then
                    nextState <= S6;
                else
                    nextState <= S2;
                end if;
            when S6=>
                LDA_RA <= '0';
                LDA_RB <= '1';
                INC_COUNT <= '0';
                nextState <= S2;
            when SF=>
                LDA_RB <= '0';
                DONE <= '1';
                nextState <= SF;
            when others  =>
                nextState <= S0;
        end case;
    end process;
    greatest <= outputRB;
    steps <= outputCOUNT;
end Behavioral;

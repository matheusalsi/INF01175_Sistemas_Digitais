----------------------------------------------------------------------------------
-- Projeto 2 - Conjectura De Collatz
-- Alunos:  Luccas da Silva Lima  - 324683
--          Matheus Almeida Silva - 316326
-- VHDL do PCPO da Conjectura de Collatz
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;

entity Collatz_VHDL is
    Port ( start : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in  STD_LOGIC;
           input_x : in STD_LOGIC_VECTOR (7 downto 0);
           done : out STD_LOGIC;
           greatest : out STD_LOGIC_VECTOR (15 downto 0);
           steps : out STD_LOGIC_VECTOR (7 downto 0));
end Collatz_VHDL;

architecture Behavioral of Collatz_VHDL is
    --MUX
    signal Sel: STD_LOGIC := '0';
    signal OutputMuxA: STD_LOGIC_VECTOR (15 downto 0);
    signal outputMuxB: STD_LOGIC_VECTOR (15 downto 0);
    --RA
    signal LDA_RA: STD_LOGIC := '0';
    signal RST_RA: STD_LOGIC := '0';
    signal SHR_RA: STD_LOGIC := '0';
    signal OutputRA: STD_LOGIC_VECTOR (15 downto 0);
    --RB
    signal LDA_RB: STD_LOGIC := '0';
    signal RST_RB: STD_LOGIC := '0';
    signal OutputRB: STD_LOGIC_VECTOR (15 downto 0);
    --COUNT
    signal INC_COUNT: STD_LOGIC := '0';
    signal RST_COUNT: STD_LOGIC := '0';
    signal OutputCOUNT: STD_LOGIC_VECTOR (7 downto 0);
    --TESTS
    signal OutputT1: STD_LOGIC := '0';
    signal OutputT2: STD_LOGIC := '0';
    signal OutputT3: STD_LOGIC := '0';
    signal OutputT4: STD_LOGIC := '0';
    -- Estados
    type state_type is (S0, S1, S2, S3, S4, S5, S6, SF);
    signal state, nextState : state_type;
    
    begin
    -- PARTE OPERATIVA
    -- PROCESS MUX
    process(sel)
    variable mux : STD_LOGIC_VECTOR (15 downto 0);
    begin
        if  (Sel = '0') then
            mux := OutputRA;
        else
            mux(7 downto 0) := input_X;
        end if;
        outputMuxA <= mux;
        outputMuxB <= mux;
    end process;
    -- PROCESS RA
    process(clk, rst)
    variable ra : STD_LOGIC_VECTOR (15 downto 0);
    begin
        if rst = '1' then
                ra := "0000000000000000";
        elsif rising_edge(clk) then
            if (LDA_RA = '1') then
                if (SHR_RA = '1') then
                    ra(0) := outputMuxA(1);
                    ra(1) := outputMuxA(2);
                    ra(2) := outputMuxA(3);
                    ra(3) := outputMuxA(4);
                    ra(4) := outputMuxA(5);
                    ra(5) := outputMuxA(6);
                    ra(6) := outputMuxA(7);
                    ra(7) := outputMuxA(8);
                    ra(8) := outputMuxA(9);
                    ra(9) := outputMuxA(10);
                    ra(10) := outputMuxA(11);
                    ra(11) := outputMuxA(12);
                    ra(12) := outputMuxA(13);
                    ra(13) := outputMuxA(14);
                    ra(14) := outputMuxA(15);
                    ra(15) := '0';
                else
                    ra := (outputMuxA(7 downto 0) * "00000011") + "0000000000000001";
                end if; 
            elsif (RST_RA = '1') then
                ra := "0000000000000000";
            end if;
        end if;
        outputRA <= ra;
    end process;
    -- PROCESS RB
    process(clk, rst)
    variable rb : STD_LOGIC_VECTOR (15 downto 0);
    begin
        if rst = '1' then
                rb := "0000000000000000";
        elsif rising_edge(clk) then
            if (LDA_RA = '1') then
                rb := outputMuxA;
            elsif (RST_RA = '1') then
                rb := "0000000000000000";
            end if;
        end if;
        outputRB <= rb;
    end process;
    -- PROCESS COUNT
    process(clk, rst)
    variable counter : STD_LOGIC_VECTOR (7 downto 0);
    begin
        if rst = '1' then
                counter := "00000000";
        elsif rising_edge(clk) then
            if (INC_COUNT = '1') then
                counter := (counter + "00000001");
            elsif (RST_COUNT = '1') then
                counter := "00000000";
            end if;
        end if;
        outputCOUNT <= counter;
    end process;
    -- PROCESS TESTS
    process(outputRA, outputRB)
    begin
        if (outputRA = "0000000000000000") then
            OutputT1 <= '1';
        else
            OutputT1 <= '0';
        end if;
        if (outputRA = "0000000000000001") then
            OutputT2 <= '1';
        else
            OutputT2 <= '0';
        end if;
        if (outputRA > "0000000000000000") then
            OutputT3 <= '1';
        else
            OutputT3 <= '0';
        end if;
        if ((outputRA - outputRB) > "0000000000000000") then
            OutputT4 <= '1';
        else
            OutputT4 <= '0';
        end if;
    end process;
    
    --PARTE CONTROLE
    --PROCESS STATES REGISTERS
    process(rst, clk)
    begin
        if rst = '1' then
            state <= S0;
        elsif rising_edge(clk) then
            state <= nextState;
        end if;
    end process;
    
    --PROCESS FSM
    process(state, nextState, start, OutputT1, OutputT2, OutputT3, OutputT4)
    begin
        case state is
            when S0=>
                LDA_RA <= '0';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '0';
                DONE <= '0';
                if (start = '1') then
                    nextState <= S1;
                else
                    nextState <= S0;
                end if;
            when S1=>
                LDA_RA <= '1';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '1';
                DONE <= '0';
                if (OutputT1 = '1') then
                    nextState <= S2;
                else
                    nextState <= SF;
                end if;
            when S2=>
                if (OutputT2 = '1') then
                    nextState <= S3;
                else
                    if (OutputT3 = '1') then
                        nextState <= S4;
                    else
                        nextState <= S5;
                    end if;
                end if;
            when S3=>
                LDA_RA <= '0';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '1';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '0';
                DONE <= '0';
                nextState <= SF;
            when S4=>
                LDA_RA <= '1';
                RST_RA <= '0';
                SHR_RA <= '1';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '1';
                SEL <= '0';
                DONE <= '0';
                nextState <= S2;
            when S5=>
                LDA_RA <= '1';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '1';
                SEL <= '0';
                DONE <= '0';
                if (OutputT4 = '1') then
                    nextState <= S6;
                else
                    nextState <= S2;
                end if;
            when S6=>
                LDA_RA <= '1';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '0';
                DONE <= '0';
                nextState <= S2;
            when SF=>
                LDA_RA <= '1';
                RST_RA <= '0';
                SHR_RA <= '0';
                LDA_RB <= '0';
                RST_RB <= '0';
                RST_COUNT <= '0';
                INC_COUNT <= '0';
                SEL <= '0';
                DONE <= '1';
                nextState <= SF;
            when others  =>
                nextState <= S0;
        end case;
    end process;
    
    greatest <= outputRB;
    steps <= outputCOUNT;
end Behavioral;

-- Sistemas Digitais Para Computadores A
-- Matheus Almeida Silva - 00316326
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity neander is
    Port (  clk : in  STD_LOGIC;
           	rst : in  STD_LOGIC;
				Z : out  STD_LOGIC;
				N : out  STD_LOGIC;
				outputData : out STD_LOGIC_VECTOR (7 downto 0));
end neander;

architecture Behavioral of neander is
COMPONENT memory
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- Mux
signal selMux: std_logic :='0';
signal outputMux: STD_LOGIC_VECTOR (7 downto 0);
--Decod
signal instruction: STD_LOGIC_VECTOR(15 downto 0);
signal decod: STD_LOGIC_VECTOR(3 downto 0);
-- REM
signal cargaREM : std_logic := '0';
signal regREM: STD_LOGIC_VECTOR(7 downto 0);
signal outputREM: STD_LOGIC_VECTOR(7 downto 0);
-- ULA
signal selULA: std_logic_vector (2 downto 0) := "001";
signal input1ULA : STD_LOGIC_VECTOR(7 downto 0);
signal input2ULA : STD_LOGIC_VECTOR(7 downto 0);
signal outputULA: STD_LOGIC_VECTOR(7 downto 0);
signal regULA: STD_LOGIC_VECTOR(7 downto 0);
-- PC
signal cargaPC, incPC: std_logic := '0';
signal regPC, outputPC: STD_LOGIC_VECTOR (7 downto 0);
--AC
signal cargaAC : std_logic := '0';
signal inputAC: STD_LOGIC_VECTOR(7 downto 0);
signal outputAC: STD_LOGIC_VECTOR(7 downto 0);
--NZ
signal cargaNZ : std_logic := '0';
signal regN: STD_LOGIC;
signal regZ: STD_LOGIC;
signal outputN: STD_LOGIC;
signal outputZ: STD_LOGIC;
--RI
signal cargaRI : std_logic := '0';
signal inputRI: STD_LOGIC_VECTOR(7 downto 4);
signal outputRI: STD_LOGIC_VECTOR(7 downto 4);
-- Memoria
signal writeMem: STD_LOGIC_VECTOR(0 to 0) :="0";
signal outputMem: STD_LOGIC_VECTOR(7 downto 0); 
-- Estados
type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);
signal state, nextState : state_type;


begin
--Memoria
mem : memory
  PORT MAP (
    clka => clk,
    wea => writeMem,
    addra => outputREM,
    dina => outputAC,
    douta => outputMem
  );

--Mux
process (selMux, outputPC, outputMem)
begin
    if (selMux = '0') then
        outputMux <= outputPC;
    else
        outputMux <= outputMem;
    end if;
end process;

--PC
process (clk, rst)
begin
    if rst ='1' then
        regPC <= "00000000";
    elsif (clk'event and clk='1') then
        if (cargaPC='1') then
            regPC<= outputMem;
        elsif(incPC='1') then
            regPC <= regPC + 1;
        else
            regPC <= regPC;
        end if;
     end if;
end process;
outputPC <= regPC;
            

--REM
process(clk, rst)
begin
    if rst='1' then
        regREM <= "00000000";
    elsif (clk'event and clk='1') then
        if (cargaREM ='1') then
				regREM <= outputMux;
        else
				regREM<= regREM;
        end if;
    end if;
end process;
outputREM <= regREM;


--ULA
input1ULA <= outputAC;
input2ULA <= outputMem;

process(selULA, input1ULA, input2ULA)
begin

    case selULA is
    
        when "000" => regULA <= (input1ULA + input2ULA);
        when "001" => regULA <= (input1ULA AND input2ULA);
        when "010" => regULA <= (input1ULA OR input2ULA);
        when "011" => regULA <= (NOT input1ULA);
        when "100" => regULA <= input2ULA;
		  when "101" => regULA <= (input1ULA - input2ULA);
		  when "110" => regULA <= (input1ULA XOR input2ULA);
        
        when others => regULA <= "00000000";
		  end case;
end process;
outputULA <= regULA;        
        
--AC
process (clk, rst)
begin
    if rst='1' then
        inputAC <= "00000000";
    elsif (clk'event and clk='1') then
        if (cargaAC='1') then
        inputAC <= outputULA;
        else
        inputAC <= inputAC;
        end if;
    end if;
end process;
outputAC <= inputAC;   
 
--RI
process (clk, rst)
begin
    if rst='1' then
        inputRI<= "0000";
    elsif (clk'event and clk='1') then
        if (cargaRI='1') then
         inputRI <= outputMem(7 DOWNTO 4);
        else
         inputRI <= inputRI;
        end if;
    end if;
end process;
outputRI <= inputRI; 
 
    
--NZ
process (clk, rst)
begin
    if rst='1' then
        regN <= '0';
        regZ <= '0';
    elsif(clk'event and clk='1') then
		  if (cargaNZ='1') then
				if outputAC = "00000000" then
					regZ <= '1';
				else
					regZ <= '0';
				end if;
				regN <= outputAC(7);
		  end if;
    end if;
end process;
outputZ <= regZ;
outputN <= regN;

--DECOD
decod <= outputRI (7 downto 4);

process(decod)
begin
    instruction <= "0000000000000000";
         case decod is
            when "0000" => instruction(0) <= '1'; --NOP
            when "0001" => instruction(1) <= '1'; --STA
            when "0010" => instruction(2) <= '1'; --LDA
            when "0011" => instruction(3) <= '1'; --ADD
            when "0100" => instruction(4) <= '1'; --OR
            when "0101" => instruction(5) <= '1'; --AND
            when "0110" => instruction(6) <= '1'; --NOT
            when "0111" => instruction(7) <= '1'; --NOP
            when "1000" => instruction(8) <= '1'; --JMP
            when "1001" => instruction(9) <= '1'; --JZ
            when "1010" => instruction(10) <= '1'; --JN
            when "1011" => instruction(11) <= '1'; --NOP
            when "1100" => instruction(12) <= '1'; --SUB
            when "1101" => instruction(13) <= '1'; --XOR
            when "1110" => instruction(14) <= '1'; --NOP
            when "1111" => instruction(15) <= '1'; --HLT
            when others => instruction <= "0000000000000000";
         end case;
end process;

--FSM
process(rst, clk)
begin
    if rst = '1' then
        state <= S0;
    elsif(clk'event and clk='1') then
        state <= nextState;
    end if;
end process;

-- UC
process(instruction, state, nextState, outputZ, outputN, outputMem)
begin
		cargaAC <='0';
		cargaNZ <='0';
		cargaPC <='0';
		selULA <="000";
		cargaRI <='0';
		incPC <= '0';
		writeMem <= "0";
		selMUX <= '0';
		cargaREM <='0';
		  
	case state is
		when S0=>
			cargaREM <='1';
			nextState <=S1;
			
		when S1=>
			cargaREM <='0';
			incPC<='1';
			nextState <= S2;
			
		when S2=>
			incPC<='0';
			cargaRI <='1';
			nextState<=S3;
			
		when S3=>
			incPC <='0';
			cargaRI<='0';
			if instruction(6) = '1' then    --NOT
				selULA <= "011";
				cargaAC <= '1';
				cargaNZ <='1';
				nextState <= S0;
			elsif(instruction(9) = '1' and outputZ = '0') then        --JZ para Z=0
				incPC <= '1';
				nextState <=S0;
			elsif(instruction(10) = '1' and outputN = '0') then        --JN para =0
				incPC <='1';
				nextState <=S0;
			elsif(instruction(0) = '1') then --NOP
				nextState <= S0;
			elsif(instruction(15) = '1') then  --HALT
				incPC <= '0';
				nextState <= S9;
			else
				selMux <= '0';
				cargaREM <= '1';
				nextState <= S4;
			end if;

		when S4 =>
			selMux <= '0';
			incPC <= '0';
			cargaAC <= '0';
			cargaNZ <='0';
			cargaREM <= '0';
			if(instruction(1) = '1' OR instruction(2) = '1' OR instruction(3) = '1' OR instruction(4) = '1' OR instruction(5) = '1' OR instruction(12) = '1' OR instruction(13) = '1') then
				incPC <= '1';
			end if;
			nextState <= S5;

		when S5 =>
		incPC <= '0';
			if(instruction(1) = '1' OR instruction(2) = '1' OR instruction(3) = '1' OR instruction(4) = '1' OR instruction(5) = '1' OR instruction(12) = '1' OR instruction(13) = '1') then
				selMux <= '1';
				cargaREM <= '1';
				nextState <= S6;
			else
				cargaPC <= '1';
				nextState <= S0;
			end if;

		when S6 => 
			incPC <= '0';
			selMux <='0';
			cargaREM <= '0';
			cargaPC <='0';
			nextState <= S7;
			
		when S7 =>
			if instruction(1) ='1' then
				 writeMEM <= "1";
			elsif instruction(2) ='1' then
				 selULA <= "100";
			elsif instruction(3) ='1' then
				 selULA <= "000";
			elsif instruction(4) ='1' then
				 selULA <= "010";
			elsif instruction(5) ='1' then
				 selULA <= "001";
			elsif instruction(12) ='1' then
				 selULA <= "101";
			elsif instruction(13) ='1' then
				 selULA <= "110";
			end if;
			if instruction(1) = '1' then
				 nextState <= S0;
			else
				 cargaAC <= '1';
				 cargaNZ <= '1';
				 nextState <= S0;
			end if;
			
		 when S9 =>
			nextState <=S9;
			
		 when others => 
			nextState <= S0;       
	end case;
end process;

Z <= outputZ;
N <= outputN;
outputData <= outputMem;

end Behavioral;


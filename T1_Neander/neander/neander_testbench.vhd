LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY neander_testbench IS
END neander_testbench;
 
ARCHITECTURE behavior OF neander_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT neander
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Z : OUT  std_logic;
         N : OUT  std_logic;
         outputData : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   signal N : std_logic;
   signal outputData : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: neander PORT MAP (
          clk => clk,
          rst => rst,
          Z => Z,
          N => N,
          outputData => outputData
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for clk_period*5;
		rst <= '0';
      wait for clk_period*5;
      wait;
   end process;

END;


-- VHDL Instantiation Created from source file neander.vhd -- 00:29:15 07/31/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT neander
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;          
		Z : OUT std_logic;
		N : OUT std_logic;
		AC : OUT std_logic_vector(7 downto 0);
		PC : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_neander: neander PORT MAP(
		clk => ,
		rst => ,
		Z => ,
		N => ,
		AC => ,
		PC => 
	);



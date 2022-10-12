library ieee;
use ieee.std_logic_1164.all;

entity tb_Collatz_VHDL is
end tb_Collatz_VHDL;

architecture tb of tb_Collatz_VHDL is

    component Collatz_VHDL
        port (start    : in std_logic;
              rst      : in std_logic;
              clk      : in std_logic;
              inputX   : in std_logic_vector (7 downto 0);
              done     : out std_logic;
              greatest : out std_logic_vector (15 downto 0);
              steps    : out std_logic_vector (7 downto 0));
    end component;

    signal start    : std_logic;
    signal rst      : std_logic;
    signal clk      : std_logic;
    signal inputX   : std_logic_vector (7 downto 0);
    signal done     : std_logic;
    signal greatest : std_logic_vector (15 downto 0);
    signal steps    : std_logic_vector (7 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : Collatz_VHDL
    port map (start    => start,
              rst      => rst,
              clk      => clk,
              inputX   => inputX,
              done     => done,
              greatest => greatest,
              steps    => steps);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        start <= '0';
        inputX <= (others => '0');

        -- Reset generation
        -- EDIT: Check that rst is really your reset signal
        rst <= '1';
        wait for 100 ns;
        rst <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        start <= '1';
        --inputX <= "00000000"; --0
        --inputX <= "00000001"; --1
        inputX <= "00000011"; --3
        --inputX <= "00000100"; --4
        --inputX <= "10000001"; --129
        --inputX <= "11111110"; --254
        --inputX <= "11111111"; --255
        wait for 450 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

configuration cfg_tb_Collatz_VHDL of tb_Collatz_VHDL is
    for tb
    end for;
end cfg_tb_Collatz_VHDL;
-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Collatz is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    agg_result_steps : OUT STD_LOGIC_VECTOR (7 downto 0);
    agg_result_steps_ap_vld : OUT STD_LOGIC;
    agg_result_greatest : OUT STD_LOGIC_VECTOR (7 downto 0);
    agg_result_greatest_ap_vld : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of Collatz is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "Collatz,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.087000,HLS_SYN_LAT=8,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=18,HLS_SYN_LUT=85,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000011";
    constant ap_const_lv8_10 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal aux_4_fu_107_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln10_fu_65_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal aux_0_reg_54 : STD_LOGIC_VECTOR (15 downto 0);
    signal aux_fu_75_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal shl_ln14_fu_89_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal sub_ln14_fu_95_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln10_fu_71_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal aux_2_fu_101_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal aux_1_fu_85_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    aux_0_reg_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln10_fu_65_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                aux_0_reg_54 <= aux_4_fu_107_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                aux_0_reg_54 <= ap_const_lv16_3;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln10_fu_65_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln10_fu_65_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    agg_result_greatest <= ap_const_lv8_7;

    agg_result_greatest_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_65_p2)
    begin
        if (((icmp_ln10_fu_65_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            agg_result_greatest_ap_vld <= ap_const_logic_1;
        else 
            agg_result_greatest_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_steps <= ap_const_lv8_10;

    agg_result_steps_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_65_p2)
    begin
        if (((icmp_ln10_fu_65_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            agg_result_steps_ap_vld <= ap_const_logic_1;
        else 
            agg_result_steps_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_65_p2)
    begin
        if (((icmp_ln10_fu_65_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln10_fu_65_p2)
    begin
        if (((icmp_ln10_fu_65_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    aux_1_fu_85_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(aux_fu_75_p4),16));
    aux_2_fu_101_p2 <= std_logic_vector(unsigned(ap_const_lv16_1) + unsigned(sub_ln14_fu_95_p2));
    aux_4_fu_107_p3 <= 
        aux_2_fu_101_p2 when (trunc_ln10_fu_71_p1(0) = '1') else 
        aux_1_fu_85_p1;
    aux_fu_75_p4 <= aux_0_reg_54(15 downto 1);
    icmp_ln10_fu_65_p2 <= "1" when (aux_0_reg_54 = ap_const_lv16_1) else "0";
    shl_ln14_fu_89_p2 <= std_logic_vector(shift_left(unsigned(aux_0_reg_54),to_integer(unsigned('0' & ap_const_lv16_2(16-1 downto 0)))));
    sub_ln14_fu_95_p2 <= std_logic_vector(unsigned(shl_ln14_fu_89_p2) - unsigned(aux_0_reg_54));
    trunc_ln10_fu_71_p1 <= aux_0_reg_54(1 - 1 downto 0);
end behav;

-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 19.1 (Release Build #670)
-- 
-- Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_acl_push_i32_sum_count_4ia_addr_0_push5_count24
-- VHDL created on Mon Jun 28 18:44:09 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

library twentynm;
use twentynm.twentynm_components.twentynm_fp_mac;

entity i_acl_push_i32_sum_count_4ia_addr_0_push5_count24 is
    port (
        in_data_in : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_data_out : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_out_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_acl_push_i32_sum_count_4ia_addr_0_push5_count24;

architecture normal of i_acl_push_i32_sum_count_4ia_addr_0_push5_count24 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_push is
        generic (
            FIFO_DEPTH : INTEGER;
            INF_LOOP : INTEGER;
            INF_LOOP_INITIALIZATION : STD_LOGIC_VECTOR(31 downto 0);
            MIN_FIFO_LATENCY : INTEGER;
            STYLE : STRING;
            DATA_WIDTH : INTEGER := 32;
            ENABLED : INTEGER := 0;
            RAM_FIFO_DEPTH_INC : INTEGER := 0;
            STALLFREE : INTEGER := 0
        );
        port (
            data_in : in std_logic_vector(31 downto 0);
            dir : in std_logic;
            feedback_stall_in : in std_logic;
            predicate : in std_logic;
            stall_in : in std_logic;
            valid_in : in std_logic;
            data_out : out std_logic_vector(31 downto 0);
            feedback_out : out std_logic_vector(31 downto 0);
            feedback_valid_out : out std_logic;
            stall_out : out std_logic;
            valid_out : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out_bitsignaltemp : std_logic;
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_acl_push_i32_sum_count_4ia_addr_0_push5_count25(EXTIFACE,8)
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_data_in <= in_data_in;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir <= VCC_q;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in <= in_feedback_stall_in_5;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate <= GND_q;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_stall_out;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in <= in_valid_in;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir_bitsignaltemp <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir(0);
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in_bitsignaltemp <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in(0);
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate_bitsignaltemp <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate(0);
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in_bitsignaltemp <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in(0);
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in_bitsignaltemp <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in(0);
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out(0) <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out_bitsignaltemp;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out(0) <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out_bitsignaltemp;
    i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out(0) <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out_bitsignaltemp;
    thei_acl_push_i32_sum_count_4ia_addr_0_push5_count25 : acl_push
    GENERIC MAP (
        FIFO_DEPTH => 68,
        INF_LOOP => 0,
        INF_LOOP_INITIALIZATION => "00000000000000000000000000000000",
        MIN_FIFO_LATENCY => 63,
        STYLE => "REGULAR",
        DATA_WIDTH => 32,
        ENABLED => 0,
        RAM_FIFO_DEPTH_INC => 0,
        STALLFREE => 0
    )
    PORT MAP (
        data_in => in_data_in,
        dir => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_dir_bitsignaltemp,
        feedback_stall_in => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_stall_in_bitsignaltemp,
        predicate => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_predicate_bitsignaltemp,
        stall_in => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_in_bitsignaltemp,
        valid_in => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_in_bitsignaltemp,
        data_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_data_out,
        feedback_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_out,
        feedback_valid_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out_bitsignaltemp,
        stall_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out_bitsignaltemp,
        valid_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- ip_dsdk_adapt_cast(BITSELECT,10)
    ip_dsdk_adapt_cast_b <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_data_out(31 downto 0);

    -- i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg(BLACKBOX,9)@20000000
    -- out out_data_out@20000001
    -- out out_valid_out@20000001
    thei_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg : i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg
    PORT MAP (
        in_data_in => ip_dsdk_adapt_cast_b,
        in_stall_in => in_stall_in,
        in_valid_in => i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_valid_out,
        out_data_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_data_out,
        out_stall_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_stall_out,
        out_valid_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_x(GPOUT,3)@36
    out_data_out <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_data_out;
    out_valid_out <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg_out_valid_out;

    -- feedback_sync_out(GPOUT,7)
    out_feedback_out_5 <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_out;
    out_feedback_valid_out_5 <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_feedback_valid_out;

    -- sync_out(GPOUT,12)@20000000
    out_stall_out <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count25_stall_out;

END normal;

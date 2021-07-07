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

-- VHDL created from bb_count_B2_stall_region
-- VHDL created on Sun Jun 27 12:28:39 2021


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

entity bb_count_B2_stall_region is
    port (
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B2_stall_region;

architecture normal of bb_count_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component count_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_while_body_count_c0_enter12_count is
        port (
            in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B2_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_c0_exit14_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_count_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_count_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_count_B2_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,43)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= count_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,36)
    bubble_join_stall_entry_q <= in_forked6 & in_forked;

    -- bubble_select_stall_entry(BITSELECT,37)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));

    -- count_B2_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thecount_B2_merge_reg_aunroll_x : count_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_stall_in => SE_out_count_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => count_B2_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => count_B2_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => count_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => count_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_count_B2_merge_reg_aunroll_x(STALLENABLE,40)
    -- Valid signal propagation
    SE_out_count_B2_merge_reg_aunroll_x_V0 <= SE_out_count_B2_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_count_B2_merge_reg_aunroll_x_backStall <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_stall or not (SE_out_count_B2_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_count_B2_merge_reg_aunroll_x_wireValid <= count_B2_merge_reg_aunroll_x_out_valid_out;

    -- SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x(STALLENABLE,42)
    -- Valid signal propagation
    SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_V0 <= SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_wireValid <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_valid;

    -- bubble_join_count_B2_merge_reg_aunroll_x(BITJOIN,29)
    bubble_join_count_B2_merge_reg_aunroll_x_q <= count_B2_merge_reg_aunroll_x_out_data_out_1 & count_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_count_B2_merge_reg_aunroll_x(BITSELECT,30)
    bubble_select_count_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_count_B2_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_count_B2_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_count_B2_merge_reg_aunroll_x_q(1 downto 1));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x(BLACKBOX,13)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit14_0@5
    -- out out_c0_exit14_1@5
    -- out out_c0_exit14_2@5
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out@20000000
    -- out out_intel_reserved_ffwd_8_0@20000000
    -- out out_intel_reserved_ffwd_9_0@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@5
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_while_body_count_c0_enter12_count_aunroll_x : i_sfc_c0_while_body_count_c0_enter12_count
    PORT MAP (
        in_c0_eni2_0 => GND_q,
        in_c0_eni2_1 => bubble_select_count_B2_merge_reg_aunroll_x_b,
        in_c0_eni2_2 => bubble_select_count_B2_merge_reg_aunroll_x_c,
        in_i_stall => SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_backStall,
        in_i_valid => SE_out_count_B2_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exit14_2 => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_c0_exit14_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out,
        out_intel_reserved_ffwd_8_0 => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_8_0,
        out_intel_reserved_ffwd_9_0 => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_9_0,
        out_o_stall => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_regfree_osync_x(GPOUT,6)
    out_intel_reserved_ffwd_9_0 <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_9_0;

    -- bubble_join_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x(BITJOIN,32)
    bubble_join_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_q <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_c0_exit14_2;

    -- bubble_select_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x(BITSELECT,33)
    bubble_select_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,8)@5
    out_c0_exe2 <= bubble_select_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_b;
    out_valid_out <= SE_out_i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_V0;

    -- ext_sig_sync_out(GPOUT,17)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,21)
    out_pipeline_valid_out <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,23)
    out_intel_reserved_ffwd_8_0 <= i_sfc_c0_while_body_count_c0_enter12_count_aunroll_x_out_intel_reserved_ffwd_8_0;

    -- sync_out(GPOUT,27)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;

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

-- VHDL created from i_sfc_logic_c0_while_body_count_c0_enter12_count47
-- VHDL created on Sun Jun 27 12:18:32 2021


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

entity i_sfc_logic_c0_while_body_count_c0_enter12_count47 is
    port (
        in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi2_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_while_body_count_c0_enter12_count47;

architecture normal of i_sfc_logic_c0_while_body_count_c0_enter12_count47 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_count53 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sum_03_pop7_count72 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_y_02_pop8_count70 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_z_01_pop9_count66 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop11_count49 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_11 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop10_count55 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_10 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i6_fpgaindvars_iv_pop6_count92 is
        port (
            in_data_in : in std_logic_vector(5 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(5 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_count62 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_count95 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sum_03_push7_count74 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_y_02_push8_count82 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_z_01_push9_count90 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push11_count98 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_11 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push10_count58 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i6_fpgaindvars_iv_push6_count100 is
        port (
            in_data_in : in std_logic_vector(5 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(5 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count16_count64 is
        port (
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count17_count68 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count18_count77 is
        port (
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count19_count80 is
        port (
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count20_count85 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_count21_count88 is
        port (
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count22_count102 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count23_count104 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add11_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add12_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add16_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add18_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add3_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add6_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add8_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_count_sel_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_cleanups_shl_count_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_cleanups_count_count97_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1640531527_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i6_1gr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal c_i6_30_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_acl_pipeline_keep_going_count_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sum_03_pop7_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sum_03_pop7_count_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_y_02_pop8_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_y_02_pop8_count_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_z_01_pop9_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_z_01_pop9_count_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop11_count_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop11_count_out_feedback_stall_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop10_count_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop10_count_out_feedback_stall_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_data_out : STD_LOGIC_VECTOR (5 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_count_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_count_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_feedback_out_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_03_push7_count_out_feedback_out_7 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_03_push7_count_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_y_02_push8_count_out_feedback_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_y_02_push8_count_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_z_01_push9_count_out_feedback_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_z_01_push9_count_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push11_count_out_feedback_out_11 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push11_count_out_feedback_valid_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push10_count_out_feedback_out_10 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push10_count_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add12_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add12_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add12_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add12_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add16_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add16_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add16_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add16_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add18_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add18_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add18_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add18_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add3_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add3_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add3_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add3_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add6_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add6_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add6_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add6_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add8_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add8_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add8_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add8_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cleanups_shl_count_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_count_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_count_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_count_a : STD_LOGIC_VECTOR (7 downto 0);
    signal i_exitcond_count_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_exitcond_count_o : STD_LOGIC_VECTOR (7 downto 0);
    signal i_exitcond_count_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_count16_count_out_dest_data_out_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_count17_count_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_count18_count_out_dest_data_out_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_count19_count_out_dest_data_out_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_count20_count_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_count21_count_out_dest_data_out_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count22_count_out_intel_reserved_ffwd_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count23_count_out_intel_reserved_ffwd_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_first_cleanup_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next_count_a : STD_LOGIC_VECTOR (6 downto 0);
    signal i_fpgaindvars_iv_next_count_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_fpgaindvars_iv_next_count_o : STD_LOGIC_VECTOR (6 downto 0);
    signal i_fpgaindvars_iv_next_count_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_last_initeration_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_initerations_count_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_count_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notcmp_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_count_0_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_1_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_2_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_3_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl9_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl9_count_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shl_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_count_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr14_count_vt_const_31_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr14_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr14_count_vt_select_26_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_shr_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_count_vt_select_26_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_unnamed_count51_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_count51_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_count51_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_count60_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_count60_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_y_02_replace_phi_count_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_y_02_replace_phi_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_z_01_replace_phi_count_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_z_01_replace_phi_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid171_i_next_cleanups_count_count97_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid178_i_next_initerations_count_count57_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid180_i_next_initerations_count_count57_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid189_i_shl9_count_count84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid191_i_shl9_count_count84_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid191_i_shl9_count_count84_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid198_i_shl_count_count76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid200_i_shl_count_count76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid200_i_shl_count_count76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid205_i_shr14_count_count87_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid207_i_shr14_count_count87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid209_i_shr14_count_count87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid210_i_shr14_count_count87_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid212_i_shr14_count_count87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid214_i_shr14_count_count87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid214_i_shr14_count_count87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid219_i_shr_count_count79_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid221_i_shr_count_count79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid223_i_shr_count_count79_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid223_i_shr_count_count79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid224_i_shr_count_count79_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid226_i_shr_count_count79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid228_i_shr_count_count79_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid228_i_shr_count_count79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_count60_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_count60_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_bgTrunc_i_add_count_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist2_sync_in_aunroll_x_in_i_valid_1(DELAY,244)
    redist2_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist2_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_count16_count(BLACKBOX,113)@2
    thei_ffwd_dst_unnamed_count16_count : i_ffwd_dst_unnamed_count16_count64
    PORT MAP (
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_3_0 => i_ffwd_dst_unnamed_count16_count_out_dest_data_out_3_0,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_z_01_push9_count(BLACKBOX,95)@2
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i32_z_01_push9_count : i_acl_push_i32_z_01_push9_count90
    PORT MAP (
        in_data_in => bgTrunc_i_add18_count_sel_x_b,
        in_feedback_stall_in_9 => i_acl_pop_i32_z_01_pop9_count_out_feedback_stall_out_9,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_9 => i_acl_push_i32_z_01_push9_count_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i32_z_01_push9_count_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,73)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_z_01_pop9_count(BLACKBOX,87)@2
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i32_z_01_pop9_count : i_acl_pop_i32_z_01_pop9_count66
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_9 => i_acl_push_i32_z_01_push9_count_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i32_z_01_push9_count_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_z_01_pop9_count_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i32_z_01_pop9_count_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- redist1_sync_in_aunroll_x_in_c0_eni2_1_1(DELAY,243)
    redist1_sync_in_aunroll_x_in_c0_eni2_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni2_1, xout => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q, clk => clock, aclr => resetn );

    -- i_z_01_replace_phi_count(MUX,156)@2
    i_z_01_replace_phi_count_s <= redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q;
    i_z_01_replace_phi_count_combproc: PROCESS (i_z_01_replace_phi_count_s, i_acl_pop_i32_z_01_pop9_count_out_data_out, i_ffwd_dst_unnamed_count16_count_out_dest_data_out_3_0)
    BEGIN
        CASE (i_z_01_replace_phi_count_s) IS
            WHEN "0" => i_z_01_replace_phi_count_q <= i_acl_pop_i32_z_01_pop9_count_out_data_out;
            WHEN "1" => i_z_01_replace_phi_count_q <= i_ffwd_dst_unnamed_count16_count_out_dest_data_out_3_0;
            WHEN OTHERS => i_z_01_replace_phi_count_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_1640531527(CONSTANT,74)
    c_i32_1640531527_q <= "10011110001101110111100110111001";

    -- i_acl_push_i32_sum_03_push7_count(BLACKBOX,93)@2
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i32_sum_03_push7_count : i_acl_push_i32_sum_03_push7_count74
    PORT MAP (
        in_data_in => redist3_bgTrunc_i_add_count_sel_x_b_1_q,
        in_feedback_stall_in_7 => i_acl_pop_i32_sum_03_pop7_count_out_feedback_stall_out_7,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_7 => i_acl_push_i32_sum_03_push7_count_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i32_sum_03_push7_count_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sum_03_pop7_count(BLACKBOX,85)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i32_sum_03_pop7_count : i_acl_pop_i32_sum_03_pop7_count72
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_7 => i_acl_push_i32_sum_03_push7_count_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i32_sum_03_push7_count_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sum_03_pop7_count_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i32_sum_03_pop7_count_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_add_count(ADD,107)@1
    i_add_count_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_sum_03_pop7_count_out_data_out);
    i_add_count_b <= STD_LOGIC_VECTOR("0" & c_i32_1640531527_q);
    i_add_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_count_a) + UNSIGNED(i_add_count_b));
    i_add_count_q <= i_add_count_o(32 downto 0);

    -- bgTrunc_i_add_count_sel_x(BITSELECT,10)@1
    bgTrunc_i_add_count_sel_x_b <= i_add_count_q(31 downto 0);

    -- redist3_bgTrunc_i_add_count_sel_x_b_1(DELAY,245)
    redist3_bgTrunc_i_add_count_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_count_sel_x_b, xout => redist3_bgTrunc_i_add_count_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_count17_count(BLACKBOX,114)@2
    thei_ffwd_dst_unnamed_count17_count : i_ffwd_dst_unnamed_count17_count68
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_1_0 => i_ffwd_dst_unnamed_count17_count_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_y_02_push8_count(BLACKBOX,94)@2
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i32_y_02_push8_count : i_acl_push_i32_y_02_push8_count82
    PORT MAP (
        in_data_in => bgTrunc_i_add8_count_sel_x_b,
        in_feedback_stall_in_8 => i_acl_pop_i32_y_02_pop8_count_out_feedback_stall_out_8,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_8 => i_acl_push_i32_y_02_push8_count_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i32_y_02_push8_count_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_y_02_pop8_count(BLACKBOX,86)@2
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i32_y_02_pop8_count : i_acl_pop_i32_y_02_pop8_count70
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_8 => i_acl_push_i32_y_02_push8_count_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i32_y_02_push8_count_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_y_02_pop8_count_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i32_y_02_pop8_count_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_y_02_replace_phi_count(MUX,155)@2
    i_y_02_replace_phi_count_s <= redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q;
    i_y_02_replace_phi_count_combproc: PROCESS (i_y_02_replace_phi_count_s, i_acl_pop_i32_y_02_pop8_count_out_data_out, i_ffwd_dst_unnamed_count17_count_out_dest_data_out_1_0)
    BEGIN
        CASE (i_y_02_replace_phi_count_s) IS
            WHEN "0" => i_y_02_replace_phi_count_q <= i_acl_pop_i32_y_02_pop8_count_out_data_out;
            WHEN "1" => i_y_02_replace_phi_count_q <= i_ffwd_dst_unnamed_count17_count_out_dest_data_out_1_0;
            WHEN OTHERS => i_y_02_replace_phi_count_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add4_count(ADD,104)@2
    i_add4_count_a <= STD_LOGIC_VECTOR("0" & redist3_bgTrunc_i_add_count_sel_x_b_1_q);
    i_add4_count_b <= STD_LOGIC_VECTOR("0" & i_z_01_replace_phi_count_q);
    i_add4_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_count_a) + UNSIGNED(i_add4_count_b));
    i_add4_count_q <= i_add4_count_o(32 downto 0);

    -- bgTrunc_i_add4_count_sel_x(BITSELECT,7)@2
    bgTrunc_i_add4_count_sel_x_b <= i_add4_count_q(31 downto 0);

    -- leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x(BITSELECT,196)@2
    leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_in <= i_z_01_replace_phi_count_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_b <= leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid198_i_shl_count_count76_shift_x(BITJOIN,197)@2
    leftShiftStage0Idx1_uid198_i_shl_count_count76_shift_x_q <= leftShiftStage0Idx1Rng4_uid197_i_shl_count_count76_shift_x_b & c_i4_0gr_q;

    -- leftShiftStage0_uid200_i_shl_count_count76_shift_x(MUX,199)@2
    leftShiftStage0_uid200_i_shl_count_count76_shift_x_s <= VCC_q;
    leftShiftStage0_uid200_i_shl_count_count76_shift_x_combproc: PROCESS (leftShiftStage0_uid200_i_shl_count_count76_shift_x_s, i_z_01_replace_phi_count_q, leftShiftStage0Idx1_uid198_i_shl_count_count76_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid200_i_shl_count_count76_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid200_i_shl_count_count76_shift_x_q <= i_z_01_replace_phi_count_q;
            WHEN "1" => leftShiftStage0_uid200_i_shl_count_count76_shift_x_q <= leftShiftStage0Idx1_uid198_i_shl_count_count76_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid200_i_shl_count_count76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_count_vt_select_31(BITSELECT,139)@2
    i_shl_count_vt_select_31_b <= leftShiftStage0_uid200_i_shl_count_count76_shift_x_q(31 downto 4);

    -- c_i4_0gr(CONSTANT,78)
    c_i4_0gr_q <= "0000";

    -- i_shl_count_vt_join(BITJOIN,138)@2
    i_shl_count_vt_join_q <= i_shl_count_vt_select_31_b & c_i4_0gr_q;

    -- i_ffwd_dst_unnamed_count18_count(BLACKBOX,115)@2
    thei_ffwd_dst_unnamed_count18_count : i_ffwd_dst_unnamed_count18_count77
    PORT MAP (
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_4_0 => i_ffwd_dst_unnamed_count18_count_out_dest_data_out_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_add3_count(ADD,103)@2
    i_add3_count_a <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_unnamed_count18_count_out_dest_data_out_4_0);
    i_add3_count_b <= STD_LOGIC_VECTOR("0" & i_shl_count_vt_join_q);
    i_add3_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add3_count_a) + UNSIGNED(i_add3_count_b));
    i_add3_count_q <= i_add3_count_o(32 downto 0);

    -- bgTrunc_i_add3_count_sel_x(BITSELECT,6)@2
    bgTrunc_i_add3_count_sel_x_b <= i_add3_count_q(31 downto 0);

    -- i_reduction_count_0_count(LOGICAL,130)@2
    i_reduction_count_0_count_q <= bgTrunc_i_add3_count_sel_x_b xor bgTrunc_i_add4_count_sel_x_b;

    -- i_shr14_count_vt_const_31(CONSTANT,140)
    i_shr14_count_vt_const_31_q <= "00000";

    -- rightShiftStage1Idx1Rng1_uid224_i_shr_count_count79_shift_x(BITSELECT,223)@2
    rightShiftStage1Idx1Rng1_uid224_i_shr_count_count79_shift_x_b <= rightShiftStage0_uid223_i_shr_count_count79_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid226_i_shr_count_count79_shift_x(BITJOIN,225)@2
    rightShiftStage1Idx1_uid226_i_shr_count_count79_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid224_i_shr_count_count79_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid219_i_shr_count_count79_shift_x(BITSELECT,218)@2
    rightShiftStage0Idx1Rng4_uid219_i_shr_count_count79_shift_x_b <= i_z_01_replace_phi_count_q(31 downto 4);

    -- rightShiftStage0Idx1_uid221_i_shr_count_count79_shift_x(BITJOIN,220)@2
    rightShiftStage0Idx1_uid221_i_shr_count_count79_shift_x_q <= c_i4_0gr_q & rightShiftStage0Idx1Rng4_uid219_i_shr_count_count79_shift_x_b;

    -- rightShiftStage0_uid223_i_shr_count_count79_shift_x(MUX,222)@2
    rightShiftStage0_uid223_i_shr_count_count79_shift_x_s <= VCC_q;
    rightShiftStage0_uid223_i_shr_count_count79_shift_x_combproc: PROCESS (rightShiftStage0_uid223_i_shr_count_count79_shift_x_s, i_z_01_replace_phi_count_q, rightShiftStage0Idx1_uid221_i_shr_count_count79_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid223_i_shr_count_count79_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid223_i_shr_count_count79_shift_x_q <= i_z_01_replace_phi_count_q;
            WHEN "1" => rightShiftStage0_uid223_i_shr_count_count79_shift_x_q <= rightShiftStage0Idx1_uid221_i_shr_count_count79_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid223_i_shr_count_count79_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid228_i_shr_count_count79_shift_x(MUX,227)@2
    rightShiftStage1_uid228_i_shr_count_count79_shift_x_s <= VCC_q;
    rightShiftStage1_uid228_i_shr_count_count79_shift_x_combproc: PROCESS (rightShiftStage1_uid228_i_shr_count_count79_shift_x_s, rightShiftStage0_uid223_i_shr_count_count79_shift_x_q, rightShiftStage1Idx1_uid226_i_shr_count_count79_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid228_i_shr_count_count79_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid228_i_shr_count_count79_shift_x_q <= rightShiftStage0_uid223_i_shr_count_count79_shift_x_q;
            WHEN "1" => rightShiftStage1_uid228_i_shr_count_count79_shift_x_q <= rightShiftStage1Idx1_uid226_i_shr_count_count79_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid228_i_shr_count_count79_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_count_vt_select_26(BITSELECT,145)@2
    i_shr_count_vt_select_26_b <= rightShiftStage1_uid228_i_shr_count_count79_shift_x_q(26 downto 0);

    -- i_shr_count_vt_join(BITJOIN,144)@2
    i_shr_count_vt_join_q <= i_shr14_count_vt_const_31_q & i_shr_count_vt_select_26_b;

    -- i_ffwd_dst_unnamed_count19_count(BLACKBOX,116)@2
    thei_ffwd_dst_unnamed_count19_count : i_ffwd_dst_unnamed_count19_count80
    PORT MAP (
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_5_0 => i_ffwd_dst_unnamed_count19_count_out_dest_data_out_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_add6_count(ADD,105)@2
    i_add6_count_a <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_unnamed_count19_count_out_dest_data_out_5_0);
    i_add6_count_b <= STD_LOGIC_VECTOR("0" & i_shr_count_vt_join_q);
    i_add6_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add6_count_a) + UNSIGNED(i_add6_count_b));
    i_add6_count_q <= i_add6_count_o(32 downto 0);

    -- bgTrunc_i_add6_count_sel_x(BITSELECT,8)@2
    bgTrunc_i_add6_count_sel_x_b <= i_add6_count_q(31 downto 0);

    -- i_reduction_count_1_count(LOGICAL,131)@2
    i_reduction_count_1_count_q <= bgTrunc_i_add6_count_sel_x_b xor i_reduction_count_0_count_q;

    -- i_add8_count(ADD,106)@2
    i_add8_count_a <= STD_LOGIC_VECTOR("0" & i_reduction_count_1_count_q);
    i_add8_count_b <= STD_LOGIC_VECTOR("0" & i_y_02_replace_phi_count_q);
    i_add8_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add8_count_a) + UNSIGNED(i_add8_count_b));
    i_add8_count_q <= i_add8_count_o(32 downto 0);

    -- bgTrunc_i_add8_count_sel_x(BITSELECT,9)@2
    bgTrunc_i_add8_count_sel_x_b <= i_add8_count_q(31 downto 0);

    -- i_add12_count(ADD,100)@2
    i_add12_count_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add8_count_sel_x_b);
    i_add12_count_b <= STD_LOGIC_VECTOR("0" & redist3_bgTrunc_i_add_count_sel_x_b_1_q);
    i_add12_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add12_count_a) + UNSIGNED(i_add12_count_b));
    i_add12_count_q <= i_add12_count_o(32 downto 0);

    -- bgTrunc_i_add12_count_sel_x(BITSELECT,3)@2
    bgTrunc_i_add12_count_sel_x_b <= i_add12_count_q(31 downto 0);

    -- i_ffwd_dst_unnamed_count21_count(BLACKBOX,118)@2
    thei_ffwd_dst_unnamed_count21_count : i_ffwd_dst_unnamed_count21_count88
    PORT MAP (
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_7_0 => i_ffwd_dst_unnamed_count21_count_out_dest_data_out_7_0,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage1Idx1Rng1_uid210_i_shr14_count_count87_shift_x(BITSELECT,209)@2
    rightShiftStage1Idx1Rng1_uid210_i_shr14_count_count87_shift_x_b <= rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid212_i_shr14_count_count87_shift_x(BITJOIN,211)@2
    rightShiftStage1Idx1_uid212_i_shr14_count_count87_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid210_i_shr14_count_count87_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid205_i_shr14_count_count87_shift_x(BITSELECT,204)@2
    rightShiftStage0Idx1Rng4_uid205_i_shr14_count_count87_shift_x_b <= bgTrunc_i_add8_count_sel_x_b(31 downto 4);

    -- rightShiftStage0Idx1_uid207_i_shr14_count_count87_shift_x(BITJOIN,206)@2
    rightShiftStage0Idx1_uid207_i_shr14_count_count87_shift_x_q <= c_i4_0gr_q & rightShiftStage0Idx1Rng4_uid205_i_shr14_count_count87_shift_x_b;

    -- rightShiftStage0_uid209_i_shr14_count_count87_shift_x(MUX,208)@2
    rightShiftStage0_uid209_i_shr14_count_count87_shift_x_s <= VCC_q;
    rightShiftStage0_uid209_i_shr14_count_count87_shift_x_combproc: PROCESS (rightShiftStage0_uid209_i_shr14_count_count87_shift_x_s, bgTrunc_i_add8_count_sel_x_b, rightShiftStage0Idx1_uid207_i_shr14_count_count87_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid209_i_shr14_count_count87_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q <= bgTrunc_i_add8_count_sel_x_b;
            WHEN "1" => rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q <= rightShiftStage0Idx1_uid207_i_shr14_count_count87_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid214_i_shr14_count_count87_shift_x(MUX,213)@2
    rightShiftStage1_uid214_i_shr14_count_count87_shift_x_s <= VCC_q;
    rightShiftStage1_uid214_i_shr14_count_count87_shift_x_combproc: PROCESS (rightShiftStage1_uid214_i_shr14_count_count87_shift_x_s, rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q, rightShiftStage1Idx1_uid212_i_shr14_count_count87_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid214_i_shr14_count_count87_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid214_i_shr14_count_count87_shift_x_q <= rightShiftStage0_uid209_i_shr14_count_count87_shift_x_q;
            WHEN "1" => rightShiftStage1_uid214_i_shr14_count_count87_shift_x_q <= rightShiftStage1Idx1_uid212_i_shr14_count_count87_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid214_i_shr14_count_count87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr14_count_vt_select_26(BITSELECT,142)@2
    i_shr14_count_vt_select_26_b <= rightShiftStage1_uid214_i_shr14_count_count87_shift_x_q(26 downto 0);

    -- i_shr14_count_vt_join(BITJOIN,141)@2
    i_shr14_count_vt_join_q <= i_shr14_count_vt_const_31_q & i_shr14_count_vt_select_26_b;

    -- i_add16_count(ADD,101)@2
    i_add16_count_a <= STD_LOGIC_VECTOR("0" & i_shr14_count_vt_join_q);
    i_add16_count_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_unnamed_count21_count_out_dest_data_out_7_0);
    i_add16_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add16_count_a) + UNSIGNED(i_add16_count_b));
    i_add16_count_q <= i_add16_count_o(32 downto 0);

    -- bgTrunc_i_add16_count_sel_x(BITSELECT,4)@2
    bgTrunc_i_add16_count_sel_x_b <= i_add16_count_q(31 downto 0);

    -- i_reduction_count_2_count(LOGICAL,132)@2
    i_reduction_count_2_count_q <= bgTrunc_i_add16_count_sel_x_b xor bgTrunc_i_add12_count_sel_x_b;

    -- i_ffwd_dst_unnamed_count20_count(BLACKBOX,117)@2
    thei_ffwd_dst_unnamed_count20_count : i_ffwd_dst_unnamed_count20_count85
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_6_0 => i_ffwd_dst_unnamed_count20_count_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x(BITSELECT,187)@2
    leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_in <= bgTrunc_i_add8_count_sel_x_b(27 downto 0);
    leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_b <= leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid189_i_shl9_count_count84_shift_x(BITJOIN,188)@2
    leftShiftStage0Idx1_uid189_i_shl9_count_count84_shift_x_q <= leftShiftStage0Idx1Rng4_uid188_i_shl9_count_count84_shift_x_b & c_i4_0gr_q;

    -- leftShiftStage0_uid191_i_shl9_count_count84_shift_x(MUX,190)@2
    leftShiftStage0_uid191_i_shl9_count_count84_shift_x_s <= VCC_q;
    leftShiftStage0_uid191_i_shl9_count_count84_shift_x_combproc: PROCESS (leftShiftStage0_uid191_i_shl9_count_count84_shift_x_s, bgTrunc_i_add8_count_sel_x_b, leftShiftStage0Idx1_uid189_i_shl9_count_count84_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid191_i_shl9_count_count84_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid191_i_shl9_count_count84_shift_x_q <= bgTrunc_i_add8_count_sel_x_b;
            WHEN "1" => leftShiftStage0_uid191_i_shl9_count_count84_shift_x_q <= leftShiftStage0Idx1_uid189_i_shl9_count_count84_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid191_i_shl9_count_count84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl9_count_vt_select_31(BITSELECT,136)@2
    i_shl9_count_vt_select_31_b <= leftShiftStage0_uid191_i_shl9_count_count84_shift_x_q(31 downto 4);

    -- i_shl9_count_vt_join(BITJOIN,135)@2
    i_shl9_count_vt_join_q <= i_shl9_count_vt_select_31_b & c_i4_0gr_q;

    -- i_add11_count(ADD,99)@2
    i_add11_count_a <= STD_LOGIC_VECTOR("0" & i_shl9_count_vt_join_q);
    i_add11_count_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_unnamed_count20_count_out_dest_data_out_6_0);
    i_add11_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_count_a) + UNSIGNED(i_add11_count_b));
    i_add11_count_q <= i_add11_count_o(32 downto 0);

    -- bgTrunc_i_add11_count_sel_x(BITSELECT,2)@2
    bgTrunc_i_add11_count_sel_x_b <= i_add11_count_q(31 downto 0);

    -- i_reduction_count_3_count(LOGICAL,133)@2
    i_reduction_count_3_count_q <= bgTrunc_i_add11_count_sel_x_b xor i_reduction_count_2_count_q;

    -- i_add18_count(ADD,102)@2
    i_add18_count_a <= STD_LOGIC_VECTOR("0" & i_reduction_count_3_count_q);
    i_add18_count_b <= STD_LOGIC_VECTOR("0" & i_z_01_replace_phi_count_q);
    i_add18_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add18_count_a) + UNSIGNED(i_add18_count_b));
    i_add18_count_q <= i_add18_count_o(32 downto 0);

    -- bgTrunc_i_add18_count_sel_x(BITSELECT,5)@2
    bgTrunc_i_add18_count_sel_x_b <= i_add18_count_q(31 downto 0);

    -- i_cleanups_shl_count_vt_const_3(CONSTANT,109)
    i_cleanups_shl_count_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,79)
    c_i4_1gr_q <= "0001";

    -- leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x(BITSELECT,169)@2
    leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_in <= i_acl_pop_i4_cleanups_pop11_count_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_b <= leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid171_i_next_cleanups_count_count97_shift_x(BITJOIN,170)@2
    leftShiftStage0Idx1_uid171_i_next_cleanups_count_count97_shift_x_q <= leftShiftStage0Idx1Rng1_uid170_i_next_cleanups_count_count97_shift_x_b & GND_q;

    -- i_xor_count(LOGICAL,154)@2
    i_xor_count_q <= i_first_cleanup_count_q xor VCC_q;

    -- i_fpgaindvars_iv_next_count(ADD,122)@2
    i_fpgaindvars_iv_next_count_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_data_out);
    i_fpgaindvars_iv_next_count_b <= STD_LOGIC_VECTOR("0" & c_i6_1gr_q);
    i_fpgaindvars_iv_next_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_count_a) + UNSIGNED(i_fpgaindvars_iv_next_count_b));
    i_fpgaindvars_iv_next_count_q <= i_fpgaindvars_iv_next_count_o(6 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_count_sel_x(BITSELECT,11)@2
    bgTrunc_i_fpgaindvars_iv_next_count_sel_x_b <= i_fpgaindvars_iv_next_count_q(5 downto 0);

    -- i_acl_push_i6_fpgaindvars_iv_push6_count(BLACKBOX,98)@2
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i6_fpgaindvars_iv_push6_count : i_acl_push_i6_fpgaindvars_iv_push6_count100
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_count_sel_x_b,
        in_feedback_stall_in_6 => i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_feedback_stall_out_6,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_6 => i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i6_30(CONSTANT,82)
    c_i6_30_q <= "011110";

    -- i_acl_pop_i6_fpgaindvars_iv_pop6_count(BLACKBOX,90)@2
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i6_fpgaindvars_iv_pop6_count : i_acl_pop_i6_fpgaindvars_iv_pop6_count92
    PORT MAP (
        in_data_in => c_i6_30_q,
        in_dir => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_6 => i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i6_fpgaindvars_iv_push6_count_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i6_1gr(CONSTANT,81)
    c_i6_1gr_q <= "111111";

    -- i_exitcond_count(COMPARE,112)@2
    i_exitcond_count_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 6 => c_i6_1gr_q(5)) & c_i6_1gr_q));
    i_exitcond_count_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 6 => i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_data_out(5)) & i_acl_pop_i6_fpgaindvars_iv_pop6_count_out_data_out));
    i_exitcond_count_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond_count_a) - SIGNED(i_exitcond_count_b));
    i_exitcond_count_c(0) <= i_exitcond_count_o(7);

    -- i_notcmp_count(LOGICAL,128)@2
    i_notcmp_count_q <= i_exitcond_count_c xor VCC_q;

    -- i_or_count(LOGICAL,129)@2
    i_or_count_q <= i_notcmp_count_q or i_xor_count_q;

    -- i_cleanups_shl_count_sel_x(BITSELECT,34)@2
    i_cleanups_shl_count_sel_x_b <= std_logic_vector(resize(unsigned(i_or_count_q(0 downto 0)), 4));

    -- i_cleanups_shl_count_vt_select_0(BITSELECT,111)@2
    i_cleanups_shl_count_vt_select_0_b <= i_cleanups_shl_count_sel_x_b(0 downto 0);

    -- i_cleanups_shl_count_vt_join(BITJOIN,110)@2
    i_cleanups_shl_count_vt_join_q <= i_cleanups_shl_count_vt_const_3_q & i_cleanups_shl_count_vt_select_0_b;

    -- i_next_cleanups_count_count97_shift_narrow_x(BITSELECT,38)@2
    i_next_cleanups_count_count97_shift_narrow_x_b <= i_cleanups_shl_count_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x(BITSELECT,171)@2
    leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_in <= i_next_cleanups_count_count97_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_b <= leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x(MUX,172)@2
    leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_s <= leftShiftStageSel0Dto0_uid172_i_next_cleanups_count_count97_shift_x_b;
    leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_combproc: PROCESS (leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_s, i_acl_pop_i4_cleanups_pop11_count_out_data_out, leftShiftStage0Idx1_uid171_i_next_cleanups_count_count97_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_q <= i_acl_pop_i4_cleanups_pop11_count_out_data_out;
            WHEN "1" => leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_q <= leftShiftStage0Idx1_uid171_i_next_cleanups_count_count97_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push11_count(BLACKBOX,96)@2
    -- out out_feedback_out_11@20000000
    -- out out_feedback_valid_out_11@20000000
    thei_acl_push_i4_cleanups_push11_count : i_acl_push_i4_cleanups_push11_count98
    PORT MAP (
        in_data_in => leftShiftStage0_uid173_i_next_cleanups_count_count97_shift_x_q,
        in_feedback_stall_in_11 => i_acl_pop_i4_cleanups_pop11_count_out_feedback_stall_out_11,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_11 => i_acl_push_i4_cleanups_push11_count_out_feedback_out_11,
        out_feedback_valid_out_11 => i_acl_push_i4_cleanups_push11_count_out_feedback_valid_out_11,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,80)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop11_count(BLACKBOX,88)@2
    -- out out_feedback_stall_out_11@20000000
    thei_acl_pop_i4_cleanups_pop11_count : i_acl_pop_i4_cleanups_pop11_count49
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_11 => i_acl_push_i4_cleanups_push11_count_out_feedback_out_11,
        in_feedback_valid_in_11 => i_acl_push_i4_cleanups_push11_count_out_feedback_valid_out_11,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i4_cleanups_pop11_count_out_data_out,
        out_feedback_stall_out_11 => i_acl_pop_i4_cleanups_pop11_count_out_feedback_stall_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_count51(LOGICAL,146)@2
    i_unnamed_count51_q <= i_acl_pop_i4_cleanups_pop11_count_out_data_out and c_i4_1gr_q;

    -- i_unnamed_count51_vt_select_0(BITSELECT,149)@2
    i_unnamed_count51_vt_select_0_b <= i_unnamed_count51_q(0 downto 0);

    -- i_unnamed_count51_vt_join(BITJOIN,148)@2
    i_unnamed_count51_vt_join_q <= i_cleanups_shl_count_vt_const_3_q & i_unnamed_count51_vt_select_0_b;

    -- i_first_cleanup_count(LOGICAL,121)@2
    i_first_cleanup_count_q <= "1" WHEN i_unnamed_count51_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_ffwd_src_unnamed_count23_count(BLACKBOX,120)@2
    -- out out_intel_reserved_ffwd_9_0@20000000
    thei_ffwd_src_unnamed_count23_count : i_ffwd_src_unnamed_count23_count104
    PORT MAP (
        in_enable_in => i_first_cleanup_count_q,
        in_src_data_in_9_0 => bgTrunc_i_add18_count_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_intel_reserved_ffwd_9_0 => i_ffwd_src_unnamed_count23_count_out_intel_reserved_ffwd_9_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_count22_count(BLACKBOX,119)@2
    -- out out_intel_reserved_ffwd_8_0@20000000
    thei_ffwd_src_unnamed_count22_count : i_ffwd_src_unnamed_count22_count102
    PORT MAP (
        in_enable_in => i_first_cleanup_count_q,
        in_src_data_in_8_0 => bgTrunc_i_add8_count_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_intel_reserved_ffwd_8_0 => i_ffwd_src_unnamed_count22_count_out_intel_reserved_ffwd_8_0,
        clock => clock,
        resetn => resetn
    );

    -- i_masked_count(LOGICAL,124)@2
    i_masked_count_q <= i_first_cleanup_count_q and i_notcmp_count_q;

    -- i_acl_push_i1_notexitcond_count(BLACKBOX,92)@2
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_count : i_acl_push_i1_notexitcond_count95
    PORT MAP (
        in_data_in => i_exitcond_count_c,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_count_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_count_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_count_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid178_i_next_initerations_count_count57_shift_x(BITSELECT,177)@2
    rightShiftStage0Idx1Rng1_uid178_i_next_initerations_count_count57_shift_x_b <= i_acl_pop_i4_initerations_pop10_count_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid180_i_next_initerations_count_count57_shift_x(BITJOIN,179)@2
    rightShiftStage0Idx1_uid180_i_next_initerations_count_count57_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid178_i_next_initerations_count_count57_shift_x_b;

    -- i_acl_push_i4_initerations_push10_count(BLACKBOX,97)@2
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i4_initerations_push10_count : i_acl_push_i4_initerations_push10_count58
    PORT MAP (
        in_data_in => i_next_initerations_count_vt_join_q,
        in_feedback_stall_in_10 => i_acl_pop_i4_initerations_pop10_count_out_feedback_stall_out_10,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_10 => i_acl_push_i4_initerations_push10_count_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i4_initerations_push10_count_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_initerations_pop10_count(BLACKBOX,89)@2
    -- out out_feedback_stall_out_10@20000000
    thei_acl_pop_i4_initerations_pop10_count : i_acl_pop_i4_initerations_pop10_count55
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist1_sync_in_aunroll_x_in_c0_eni2_1_1_q,
        in_feedback_in_10 => i_acl_push_i4_initerations_push10_count_out_feedback_out_10,
        in_feedback_valid_in_10 => i_acl_push_i4_initerations_push10_count_out_feedback_valid_out_10,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i4_initerations_pop10_count_out_data_out,
        out_feedback_stall_out_10 => i_acl_pop_i4_initerations_pop10_count_out_feedback_stall_out_10,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x(MUX,181)@2
    rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_s <= VCC_q;
    rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_combproc: PROCESS (rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_s, i_acl_pop_i4_initerations_pop10_count_out_data_out, rightShiftStage0Idx1_uid180_i_next_initerations_count_count57_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_q <= i_acl_pop_i4_initerations_pop10_count_out_data_out;
            WHEN "1" => rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_q <= rightShiftStage0Idx1_uid180_i_next_initerations_count_count57_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_count_vt_select_2(BITSELECT,127)@2
    i_next_initerations_count_vt_select_2_b <= rightShiftStage0_uid182_i_next_initerations_count_count57_shift_x_q(2 downto 0);

    -- i_next_initerations_count_vt_join(BITJOIN,126)@2
    i_next_initerations_count_vt_join_q <= GND_q & i_next_initerations_count_vt_select_2_b;

    -- i_unnamed_count60_BitSelect_for_a(BITSELECT,240)@2
    i_unnamed_count60_BitSelect_for_a_b <= i_next_initerations_count_vt_join_q(0 downto 0);

    -- i_unnamed_count60_join(BITJOIN,241)@2
    i_unnamed_count60_join_q <= GND_q & GND_q & GND_q & i_unnamed_count60_BitSelect_for_a_b;

    -- i_unnamed_count60_vt_select_0(BITSELECT,153)@2
    i_unnamed_count60_vt_select_0_b <= i_unnamed_count60_join_q(0 downto 0);

    -- i_unnamed_count60_vt_join(BITJOIN,152)@2
    i_unnamed_count60_vt_join_q <= i_cleanups_shl_count_vt_const_3_q & i_unnamed_count60_vt_select_0_b;

    -- i_last_initeration_count(LOGICAL,123)@2
    i_last_initeration_count_q <= "1" WHEN i_unnamed_count60_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_count(BLACKBOX,91)@2
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_count : i_acl_push_i1_lastiniteration_count62
    PORT MAP (
        in_data_in => i_last_initeration_count_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_count_out_initeration_stall_out,
        in_keep_going => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_count_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_count_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_count(BLACKBOX,84)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_count : i_acl_pipeline_keep_going_count53
    PORT MAP (
        in_data_in => in_c0_eni2_2,
        in_initeration_in => i_acl_push_i1_lastiniteration_count_out_feedback_out_2,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_count_out_feedback_valid_out_2,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_count_out_feedback_out_3,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_count_out_feedback_valid_out_3,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_count_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_count_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_count_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_count_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_count_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_acl_pipeline_keep_going_count_out_data_out_1(DELAY,242)
    redist0_i_acl_pipeline_keep_going_count_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_count_out_data_out, xout => redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,60)@2
    out_c0_exi2_0 <= GND_q;
    out_c0_exi2_1 <= redist0_i_acl_pipeline_keep_going_count_out_data_out_1_q;
    out_c0_exi2_2 <= i_masked_count_q;
    out_intel_reserved_ffwd_8_0 <= i_ffwd_src_unnamed_count22_count_out_intel_reserved_ffwd_8_0;
    out_intel_reserved_ffwd_9_0 <= i_ffwd_src_unnamed_count23_count_out_intel_reserved_ffwd_9_0;
    out_o_valid <= redist2_sync_in_aunroll_x_in_i_valid_1_q;

    -- ext_sig_sync_out(GPOUT,83)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out <= i_acl_pipeline_keep_going_count_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out <= i_acl_pipeline_keep_going_count_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,161)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_count_out_pipeline_valid_out;

END normal;

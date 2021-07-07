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

-- VHDL created from bb_count_B1_start_stall_region
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

entity bb_count_B1_start_stall_region is
    port (
        in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_count9_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count9_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count9_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count9_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_count10_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count10_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count10_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count10_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count9_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count9_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count9_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_count11_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count10_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count10_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count10_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_count11_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count11_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count11_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- ufix128
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B1_start_stall_region;

architecture normal of bb_count_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_iord_bl_do_unnamed_count1_count14 is
        port (
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_wt_entry_count_c0_enter_count is
        port (
            in_unnamed_count0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B1_start_merge_reg is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_throttle_pop_count12 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count12_count39 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count13_count41 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count14_count43 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count15_count45 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count3_count18 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count5_count25 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count7_count29 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_2_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_count8_count31 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count10_count35 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count11_count37 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count2_count15 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count4_count20 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count6_count27 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count9_count33 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;




    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx10_count_count23_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx10_count_count23_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count23_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count23_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count23_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count23_c_i64_8gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx15_count_count24_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx15_count_count24_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count24_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count24_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count24_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count24_c_i64_12_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx1_count_count17_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx1_count_count17_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx1_count_count17_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx1_count_count17_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx1_count_count17_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx1_count_count17_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx5_count_count22_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx5_count_count22_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count22_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count22_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count22_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_count1_count_aunroll_x_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_count_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_count_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count12_count_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count12_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count12_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count13_count_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count13_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count13_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count14_count_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count14_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count14_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count15_count_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count15_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count15_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count3_count_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_src_unnamed_count3_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count3_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count5_count_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count5_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count5_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count7_count_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_src_unnamed_count7_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count7_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count8_count_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_count8_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_count8_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count10_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count10_count_out_unnamed_count10_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count11_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count11_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count11_count_out_unnamed_count11_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count2_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count2_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count2_count_out_unnamed_count2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count4_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count4_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count4_count_out_unnamed_count4_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count6_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count6_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count6_count_out_unnamed_count6_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count9_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count9_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count9_count_out_unnamed_count9_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_iord_bl_do_unnamed_count1_count_aunroll_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_acl_pop_i1_throttle_pop_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_acl_pop_i1_throttle_pop_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_load_unnamed_count10_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count10_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count11_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count11_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count2_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count2_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count4_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count4_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count6_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count6_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count9_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count9_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count3_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count3_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count3_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count7_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count7_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_count7_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count10_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count10_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count10_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count11_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count11_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count11_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count9_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count9_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count9_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out_bitsignaltemp : std_logic;

begin


    -- i_arrayidx1_count_count17_c_i64_4gr_x(CONSTANT,68)
    i_arrayidx1_count_count17_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- bubble_join_i_iord_bl_do_unnamed_count1_count_aunroll_x(BITJOIN,114)
    bubble_join_i_iord_bl_do_unnamed_count1_count_aunroll_x_q <= i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_1 & i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_0;

    -- bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x(BITSELECT,115)
    bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_count1_count_aunroll_x_q(63 downto 0));
    bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_count1_count_aunroll_x_q(127 downto 64));

    -- i_arrayidx1_count_count17_add_x(ADD,67)@2
    i_arrayidx1_count_count17_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_b);
    i_arrayidx1_count_count17_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx1_count_count17_c_i64_4gr_x_q);
    i_arrayidx1_count_count17_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx1_count_count17_add_x_a) + UNSIGNED(i_arrayidx1_count_count17_add_x_b));
    i_arrayidx1_count_count17_add_x_q <= i_arrayidx1_count_count17_add_x_o(64 downto 0);

    -- i_arrayidx1_count_count17_trunc_sel_x(BITSELECT,66)@2
    i_arrayidx1_count_count17_trunc_sel_x_b <= i_arrayidx1_count_count17_add_x_q(63 downto 0);

    -- i_load_unnamed_count6_count(BLACKBOX,101)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count6_avm_address@20000000
    -- out out_unnamed_count6_avm_burstcount@20000000
    -- out out_unnamed_count6_avm_byteenable@20000000
    -- out out_unnamed_count6_avm_enable@20000000
    -- out out_unnamed_count6_avm_read@20000000
    -- out out_unnamed_count6_avm_write@20000000
    -- out out_unnamed_count6_avm_writedata@20000000
    thei_load_unnamed_count6_count : i_load_unnamed_count6_count27
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx1_count_count17_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count6_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V4,
        in_unnamed_count6_avm_readdata => in_unnamed_count6_avm_readdata,
        in_unnamed_count6_avm_readdatavalid => in_unnamed_count6_avm_readdatavalid,
        in_unnamed_count6_avm_waitrequest => in_unnamed_count6_avm_waitrequest,
        in_unnamed_count6_avm_writeack => in_unnamed_count6_avm_writeack,
        out_o_readdata => i_load_unnamed_count6_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count6_count_out_o_stall,
        out_o_valid => i_load_unnamed_count6_count_out_o_valid,
        out_unnamed_count6_avm_address => i_load_unnamed_count6_count_out_unnamed_count6_avm_address,
        out_unnamed_count6_avm_burstcount => i_load_unnamed_count6_count_out_unnamed_count6_avm_burstcount,
        out_unnamed_count6_avm_byteenable => i_load_unnamed_count6_count_out_unnamed_count6_avm_byteenable,
        out_unnamed_count6_avm_enable => i_load_unnamed_count6_count_out_unnamed_count6_avm_enable,
        out_unnamed_count6_avm_read => i_load_unnamed_count6_count_out_unnamed_count6_avm_read,
        out_unnamed_count6_avm_write => i_load_unnamed_count6_count_out_unnamed_count6_avm_write,
        out_unnamed_count6_avm_writedata => i_load_unnamed_count6_count_out_unnamed_count6_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count6_count(STALLENABLE,190)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count6_count_V0 <= SE_out_i_load_unnamed_count6_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count6_count_backStall <= i_ffwd_src_unnamed_count12_count_out_stall_out or not (SE_out_i_load_unnamed_count6_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count6_count_wireValid <= i_load_unnamed_count6_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count6_count(BITJOIN,143)
    bubble_join_i_load_unnamed_count6_count_q <= i_load_unnamed_count6_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count6_count(BITSELECT,144)
    bubble_select_i_load_unnamed_count6_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count6_count_q(31 downto 0));

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_count12_count(BLACKBOX,89)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_3_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count12_count : i_ffwd_src_unnamed_count12_count39
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_3_0 => bubble_select_i_load_unnamed_count6_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count6_count_V0,
        out_intel_reserved_ffwd_3_0 => i_ffwd_src_unnamed_count12_count_out_intel_reserved_ffwd_3_0,
        out_stall_out => i_ffwd_src_unnamed_count12_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count12_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx5_count_count22_add_x(ADD,71)@2
    i_arrayidx5_count_count22_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c);
    i_arrayidx5_count_count22_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx1_count_count17_c_i64_4gr_x_q);
    i_arrayidx5_count_count22_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx5_count_count22_add_x_a) + UNSIGNED(i_arrayidx5_count_count22_add_x_b));
    i_arrayidx5_count_count22_add_x_q <= i_arrayidx5_count_count22_add_x_o(64 downto 0);

    -- i_arrayidx5_count_count22_trunc_sel_x(BITSELECT,70)@2
    i_arrayidx5_count_count22_trunc_sel_x_b <= i_arrayidx5_count_count22_add_x_q(63 downto 0);

    -- i_load_unnamed_count9_count(BLACKBOX,102)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count9_avm_address@20000000
    -- out out_unnamed_count9_avm_burstcount@20000000
    -- out out_unnamed_count9_avm_byteenable@20000000
    -- out out_unnamed_count9_avm_enable@20000000
    -- out out_unnamed_count9_avm_read@20000000
    -- out out_unnamed_count9_avm_write@20000000
    -- out out_unnamed_count9_avm_writedata@20000000
    thei_load_unnamed_count9_count : i_load_unnamed_count9_count33
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx5_count_count22_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count9_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V7,
        in_unnamed_count9_avm_readdata => in_unnamed_count9_avm_readdata,
        in_unnamed_count9_avm_readdatavalid => in_unnamed_count9_avm_readdatavalid,
        in_unnamed_count9_avm_waitrequest => in_unnamed_count9_avm_waitrequest,
        in_unnamed_count9_avm_writeack => in_unnamed_count9_avm_writeack,
        out_o_readdata => i_load_unnamed_count9_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count9_count_out_o_stall,
        out_o_valid => i_load_unnamed_count9_count_out_o_valid,
        out_unnamed_count9_avm_address => i_load_unnamed_count9_count_out_unnamed_count9_avm_address,
        out_unnamed_count9_avm_burstcount => i_load_unnamed_count9_count_out_unnamed_count9_avm_burstcount,
        out_unnamed_count9_avm_byteenable => i_load_unnamed_count9_count_out_unnamed_count9_avm_byteenable,
        out_unnamed_count9_avm_enable => i_load_unnamed_count9_count_out_unnamed_count9_avm_enable,
        out_unnamed_count9_avm_read => i_load_unnamed_count9_count_out_unnamed_count9_avm_read,
        out_unnamed_count9_avm_write => i_load_unnamed_count9_count_out_unnamed_count9_avm_write,
        out_unnamed_count9_avm_writedata => i_load_unnamed_count9_count_out_unnamed_count9_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count9_count(STALLENABLE,192)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count9_count_V0 <= SE_out_i_load_unnamed_count9_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count9_count_backStall <= i_ffwd_src_unnamed_count13_count_out_stall_out or not (SE_out_i_load_unnamed_count9_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count9_count_wireValid <= i_load_unnamed_count9_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count9_count(BITJOIN,146)
    bubble_join_i_load_unnamed_count9_count_q <= i_load_unnamed_count9_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count9_count(BITSELECT,147)
    bubble_select_i_load_unnamed_count9_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count9_count_q(31 downto 0));

    -- i_ffwd_src_unnamed_count13_count(BLACKBOX,90)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_5_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count13_count : i_ffwd_src_unnamed_count13_count41
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_5_0 => bubble_select_i_load_unnamed_count9_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count9_count_V0,
        out_intel_reserved_ffwd_5_0 => i_ffwd_src_unnamed_count13_count_out_intel_reserved_ffwd_5_0,
        out_stall_out => i_ffwd_src_unnamed_count13_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count13_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx10_count_count23_c_i64_8gr_x(CONSTANT,60)
    i_arrayidx10_count_count23_c_i64_8gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001000";

    -- i_arrayidx10_count_count23_add_x(ADD,59)@2
    i_arrayidx10_count_count23_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c);
    i_arrayidx10_count_count23_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx10_count_count23_c_i64_8gr_x_q);
    i_arrayidx10_count_count23_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx10_count_count23_add_x_a) + UNSIGNED(i_arrayidx10_count_count23_add_x_b));
    i_arrayidx10_count_count23_add_x_q <= i_arrayidx10_count_count23_add_x_o(64 downto 0);

    -- i_arrayidx10_count_count23_trunc_sel_x(BITSELECT,58)@2
    i_arrayidx10_count_count23_trunc_sel_x_b <= i_arrayidx10_count_count23_add_x_q(63 downto 0);

    -- i_load_unnamed_count10_count(BLACKBOX,97)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count10_avm_address@20000000
    -- out out_unnamed_count10_avm_burstcount@20000000
    -- out out_unnamed_count10_avm_byteenable@20000000
    -- out out_unnamed_count10_avm_enable@20000000
    -- out out_unnamed_count10_avm_read@20000000
    -- out out_unnamed_count10_avm_write@20000000
    -- out out_unnamed_count10_avm_writedata@20000000
    thei_load_unnamed_count10_count : i_load_unnamed_count10_count35
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx10_count_count23_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count10_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V5,
        in_unnamed_count10_avm_readdata => in_unnamed_count10_avm_readdata,
        in_unnamed_count10_avm_readdatavalid => in_unnamed_count10_avm_readdatavalid,
        in_unnamed_count10_avm_waitrequest => in_unnamed_count10_avm_waitrequest,
        in_unnamed_count10_avm_writeack => in_unnamed_count10_avm_writeack,
        out_o_readdata => i_load_unnamed_count10_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count10_count_out_o_stall,
        out_o_valid => i_load_unnamed_count10_count_out_o_valid,
        out_unnamed_count10_avm_address => i_load_unnamed_count10_count_out_unnamed_count10_avm_address,
        out_unnamed_count10_avm_burstcount => i_load_unnamed_count10_count_out_unnamed_count10_avm_burstcount,
        out_unnamed_count10_avm_byteenable => i_load_unnamed_count10_count_out_unnamed_count10_avm_byteenable,
        out_unnamed_count10_avm_enable => i_load_unnamed_count10_count_out_unnamed_count10_avm_enable,
        out_unnamed_count10_avm_read => i_load_unnamed_count10_count_out_unnamed_count10_avm_read,
        out_unnamed_count10_avm_write => i_load_unnamed_count10_count_out_unnamed_count10_avm_write,
        out_unnamed_count10_avm_writedata => i_load_unnamed_count10_count_out_unnamed_count10_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count10_count(STALLENABLE,182)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count10_count_V0 <= SE_out_i_load_unnamed_count10_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count10_count_backStall <= i_ffwd_src_unnamed_count14_count_out_stall_out or not (SE_out_i_load_unnamed_count10_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count10_count_wireValid <= i_load_unnamed_count10_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count10_count(BITJOIN,131)
    bubble_join_i_load_unnamed_count10_count_q <= i_load_unnamed_count10_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count10_count(BITSELECT,132)
    bubble_select_i_load_unnamed_count10_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count10_count_q(31 downto 0));

    -- i_ffwd_src_unnamed_count14_count(BLACKBOX,91)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_6_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count14_count : i_ffwd_src_unnamed_count14_count43
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_6_0 => bubble_select_i_load_unnamed_count10_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count10_count_V0,
        out_intel_reserved_ffwd_6_0 => i_ffwd_src_unnamed_count14_count_out_intel_reserved_ffwd_6_0,
        out_stall_out => i_ffwd_src_unnamed_count14_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count14_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx15_count_count24_c_i64_12_x(CONSTANT,64)
    i_arrayidx15_count_count24_c_i64_12_x_q <= "0000000000000000000000000000000000000000000000000000000000001100";

    -- i_arrayidx15_count_count24_add_x(ADD,63)@2
    i_arrayidx15_count_count24_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c);
    i_arrayidx15_count_count24_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx15_count_count24_c_i64_12_x_q);
    i_arrayidx15_count_count24_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx15_count_count24_add_x_a) + UNSIGNED(i_arrayidx15_count_count24_add_x_b));
    i_arrayidx15_count_count24_add_x_q <= i_arrayidx15_count_count24_add_x_o(64 downto 0);

    -- i_arrayidx15_count_count24_trunc_sel_x(BITSELECT,62)@2
    i_arrayidx15_count_count24_trunc_sel_x_b <= i_arrayidx15_count_count24_add_x_q(63 downto 0);

    -- i_load_unnamed_count11_count(BLACKBOX,98)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count11_avm_address@20000000
    -- out out_unnamed_count11_avm_burstcount@20000000
    -- out out_unnamed_count11_avm_byteenable@20000000
    -- out out_unnamed_count11_avm_enable@20000000
    -- out out_unnamed_count11_avm_read@20000000
    -- out out_unnamed_count11_avm_write@20000000
    -- out out_unnamed_count11_avm_writedata@20000000
    thei_load_unnamed_count11_count : i_load_unnamed_count11_count37
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx15_count_count24_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count11_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V6,
        in_unnamed_count11_avm_readdata => in_unnamed_count11_avm_readdata,
        in_unnamed_count11_avm_readdatavalid => in_unnamed_count11_avm_readdatavalid,
        in_unnamed_count11_avm_waitrequest => in_unnamed_count11_avm_waitrequest,
        in_unnamed_count11_avm_writeack => in_unnamed_count11_avm_writeack,
        out_o_readdata => i_load_unnamed_count11_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count11_count_out_o_stall,
        out_o_valid => i_load_unnamed_count11_count_out_o_valid,
        out_unnamed_count11_avm_address => i_load_unnamed_count11_count_out_unnamed_count11_avm_address,
        out_unnamed_count11_avm_burstcount => i_load_unnamed_count11_count_out_unnamed_count11_avm_burstcount,
        out_unnamed_count11_avm_byteenable => i_load_unnamed_count11_count_out_unnamed_count11_avm_byteenable,
        out_unnamed_count11_avm_enable => i_load_unnamed_count11_count_out_unnamed_count11_avm_enable,
        out_unnamed_count11_avm_read => i_load_unnamed_count11_count_out_unnamed_count11_avm_read,
        out_unnamed_count11_avm_write => i_load_unnamed_count11_count_out_unnamed_count11_avm_write,
        out_unnamed_count11_avm_writedata => i_load_unnamed_count11_count_out_unnamed_count11_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count11_count(STALLENABLE,184)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count11_count_V0 <= SE_out_i_load_unnamed_count11_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count11_count_backStall <= i_ffwd_src_unnamed_count15_count_out_stall_out or not (SE_out_i_load_unnamed_count11_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count11_count_wireValid <= i_load_unnamed_count11_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count11_count(BITJOIN,134)
    bubble_join_i_load_unnamed_count11_count_q <= i_load_unnamed_count11_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count11_count(BITSELECT,135)
    bubble_select_i_load_unnamed_count11_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count11_count_q(31 downto 0));

    -- i_ffwd_src_unnamed_count15_count(BLACKBOX,92)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_7_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count15_count : i_ffwd_src_unnamed_count15_count45
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_7_0 => bubble_select_i_load_unnamed_count11_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count11_count_V0,
        out_intel_reserved_ffwd_7_0 => i_ffwd_src_unnamed_count15_count_out_intel_reserved_ffwd_7_0,
        out_stall_out => i_ffwd_src_unnamed_count15_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count15_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_load_unnamed_count2_count(BLACKBOX,99)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count2_avm_address@20000000
    -- out out_unnamed_count2_avm_burstcount@20000000
    -- out out_unnamed_count2_avm_byteenable@20000000
    -- out out_unnamed_count2_avm_enable@20000000
    -- out out_unnamed_count2_avm_read@20000000
    -- out out_unnamed_count2_avm_write@20000000
    -- out out_unnamed_count2_avm_writedata@20000000
    thei_load_unnamed_count2_count : i_load_unnamed_count2_count15
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count2_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V1,
        in_unnamed_count2_avm_readdata => in_unnamed_count2_avm_readdata,
        in_unnamed_count2_avm_readdatavalid => in_unnamed_count2_avm_readdatavalid,
        in_unnamed_count2_avm_waitrequest => in_unnamed_count2_avm_waitrequest,
        in_unnamed_count2_avm_writeack => in_unnamed_count2_avm_writeack,
        out_o_readdata => i_load_unnamed_count2_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count2_count_out_o_stall,
        out_o_valid => i_load_unnamed_count2_count_out_o_valid,
        out_unnamed_count2_avm_address => i_load_unnamed_count2_count_out_unnamed_count2_avm_address,
        out_unnamed_count2_avm_burstcount => i_load_unnamed_count2_count_out_unnamed_count2_avm_burstcount,
        out_unnamed_count2_avm_byteenable => i_load_unnamed_count2_count_out_unnamed_count2_avm_byteenable,
        out_unnamed_count2_avm_enable => i_load_unnamed_count2_count_out_unnamed_count2_avm_enable,
        out_unnamed_count2_avm_read => i_load_unnamed_count2_count_out_unnamed_count2_avm_read,
        out_unnamed_count2_avm_write => i_load_unnamed_count2_count_out_unnamed_count2_avm_write,
        out_unnamed_count2_avm_writedata => i_load_unnamed_count2_count_out_unnamed_count2_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count2_count(STALLENABLE,186)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count2_count_V0 <= SE_out_i_load_unnamed_count2_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count2_count_backStall <= i_ffwd_src_unnamed_count5_count_out_stall_out or not (SE_out_i_load_unnamed_count2_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count2_count_wireValid <= i_load_unnamed_count2_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count2_count(BITJOIN,137)
    bubble_join_i_load_unnamed_count2_count_q <= i_load_unnamed_count2_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count2_count(BITSELECT,138)
    bubble_select_i_load_unnamed_count2_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count2_count_q(31 downto 0));

    -- i_ffwd_src_unnamed_count5_count(BLACKBOX,94)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_1_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count5_count : i_ffwd_src_unnamed_count5_count25
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_1_0 => bubble_select_i_load_unnamed_count2_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count2_count_V0,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_count5_count_out_intel_reserved_ffwd_1_0,
        out_stall_out => i_ffwd_src_unnamed_count5_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count5_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_load_unnamed_count4_count(BLACKBOX,100)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count4_avm_address@20000000
    -- out out_unnamed_count4_avm_burstcount@20000000
    -- out out_unnamed_count4_avm_byteenable@20000000
    -- out out_unnamed_count4_avm_enable@20000000
    -- out out_unnamed_count4_avm_read@20000000
    -- out out_unnamed_count4_avm_write@20000000
    -- out out_unnamed_count4_avm_writedata@20000000
    thei_load_unnamed_count4_count : i_load_unnamed_count4_count20
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_c,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count4_count_backStall,
        in_i_valid => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V2,
        in_unnamed_count4_avm_readdata => in_unnamed_count4_avm_readdata,
        in_unnamed_count4_avm_readdatavalid => in_unnamed_count4_avm_readdatavalid,
        in_unnamed_count4_avm_waitrequest => in_unnamed_count4_avm_waitrequest,
        in_unnamed_count4_avm_writeack => in_unnamed_count4_avm_writeack,
        out_o_readdata => i_load_unnamed_count4_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count4_count_out_o_stall,
        out_o_valid => i_load_unnamed_count4_count_out_o_valid,
        out_unnamed_count4_avm_address => i_load_unnamed_count4_count_out_unnamed_count4_avm_address,
        out_unnamed_count4_avm_burstcount => i_load_unnamed_count4_count_out_unnamed_count4_avm_burstcount,
        out_unnamed_count4_avm_byteenable => i_load_unnamed_count4_count_out_unnamed_count4_avm_byteenable,
        out_unnamed_count4_avm_enable => i_load_unnamed_count4_count_out_unnamed_count4_avm_enable,
        out_unnamed_count4_avm_read => i_load_unnamed_count4_count_out_unnamed_count4_avm_read,
        out_unnamed_count4_avm_write => i_load_unnamed_count4_count_out_unnamed_count4_avm_write,
        out_unnamed_count4_avm_writedata => i_load_unnamed_count4_count_out_unnamed_count4_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_count4_count(STALLENABLE,188)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count4_count_V0 <= SE_out_i_load_unnamed_count4_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count4_count_backStall <= i_ffwd_src_unnamed_count8_count_out_stall_out or not (SE_out_i_load_unnamed_count4_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count4_count_wireValid <= i_load_unnamed_count4_count_out_o_valid;

    -- bubble_join_i_load_unnamed_count4_count(BITJOIN,140)
    bubble_join_i_load_unnamed_count4_count_q <= i_load_unnamed_count4_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count4_count(BITSELECT,141)
    bubble_select_i_load_unnamed_count4_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count4_count_q(31 downto 0));

    -- i_ffwd_src_unnamed_count8_count(BLACKBOX,96)@34
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_4_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count8_count : i_ffwd_src_unnamed_count8_count31
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_4_0 => bubble_select_i_load_unnamed_count4_count_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall,
        in_valid_in => SE_out_i_load_unnamed_count4_count_V0,
        out_intel_reserved_ffwd_4_0 => i_ffwd_src_unnamed_count8_count_out_intel_reserved_ffwd_4_0,
        out_stall_out => i_ffwd_src_unnamed_count8_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count8_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_count3_count(BLACKBOX,93)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_0_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count3_count : i_ffwd_src_unnamed_count3_count18
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_0_0 => bubble_select_i_iord_bl_do_unnamed_count1_count_aunroll_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_count3_count_backStall,
        in_valid_in => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V0,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_count3_count_out_intel_reserved_ffwd_0_0,
        out_stall_out => i_ffwd_src_unnamed_count3_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count3_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_count3_count(STALLENABLE,174)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_count3_count_V0 <= SE_out_i_ffwd_src_unnamed_count3_count_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_count3_count_backStall <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_count3_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_count3_count_wireValid <= i_ffwd_src_unnamed_count3_count_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_count3_count_1_reg(STALLFIFO,252)
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_count3_count_V0;
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall;
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_count3_count_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 33,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_count7_count(BLACKBOX,95)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_2_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_count7_count : i_ffwd_src_unnamed_count7_count29
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_2_0 => i_arrayidx1_count_count17_trunc_sel_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_count7_count_backStall,
        in_valid_in => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V3,
        out_intel_reserved_ffwd_2_0 => i_ffwd_src_unnamed_count7_count_out_intel_reserved_ffwd_2_0,
        out_stall_out => i_ffwd_src_unnamed_count7_count_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_count7_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_count7_count(STALLENABLE,178)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_count7_count_V0 <= SE_out_i_ffwd_src_unnamed_count7_count_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_count7_count_backStall <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_count7_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_count7_count_wireValid <= i_ffwd_src_unnamed_count7_count_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_count7_count_1_reg(STALLFIFO,253)
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_count7_count_V0;
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall;
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_count7_count_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 33,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1(STALLENABLE,222)
    -- Valid signal propagation
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_V0 <= SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and0 <= bubble_out_i_ffwd_src_unnamed_count7_count_1_reg_valid_out;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and1 <= bubble_out_i_ffwd_src_unnamed_count3_count_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and0;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and2 <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and1;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and3 <= i_ffwd_src_unnamed_count8_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and2;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and4 <= i_ffwd_src_unnamed_count5_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and3;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and5 <= i_ffwd_src_unnamed_count15_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and4;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and6 <= i_ffwd_src_unnamed_count14_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and5;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and7 <= i_ffwd_src_unnamed_count13_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and6;
    SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_wireValid <= i_ffwd_src_unnamed_count12_count_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_and7;

    -- bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg(STALLFIFO,251)
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in <= SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_V0;
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_backStall;
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in(0);
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in(0);
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out(0) <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out(0) <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 34,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x(STALLENABLE,160)
    -- Valid signal propagation
    SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_V0 <= SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_backStall <= bubble_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_1_reg_stall_out or not (SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_wireValid <= i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_valid;

    -- i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x(BLACKBOX,75)@1
    -- in in_i_stall@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x : i_sfc_c0_wt_entry_count_c0_enter_count
    PORT MAP (
        in_unnamed_count0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_backStall,
        in_i_valid => SE_out_count_B1_start_merge_reg_V0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out => i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out => i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out,
        out_o_stall => i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,193)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= count_B1_start_merge_reg_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- count_B1_start_merge_reg(BLACKBOX,80)@0
    -- in in_stall_in@20000000
    -- out out_data_out@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thecount_B1_start_merge_reg : count_B1_start_merge_reg
    PORT MAP (
        in_data_in => GND_q,
        in_stall_in => SE_out_count_B1_start_merge_reg_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_stall_out => count_B1_start_merge_reg_out_stall_out,
        out_valid_out => count_B1_start_merge_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_count_B1_start_merge_reg(STALLENABLE,162)
    SE_out_count_B1_start_merge_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_count_B1_start_merge_reg_fromReg0 <= (others => '0');
            SE_out_count_B1_start_merge_reg_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_count_B1_start_merge_reg_fromReg0 <= SE_out_count_B1_start_merge_reg_toReg0;
            -- Succesor 1
            SE_out_count_B1_start_merge_reg_fromReg1 <= SE_out_count_B1_start_merge_reg_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_count_B1_start_merge_reg_consumed0 <= (not (i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_o_stall) and SE_out_count_B1_start_merge_reg_wireValid) or SE_out_count_B1_start_merge_reg_fromReg0;
    SE_out_count_B1_start_merge_reg_consumed1 <= (not (i_acl_pop_i1_throttle_pop_count_out_stall_out) and SE_out_count_B1_start_merge_reg_wireValid) or SE_out_count_B1_start_merge_reg_fromReg1;
    -- Consuming
    SE_out_count_B1_start_merge_reg_StallValid <= SE_out_count_B1_start_merge_reg_backStall and SE_out_count_B1_start_merge_reg_wireValid;
    SE_out_count_B1_start_merge_reg_toReg0 <= SE_out_count_B1_start_merge_reg_StallValid and SE_out_count_B1_start_merge_reg_consumed0;
    SE_out_count_B1_start_merge_reg_toReg1 <= SE_out_count_B1_start_merge_reg_StallValid and SE_out_count_B1_start_merge_reg_consumed1;
    -- Backward Stall generation
    SE_out_count_B1_start_merge_reg_or0 <= SE_out_count_B1_start_merge_reg_consumed0;
    SE_out_count_B1_start_merge_reg_wireStall <= not (SE_out_count_B1_start_merge_reg_consumed1 and SE_out_count_B1_start_merge_reg_or0);
    SE_out_count_B1_start_merge_reg_backStall <= SE_out_count_B1_start_merge_reg_wireStall;
    -- Valid signal propagation
    SE_out_count_B1_start_merge_reg_V0 <= SE_out_count_B1_start_merge_reg_wireValid and not (SE_out_count_B1_start_merge_reg_fromReg0);
    SE_out_count_B1_start_merge_reg_V1 <= SE_out_count_B1_start_merge_reg_wireValid and not (SE_out_count_B1_start_merge_reg_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_count_B1_start_merge_reg_wireValid <= count_B1_start_merge_reg_out_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_pop_i1_throttle_pop_count(BLACKBOX,88)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_1@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_throttle_pop_count : i_acl_pop_i1_throttle_pop_count12
    PORT MAP (
        in_data_in => GND_q,
        in_dir => GND_q,
        in_feedback_in_1 => in_feedback_in_1,
        in_feedback_valid_in_1 => in_feedback_valid_in_1,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_throttle_pop_count_backStall,
        in_valid_in => SE_out_count_B1_start_merge_reg_V1,
        out_data_out => i_acl_pop_i1_throttle_pop_count_out_data_out,
        out_feedback_stall_out_1 => i_acl_pop_i1_throttle_pop_count_out_feedback_stall_out_1,
        out_stall_out => i_acl_pop_i1_throttle_pop_count_out_stall_out,
        out_valid_out => i_acl_pop_i1_throttle_pop_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_pop_i1_throttle_pop_count(STALLENABLE,164)
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_throttle_pop_count_V0 <= SE_out_i_acl_pop_i1_throttle_pop_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_throttle_pop_count_backStall <= i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_stall or not (SE_out_i_acl_pop_i1_throttle_pop_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_throttle_pop_count_wireValid <= i_acl_pop_i1_throttle_pop_count_out_valid_out;

    -- SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x(STALLENABLE,158)
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg4 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg5 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg6 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg7 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg0 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg1 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg2 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg3 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg4 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg5 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg6 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg7 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg7;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed0 <= (not (i_ffwd_src_unnamed_count3_count_out_stall_out) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg0;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed1 <= (not (i_load_unnamed_count2_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg1;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed2 <= (not (i_load_unnamed_count4_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg2;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed3 <= (not (i_ffwd_src_unnamed_count7_count_out_stall_out) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg3;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed4 <= (not (i_load_unnamed_count6_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg4;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed5 <= (not (i_load_unnamed_count10_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg5;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed6 <= (not (i_load_unnamed_count11_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg6;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed7 <= (not (i_load_unnamed_count9_count_out_o_stall) and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg7;
    -- Consuming
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_backStall and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg0 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg1 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed1;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg2 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed2;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg3 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed3;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg4 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed4;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg5 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed5;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg6 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed6;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_toReg7 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed7;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or0 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or1 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed1 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or0;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or2 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed2 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or1;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or3 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed3 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or2;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or4 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed4 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or3;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or5 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed5 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or4;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or6 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed6 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or5;
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireStall <= not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_consumed7 and SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_or6);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_backStall <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V0 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg0);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V1 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg1);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V2 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg2);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V3 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg3);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V4 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg4);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V5 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg5);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V6 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg6);
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_V7 <= SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_fromReg7);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_wireValid <= i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_valid;

    -- bubble_join_i_acl_pop_i1_throttle_pop_count(BITJOIN,120)
    bubble_join_i_acl_pop_i1_throttle_pop_count_q <= i_acl_pop_i1_throttle_pop_count_out_data_out;

    -- bubble_select_i_acl_pop_i1_throttle_pop_count(BITSELECT,121)
    bubble_select_i_acl_pop_i1_throttle_pop_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i1_throttle_pop_count_q(0 downto 0));

    -- i_iord_bl_do_unnamed_count1_count_aunroll_x(BLACKBOX,74)@2
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_count1_count_aunroll_x : i_iord_bl_do_unnamed_count1_count14
    PORT MAP (
        in_i_dependence => bubble_select_i_acl_pop_i1_throttle_pop_count_b,
        in_i_stall => SE_out_i_iord_bl_do_unnamed_count1_count_aunroll_x_backStall,
        in_i_valid => SE_out_i_acl_pop_i1_throttle_pop_count_V0,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_o_data_0 => i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_0,
        out_o_data_1 => i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_data_1,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_count1_count_aunroll_x_out_iord_bl_do_o_fifoready,
        out_o_stall => i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_count1_count_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_count1_count_aunroll_x_out_iord_bl_do_o_fifoready;

    -- dupName_0_regfree_osync_x(GPOUT,6)
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_count5_count_out_intel_reserved_ffwd_1_0;

    -- dupName_0_sync_out_x(GPOUT,8)@34
    out_valid_out <= SE_out_bubble_out_i_ffwd_src_unnamed_count7_count_1_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,10)
    out_unnamed_count2_avm_address <= i_load_unnamed_count2_count_out_unnamed_count2_avm_address;
    out_unnamed_count2_avm_enable <= i_load_unnamed_count2_count_out_unnamed_count2_avm_enable;
    out_unnamed_count2_avm_read <= i_load_unnamed_count2_count_out_unnamed_count2_avm_read;
    out_unnamed_count2_avm_write <= i_load_unnamed_count2_count_out_unnamed_count2_avm_write;
    out_unnamed_count2_avm_writedata <= i_load_unnamed_count2_count_out_unnamed_count2_avm_writedata;
    out_unnamed_count2_avm_byteenable <= i_load_unnamed_count2_count_out_unnamed_count2_avm_byteenable;
    out_unnamed_count2_avm_burstcount <= i_load_unnamed_count2_count_out_unnamed_count2_avm_burstcount;

    -- dupName_1_regfree_osync_x(GPOUT,13)
    out_intel_reserved_ffwd_2_0 <= i_ffwd_src_unnamed_count7_count_out_intel_reserved_ffwd_2_0;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,15)
    out_unnamed_count4_avm_address <= i_load_unnamed_count4_count_out_unnamed_count4_avm_address;
    out_unnamed_count4_avm_enable <= i_load_unnamed_count4_count_out_unnamed_count4_avm_enable;
    out_unnamed_count4_avm_read <= i_load_unnamed_count4_count_out_unnamed_count4_avm_read;
    out_unnamed_count4_avm_write <= i_load_unnamed_count4_count_out_unnamed_count4_avm_write;
    out_unnamed_count4_avm_writedata <= i_load_unnamed_count4_count_out_unnamed_count4_avm_writedata;
    out_unnamed_count4_avm_byteenable <= i_load_unnamed_count4_count_out_unnamed_count4_avm_byteenable;
    out_unnamed_count4_avm_burstcount <= i_load_unnamed_count4_count_out_unnamed_count4_avm_burstcount;

    -- dupName_2_regfree_osync_x(GPOUT,18)
    out_intel_reserved_ffwd_3_0 <= i_ffwd_src_unnamed_count12_count_out_intel_reserved_ffwd_3_0;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,20)
    out_unnamed_count6_avm_address <= i_load_unnamed_count6_count_out_unnamed_count6_avm_address;
    out_unnamed_count6_avm_enable <= i_load_unnamed_count6_count_out_unnamed_count6_avm_enable;
    out_unnamed_count6_avm_read <= i_load_unnamed_count6_count_out_unnamed_count6_avm_read;
    out_unnamed_count6_avm_write <= i_load_unnamed_count6_count_out_unnamed_count6_avm_write;
    out_unnamed_count6_avm_writedata <= i_load_unnamed_count6_count_out_unnamed_count6_avm_writedata;
    out_unnamed_count6_avm_byteenable <= i_load_unnamed_count6_count_out_unnamed_count6_avm_byteenable;
    out_unnamed_count6_avm_burstcount <= i_load_unnamed_count6_count_out_unnamed_count6_avm_burstcount;

    -- dupName_3_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_4_0 <= i_ffwd_src_unnamed_count8_count_out_intel_reserved_ffwd_4_0;

    -- dupName_4_ext_sig_sync_out_x(GPOUT,25)
    out_unnamed_count9_avm_address <= i_load_unnamed_count9_count_out_unnamed_count9_avm_address;
    out_unnamed_count9_avm_enable <= i_load_unnamed_count9_count_out_unnamed_count9_avm_enable;
    out_unnamed_count9_avm_read <= i_load_unnamed_count9_count_out_unnamed_count9_avm_read;
    out_unnamed_count9_avm_write <= i_load_unnamed_count9_count_out_unnamed_count9_avm_write;
    out_unnamed_count9_avm_writedata <= i_load_unnamed_count9_count_out_unnamed_count9_avm_writedata;
    out_unnamed_count9_avm_byteenable <= i_load_unnamed_count9_count_out_unnamed_count9_avm_byteenable;
    out_unnamed_count9_avm_burstcount <= i_load_unnamed_count9_count_out_unnamed_count9_avm_burstcount;

    -- dupName_4_regfree_osync_x(GPOUT,28)
    out_intel_reserved_ffwd_5_0 <= i_ffwd_src_unnamed_count13_count_out_intel_reserved_ffwd_5_0;

    -- dupName_5_ext_sig_sync_out_x(GPOUT,30)
    out_unnamed_count10_avm_address <= i_load_unnamed_count10_count_out_unnamed_count10_avm_address;
    out_unnamed_count10_avm_enable <= i_load_unnamed_count10_count_out_unnamed_count10_avm_enable;
    out_unnamed_count10_avm_read <= i_load_unnamed_count10_count_out_unnamed_count10_avm_read;
    out_unnamed_count10_avm_write <= i_load_unnamed_count10_count_out_unnamed_count10_avm_write;
    out_unnamed_count10_avm_writedata <= i_load_unnamed_count10_count_out_unnamed_count10_avm_writedata;
    out_unnamed_count10_avm_byteenable <= i_load_unnamed_count10_count_out_unnamed_count10_avm_byteenable;
    out_unnamed_count10_avm_burstcount <= i_load_unnamed_count10_count_out_unnamed_count10_avm_burstcount;

    -- dupName_5_regfree_osync_x(GPOUT,33)
    out_intel_reserved_ffwd_6_0 <= i_ffwd_src_unnamed_count14_count_out_intel_reserved_ffwd_6_0;

    -- dupName_6_ext_sig_sync_out_x(GPOUT,34)
    out_unnamed_count11_avm_address <= i_load_unnamed_count11_count_out_unnamed_count11_avm_address;
    out_unnamed_count11_avm_enable <= i_load_unnamed_count11_count_out_unnamed_count11_avm_enable;
    out_unnamed_count11_avm_read <= i_load_unnamed_count11_count_out_unnamed_count11_avm_read;
    out_unnamed_count11_avm_write <= i_load_unnamed_count11_count_out_unnamed_count11_avm_write;
    out_unnamed_count11_avm_writedata <= i_load_unnamed_count11_count_out_unnamed_count11_avm_writedata;
    out_unnamed_count11_avm_byteenable <= i_load_unnamed_count11_count_out_unnamed_count11_avm_byteenable;
    out_unnamed_count11_avm_burstcount <= i_load_unnamed_count11_count_out_unnamed_count11_avm_burstcount;

    -- dupName_6_regfree_osync_x(GPOUT,37)
    out_intel_reserved_ffwd_7_0 <= i_ffwd_src_unnamed_count15_count_out_intel_reserved_ffwd_7_0;

    -- ext_sig_sync_out(GPOUT,84)
    out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out <= i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out <= i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out;

    -- feedback_stall_out_1_sync(GPOUT,86)
    out_feedback_stall_out_1 <= i_acl_pop_i1_throttle_pop_count_out_feedback_stall_out_1;

    -- pipeline_valid_out_sync(GPOUT,106)
    out_pipeline_valid_out <= i_sfc_c0_wt_entry_count_c0_enter_count_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,108)
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_count3_count_out_intel_reserved_ffwd_0_0;

    -- sync_out(GPOUT,112)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;

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

-- VHDL created from bb_count_B1_start
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

entity bb_count_B1_start is
    port (
        in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- ufix128
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count10_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count10_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count10_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count10_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count11_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count9_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count9_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count9_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count9_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count10_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count10_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count10_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count11_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count11_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count11_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count9_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count9_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count9_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count9_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B1_start;

architecture normal of bb_count_B1_start is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_count_B1_start_stall_region is
        port (
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count10_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count9_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count10_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count11_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count9_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B1_start_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B1_start_merge is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_count_B1_start_stall_region_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count10_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count11_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count4_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count6_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_stall_region_out_unnamed_count9_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- count_B1_start_merge(BLACKBOX,4)
    thecount_B1_start_merge : count_B1_start_merge
    PORT MAP (
        in_stall_in => bb_count_B1_start_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_stall_out_0 => count_B1_start_merge_out_stall_out_0,
        out_stall_out_1 => count_B1_start_merge_out_stall_out_1,
        out_valid_out => count_B1_start_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- count_B1_start_branch(BLACKBOX,3)
    thecount_B1_start_branch : count_B1_start_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_count_B1_start_stall_region_out_valid_out,
        out_stall_out => count_B1_start_branch_out_stall_out,
        out_valid_out_0 => count_B1_start_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_count_B1_start_stall_region(BLACKBOX,2)
    thebb_count_B1_start_stall_region : bb_count_B1_start_stall_region
    PORT MAP (
        in_feedback_in_1 => in_feedback_in_1,
        in_feedback_valid_in_1 => in_feedback_valid_in_1,
        in_flush => in_flush,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => count_B1_start_branch_out_stall_out,
        in_unnamed_count10_avm_readdata => in_unnamed_count10_avm_readdata,
        in_unnamed_count10_avm_readdatavalid => in_unnamed_count10_avm_readdatavalid,
        in_unnamed_count10_avm_waitrequest => in_unnamed_count10_avm_waitrequest,
        in_unnamed_count10_avm_writeack => in_unnamed_count10_avm_writeack,
        in_unnamed_count11_avm_readdata => in_unnamed_count11_avm_readdata,
        in_unnamed_count11_avm_readdatavalid => in_unnamed_count11_avm_readdatavalid,
        in_unnamed_count11_avm_waitrequest => in_unnamed_count11_avm_waitrequest,
        in_unnamed_count11_avm_writeack => in_unnamed_count11_avm_writeack,
        in_unnamed_count2_avm_readdata => in_unnamed_count2_avm_readdata,
        in_unnamed_count2_avm_readdatavalid => in_unnamed_count2_avm_readdatavalid,
        in_unnamed_count2_avm_waitrequest => in_unnamed_count2_avm_waitrequest,
        in_unnamed_count2_avm_writeack => in_unnamed_count2_avm_writeack,
        in_unnamed_count4_avm_readdata => in_unnamed_count4_avm_readdata,
        in_unnamed_count4_avm_readdatavalid => in_unnamed_count4_avm_readdatavalid,
        in_unnamed_count4_avm_waitrequest => in_unnamed_count4_avm_waitrequest,
        in_unnamed_count4_avm_writeack => in_unnamed_count4_avm_writeack,
        in_unnamed_count6_avm_readdata => in_unnamed_count6_avm_readdata,
        in_unnamed_count6_avm_readdatavalid => in_unnamed_count6_avm_readdatavalid,
        in_unnamed_count6_avm_waitrequest => in_unnamed_count6_avm_waitrequest,
        in_unnamed_count6_avm_writeack => in_unnamed_count6_avm_writeack,
        in_unnamed_count9_avm_readdata => in_unnamed_count9_avm_readdata,
        in_unnamed_count9_avm_readdatavalid => in_unnamed_count9_avm_readdatavalid,
        in_unnamed_count9_avm_waitrequest => in_unnamed_count9_avm_waitrequest,
        in_unnamed_count9_avm_writeack => in_unnamed_count9_avm_writeack,
        in_valid_in => count_B1_start_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out => bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out => bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out,
        out_feedback_stall_out_1 => bb_count_B1_start_stall_region_out_feedback_stall_out_1,
        out_intel_reserved_ffwd_0_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_1_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_6_0,
        out_intel_reserved_ffwd_7_0 => bb_count_B1_start_stall_region_out_intel_reserved_ffwd_7_0,
        out_iord_bl_do_o_fifoready => bb_count_B1_start_stall_region_out_iord_bl_do_o_fifoready,
        out_pipeline_valid_out => bb_count_B1_start_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_count_B1_start_stall_region_out_stall_out,
        out_unnamed_count10_avm_address => bb_count_B1_start_stall_region_out_unnamed_count10_avm_address,
        out_unnamed_count10_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count10_avm_burstcount,
        out_unnamed_count10_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count10_avm_byteenable,
        out_unnamed_count10_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count10_avm_enable,
        out_unnamed_count10_avm_read => bb_count_B1_start_stall_region_out_unnamed_count10_avm_read,
        out_unnamed_count10_avm_write => bb_count_B1_start_stall_region_out_unnamed_count10_avm_write,
        out_unnamed_count10_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count10_avm_writedata,
        out_unnamed_count11_avm_address => bb_count_B1_start_stall_region_out_unnamed_count11_avm_address,
        out_unnamed_count11_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count11_avm_burstcount,
        out_unnamed_count11_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count11_avm_byteenable,
        out_unnamed_count11_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count11_avm_enable,
        out_unnamed_count11_avm_read => bb_count_B1_start_stall_region_out_unnamed_count11_avm_read,
        out_unnamed_count11_avm_write => bb_count_B1_start_stall_region_out_unnamed_count11_avm_write,
        out_unnamed_count11_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count11_avm_writedata,
        out_unnamed_count2_avm_address => bb_count_B1_start_stall_region_out_unnamed_count2_avm_address,
        out_unnamed_count2_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count2_avm_burstcount,
        out_unnamed_count2_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count2_avm_byteenable,
        out_unnamed_count2_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count2_avm_enable,
        out_unnamed_count2_avm_read => bb_count_B1_start_stall_region_out_unnamed_count2_avm_read,
        out_unnamed_count2_avm_write => bb_count_B1_start_stall_region_out_unnamed_count2_avm_write,
        out_unnamed_count2_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count2_avm_writedata,
        out_unnamed_count4_avm_address => bb_count_B1_start_stall_region_out_unnamed_count4_avm_address,
        out_unnamed_count4_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count4_avm_burstcount,
        out_unnamed_count4_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count4_avm_byteenable,
        out_unnamed_count4_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count4_avm_enable,
        out_unnamed_count4_avm_read => bb_count_B1_start_stall_region_out_unnamed_count4_avm_read,
        out_unnamed_count4_avm_write => bb_count_B1_start_stall_region_out_unnamed_count4_avm_write,
        out_unnamed_count4_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count4_avm_writedata,
        out_unnamed_count6_avm_address => bb_count_B1_start_stall_region_out_unnamed_count6_avm_address,
        out_unnamed_count6_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count6_avm_burstcount,
        out_unnamed_count6_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count6_avm_byteenable,
        out_unnamed_count6_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count6_avm_enable,
        out_unnamed_count6_avm_read => bb_count_B1_start_stall_region_out_unnamed_count6_avm_read,
        out_unnamed_count6_avm_write => bb_count_B1_start_stall_region_out_unnamed_count6_avm_write,
        out_unnamed_count6_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count6_avm_writedata,
        out_unnamed_count9_avm_address => bb_count_B1_start_stall_region_out_unnamed_count9_avm_address,
        out_unnamed_count9_avm_burstcount => bb_count_B1_start_stall_region_out_unnamed_count9_avm_burstcount,
        out_unnamed_count9_avm_byteenable => bb_count_B1_start_stall_region_out_unnamed_count9_avm_byteenable,
        out_unnamed_count9_avm_enable => bb_count_B1_start_stall_region_out_unnamed_count9_avm_enable,
        out_unnamed_count9_avm_read => bb_count_B1_start_stall_region_out_unnamed_count9_avm_read,
        out_unnamed_count9_avm_write => bb_count_B1_start_stall_region_out_unnamed_count9_avm_write,
        out_unnamed_count9_avm_writedata => bb_count_B1_start_stall_region_out_unnamed_count9_avm_writedata,
        out_valid_out => bb_count_B1_start_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- feedback_stall_out_1_sync(GPOUT,6)
    out_feedback_stall_out_1 <= bb_count_B1_start_stall_region_out_feedback_stall_out_1;

    -- out_exiting_stall_out(GPOUT,38)
    out_exiting_stall_out <= bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,39)
    out_exiting_valid_out <= bb_count_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_count_exiting_valid_out;

    -- out_intel_reserved_ffwd_0_0(GPOUT,40)
    out_intel_reserved_ffwd_0_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    -- out_intel_reserved_ffwd_1_0(GPOUT,41)
    out_intel_reserved_ffwd_1_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    -- out_intel_reserved_ffwd_2_0(GPOUT,42)
    out_intel_reserved_ffwd_2_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    -- out_intel_reserved_ffwd_3_0(GPOUT,43)
    out_intel_reserved_ffwd_3_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    -- out_intel_reserved_ffwd_4_0(GPOUT,44)
    out_intel_reserved_ffwd_4_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    -- out_intel_reserved_ffwd_5_0(GPOUT,45)
    out_intel_reserved_ffwd_5_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    -- out_intel_reserved_ffwd_6_0(GPOUT,46)
    out_intel_reserved_ffwd_6_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    -- out_intel_reserved_ffwd_7_0(GPOUT,47)
    out_intel_reserved_ffwd_7_0 <= bb_count_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    -- out_iord_bl_do_o_fifoready(GPOUT,48)
    out_iord_bl_do_o_fifoready <= bb_count_B1_start_stall_region_out_iord_bl_do_o_fifoready;

    -- out_stall_out_0(GPOUT,49)
    out_stall_out_0 <= count_B1_start_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,50)
    out_stall_out_1 <= count_B1_start_merge_out_stall_out_1;

    -- out_unnamed_count10_avm_address(GPOUT,51)
    out_unnamed_count10_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_address;

    -- out_unnamed_count10_avm_burstcount(GPOUT,52)
    out_unnamed_count10_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_burstcount;

    -- out_unnamed_count10_avm_byteenable(GPOUT,53)
    out_unnamed_count10_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_byteenable;

    -- out_unnamed_count10_avm_enable(GPOUT,54)
    out_unnamed_count10_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_enable;

    -- out_unnamed_count10_avm_read(GPOUT,55)
    out_unnamed_count10_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_read;

    -- out_unnamed_count10_avm_write(GPOUT,56)
    out_unnamed_count10_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_write;

    -- out_unnamed_count10_avm_writedata(GPOUT,57)
    out_unnamed_count10_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count10_avm_writedata;

    -- out_unnamed_count11_avm_address(GPOUT,58)
    out_unnamed_count11_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_address;

    -- out_unnamed_count11_avm_burstcount(GPOUT,59)
    out_unnamed_count11_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_burstcount;

    -- out_unnamed_count11_avm_byteenable(GPOUT,60)
    out_unnamed_count11_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_byteenable;

    -- out_unnamed_count11_avm_enable(GPOUT,61)
    out_unnamed_count11_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_enable;

    -- out_unnamed_count11_avm_read(GPOUT,62)
    out_unnamed_count11_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_read;

    -- out_unnamed_count11_avm_write(GPOUT,63)
    out_unnamed_count11_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_write;

    -- out_unnamed_count11_avm_writedata(GPOUT,64)
    out_unnamed_count11_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count11_avm_writedata;

    -- out_unnamed_count2_avm_address(GPOUT,65)
    out_unnamed_count2_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_address;

    -- out_unnamed_count2_avm_burstcount(GPOUT,66)
    out_unnamed_count2_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_burstcount;

    -- out_unnamed_count2_avm_byteenable(GPOUT,67)
    out_unnamed_count2_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_byteenable;

    -- out_unnamed_count2_avm_enable(GPOUT,68)
    out_unnamed_count2_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_enable;

    -- out_unnamed_count2_avm_read(GPOUT,69)
    out_unnamed_count2_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_read;

    -- out_unnamed_count2_avm_write(GPOUT,70)
    out_unnamed_count2_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_write;

    -- out_unnamed_count2_avm_writedata(GPOUT,71)
    out_unnamed_count2_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count2_avm_writedata;

    -- out_unnamed_count4_avm_address(GPOUT,72)
    out_unnamed_count4_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_address;

    -- out_unnamed_count4_avm_burstcount(GPOUT,73)
    out_unnamed_count4_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_burstcount;

    -- out_unnamed_count4_avm_byteenable(GPOUT,74)
    out_unnamed_count4_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_byteenable;

    -- out_unnamed_count4_avm_enable(GPOUT,75)
    out_unnamed_count4_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_enable;

    -- out_unnamed_count4_avm_read(GPOUT,76)
    out_unnamed_count4_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_read;

    -- out_unnamed_count4_avm_write(GPOUT,77)
    out_unnamed_count4_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_write;

    -- out_unnamed_count4_avm_writedata(GPOUT,78)
    out_unnamed_count4_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count4_avm_writedata;

    -- out_unnamed_count6_avm_address(GPOUT,79)
    out_unnamed_count6_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_address;

    -- out_unnamed_count6_avm_burstcount(GPOUT,80)
    out_unnamed_count6_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_burstcount;

    -- out_unnamed_count6_avm_byteenable(GPOUT,81)
    out_unnamed_count6_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_byteenable;

    -- out_unnamed_count6_avm_enable(GPOUT,82)
    out_unnamed_count6_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_enable;

    -- out_unnamed_count6_avm_read(GPOUT,83)
    out_unnamed_count6_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_read;

    -- out_unnamed_count6_avm_write(GPOUT,84)
    out_unnamed_count6_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_write;

    -- out_unnamed_count6_avm_writedata(GPOUT,85)
    out_unnamed_count6_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count6_avm_writedata;

    -- out_unnamed_count9_avm_address(GPOUT,86)
    out_unnamed_count9_avm_address <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_address;

    -- out_unnamed_count9_avm_burstcount(GPOUT,87)
    out_unnamed_count9_avm_burstcount <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_burstcount;

    -- out_unnamed_count9_avm_byteenable(GPOUT,88)
    out_unnamed_count9_avm_byteenable <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_byteenable;

    -- out_unnamed_count9_avm_enable(GPOUT,89)
    out_unnamed_count9_avm_enable <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_enable;

    -- out_unnamed_count9_avm_read(GPOUT,90)
    out_unnamed_count9_avm_read <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_read;

    -- out_unnamed_count9_avm_write(GPOUT,91)
    out_unnamed_count9_avm_write <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_write;

    -- out_unnamed_count9_avm_writedata(GPOUT,92)
    out_unnamed_count9_avm_writedata <= bb_count_B1_start_stall_region_out_unnamed_count9_avm_writedata;

    -- out_valid_out_0(GPOUT,93)
    out_valid_out_0 <= count_B1_start_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,95)
    out_pipeline_valid_out <= bb_count_B1_start_stall_region_out_pipeline_valid_out;

END normal;

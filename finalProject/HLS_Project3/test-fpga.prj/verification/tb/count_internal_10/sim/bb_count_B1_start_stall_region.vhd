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

entity bb_count_B1_start_stall_region is
    port (
        in_unnamed_count1_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_initialized_count_4_NA_b_addr_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count1_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count1_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count3_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count3_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count5_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count5_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_memdep_2_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- ufix128
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B1_start_stall_region;

architecture normal of bb_count_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component count_B1_start_merge_reg is
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


    component i_iord_bl_do_unnamed_count0_count8 is
        port (
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


    component i_acl_pipeline_keep_going_count4 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_pop_i1_memdep_phi3_pop7_count16 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_memdep_phi_pop6_count12 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count10 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_y_count_4ia_addr_0_pop4_count20 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_z_count_4ia_addr_0_pop3_count22 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_memdep_phi3_push7_count55 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_memdep_phi_push6_count51 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_count6 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i32_sum_count_4ia_addr_0_push5_count24 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_y_count_4ia_addr_0_push4_count33 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_z_count_4ia_addr_0_push3_count43 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_return_unnamed_count7_count57 is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count1_count14 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count2_count18 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_load_unnamed_count3_count27 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count4_count31 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_load_unnamed_count5_count37 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_count6_count41 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_store_memdep_2_count53 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_2_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_2_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_count49 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
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
    signal bgTrunc_i_add11_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add12_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add16_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add18_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add3_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add6_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add8_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_phitmp_count_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal count_B1_start_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B1_start_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx10_count_count36_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx10_count_count36_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count36_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count36_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count36_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx10_count_count36_c_i64_8gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx15_count_count40_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx15_count_count40_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count40_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count40_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count40_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx15_count_count40_c_i64_12_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx20_pre_count_count9_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx20_pre_count_count9_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx20_pre_count_count9_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx20_pre_count_count9_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx20_pre_count_count9_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx20_pre_count_count9_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx5_count_count30_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx5_count_count30_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count30_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count30_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx5_count_count30_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_iord_bl_do_unnamed_count0_count_aunroll_x_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1640531527_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_7_count_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_7_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_8_count_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_8_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_9_count_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_9_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going_count_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi3_pop7_count_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi3_pop7_count_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi3_pop7_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi3_pop7_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi_pop6_count_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi_pop6_count_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi_pop6_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi_pop6_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_feedback_stall_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_feedback_stall_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_feedback_stall_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi3_push7_count_out_feedback_out_7 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_memdep_phi3_push7_count_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi3_push7_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi3_push7_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi_push6_count_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_memdep_phi_push6_count_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi_push6_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi_push6_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_valid_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_out_4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
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
    signal i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count7_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count7_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count1_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count1_count_out_unnamed_count1_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_load_unnamed_count3_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count3_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count3_count_out_unnamed_count3_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_load_unnamed_count5_count_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_count5_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_count5_count_out_unnamed_count5_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_memdep_or_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_memdep_phi3_or_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phitmp_count_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_phitmp_count_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_phitmp_count_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_phitmp_count_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_reduction_count_0_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_1_count_qi : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_1_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_2_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_count_3_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl9_count_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_shl9_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl9_count_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shl_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_count_vt_select_31_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr14_count_vt_const_31_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr14_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr14_count_vt_select_26_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_shr_count_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_count_vt_select_26_b : STD_LOGIC_VECTOR (26 downto 0);
    signal i_store_memdep_2_count_out_lsu_memdep_2_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_memdep_2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_2_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_2_count_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_lsu_memdep_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_memdep_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_count_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_store_memdep_count_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_memdep_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_count_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_count45_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_count46_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_count46_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_unnamed_count46_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_count46_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_count47_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid209_i_shl9_count_count35_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid211_i_shl9_count_count35_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid211_i_shl9_count_count35_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid218_i_shl_count_count26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid220_i_shl_count_count26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid220_i_shl_count_count26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid225_i_shr14_count_count39_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid227_i_shr14_count_count39_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid229_i_shr14_count_count39_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid230_i_shr14_count_count39_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid232_i_shr14_count_count39_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid234_i_shr14_count_count39_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid234_i_shr14_count_count39_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid239_i_shr_count_count29_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid241_i_shr_count_count29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid243_i_shr_count_count29_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid243_i_shr_count_count29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid244_i_shr_count_count29_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid246_i_shr_count_count29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid248_i_shr_count_count29_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid248_i_shr_count_count29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_store_memdep_count_out_o_writeack_1_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_acl_9_count_q_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_8_count_q_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_8_count_q_2_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_bgTrunc_i_add16_count_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_bgTrunc_i_add12_count_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_bgTrunc_i_add11_count_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_count_B1_start_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_count_B1_start_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_count_B1_start_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_iord_bl_do_unnamed_count0_count_aunroll_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_acl_pop_i1_memdep_phi3_pop7_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_acl_pop_i1_memdep_phi3_pop7_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_acl_pop_i1_memdep_phi_pop6_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_acl_pop_i1_memdep_phi_pop6_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count1_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count1_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count2_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count2_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count3_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count3_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count4_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count4_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count5_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count5_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_load_unnamed_count6_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_load_unnamed_count6_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_store_memdep_2_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_2_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_store_memdep_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_count_B1_start_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_7_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_acl_9_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pipeline_keep_going_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pipeline_keep_going_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pipeline_keep_going_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_notexitcond_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_notexitcond_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add12_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add12_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add12_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_add8_count_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_count7_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_count7_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count1_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count1_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count1_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count1_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count1_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count1_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count1_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count1_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count2_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count2_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count2_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count2_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_in_i_load_unnamed_count2_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count2_count_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count3_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count3_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count3_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count3_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count3_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count4_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count5_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count5_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count5_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_count6_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_or_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_or_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_or_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_or_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_memdep_phi3_or_count_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_1_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_reduction_count_2_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shl9_count_vt_select_31_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shl9_count_vt_select_31_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shl9_count_vt_select_31_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shr14_count_vt_select_26_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shr14_count_vt_select_26_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_shr14_count_vt_select_26_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_2_count_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_acl_9_count_q_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_acl_8_count_q_2_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_pipeline_keep_going_count_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_i_memdep_phi3_or_count_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data5 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data6 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_r_data7 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D5 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D6 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_memdep_phi3_or_count_D7 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shr14_count_vt_select_26_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_add12_count_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add12_count_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add12_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add12_count_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_add12_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add12_count_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_add12_count_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_shl9_count_vt_select_31_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_acl_8_count_q_2_1_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D2 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,453)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= count_B1_start_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,344)
    bubble_join_stall_entry_q <= in_initialized_count_4_NA_b_addr_0 & in_forked;

    -- bubble_select_stall_entry(BITSELECT,345)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));

    -- count_B1_start_merge_reg_aunroll_x(BLACKBOX,11)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    thecount_B1_start_merge_reg_aunroll_x : count_B1_start_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_c,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_count_B1_start_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => count_B1_start_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => count_B1_start_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => count_B1_start_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => count_B1_start_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_count_B1_start_merge_reg_aunroll_x(BITJOIN,290)
    bubble_join_count_B1_start_merge_reg_aunroll_x_q <= count_B1_start_merge_reg_aunroll_x_out_data_out_1 & count_B1_start_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_count_B1_start_merge_reg_aunroll_x(BITSELECT,291)
    bubble_select_count_B1_start_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_count_B1_start_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_count_B1_start_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_count_B1_start_merge_reg_aunroll_x_q(1 downto 1));

    -- redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0(REG,281)
    redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN = "1") THEN
                redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q <= STD_LOGIC_VECTOR(bubble_select_count_B1_start_merge_reg_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg(STALLFIFO,595)
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in <= SE_out_count_B1_start_merge_reg_aunroll_x_V1;
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in <= SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_backStall;
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp <= bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in(0);
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp <= bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in(0);
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out(0) <= bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out(0) <= bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    thebubble_out_count_B1_start_merge_reg_aunroll_x_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 66,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3(STALLENABLE,502)
    -- Valid signal propagation
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_V0 <= SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_backStall <= i_acl_pipeline_keep_going_count_out_stall_out or not (SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_wireValid <= bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_valid_out;

    -- bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg(STALLFIFO,594)
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in <= SE_out_count_B1_start_merge_reg_aunroll_x_V0;
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in <= SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_backStall;
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp <= bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in(0);
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp <= bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in(0);
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out(0) <= bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out(0) <= bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    thebubble_out_count_B1_start_merge_reg_aunroll_x_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 66,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2(STALLENABLE,500)
    -- Valid signal propagation
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_V0 <= SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_backStall <= i_acl_push_i1_notexitcond_count_out_stall_out or not (SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_wireValid <= bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_valid_out;

    -- SE_out_i_acl_push_i1_notexitcond_count(STALLENABLE,400)
    -- Backward Stall generation
    SE_out_i_acl_push_i1_notexitcond_count_backStall <= "0";
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i1_notexitcond_count_wireValid <= i_acl_push_i1_notexitcond_count_out_valid_out;

    -- i_acl_push_i1_notexitcond_count(BLACKBOX,146)@66
    -- in in_stall_in@20000000
    -- out out_data_out@67
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@67
    thei_acl_push_i1_notexitcond_count : i_acl_push_i1_notexitcond_count6
    PORT MAP (
        in_data_in => VCC_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out,
        in_stall_in => SE_out_i_acl_push_i1_notexitcond_count_backStall,
        in_valid_in => SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_2_V0,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_count_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_count_out_feedback_valid_out_2,
        out_stall_out => i_acl_push_i1_notexitcond_count_out_stall_out,
        out_valid_out => i_acl_push_i1_notexitcond_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_acl_pipeline_keep_going_count(BLACKBOX,138)@66
    -- in in_stall_in@20000000
    -- out out_data_out@67
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@67
    thei_acl_pipeline_keep_going_count : i_acl_pipeline_keep_going_count4
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_count_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_count_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => SE_out_i_acl_pipeline_keep_going_count_backStall,
        in_valid_in => SE_out_bubble_out_count_B1_start_merge_reg_aunroll_x_3_V0,
        out_exiting_stall_out => i_acl_pipeline_keep_going_count_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_count_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_count_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_count_out_pipeline_valid_out,
        out_stall_out => i_acl_pipeline_keep_going_count_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_pipeline_keep_going_count(STALLENABLE,384)
    -- Valid signal propagation
    SE_out_i_acl_pipeline_keep_going_count_V0 <= SE_out_i_acl_pipeline_keep_going_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pipeline_keep_going_count_backStall <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_backStall or not (SE_out_i_acl_pipeline_keep_going_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pipeline_keep_going_count_wireValid <= i_acl_pipeline_keep_going_count_out_valid_out;

    -- bubble_out_i_acl_pipeline_keep_going_count_1_reg(STALLENABLE,596)
    -- Valid signal propagation
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_V0 <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_s_tv_0 <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall and bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_backEN <= not (bubble_out_i_acl_pipeline_keep_going_count_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_v_s_0 <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_backEN and SE_out_i_acl_pipeline_keep_going_count_V0;
    -- Backward Stall generation
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_backStall <= not (bubble_out_i_acl_pipeline_keep_going_count_1_reg_v_s_0);
    bubble_out_i_acl_pipeline_keep_going_count_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_acl_pipeline_keep_going_count_1_reg_backEN = "0") THEN
                bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0 <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0 and bubble_out_i_acl_pipeline_keep_going_count_1_reg_s_tv_0;
            ELSE
                bubble_out_i_acl_pipeline_keep_going_count_1_reg_R_v_0 <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_iowr_bl_return_unnamed_count7_count(STALLENABLE,416)
    -- Backward Stall generation
    SE_out_i_iowr_bl_return_unnamed_count7_count_backStall <= "0";
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_return_unnamed_count7_count_wireValid <= i_iowr_bl_return_unnamed_count7_count_out_o_valid;

    -- SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo(STALLENABLE,480)
    -- Valid signal propagation
    SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V0 <= SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall <= i_store_memdep_count_out_o_stall or not (SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_wireValid <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V;

    -- SE_out_i_store_memdep_count(STALLENABLE,447)
    -- Valid signal propagation
    SE_out_i_store_memdep_count_V0 <= SE_out_i_store_memdep_count_wireValid;
    -- Backward Stall generation
    SE_out_i_store_memdep_count_backStall <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backStall or not (SE_out_i_store_memdep_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_store_memdep_count_wireValid <= i_store_memdep_count_out_o_valid;

    -- i_arrayidx20_pre_count_count9_c_i64_4gr_x(CONSTANT,91)
    i_arrayidx20_pre_count_count9_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- bubble_join_i_iord_bl_do_unnamed_count0_count_aunroll_x(BITJOIN,296)
    bubble_join_i_iord_bl_do_unnamed_count0_count_aunroll_x_q <= i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_1 & i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0;

    -- bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x(BITSELECT,297)
    bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_count0_count_aunroll_x_q(63 downto 0));
    bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_do_unnamed_count0_count_aunroll_x_q(127 downto 64));

    -- i_arrayidx20_pre_count_count9_add_x(ADD,90)@2
    i_arrayidx20_pre_count_count9_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b);
    i_arrayidx20_pre_count_count9_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx20_pre_count_count9_c_i64_4gr_x_q);
    i_arrayidx20_pre_count_count9_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx20_pre_count_count9_add_x_a) + UNSIGNED(i_arrayidx20_pre_count_count9_add_x_b));
    i_arrayidx20_pre_count_count9_add_x_q <= i_arrayidx20_pre_count_count9_add_x_o(64 downto 0);

    -- i_arrayidx20_pre_count_count9_trunc_sel_x(BITSELECT,89)@2
    i_arrayidx20_pre_count_count9_trunc_sel_x_b <= i_arrayidx20_pre_count_count9_add_x_q(63 downto 0);

    -- redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo(STALLFIFO,280)
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V4;
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in <= SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_backStall;
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_data_in <= i_arrayidx20_pre_count_count9_trunc_sel_x_b;
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in_bitsignaltemp <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in(0);
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in_bitsignaltemp <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in(0);
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out(0) <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out_bitsignaltemp;
    redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out(0) <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out_bitsignaltemp;
    theredist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 35,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_in_bitsignaltemp,
        data_in => i_arrayidx20_pre_count_count9_trunc_sel_x_b,
        valid_out => redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out_bitsignaltemp,
        data_out => redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo(STALLENABLE,482)
    -- Valid signal propagation
    SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_V0 <= SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_backStall <= i_store_memdep_2_count_out_o_stall or not (SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_and0 <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_valid_out;
    SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_wireValid <= SE_i_reduction_count_2_count_V0 and SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_and0;

    -- bubble_join_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count(BITJOIN,312)
    bubble_join_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_q <= i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_data_out;

    -- bubble_select_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count(BITSELECT,313)
    bubble_select_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_q(31 downto 0));

    -- bubble_join_i_acl_pop_i1_memdep_phi3_pop7_count(BITJOIN,300)
    bubble_join_i_acl_pop_i1_memdep_phi3_pop7_count_q <= i_acl_pop_i1_memdep_phi3_pop7_count_out_data_out;

    -- bubble_select_i_acl_pop_i1_memdep_phi3_pop7_count(BITSELECT,301)
    bubble_select_i_acl_pop_i1_memdep_phi3_pop7_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i1_memdep_phi3_pop7_count_q(0 downto 0));

    -- i_load_unnamed_count2_count(BLACKBOX,160)@2
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
    thei_load_unnamed_count2_count : i_load_unnamed_count2_count18
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx20_pre_count_count9_trunc_sel_x_b,
        in_i_dependence => bubble_select_i_acl_pop_i1_memdep_phi3_pop7_count_b,
        in_i_predicate => redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q,
        in_i_stall => SE_out_i_load_unnamed_count2_count_backStall,
        in_i_valid => SE_in_i_load_unnamed_count2_count_V0,
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

    -- bubble_join_i_load_unnamed_count2_count(BITJOIN,323)
    bubble_join_i_load_unnamed_count2_count_q <= i_load_unnamed_count2_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count2_count(BITSELECT,324)
    bubble_select_i_load_unnamed_count2_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count2_count_q(31 downto 0));

    -- i_acl_8_count(MUX,136)@34
    i_acl_8_count_s <= bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_b;
    i_acl_8_count_combproc: PROCESS (i_acl_8_count_s, bubble_select_i_load_unnamed_count2_count_b, bubble_select_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_b)
    BEGIN
        CASE (i_acl_8_count_s) IS
            WHEN "0" => i_acl_8_count_q <= bubble_select_i_load_unnamed_count2_count_b;
            WHEN "1" => i_acl_8_count_q <= bubble_select_i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_b;
            WHEN OTHERS => i_acl_8_count_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist4_i_acl_8_count_q_2_0(REG,277)
    redist4_i_acl_8_count_q_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_8_count_q_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_acl_8_count_q_2_0_backEN = "1") THEN
                redist4_i_acl_8_count_q_2_0_q <= STD_LOGIC_VECTOR(i_acl_8_count_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist4_i_acl_8_count_q_2_0(STALLENABLE,477)
    -- Valid signal propagation
    SE_redist4_i_acl_8_count_q_2_0_V0 <= SE_redist4_i_acl_8_count_q_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_acl_8_count_q_2_0_s_tv_0 <= SR_SE_redist4_i_acl_8_count_q_2_1_backStall and SE_redist4_i_acl_8_count_q_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_acl_8_count_q_2_0_backEN <= not (SE_redist4_i_acl_8_count_q_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_acl_8_count_q_2_0_v_s_0 <= SE_redist4_i_acl_8_count_q_2_0_backEN and SE_out_i_load_unnamed_count2_count_V1;
    -- Backward Stall generation
    SE_redist4_i_acl_8_count_q_2_0_backStall <= not (SE_redist4_i_acl_8_count_q_2_0_v_s_0);
    SE_redist4_i_acl_8_count_q_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_acl_8_count_q_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_acl_8_count_q_2_0_backEN = "0") THEN
                SE_redist4_i_acl_8_count_q_2_0_R_v_0 <= SE_redist4_i_acl_8_count_q_2_0_R_v_0 and SE_redist4_i_acl_8_count_q_2_0_s_tv_0;
            ELSE
                SE_redist4_i_acl_8_count_q_2_0_R_v_0 <= SE_redist4_i_acl_8_count_q_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist4_i_acl_8_count_q_2_1(STALLREG,605)
    SR_SE_redist4_i_acl_8_count_q_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist4_i_acl_8_count_q_2_1_r_valid <= (others => '0');
            SR_SE_redist4_i_acl_8_count_q_2_1_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist4_i_acl_8_count_q_2_1_r_valid <= SE_redist4_i_acl_8_count_q_2_1_backStall and (SR_SE_redist4_i_acl_8_count_q_2_1_r_valid or SR_SE_redist4_i_acl_8_count_q_2_1_i_valid);

            IF (SR_SE_redist4_i_acl_8_count_q_2_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist4_i_acl_8_count_q_2_1_r_data0 <= STD_LOGIC_VECTOR(redist4_i_acl_8_count_q_2_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist4_i_acl_8_count_q_2_1_i_valid <= SE_redist4_i_acl_8_count_q_2_0_V0;
    -- Stall signal propagation
    SR_SE_redist4_i_acl_8_count_q_2_1_backStall <= SR_SE_redist4_i_acl_8_count_q_2_1_r_valid or not (SR_SE_redist4_i_acl_8_count_q_2_1_i_valid);

    -- Valid
    SR_SE_redist4_i_acl_8_count_q_2_1_V <= SR_SE_redist4_i_acl_8_count_q_2_1_r_valid WHEN SR_SE_redist4_i_acl_8_count_q_2_1_r_valid = "1" ELSE SR_SE_redist4_i_acl_8_count_q_2_1_i_valid;

    SR_SE_redist4_i_acl_8_count_q_2_1_D0 <= SR_SE_redist4_i_acl_8_count_q_2_1_r_data0 WHEN SR_SE_redist4_i_acl_8_count_q_2_1_r_valid = "1" ELSE redist4_i_acl_8_count_q_2_0_q;

    -- SE_redist4_i_acl_8_count_q_2_1(STALLENABLE,478)
    -- Valid signal propagation
    SE_redist4_i_acl_8_count_q_2_1_V0 <= SE_redist4_i_acl_8_count_q_2_1_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_acl_8_count_q_2_1_s_tv_0 <= SE_i_reduction_count_2_count_backStall and SE_redist4_i_acl_8_count_q_2_1_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_acl_8_count_q_2_1_backEN <= not (SE_redist4_i_acl_8_count_q_2_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_acl_8_count_q_2_1_v_s_0 <= SE_redist4_i_acl_8_count_q_2_1_backEN and SR_SE_redist4_i_acl_8_count_q_2_1_V;
    -- Backward Stall generation
    SE_redist4_i_acl_8_count_q_2_1_backStall <= not (SE_redist4_i_acl_8_count_q_2_1_backEN);
    SE_redist4_i_acl_8_count_q_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_acl_8_count_q_2_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_acl_8_count_q_2_1_backEN = "0") THEN
                SE_redist4_i_acl_8_count_q_2_1_R_v_0 <= SE_redist4_i_acl_8_count_q_2_1_R_v_0 and SE_redist4_i_acl_8_count_q_2_1_s_tv_0;
            ELSE
                SE_redist4_i_acl_8_count_q_2_1_R_v_0 <= SE_redist4_i_acl_8_count_q_2_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_load_unnamed_count6_count(STALLENABLE,428)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count6_count_V0 <= SE_out_i_load_unnamed_count6_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count6_count_backStall <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backStall or not (SE_out_i_load_unnamed_count6_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count6_count_wireValid <= i_load_unnamed_count6_count_out_o_valid;

    -- i_load_unnamed_count6_count(BLACKBOX,164)@2
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
    thei_load_unnamed_count6_count : i_load_unnamed_count6_count41
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_i_memdep_phi3_or_count_D7,
        in_i_dependence => SR_SE_i_memdep_phi3_or_count_D4,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count6_count_backStall,
        in_i_valid => SE_i_memdep_phi3_or_count_V3,
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

    -- SE_i_reduction_count_1_count(STALLENABLE,433)
    -- Valid signal propagation
    SE_i_reduction_count_1_count_V0 <= SE_i_reduction_count_1_count_R_v_0;
    -- Stall signal propagation
    SE_i_reduction_count_1_count_s_tv_0 <= SE_i_add8_count_backStall and SE_i_reduction_count_1_count_R_v_0;
    -- Backward Enable generation
    SE_i_reduction_count_1_count_backEN <= not (SE_i_reduction_count_1_count_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_reduction_count_1_count_and0 <= SE_out_i_load_unnamed_count4_count_V0 and SE_i_reduction_count_1_count_backEN;
    SE_i_reduction_count_1_count_v_s_0 <= SE_out_i_load_unnamed_count3_count_V0 and SE_i_reduction_count_1_count_and0;
    -- Backward Stall generation
    SE_i_reduction_count_1_count_backStall <= not (SE_i_reduction_count_1_count_v_s_0);
    SE_i_reduction_count_1_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_reduction_count_1_count_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_reduction_count_1_count_backEN = "0") THEN
                SE_i_reduction_count_1_count_R_v_0 <= SE_i_reduction_count_1_count_R_v_0 and SE_i_reduction_count_1_count_s_tv_0;
            ELSE
                SE_i_reduction_count_1_count_R_v_0 <= SE_i_reduction_count_1_count_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_load_unnamed_count4_count(STALLENABLE,424)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count4_count_V0 <= SE_out_i_load_unnamed_count4_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count4_count_backStall <= SE_i_reduction_count_1_count_backStall or not (SE_out_i_load_unnamed_count4_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count4_count_and0 <= i_load_unnamed_count4_count_out_o_valid;
    SE_out_i_load_unnamed_count4_count_wireValid <= SE_out_i_load_unnamed_count2_count_V2 and SE_out_i_load_unnamed_count4_count_and0;

    -- i_load_unnamed_count4_count(BLACKBOX,162)@2
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
    thei_load_unnamed_count4_count : i_load_unnamed_count4_count31
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_i_memdep_phi3_or_count_D5,
        in_i_dependence => SR_SE_i_memdep_phi3_or_count_D2,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count4_count_backStall,
        in_i_valid => SE_i_memdep_phi3_or_count_V1,
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

    -- i_load_unnamed_count3_count(BLACKBOX,161)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count3_avm_address@20000000
    -- out out_unnamed_count3_avm_burstcount@20000000
    -- out out_unnamed_count3_avm_byteenable@20000000
    -- out out_unnamed_count3_avm_enable@20000000
    -- out out_unnamed_count3_avm_read@20000000
    -- out out_unnamed_count3_avm_write@20000000
    -- out out_unnamed_count3_avm_writedata@20000000
    thei_load_unnamed_count3_count : i_load_unnamed_count3_count27
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_i_memdep_phi3_or_count_D0,
        in_i_dependence => SR_SE_i_memdep_phi3_or_count_D1,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count3_count_backStall,
        in_i_valid => SE_i_memdep_phi3_or_count_V0,
        in_unnamed_count3_avm_readdata => in_unnamed_count3_avm_readdata,
        in_unnamed_count3_avm_readdatavalid => in_unnamed_count3_avm_readdatavalid,
        in_unnamed_count3_avm_waitrequest => in_unnamed_count3_avm_waitrequest,
        in_unnamed_count3_avm_writeack => in_unnamed_count3_avm_writeack,
        out_o_readdata => i_load_unnamed_count3_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count3_count_out_o_stall,
        out_o_valid => i_load_unnamed_count3_count_out_o_valid,
        out_unnamed_count3_avm_address => i_load_unnamed_count3_count_out_unnamed_count3_avm_address,
        out_unnamed_count3_avm_burstcount => i_load_unnamed_count3_count_out_unnamed_count3_avm_burstcount,
        out_unnamed_count3_avm_byteenable => i_load_unnamed_count3_count_out_unnamed_count3_avm_byteenable,
        out_unnamed_count3_avm_enable => i_load_unnamed_count3_count_out_unnamed_count3_avm_enable,
        out_unnamed_count3_avm_read => i_load_unnamed_count3_count_out_unnamed_count3_avm_read,
        out_unnamed_count3_avm_write => i_load_unnamed_count3_count_out_unnamed_count3_avm_write,
        out_unnamed_count3_avm_writedata => i_load_unnamed_count3_count_out_unnamed_count3_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_memdep_phi3_or_count(STALLENABLE,430)
    SE_i_memdep_phi3_or_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_memdep_phi3_or_count_fromReg0 <= (others => '0');
            SE_i_memdep_phi3_or_count_fromReg1 <= (others => '0');
            SE_i_memdep_phi3_or_count_fromReg2 <= (others => '0');
            SE_i_memdep_phi3_or_count_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_i_memdep_phi3_or_count_fromReg0 <= SE_i_memdep_phi3_or_count_toReg0;
            -- Succesor 1
            SE_i_memdep_phi3_or_count_fromReg1 <= SE_i_memdep_phi3_or_count_toReg1;
            -- Succesor 2
            SE_i_memdep_phi3_or_count_fromReg2 <= SE_i_memdep_phi3_or_count_toReg2;
            -- Succesor 3
            SE_i_memdep_phi3_or_count_fromReg3 <= SE_i_memdep_phi3_or_count_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_i_memdep_phi3_or_count_consumed0 <= (not (i_load_unnamed_count3_count_out_o_stall) and SE_i_memdep_phi3_or_count_wireValid) or SE_i_memdep_phi3_or_count_fromReg0;
    SE_i_memdep_phi3_or_count_consumed1 <= (not (i_load_unnamed_count4_count_out_o_stall) and SE_i_memdep_phi3_or_count_wireValid) or SE_i_memdep_phi3_or_count_fromReg1;
    SE_i_memdep_phi3_or_count_consumed2 <= (not (i_load_unnamed_count5_count_out_o_stall) and SE_i_memdep_phi3_or_count_wireValid) or SE_i_memdep_phi3_or_count_fromReg2;
    SE_i_memdep_phi3_or_count_consumed3 <= (not (i_load_unnamed_count6_count_out_o_stall) and SE_i_memdep_phi3_or_count_wireValid) or SE_i_memdep_phi3_or_count_fromReg3;
    -- Consuming
    SE_i_memdep_phi3_or_count_StallValid <= SE_i_memdep_phi3_or_count_backStall and SE_i_memdep_phi3_or_count_wireValid;
    SE_i_memdep_phi3_or_count_toReg0 <= SE_i_memdep_phi3_or_count_StallValid and SE_i_memdep_phi3_or_count_consumed0;
    SE_i_memdep_phi3_or_count_toReg1 <= SE_i_memdep_phi3_or_count_StallValid and SE_i_memdep_phi3_or_count_consumed1;
    SE_i_memdep_phi3_or_count_toReg2 <= SE_i_memdep_phi3_or_count_StallValid and SE_i_memdep_phi3_or_count_consumed2;
    SE_i_memdep_phi3_or_count_toReg3 <= SE_i_memdep_phi3_or_count_StallValid and SE_i_memdep_phi3_or_count_consumed3;
    -- Backward Stall generation
    SE_i_memdep_phi3_or_count_or0 <= SE_i_memdep_phi3_or_count_consumed0;
    SE_i_memdep_phi3_or_count_or1 <= SE_i_memdep_phi3_or_count_consumed1 and SE_i_memdep_phi3_or_count_or0;
    SE_i_memdep_phi3_or_count_or2 <= SE_i_memdep_phi3_or_count_consumed2 and SE_i_memdep_phi3_or_count_or1;
    SE_i_memdep_phi3_or_count_wireStall <= not (SE_i_memdep_phi3_or_count_consumed3 and SE_i_memdep_phi3_or_count_or2);
    SE_i_memdep_phi3_or_count_backStall <= SE_i_memdep_phi3_or_count_wireStall;
    -- Valid signal propagation
    SE_i_memdep_phi3_or_count_V0 <= SE_i_memdep_phi3_or_count_wireValid and not (SE_i_memdep_phi3_or_count_fromReg0);
    SE_i_memdep_phi3_or_count_V1 <= SE_i_memdep_phi3_or_count_wireValid and not (SE_i_memdep_phi3_or_count_fromReg1);
    SE_i_memdep_phi3_or_count_V2 <= SE_i_memdep_phi3_or_count_wireValid and not (SE_i_memdep_phi3_or_count_fromReg2);
    SE_i_memdep_phi3_or_count_V3 <= SE_i_memdep_phi3_or_count_wireValid and not (SE_i_memdep_phi3_or_count_fromReg3);
    -- Computing multiple Valid(s)
    SE_i_memdep_phi3_or_count_wireValid <= SR_SE_i_memdep_phi3_or_count_V;

    -- SE_out_i_load_unnamed_count5_count(STALLENABLE,426)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count5_count_V0 <= SE_out_i_load_unnamed_count5_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count5_count_backStall <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backStall or not (SE_out_i_load_unnamed_count5_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count5_count_wireValid <= i_load_unnamed_count5_count_out_o_valid;

    -- i_arrayidx15_count_count40_c_i64_12_x(CONSTANT,87)
    i_arrayidx15_count_count40_c_i64_12_x_q <= "0000000000000000000000000000000000000000000000000000000000001100";

    -- i_arrayidx15_count_count40_add_x(ADD,86)@2
    i_arrayidx15_count_count40_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c);
    i_arrayidx15_count_count40_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx15_count_count40_c_i64_12_x_q);
    i_arrayidx15_count_count40_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx15_count_count40_add_x_a) + UNSIGNED(i_arrayidx15_count_count40_add_x_b));
    i_arrayidx15_count_count40_add_x_q <= i_arrayidx15_count_count40_add_x_o(64 downto 0);

    -- i_arrayidx15_count_count40_trunc_sel_x(BITSELECT,85)@2
    i_arrayidx15_count_count40_trunc_sel_x_b <= i_arrayidx15_count_count40_add_x_q(63 downto 0);

    -- i_arrayidx10_count_count36_c_i64_8gr_x(CONSTANT,83)
    i_arrayidx10_count_count36_c_i64_8gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001000";

    -- i_arrayidx10_count_count36_add_x(ADD,82)@2
    i_arrayidx10_count_count36_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c);
    i_arrayidx10_count_count36_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx10_count_count36_c_i64_8gr_x_q);
    i_arrayidx10_count_count36_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx10_count_count36_add_x_a) + UNSIGNED(i_arrayidx10_count_count36_add_x_b));
    i_arrayidx10_count_count36_add_x_q <= i_arrayidx10_count_count36_add_x_o(64 downto 0);

    -- i_arrayidx10_count_count36_trunc_sel_x(BITSELECT,81)@2
    i_arrayidx10_count_count36_trunc_sel_x_b <= i_arrayidx10_count_count36_add_x_q(63 downto 0);

    -- i_arrayidx5_count_count30_add_x(ADD,94)@2
    i_arrayidx5_count_count30_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c);
    i_arrayidx5_count_count30_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx20_pre_count_count9_c_i64_4gr_x_q);
    i_arrayidx5_count_count30_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx5_count_count30_add_x_a) + UNSIGNED(i_arrayidx5_count_count30_add_x_b));
    i_arrayidx5_count_count30_add_x_q <= i_arrayidx5_count_count30_add_x_o(64 downto 0);

    -- i_arrayidx5_count_count30_trunc_sel_x(BITSELECT,93)@2
    i_arrayidx5_count_count30_trunc_sel_x_b <= i_arrayidx5_count_count30_add_x_q(63 downto 0);

    -- i_acl_pop_i1_memdep_phi_pop6_count(BLACKBOX,140)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_6@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_memdep_phi_pop6_count : i_acl_pop_i1_memdep_phi_pop6_count12
    PORT MAP (
        in_data_in => GND_q,
        in_dir => bubble_select_count_B1_start_merge_reg_aunroll_x_c,
        in_feedback_in_6 => i_acl_push_i1_memdep_phi_push6_count_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i1_memdep_phi_push6_count_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_memdep_phi_pop6_count_backStall,
        in_valid_in => SE_out_count_B1_start_merge_reg_aunroll_x_V4,
        out_data_out => i_acl_pop_i1_memdep_phi_pop6_count_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i1_memdep_phi_pop6_count_out_feedback_stall_out_6,
        out_stall_out => i_acl_pop_i1_memdep_phi_pop6_count_out_stall_out,
        out_valid_out => i_acl_pop_i1_memdep_phi_pop6_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_acl_pop_i1_memdep_phi_pop6_count(BITJOIN,303)
    bubble_join_i_acl_pop_i1_memdep_phi_pop6_count_q <= i_acl_pop_i1_memdep_phi_pop6_count_out_data_out;

    -- bubble_select_i_acl_pop_i1_memdep_phi_pop6_count(BITSELECT,304)
    bubble_select_i_acl_pop_i1_memdep_phi_pop6_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i1_memdep_phi_pop6_count_q(0 downto 0));

    -- i_memdep_phi3_or_count(LOGICAL,166)@2
    i_memdep_phi3_or_count_q <= bubble_select_i_acl_pop_i1_memdep_phi_pop6_count_b or bubble_select_i_acl_pop_i1_memdep_phi3_pop7_count_b;

    -- SE_out_i_acl_pop_i1_memdep_phi_pop6_count(STALLENABLE,388)
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg0 <= (others => '0');
            SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg0 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg0;
            -- Succesor 1
            SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg1 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed0 <= (not (SE_in_i_load_unnamed_count1_count_backStall) and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid) or SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg0;
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed1 <= (not (SR_SE_i_memdep_phi3_or_count_backStall) and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid) or SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg1;
    -- Consuming
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_StallValid <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_backStall and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid;
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg0 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_StallValid and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed0;
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_toReg1 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_StallValid and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed1;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_or0 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed0;
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireStall <= not (SE_out_i_acl_pop_i1_memdep_phi_pop6_count_consumed1 and SE_out_i_acl_pop_i1_memdep_phi_pop6_count_or0);
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_backStall <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireStall;
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V0 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid and not (SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg0);
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V1 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid and not (SE_out_i_acl_pop_i1_memdep_phi_pop6_count_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_memdep_phi_pop6_count_wireValid <= i_acl_pop_i1_memdep_phi_pop6_count_out_valid_out;

    -- SE_out_i_acl_pop_i1_memdep_phi3_pop7_count(STALLENABLE,386)
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg0 <= (others => '0');
            SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg0 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg0;
            -- Succesor 1
            SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg1 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed0 <= (not (SE_in_i_load_unnamed_count2_count_backStall) and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid) or SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg0;
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed1 <= (not (SR_SE_i_memdep_phi3_or_count_backStall) and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid) or SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg1;
    -- Consuming
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_StallValid <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_backStall and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid;
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg0 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_StallValid and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed0;
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_toReg1 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_StallValid and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed1;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_or0 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed0;
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireStall <= not (SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_consumed1 and SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_or0);
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_backStall <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireStall;
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V0 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid and not (SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg0);
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V1 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid and not (SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_wireValid <= i_acl_pop_i1_memdep_phi3_pop7_count_out_valid_out;

    -- SR_SE_i_memdep_phi3_or_count(STALLREG,600)
    SR_SE_i_memdep_phi3_or_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_memdep_phi3_or_count_r_valid <= (others => '0');
            SR_SE_i_memdep_phi3_or_count_r_data0 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data1 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data2 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data3 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data4 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data5 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data6 <= (others => '-');
            SR_SE_i_memdep_phi3_or_count_r_data7 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_memdep_phi3_or_count_r_valid <= SE_i_memdep_phi3_or_count_backStall and (SR_SE_i_memdep_phi3_or_count_r_valid or SR_SE_i_memdep_phi3_or_count_i_valid);

            IF (SR_SE_i_memdep_phi3_or_count_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_memdep_phi3_or_count_r_data0 <= bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c;
                SR_SE_i_memdep_phi3_or_count_r_data1 <= i_memdep_phi3_or_count_q;
                SR_SE_i_memdep_phi3_or_count_r_data2 <= i_memdep_phi3_or_count_q;
                SR_SE_i_memdep_phi3_or_count_r_data3 <= i_memdep_phi3_or_count_q;
                SR_SE_i_memdep_phi3_or_count_r_data4 <= i_memdep_phi3_or_count_q;
                SR_SE_i_memdep_phi3_or_count_r_data5 <= i_arrayidx5_count_count30_trunc_sel_x_b;
                SR_SE_i_memdep_phi3_or_count_r_data6 <= i_arrayidx10_count_count36_trunc_sel_x_b;
                SR_SE_i_memdep_phi3_or_count_r_data7 <= i_arrayidx15_count_count40_trunc_sel_x_b;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_memdep_phi3_or_count_and0 <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V1;
    SR_SE_i_memdep_phi3_or_count_and1 <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V1 and SR_SE_i_memdep_phi3_or_count_and0;
    SR_SE_i_memdep_phi3_or_count_i_valid <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V1 and SR_SE_i_memdep_phi3_or_count_and1;
    -- Stall signal propagation
    SR_SE_i_memdep_phi3_or_count_backStall <= SR_SE_i_memdep_phi3_or_count_r_valid or not (SR_SE_i_memdep_phi3_or_count_i_valid);

    -- Valid
    SR_SE_i_memdep_phi3_or_count_V <= SR_SE_i_memdep_phi3_or_count_r_valid WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE SR_SE_i_memdep_phi3_or_count_i_valid;

    -- Data0
    SR_SE_i_memdep_phi3_or_count_D0 <= SR_SE_i_memdep_phi3_or_count_r_data0 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_c;
    -- Data1
    SR_SE_i_memdep_phi3_or_count_D1 <= SR_SE_i_memdep_phi3_or_count_r_data1 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_memdep_phi3_or_count_q;
    -- Data2
    SR_SE_i_memdep_phi3_or_count_D2 <= SR_SE_i_memdep_phi3_or_count_r_data2 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_memdep_phi3_or_count_q;
    -- Data3
    SR_SE_i_memdep_phi3_or_count_D3 <= SR_SE_i_memdep_phi3_or_count_r_data3 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_memdep_phi3_or_count_q;
    -- Data4
    SR_SE_i_memdep_phi3_or_count_D4 <= SR_SE_i_memdep_phi3_or_count_r_data4 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_memdep_phi3_or_count_q;
    -- Data5
    SR_SE_i_memdep_phi3_or_count_D5 <= SR_SE_i_memdep_phi3_or_count_r_data5 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_arrayidx5_count_count30_trunc_sel_x_b;
    -- Data6
    SR_SE_i_memdep_phi3_or_count_D6 <= SR_SE_i_memdep_phi3_or_count_r_data6 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_arrayidx10_count_count36_trunc_sel_x_b;
    -- Data7
    SR_SE_i_memdep_phi3_or_count_D7 <= SR_SE_i_memdep_phi3_or_count_r_data7 WHEN SR_SE_i_memdep_phi3_or_count_r_valid = "1" ELSE i_arrayidx15_count_count40_trunc_sel_x_b;

    -- i_load_unnamed_count5_count(BLACKBOX,163)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count5_avm_address@20000000
    -- out out_unnamed_count5_avm_burstcount@20000000
    -- out out_unnamed_count5_avm_byteenable@20000000
    -- out out_unnamed_count5_avm_enable@20000000
    -- out out_unnamed_count5_avm_read@20000000
    -- out out_unnamed_count5_avm_write@20000000
    -- out out_unnamed_count5_avm_writedata@20000000
    thei_load_unnamed_count5_count : i_load_unnamed_count5_count37
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_i_memdep_phi3_or_count_D6,
        in_i_dependence => SR_SE_i_memdep_phi3_or_count_D3,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_count5_count_backStall,
        in_i_valid => SE_i_memdep_phi3_or_count_V2,
        in_unnamed_count5_avm_readdata => in_unnamed_count5_avm_readdata,
        in_unnamed_count5_avm_readdatavalid => in_unnamed_count5_avm_readdatavalid,
        in_unnamed_count5_avm_waitrequest => in_unnamed_count5_avm_waitrequest,
        in_unnamed_count5_avm_writeack => in_unnamed_count5_avm_writeack,
        out_o_readdata => i_load_unnamed_count5_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count5_count_out_o_stall,
        out_o_valid => i_load_unnamed_count5_count_out_o_valid,
        out_unnamed_count5_avm_address => i_load_unnamed_count5_count_out_unnamed_count5_avm_address,
        out_unnamed_count5_avm_burstcount => i_load_unnamed_count5_count_out_unnamed_count5_avm_burstcount,
        out_unnamed_count5_avm_byteenable => i_load_unnamed_count5_count_out_unnamed_count5_avm_byteenable,
        out_unnamed_count5_avm_enable => i_load_unnamed_count5_count_out_unnamed_count5_avm_enable,
        out_unnamed_count5_avm_read => i_load_unnamed_count5_count_out_unnamed_count5_avm_read,
        out_unnamed_count5_avm_write => i_load_unnamed_count5_count_out_unnamed_count5_avm_write,
        out_unnamed_count5_avm_writedata => i_load_unnamed_count5_count_out_unnamed_count5_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_count5_count(BITJOIN,332)
    bubble_join_i_load_unnamed_count5_count_q <= i_load_unnamed_count5_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count5_count(BITSELECT,333)
    bubble_select_i_load_unnamed_count5_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count5_count_q(31 downto 0));

    -- redist2_i_load_unnamed_count5_count_out_o_readdata_1_0(REG,275)
    redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN = "1") THEN
                redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_q <= STD_LOGIC_VECTOR(bubble_select_i_load_unnamed_count5_count_b);
            END IF;
        END IF;
    END PROCESS;

    -- leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x(BITSELECT,207)@35
    leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_in <= bgTrunc_i_add8_count_sel_x_b(27 downto 0);
    leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_b <= leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid209_i_shl9_count_count35_shift_x(BITJOIN,208)@35
    leftShiftStage0Idx1_uid209_i_shl9_count_count35_shift_x_q <= leftShiftStage0Idx1Rng4_uid208_i_shl9_count_count35_shift_x_b & i_shl9_count_vt_const_3_q;

    -- leftShiftStage0_uid211_i_shl9_count_count35_shift_x(MUX,210)@35
    leftShiftStage0_uid211_i_shl9_count_count35_shift_x_s <= VCC_q;
    leftShiftStage0_uid211_i_shl9_count_count35_shift_x_combproc: PROCESS (leftShiftStage0_uid211_i_shl9_count_count35_shift_x_s, bgTrunc_i_add8_count_sel_x_b, leftShiftStage0Idx1_uid209_i_shl9_count_count35_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid211_i_shl9_count_count35_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid211_i_shl9_count_count35_shift_x_q <= bgTrunc_i_add8_count_sel_x_b;
            WHEN "1" => leftShiftStage0_uid211_i_shl9_count_count35_shift_x_q <= leftShiftStage0Idx1_uid209_i_shl9_count_count35_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid211_i_shl9_count_count35_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl9_count_vt_select_31(BITSELECT,174)@35
    i_shl9_count_vt_select_31_b <= leftShiftStage0_uid211_i_shl9_count_count35_shift_x_q(31 downto 4);

    -- i_shl9_count_vt_const_3(CONSTANT,172)
    i_shl9_count_vt_const_3_q <= "0000";

    -- i_shl9_count_vt_join(BITJOIN,173)@35
    i_shl9_count_vt_join_q <= i_shl9_count_vt_select_31_b & i_shl9_count_vt_const_3_q;

    -- i_add11_count(ADD,150)@35
    i_add11_count_a <= STD_LOGIC_VECTOR("0" & i_shl9_count_vt_join_q);
    i_add11_count_b <= STD_LOGIC_VECTOR("0" & redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_q);
    i_add11_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_count_a) + UNSIGNED(i_add11_count_b));
    i_add11_count_q <= i_add11_count_o(32 downto 0);

    -- bgTrunc_i_add11_count_sel_x(BITSELECT,2)@35
    bgTrunc_i_add11_count_sel_x_b <= i_add11_count_q(31 downto 0);

    -- SR_SE_i_shl9_count_vt_select_31(STALLREG,604)
    SR_SE_i_shl9_count_vt_select_31_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_shl9_count_vt_select_31_r_valid <= (others => '0');
            SR_SE_i_shl9_count_vt_select_31_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_shl9_count_vt_select_31_r_valid <= SE_i_shl9_count_vt_select_31_backStall and (SR_SE_i_shl9_count_vt_select_31_r_valid or SR_SE_i_shl9_count_vt_select_31_i_valid);

            IF (SR_SE_i_shl9_count_vt_select_31_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_shl9_count_vt_select_31_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add11_count_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_shl9_count_vt_select_31_and0 <= SE_i_add8_count_V3;
    SR_SE_i_shl9_count_vt_select_31_i_valid <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V0 and SR_SE_i_shl9_count_vt_select_31_and0;
    -- Stall signal propagation
    SR_SE_i_shl9_count_vt_select_31_backStall <= SR_SE_i_shl9_count_vt_select_31_r_valid or not (SR_SE_i_shl9_count_vt_select_31_i_valid);

    -- Valid
    SR_SE_i_shl9_count_vt_select_31_V <= SR_SE_i_shl9_count_vt_select_31_r_valid WHEN SR_SE_i_shl9_count_vt_select_31_r_valid = "1" ELSE SR_SE_i_shl9_count_vt_select_31_i_valid;

    SR_SE_i_shl9_count_vt_select_31_D0 <= SR_SE_i_shl9_count_vt_select_31_r_data0 WHEN SR_SE_i_shl9_count_vt_select_31_r_valid = "1" ELSE bgTrunc_i_add11_count_sel_x_b;

    -- SE_i_shl9_count_vt_select_31(STALLENABLE,437)
    -- Valid signal propagation
    SE_i_shl9_count_vt_select_31_V0 <= SE_i_shl9_count_vt_select_31_wireValid;
    -- Backward Stall generation
    SE_i_shl9_count_vt_select_31_backStall <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backStall or not (SE_i_shl9_count_vt_select_31_wireValid);
    -- Computing multiple Valid(s)
    SE_i_shl9_count_vt_select_31_wireValid <= SR_SE_i_shl9_count_vt_select_31_V;

    -- SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0(STALLENABLE,492)
    -- Valid signal propagation
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_V0 <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_s_tv_0 <= SE_i_reduction_count_2_count_backStall and SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backEN <= not (SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_v_s_0 <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backEN and SE_i_shl9_count_vt_select_31_V0;
    -- Backward Stall generation
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backStall <= not (SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_v_s_0);
    SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backEN = "0") THEN
                SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0 <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0 and SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_R_v_0 <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_add12_count(STALLENABLE,408)
    -- Valid signal propagation
    SE_i_add12_count_V0 <= SE_i_add12_count_wireValid;
    -- Backward Stall generation
    SE_i_add12_count_backStall <= SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall or not (SE_i_add12_count_wireValid);
    -- Computing multiple Valid(s)
    SE_i_add12_count_wireValid <= SR_SE_i_add12_count_V;

    -- SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0(STALLREG,603)
    SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall and (SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid or SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(SR_SE_i_add12_count_D0);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_i_valid <= SE_i_add12_count_V0;
    -- Stall signal propagation
    SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall <= SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid or not (SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V <= SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid WHEN SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_i_valid;

    SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_D0 <= SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_data0 WHEN SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_i_add12_count_D0;

    -- SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0(STALLENABLE,491)
    -- Valid signal propagation
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V0 <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_s_tv_0 <= SE_i_reduction_count_2_count_backStall and SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN <= not (SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_v_s_0 <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN and SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backStall <= not (SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN);
    SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN = "0") THEN
                SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0 <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0 and SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_R_v_0 <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_load_unnamed_count6_count(BITJOIN,335)
    bubble_join_i_load_unnamed_count6_count_q <= i_load_unnamed_count6_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count6_count(BITSELECT,336)
    bubble_select_i_load_unnamed_count6_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count6_count_q(31 downto 0));

    -- redist1_i_load_unnamed_count6_count_out_o_readdata_1_0(REG,274)
    redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN = "1") THEN
                redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_q <= STD_LOGIC_VECTOR(bubble_select_i_load_unnamed_count6_count_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_shr14_count_vt_const_31(CONSTANT,178)
    i_shr14_count_vt_const_31_q <= "00000";

    -- rightShiftStage1Idx1Rng1_uid230_i_shr14_count_count39_shift_x(BITSELECT,229)@35
    rightShiftStage1Idx1Rng1_uid230_i_shr14_count_count39_shift_x_b <= rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid232_i_shr14_count_count39_shift_x(BITJOIN,231)@35
    rightShiftStage1Idx1_uid232_i_shr14_count_count39_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid230_i_shr14_count_count39_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid225_i_shr14_count_count39_shift_x(BITSELECT,224)@35
    rightShiftStage0Idx1Rng4_uid225_i_shr14_count_count39_shift_x_b <= bgTrunc_i_add8_count_sel_x_b(31 downto 4);

    -- rightShiftStage0Idx1_uid227_i_shr14_count_count39_shift_x(BITJOIN,226)@35
    rightShiftStage0Idx1_uid227_i_shr14_count_count39_shift_x_q <= i_shl9_count_vt_const_3_q & rightShiftStage0Idx1Rng4_uid225_i_shr14_count_count39_shift_x_b;

    -- rightShiftStage0_uid229_i_shr14_count_count39_shift_x(MUX,228)@35
    rightShiftStage0_uid229_i_shr14_count_count39_shift_x_s <= VCC_q;
    rightShiftStage0_uid229_i_shr14_count_count39_shift_x_combproc: PROCESS (rightShiftStage0_uid229_i_shr14_count_count39_shift_x_s, bgTrunc_i_add8_count_sel_x_b, rightShiftStage0Idx1_uid227_i_shr14_count_count39_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid229_i_shr14_count_count39_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q <= bgTrunc_i_add8_count_sel_x_b;
            WHEN "1" => rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q <= rightShiftStage0Idx1_uid227_i_shr14_count_count39_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid234_i_shr14_count_count39_shift_x(MUX,233)@35
    rightShiftStage1_uid234_i_shr14_count_count39_shift_x_s <= VCC_q;
    rightShiftStage1_uid234_i_shr14_count_count39_shift_x_combproc: PROCESS (rightShiftStage1_uid234_i_shr14_count_count39_shift_x_s, rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q, rightShiftStage1Idx1_uid232_i_shr14_count_count39_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid234_i_shr14_count_count39_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid234_i_shr14_count_count39_shift_x_q <= rightShiftStage0_uid229_i_shr14_count_count39_shift_x_q;
            WHEN "1" => rightShiftStage1_uid234_i_shr14_count_count39_shift_x_q <= rightShiftStage1Idx1_uid232_i_shr14_count_count39_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid234_i_shr14_count_count39_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr14_count_vt_select_26(BITSELECT,180)@35
    i_shr14_count_vt_select_26_b <= rightShiftStage1_uid234_i_shr14_count_count39_shift_x_q(26 downto 0);

    -- i_shr14_count_vt_join(BITJOIN,179)@35
    i_shr14_count_vt_join_q <= i_shr14_count_vt_const_31_q & i_shr14_count_vt_select_26_b;

    -- i_add16_count(ADD,152)@35
    i_add16_count_a <= STD_LOGIC_VECTOR("0" & i_shr14_count_vt_join_q);
    i_add16_count_b <= STD_LOGIC_VECTOR("0" & redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_q);
    i_add16_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add16_count_a) + UNSIGNED(i_add16_count_b));
    i_add16_count_q <= i_add16_count_o(32 downto 0);

    -- bgTrunc_i_add16_count_sel_x(BITSELECT,4)@35
    bgTrunc_i_add16_count_sel_x_b <= i_add16_count_q(31 downto 0);

    -- SR_SE_i_shr14_count_vt_select_26(STALLREG,601)
    SR_SE_i_shr14_count_vt_select_26_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_shr14_count_vt_select_26_r_valid <= (others => '0');
            SR_SE_i_shr14_count_vt_select_26_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_shr14_count_vt_select_26_r_valid <= SE_i_shr14_count_vt_select_26_backStall and (SR_SE_i_shr14_count_vt_select_26_r_valid or SR_SE_i_shr14_count_vt_select_26_i_valid);

            IF (SR_SE_i_shr14_count_vt_select_26_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_shr14_count_vt_select_26_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add16_count_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_shr14_count_vt_select_26_and0 <= SE_i_add8_count_V4;
    SR_SE_i_shr14_count_vt_select_26_i_valid <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V0 and SR_SE_i_shr14_count_vt_select_26_and0;
    -- Stall signal propagation
    SR_SE_i_shr14_count_vt_select_26_backStall <= SR_SE_i_shr14_count_vt_select_26_r_valid or not (SR_SE_i_shr14_count_vt_select_26_i_valid);

    -- Valid
    SR_SE_i_shr14_count_vt_select_26_V <= SR_SE_i_shr14_count_vt_select_26_r_valid WHEN SR_SE_i_shr14_count_vt_select_26_r_valid = "1" ELSE SR_SE_i_shr14_count_vt_select_26_i_valid;

    SR_SE_i_shr14_count_vt_select_26_D0 <= SR_SE_i_shr14_count_vt_select_26_r_data0 WHEN SR_SE_i_shr14_count_vt_select_26_r_valid = "1" ELSE bgTrunc_i_add16_count_sel_x_b;

    -- SE_i_shr14_count_vt_select_26(STALLENABLE,441)
    -- Valid signal propagation
    SE_i_shr14_count_vt_select_26_V0 <= SE_i_shr14_count_vt_select_26_wireValid;
    -- Backward Stall generation
    SE_i_shr14_count_vt_select_26_backStall <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backStall or not (SE_i_shr14_count_vt_select_26_wireValid);
    -- Computing multiple Valid(s)
    SE_i_shr14_count_vt_select_26_wireValid <= SR_SE_i_shr14_count_vt_select_26_V;

    -- SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0(STALLENABLE,490)
    -- Valid signal propagation
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_V0 <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_s_tv_0 <= SE_i_reduction_count_2_count_backStall and SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backEN <= not (SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_v_s_0 <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backEN and SE_i_shr14_count_vt_select_26_V0;
    -- Backward Stall generation
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backStall <= not (SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_v_s_0);
    SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backEN = "0") THEN
                SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0 <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0 and SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_R_v_0 <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_reduction_count_2_count(STALLENABLE,434)
    SE_i_reduction_count_2_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_reduction_count_2_count_fromReg0 <= (others => '0');
            SE_i_reduction_count_2_count_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_i_reduction_count_2_count_fromReg0 <= SE_i_reduction_count_2_count_toReg0;
            -- Succesor 1
            SE_i_reduction_count_2_count_fromReg1 <= SE_i_reduction_count_2_count_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_i_reduction_count_2_count_consumed0 <= (not (SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_backStall) and SE_i_reduction_count_2_count_wireValid) or SE_i_reduction_count_2_count_fromReg0;
    SE_i_reduction_count_2_count_consumed1 <= (not (i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_stall_out) and SE_i_reduction_count_2_count_wireValid) or SE_i_reduction_count_2_count_fromReg1;
    -- Consuming
    SE_i_reduction_count_2_count_StallValid <= SE_i_reduction_count_2_count_backStall and SE_i_reduction_count_2_count_wireValid;
    SE_i_reduction_count_2_count_toReg0 <= SE_i_reduction_count_2_count_StallValid and SE_i_reduction_count_2_count_consumed0;
    SE_i_reduction_count_2_count_toReg1 <= SE_i_reduction_count_2_count_StallValid and SE_i_reduction_count_2_count_consumed1;
    -- Backward Stall generation
    SE_i_reduction_count_2_count_or0 <= SE_i_reduction_count_2_count_consumed0;
    SE_i_reduction_count_2_count_wireStall <= not (SE_i_reduction_count_2_count_consumed1 and SE_i_reduction_count_2_count_or0);
    SE_i_reduction_count_2_count_backStall <= SE_i_reduction_count_2_count_wireStall;
    -- Valid signal propagation
    SE_i_reduction_count_2_count_V0 <= SE_i_reduction_count_2_count_wireValid and not (SE_i_reduction_count_2_count_fromReg0);
    SE_i_reduction_count_2_count_V1 <= SE_i_reduction_count_2_count_wireValid and not (SE_i_reduction_count_2_count_fromReg1);
    -- Computing multiple Valid(s)
    SE_i_reduction_count_2_count_and0 <= SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_V0;
    SE_i_reduction_count_2_count_and1 <= SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_V0 and SE_i_reduction_count_2_count_and0;
    SE_i_reduction_count_2_count_and2 <= SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_V0 and SE_i_reduction_count_2_count_and1;
    SE_i_reduction_count_2_count_wireValid <= SE_redist4_i_acl_8_count_q_2_1_V0 and SE_i_reduction_count_2_count_and2;

    -- SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count(STALLENABLE,406)
    -- Valid signal propagation
    SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_V0 <= SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_backStall <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out or not (SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_wireValid <= i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_valid_out;

    -- redist4_i_acl_8_count_q_2_1(REG,278)
    redist4_i_acl_8_count_q_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_8_count_q_2_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_acl_8_count_q_2_1_backEN = "1") THEN
                redist4_i_acl_8_count_q_2_1_q <= STD_LOGIC_VECTOR(SR_SE_redist4_i_acl_8_count_q_2_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_bgTrunc_i_add12_count_sel_x_b_1_0(REG,287)
    redist13_bgTrunc_i_add12_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_bgTrunc_i_add12_count_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_backEN = "1") THEN
                redist13_bgTrunc_i_add12_count_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist13_bgTrunc_i_add12_count_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_bgTrunc_i_add16_count_sel_x_b_1_0(REG,286)
    redist12_bgTrunc_i_add16_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist12_bgTrunc_i_add16_count_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist12_bgTrunc_i_add16_count_sel_x_b_1_0_backEN = "1") THEN
                redist12_bgTrunc_i_add16_count_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_shr14_count_vt_select_26_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_reduction_count_2_count(LOGICAL,170)@36
    i_reduction_count_2_count_q <= redist12_bgTrunc_i_add16_count_sel_x_b_1_0_q xor redist13_bgTrunc_i_add12_count_sel_x_b_1_0_q;

    -- redist14_bgTrunc_i_add11_count_sel_x_b_1_0(REG,288)
    redist14_bgTrunc_i_add11_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist14_bgTrunc_i_add11_count_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist14_bgTrunc_i_add11_count_sel_x_b_1_0_backEN = "1") THEN
                redist14_bgTrunc_i_add11_count_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_shl9_count_vt_select_31_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_reduction_count_3_count(LOGICAL,171)@36
    i_reduction_count_3_count_q <= redist14_bgTrunc_i_add11_count_sel_x_b_1_0_q xor i_reduction_count_2_count_q;

    -- i_add18_count(ADD,153)@36
    i_add18_count_a <= STD_LOGIC_VECTOR("0" & i_reduction_count_3_count_q);
    i_add18_count_b <= STD_LOGIC_VECTOR("0" & redist4_i_acl_8_count_q_2_1_q);
    i_add18_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add18_count_a) + UNSIGNED(i_add18_count_b));
    i_add18_count_q <= i_add18_count_o(32 downto 0);

    -- bgTrunc_i_add18_count_sel_x(BITSELECT,5)@36
    bgTrunc_i_add18_count_sel_x_b <= i_add18_count_q(31 downto 0);

    -- i_acl_push_i32_z_count_4ia_addr_0_push3_count(BLACKBOX,149)@36
    -- in in_stall_in@20000000
    -- out out_data_out@37
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@37
    thei_acl_push_i32_z_count_4ia_addr_0_push3_count : i_acl_push_i32_z_count_4ia_addr_0_push3_count43
    PORT MAP (
        in_data_in => bgTrunc_i_add18_count_sel_x_b,
        in_feedback_stall_in_3 => i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_feedback_stall_out_3,
        in_stall_in => SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_backStall,
        in_valid_in => SE_i_reduction_count_2_count_V1,
        out_feedback_out_3 => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_valid_out_3,
        out_stall_out => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_stall_out,
        out_valid_out => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_z_count_4ia_addr_0_pop3_count(BLACKBOX,143)@33
    -- in in_stall_in@20000000
    -- out out_data_out@34
    -- out out_feedback_stall_out_3@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@34
    thei_acl_pop_i32_z_count_4ia_addr_0_pop3_count : i_acl_pop_i32_z_count_4ia_addr_0_pop3_count22
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_q,
        in_feedback_in_3 => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_out_3,
        in_feedback_valid_in_3 => i_acl_push_i32_z_count_4ia_addr_0_push3_count_out_feedback_valid_out_3,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_load_unnamed_count2_count_backStall,
        in_valid_in => SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V1,
        out_data_out => i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_data_out,
        out_feedback_stall_out_3 => i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_feedback_stall_out_3,
        out_stall_out => i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_stall_out,
        out_valid_out => i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo(STALLFIFO,283)
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in <= SE_out_count_B1_start_merge_reg_aunroll_x_V5;
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_backStall;
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_data_in <= bubble_select_count_B1_start_merge_reg_aunroll_x_c;
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in_bitsignaltemp <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in(0);
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in_bitsignaltemp <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in(0);
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out(0) <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out_bitsignaltemp;
    redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out(0) <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out_bitsignaltemp;
    theredist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 32,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_count_B1_start_merge_reg_aunroll_x_c,
        valid_out => redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out_bitsignaltemp,
        data_out => redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo(STALLENABLE,487)
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg0 <= (others => '0');
            SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg0 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg0;
            -- Succesor 1
            SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg1 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed0 <= (not (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backStall) and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid) or SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg0;
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed1 <= (not (i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_stall_out) and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid) or SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg1;
    -- Consuming
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_StallValid <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_backStall and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid;
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg0 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_StallValid and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed0;
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_toReg1 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_StallValid and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_or0 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed0;
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireStall <= not (SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_consumed1 and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_or0);
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_backStall <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V0 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid and not (SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg0);
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V1 <= SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid and not (SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_wireValid <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_valid_out;

    -- SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0(STALLENABLE,488)
    -- Valid signal propagation
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V0 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0;
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V1 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1;
    -- Stall signal propagation
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_0 <= i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_stall_out and SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0;
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_1 <= i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_stall_out and SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1;
    -- Backward Enable generation
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_or0 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_0;
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN <= not (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_1 or SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_v_s_0 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN and SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V0;
    -- Backward Stall generation
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backStall <= not (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_v_s_0);
    SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0 <= (others => '0');
            SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN = "0") THEN
                SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0 and SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_0;
            ELSE
                SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_0 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_v_s_0;
            END IF;

            IF (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN = "0") THEN
                SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1 and SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_s_tv_1;
            ELSE
                SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_R_v_1 <= SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count(STALLENABLE,392)
    -- Valid signal propagation
    SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_V0 <= SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_backStall <= SE_i_acl_7_count_backStall or not (SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_wireValid <= i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_valid_out;

    -- SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count(STALLENABLE,404)
    -- Valid signal propagation
    SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_V0 <= SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_backStall <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out or not (SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_wireValid <= i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_valid_out;

    -- i_acl_push_i32_y_count_4ia_addr_0_push4_count(BLACKBOX,148)@35
    -- in in_stall_in@20000000
    -- out out_data_out@36
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@36
    thei_acl_push_i32_y_count_4ia_addr_0_push4_count : i_acl_push_i32_y_count_4ia_addr_0_push4_count33
    PORT MAP (
        in_data_in => bgTrunc_i_add8_count_sel_x_b,
        in_feedback_stall_in_4 => i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_feedback_stall_out_4,
        in_stall_in => SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_backStall,
        in_valid_in => SE_i_add8_count_V2,
        out_feedback_out_4 => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_valid_out_4,
        out_stall_out => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_stall_out,
        out_valid_out => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo(BITJOIN,357)
    bubble_join_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_q <= redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_data_out;

    -- bubble_select_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo(BITSELECT,358)
    bubble_select_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_q(0 downto 0));

    -- redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0(REG,284)
    redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_backEN = "1") THEN
                redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_q <= STD_LOGIC_VECTOR(bubble_select_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_b);
            END IF;
        END IF;
    END PROCESS;

    -- c_i32_0gr(CONSTANT,126)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_y_count_4ia_addr_0_pop4_count(BLACKBOX,142)@33
    -- in in_stall_in@20000000
    -- out out_data_out@34
    -- out out_feedback_stall_out_4@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@34
    thei_acl_pop_i32_y_count_4ia_addr_0_pop4_count : i_acl_pop_i32_y_count_4ia_addr_0_pop4_count20
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_q,
        in_feedback_in_4 => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_out_4,
        in_feedback_valid_in_4 => i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_feedback_valid_out_4,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_backStall,
        in_valid_in => SE_redist10_count_B1_start_merge_reg_aunroll_x_out_data_out_1_32_0_V0,
        out_data_out => i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_data_out,
        out_feedback_stall_out_4 => i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_feedback_stall_out_4,
        out_stall_out => i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_stall_out,
        out_valid_out => i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count(BITJOIN,309)
    bubble_join_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_q <= i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_out_data_out;

    -- bubble_select_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count(BITSELECT,310)
    bubble_select_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_q(31 downto 0));

    -- SE_out_i_load_unnamed_count1_count(STALLENABLE,418)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count1_count_V0 <= SE_out_i_load_unnamed_count1_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count1_count_backStall <= SE_i_acl_7_count_backStall or not (SE_out_i_load_unnamed_count1_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count1_count_wireValid <= i_load_unnamed_count1_count_out_o_valid;

    -- i_load_unnamed_count1_count(BLACKBOX,159)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@34
    -- out out_o_stall@20000000
    -- out out_o_valid@34
    -- out out_unnamed_count1_avm_address@20000000
    -- out out_unnamed_count1_avm_burstcount@20000000
    -- out out_unnamed_count1_avm_byteenable@20000000
    -- out out_unnamed_count1_avm_enable@20000000
    -- out out_unnamed_count1_avm_read@20000000
    -- out out_unnamed_count1_avm_write@20000000
    -- out out_unnamed_count1_avm_writedata@20000000
    thei_load_unnamed_count1_count : i_load_unnamed_count1_count14
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b,
        in_i_dependence => bubble_select_i_acl_pop_i1_memdep_phi_pop6_count_b,
        in_i_predicate => redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q,
        in_i_stall => SE_out_i_load_unnamed_count1_count_backStall,
        in_i_valid => SE_in_i_load_unnamed_count1_count_V0,
        in_unnamed_count1_avm_readdata => in_unnamed_count1_avm_readdata,
        in_unnamed_count1_avm_readdatavalid => in_unnamed_count1_avm_readdatavalid,
        in_unnamed_count1_avm_waitrequest => in_unnamed_count1_avm_waitrequest,
        in_unnamed_count1_avm_writeack => in_unnamed_count1_avm_writeack,
        out_o_readdata => i_load_unnamed_count1_count_out_o_readdata,
        out_o_stall => i_load_unnamed_count1_count_out_o_stall,
        out_o_valid => i_load_unnamed_count1_count_out_o_valid,
        out_unnamed_count1_avm_address => i_load_unnamed_count1_count_out_unnamed_count1_avm_address,
        out_unnamed_count1_avm_burstcount => i_load_unnamed_count1_count_out_unnamed_count1_avm_burstcount,
        out_unnamed_count1_avm_byteenable => i_load_unnamed_count1_count_out_unnamed_count1_avm_byteenable,
        out_unnamed_count1_avm_enable => i_load_unnamed_count1_count_out_unnamed_count1_avm_enable,
        out_unnamed_count1_avm_read => i_load_unnamed_count1_count_out_unnamed_count1_avm_read,
        out_unnamed_count1_avm_write => i_load_unnamed_count1_count_out_unnamed_count1_avm_write,
        out_unnamed_count1_avm_writedata => i_load_unnamed_count1_count_out_unnamed_count1_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_load_unnamed_count1_count(BITJOIN,320)
    bubble_join_i_load_unnamed_count1_count_q <= i_load_unnamed_count1_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count1_count(BITSELECT,321)
    bubble_select_i_load_unnamed_count1_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count1_count_q(31 downto 0));

    -- bubble_join_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo(BITJOIN,354)
    bubble_join_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_q <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_data_out;

    -- bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo(BITSELECT,355)
    bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_q(0 downto 0));

    -- i_acl_7_count(MUX,135)@34 + 1
    i_acl_7_count_s <= bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_b;
    i_acl_7_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_7_count_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_acl_7_count_backEN = "1") THEN
                CASE (i_acl_7_count_s) IS
                    WHEN "0" => i_acl_7_count_q <= bubble_select_i_load_unnamed_count1_count_b;
                    WHEN "1" => i_acl_7_count_q <= bubble_select_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_b;
                    WHEN OTHERS => i_acl_7_count_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count(BITJOIN,306)
    bubble_join_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_q <= i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_data_out;

    -- bubble_select_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count(BITSELECT,307)
    bubble_select_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_q(31 downto 0));

    -- i_phitmp_count(ADD,167)@33
    i_phitmp_count_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_b);
    i_phitmp_count_b <= STD_LOGIC_VECTOR("0" & c_i32_1640531527_q);
    i_phitmp_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_phitmp_count_a) + UNSIGNED(i_phitmp_count_b));
    i_phitmp_count_q <= i_phitmp_count_o(32 downto 0);

    -- bgTrunc_i_phitmp_count_sel_x(BITSELECT,10)@33
    bgTrunc_i_phitmp_count_sel_x_b <= i_phitmp_count_q(31 downto 0);

    -- redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0(REG,285)
    redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backEN = "1") THEN
                redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_phitmp_count_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- c_i32_1640531527(CONSTANT,127)
    c_i32_1640531527_q <= "10011110001101110111100110111001";

    -- i_acl_9_count(MUX,137)@34
    i_acl_9_count_s <= bubble_select_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_b;
    i_acl_9_count_combproc: PROCESS (i_acl_9_count_s, c_i32_1640531527_q, redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_q)
    BEGIN
        CASE (i_acl_9_count_s) IS
            WHEN "0" => i_acl_9_count_q <= c_i32_1640531527_q;
            WHEN "1" => i_acl_9_count_q <= redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_q;
            WHEN OTHERS => i_acl_9_count_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add4_count(ADD,155)@34
    i_add4_count_a <= STD_LOGIC_VECTOR("0" & i_acl_8_count_q);
    i_add4_count_b <= STD_LOGIC_VECTOR("0" & i_acl_9_count_q);
    i_add4_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_count_a) + UNSIGNED(i_add4_count_b));
    i_add4_count_q <= i_add4_count_o(32 downto 0);

    -- bgTrunc_i_add4_count_sel_x(BITSELECT,7)@34
    bgTrunc_i_add4_count_sel_x_b <= i_add4_count_q(31 downto 0);

    -- bubble_join_i_load_unnamed_count3_count(BITJOIN,326)
    bubble_join_i_load_unnamed_count3_count_q <= i_load_unnamed_count3_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count3_count(BITSELECT,327)
    bubble_select_i_load_unnamed_count3_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count3_count_q(31 downto 0));

    -- leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x(BITSELECT,216)@34
    leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_in <= i_acl_8_count_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_b <= leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid218_i_shl_count_count26_shift_x(BITJOIN,217)@34
    leftShiftStage0Idx1_uid218_i_shl_count_count26_shift_x_q <= leftShiftStage0Idx1Rng4_uid217_i_shl_count_count26_shift_x_b & i_shl9_count_vt_const_3_q;

    -- leftShiftStage0_uid220_i_shl_count_count26_shift_x(MUX,219)@34
    leftShiftStage0_uid220_i_shl_count_count26_shift_x_s <= VCC_q;
    leftShiftStage0_uid220_i_shl_count_count26_shift_x_combproc: PROCESS (leftShiftStage0_uid220_i_shl_count_count26_shift_x_s, i_acl_8_count_q, leftShiftStage0Idx1_uid218_i_shl_count_count26_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid220_i_shl_count_count26_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid220_i_shl_count_count26_shift_x_q <= i_acl_8_count_q;
            WHEN "1" => leftShiftStage0_uid220_i_shl_count_count26_shift_x_q <= leftShiftStage0Idx1_uid218_i_shl_count_count26_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid220_i_shl_count_count26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_count_vt_select_31(BITSELECT,177)@34
    i_shl_count_vt_select_31_b <= leftShiftStage0_uid220_i_shl_count_count26_shift_x_q(31 downto 4);

    -- i_shl_count_vt_join(BITJOIN,176)@34
    i_shl_count_vt_join_q <= i_shl_count_vt_select_31_b & i_shl9_count_vt_const_3_q;

    -- i_add3_count(ADD,154)@34
    i_add3_count_a <= STD_LOGIC_VECTOR("0" & i_shl_count_vt_join_q);
    i_add3_count_b <= STD_LOGIC_VECTOR("0" & bubble_select_i_load_unnamed_count3_count_b);
    i_add3_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add3_count_a) + UNSIGNED(i_add3_count_b));
    i_add3_count_q <= i_add3_count_o(32 downto 0);

    -- bgTrunc_i_add3_count_sel_x(BITSELECT,6)@34
    bgTrunc_i_add3_count_sel_x_b <= i_add3_count_q(31 downto 0);

    -- i_reduction_count_0_count(LOGICAL,168)@34
    i_reduction_count_0_count_q <= bgTrunc_i_add3_count_sel_x_b xor bgTrunc_i_add4_count_sel_x_b;

    -- rightShiftStage1Idx1Rng1_uid244_i_shr_count_count29_shift_x(BITSELECT,243)@34
    rightShiftStage1Idx1Rng1_uid244_i_shr_count_count29_shift_x_b <= rightShiftStage0_uid243_i_shr_count_count29_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid246_i_shr_count_count29_shift_x(BITJOIN,245)@34
    rightShiftStage1Idx1_uid246_i_shr_count_count29_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid244_i_shr_count_count29_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid239_i_shr_count_count29_shift_x(BITSELECT,238)@34
    rightShiftStage0Idx1Rng4_uid239_i_shr_count_count29_shift_x_b <= i_acl_8_count_q(31 downto 4);

    -- rightShiftStage0Idx1_uid241_i_shr_count_count29_shift_x(BITJOIN,240)@34
    rightShiftStage0Idx1_uid241_i_shr_count_count29_shift_x_q <= i_shl9_count_vt_const_3_q & rightShiftStage0Idx1Rng4_uid239_i_shr_count_count29_shift_x_b;

    -- rightShiftStage0_uid243_i_shr_count_count29_shift_x(MUX,242)@34
    rightShiftStage0_uid243_i_shr_count_count29_shift_x_s <= VCC_q;
    rightShiftStage0_uid243_i_shr_count_count29_shift_x_combproc: PROCESS (rightShiftStage0_uid243_i_shr_count_count29_shift_x_s, i_acl_8_count_q, rightShiftStage0Idx1_uid241_i_shr_count_count29_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid243_i_shr_count_count29_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid243_i_shr_count_count29_shift_x_q <= i_acl_8_count_q;
            WHEN "1" => rightShiftStage0_uid243_i_shr_count_count29_shift_x_q <= rightShiftStage0Idx1_uid241_i_shr_count_count29_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid243_i_shr_count_count29_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid248_i_shr_count_count29_shift_x(MUX,247)@34
    rightShiftStage1_uid248_i_shr_count_count29_shift_x_s <= VCC_q;
    rightShiftStage1_uid248_i_shr_count_count29_shift_x_combproc: PROCESS (rightShiftStage1_uid248_i_shr_count_count29_shift_x_s, rightShiftStage0_uid243_i_shr_count_count29_shift_x_q, rightShiftStage1Idx1_uid246_i_shr_count_count29_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid248_i_shr_count_count29_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid248_i_shr_count_count29_shift_x_q <= rightShiftStage0_uid243_i_shr_count_count29_shift_x_q;
            WHEN "1" => rightShiftStage1_uid248_i_shr_count_count29_shift_x_q <= rightShiftStage1Idx1_uid246_i_shr_count_count29_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid248_i_shr_count_count29_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_count_vt_select_26(BITSELECT,183)@34
    i_shr_count_vt_select_26_b <= rightShiftStage1_uid248_i_shr_count_count29_shift_x_q(26 downto 0);

    -- i_shr_count_vt_join(BITJOIN,182)@34
    i_shr_count_vt_join_q <= i_shr14_count_vt_const_31_q & i_shr_count_vt_select_26_b;

    -- bubble_join_i_load_unnamed_count4_count(BITJOIN,329)
    bubble_join_i_load_unnamed_count4_count_q <= i_load_unnamed_count4_count_out_o_readdata;

    -- bubble_select_i_load_unnamed_count4_count(BITSELECT,330)
    bubble_select_i_load_unnamed_count4_count_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_count4_count_q(31 downto 0));

    -- i_add6_count(ADD,156)@34
    i_add6_count_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_load_unnamed_count4_count_b);
    i_add6_count_b <= STD_LOGIC_VECTOR("0" & i_shr_count_vt_join_q);
    i_add6_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add6_count_a) + UNSIGNED(i_add6_count_b));
    i_add6_count_q <= i_add6_count_o(32 downto 0);

    -- bgTrunc_i_add6_count_sel_x(BITSELECT,8)@34
    bgTrunc_i_add6_count_sel_x_b <= i_add6_count_q(31 downto 0);

    -- i_reduction_count_1_count(LOGICAL,169)@34 + 1
    i_reduction_count_1_count_qi <= bgTrunc_i_add6_count_sel_x_b xor i_reduction_count_0_count_q;
    i_reduction_count_1_count_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_count_1_count_qi, xout => i_reduction_count_1_count_q, ena => SE_i_reduction_count_1_count_backEN(0), clk => clock, aclr => resetn );

    -- i_add8_count(ADD,157)@35
    i_add8_count_a <= STD_LOGIC_VECTOR("0" & i_reduction_count_1_count_q);
    i_add8_count_b <= STD_LOGIC_VECTOR("0" & i_acl_7_count_q);
    i_add8_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add8_count_a) + UNSIGNED(i_add8_count_b));
    i_add8_count_q <= i_add8_count_o(32 downto 0);

    -- bgTrunc_i_add8_count_sel_x(BITSELECT,9)@35
    bgTrunc_i_add8_count_sel_x_b <= i_add8_count_q(31 downto 0);

    -- i_unnamed_count46_vt_const_31(CONSTANT,188)
    i_unnamed_count46_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_1gr(CONSTANT,128)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_unnamed_count45(LOGICAL,186)@35
    i_unnamed_count45_q <= redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_q or redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_q;

    -- i_unnamed_count46(LOGICAL,187)@35
    i_unnamed_count46_q <= i_unnamed_count45_q and c_i32_1gr_q;

    -- i_unnamed_count46_vt_select_0(BITSELECT,190)@35
    i_unnamed_count46_vt_select_0_b <= i_unnamed_count46_q(0 downto 0);

    -- i_unnamed_count46_vt_join(BITJOIN,189)@35
    i_unnamed_count46_vt_join_q <= i_unnamed_count46_vt_const_31_q & i_unnamed_count46_vt_select_0_b;

    -- i_unnamed_count47(LOGICAL,191)@35
    i_unnamed_count47_q <= "1" WHEN i_unnamed_count46_vt_join_q /= c_i32_0gr_q ELSE "0";

    -- bubble_join_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo(BITJOIN,348)
    bubble_join_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_q <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_data_out;

    -- bubble_select_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo(BITSELECT,349)
    bubble_select_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_q(63 downto 0));

    -- SE_i_add8_count(STALLENABLE,414)
    SE_i_add8_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_add8_count_fromReg0 <= (others => '0');
            SE_i_add8_count_fromReg1 <= (others => '0');
            SE_i_add8_count_fromReg2 <= (others => '0');
            SE_i_add8_count_fromReg3 <= (others => '0');
            SE_i_add8_count_fromReg4 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_i_add8_count_fromReg0 <= SE_i_add8_count_toReg0;
            -- Succesor 1
            SE_i_add8_count_fromReg1 <= SE_i_add8_count_toReg1;
            -- Succesor 2
            SE_i_add8_count_fromReg2 <= SE_i_add8_count_toReg2;
            -- Succesor 3
            SE_i_add8_count_fromReg3 <= SE_i_add8_count_toReg3;
            -- Succesor 4
            SE_i_add8_count_fromReg4 <= SE_i_add8_count_toReg4;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_i_add8_count_consumed0 <= (not (SR_SE_i_add12_count_backStall) and SE_i_add8_count_wireValid) or SE_i_add8_count_fromReg0;
    SE_i_add8_count_consumed1 <= (not (SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall) and SE_i_add8_count_wireValid) or SE_i_add8_count_fromReg1;
    SE_i_add8_count_consumed2 <= (not (i_acl_push_i32_y_count_4ia_addr_0_push4_count_out_stall_out) and SE_i_add8_count_wireValid) or SE_i_add8_count_fromReg2;
    SE_i_add8_count_consumed3 <= (not (SR_SE_i_shl9_count_vt_select_31_backStall) and SE_i_add8_count_wireValid) or SE_i_add8_count_fromReg3;
    SE_i_add8_count_consumed4 <= (not (SR_SE_i_shr14_count_vt_select_26_backStall) and SE_i_add8_count_wireValid) or SE_i_add8_count_fromReg4;
    -- Consuming
    SE_i_add8_count_StallValid <= SE_i_add8_count_backStall and SE_i_add8_count_wireValid;
    SE_i_add8_count_toReg0 <= SE_i_add8_count_StallValid and SE_i_add8_count_consumed0;
    SE_i_add8_count_toReg1 <= SE_i_add8_count_StallValid and SE_i_add8_count_consumed1;
    SE_i_add8_count_toReg2 <= SE_i_add8_count_StallValid and SE_i_add8_count_consumed2;
    SE_i_add8_count_toReg3 <= SE_i_add8_count_StallValid and SE_i_add8_count_consumed3;
    SE_i_add8_count_toReg4 <= SE_i_add8_count_StallValid and SE_i_add8_count_consumed4;
    -- Backward Stall generation
    SE_i_add8_count_or0 <= SE_i_add8_count_consumed0;
    SE_i_add8_count_or1 <= SE_i_add8_count_consumed1 and SE_i_add8_count_or0;
    SE_i_add8_count_or2 <= SE_i_add8_count_consumed2 and SE_i_add8_count_or1;
    SE_i_add8_count_or3 <= SE_i_add8_count_consumed3 and SE_i_add8_count_or2;
    SE_i_add8_count_wireStall <= not (SE_i_add8_count_consumed4 and SE_i_add8_count_or3);
    SE_i_add8_count_backStall <= SE_i_add8_count_wireStall;
    -- Valid signal propagation
    SE_i_add8_count_V0 <= SE_i_add8_count_wireValid and not (SE_i_add8_count_fromReg0);
    SE_i_add8_count_V1 <= SE_i_add8_count_wireValid and not (SE_i_add8_count_fromReg1);
    SE_i_add8_count_V2 <= SE_i_add8_count_wireValid and not (SE_i_add8_count_fromReg2);
    SE_i_add8_count_V3 <= SE_i_add8_count_wireValid and not (SE_i_add8_count_fromReg3);
    SE_i_add8_count_V4 <= SE_i_add8_count_wireValid and not (SE_i_add8_count_fromReg4);
    -- Computing multiple Valid(s)
    SE_i_add8_count_and0 <= SE_i_acl_7_count_V0;
    SE_i_add8_count_wireValid <= SE_i_reduction_count_1_count_V0 and SE_i_add8_count_and0;

    -- SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0(STALLENABLE,475)
    -- Valid signal propagation
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V0 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0;
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V1 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_0 <= SR_SE_i_shl9_count_vt_select_31_backStall and SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0;
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_1 <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall and SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_or0 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_0;
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN <= not (SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_1 or SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_v_s_0 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN and SE_out_i_load_unnamed_count5_count_V0;
    -- Backward Stall generation
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backStall <= not (SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_v_s_0);
    SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0 <= (others => '0');
            SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN = "0") THEN
                SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0 and SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_0;
            ELSE
                SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_0 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_v_s_0;
            END IF;

            IF (SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_backEN = "0") THEN
                SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1 and SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_s_tv_1;
            ELSE
                SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_R_v_1 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0(STALLENABLE,474)
    -- Valid signal propagation
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V0 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0;
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V1 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_0 <= SR_SE_i_shr14_count_vt_select_26_backStall and SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0;
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_1 <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall and SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_or0 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_0;
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN <= not (SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_1 or SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_v_s_0 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN and SE_out_i_load_unnamed_count6_count_V0;
    -- Backward Stall generation
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backStall <= not (SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_v_s_0);
    SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0 <= (others => '0');
            SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN = "0") THEN
                SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0 and SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_0;
            ELSE
                SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_0 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_backEN = "0") THEN
                SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1 and SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_s_tv_1;
            ELSE
                SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_R_v_1 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo(STALLFIFO,279)
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V2;
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall;
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_data_in <= bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b;
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in_bitsignaltemp <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in(0);
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in_bitsignaltemp <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in(0);
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out(0) <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out_bitsignaltemp;
    redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out(0) <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out_bitsignaltemp;
    theredist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 34,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_iord_bl_do_unnamed_count0_count_aunroll_x_b,
        valid_out => redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out_bitsignaltemp,
        data_out => redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo(STALLREG,606)
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid <= (others => '0');
            SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data0 <= (others => '-');
            SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data1 <= (others => '-');
            SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid <= SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall and (SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid or SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_i_valid);

            IF (SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid = "0") THEN
                -- Data(s)
                SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data0 <= bubble_select_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_b;
                SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data1 <= i_unnamed_count47_q;
                SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data2 <= bgTrunc_i_add8_count_sel_x_b;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and0 <= redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_valid_out;
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and1 <= SE_redist1_i_load_unnamed_count6_count_out_o_readdata_1_0_V1 and SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and0;
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and2 <= SE_redist2_i_load_unnamed_count5_count_out_o_readdata_1_0_V1 and SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and1;
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_i_valid <= SE_i_add8_count_V1 and SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_and2;
    -- Stall signal propagation
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_backStall <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid or not (SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_i_valid);

    -- Valid
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid WHEN SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid = "1" ELSE SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_i_valid;

    -- Data0
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D0 <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data0 WHEN SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid = "1" ELSE bubble_select_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_b;
    -- Data1
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D1 <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data1 WHEN SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid = "1" ELSE i_unnamed_count47_q;
    -- Data2
    SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D2 <= SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_data2 WHEN SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_r_valid = "1" ELSE bgTrunc_i_add8_count_sel_x_b;

    -- i_store_memdep_count(BLACKBOX,185)@35
    -- in in_i_stall@20000000
    -- out out_lsu_memdep_o_active@20000000
    -- out out_memdep_avm_address@20000000
    -- out out_memdep_avm_burstcount@20000000
    -- out out_memdep_avm_byteenable@20000000
    -- out out_memdep_avm_enable@20000000
    -- out out_memdep_avm_read@20000000
    -- out out_memdep_avm_write@20000000
    -- out out_memdep_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@66
    -- out out_o_writeack@66
    thei_store_memdep_count : i_store_memdep_count49
    PORT MAP (
        in_flush => in_flush,
        in_i_address => SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D0,
        in_i_dependence => SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D1,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_store_memdep_count_backStall,
        in_i_valid => SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_V0,
        in_i_writedata => SR_SE_out_redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_D2,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        out_lsu_memdep_o_active => i_store_memdep_count_out_lsu_memdep_o_active,
        out_memdep_avm_address => i_store_memdep_count_out_memdep_avm_address,
        out_memdep_avm_burstcount => i_store_memdep_count_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => i_store_memdep_count_out_memdep_avm_byteenable,
        out_memdep_avm_enable => i_store_memdep_count_out_memdep_avm_enable,
        out_memdep_avm_read => i_store_memdep_count_out_memdep_avm_read,
        out_memdep_avm_write => i_store_memdep_count_out_memdep_avm_write,
        out_memdep_avm_writedata => i_store_memdep_count_out_memdep_avm_writedata,
        out_o_stall => i_store_memdep_count_out_o_stall,
        out_o_valid => i_store_memdep_count_out_o_valid,
        out_o_writeack => i_store_memdep_count_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_store_memdep_count(BITJOIN,341)
    bubble_join_i_store_memdep_count_q <= i_store_memdep_count_out_o_writeack;

    -- bubble_select_i_store_memdep_count(BITSELECT,342)
    bubble_select_i_store_memdep_count_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_count_q(0 downto 0));

    -- redist0_i_store_memdep_count_out_o_writeack_1_0(REG,273)
    redist0_i_store_memdep_count_out_o_writeack_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_store_memdep_count_out_o_writeack_1_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN = "1") THEN
                redist0_i_store_memdep_count_out_o_writeack_1_0_q <= STD_LOGIC_VECTOR(bubble_select_i_store_memdep_count_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_memdep_or_count(LOGICAL,165)@67
    i_memdep_or_count_q <= bubble_select_i_store_memdep_2_count_b or redist0_i_store_memdep_count_out_o_writeack_1_0_q;

    -- i_iowr_bl_return_unnamed_count7_count(BLACKBOX,158)@67
    -- in in_i_stall@20000000
    -- out out_iowr_bl_return_o_fifodata@20000000
    -- out out_iowr_bl_return_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_return_unnamed_count7_count : i_iowr_bl_return_unnamed_count7_count57
    PORT MAP (
        in_i_data => GND_q,
        in_i_dependence => i_memdep_or_count_q,
        in_i_stall => SE_out_i_iowr_bl_return_unnamed_count7_count_backStall,
        in_i_valid => SE_i_memdep_or_count_V0,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        out_iowr_bl_return_o_fifodata => i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifovalid,
        out_o_stall => i_iowr_bl_return_unnamed_count7_count_out_o_stall,
        out_o_valid => i_iowr_bl_return_unnamed_count7_count_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist0_i_store_memdep_count_out_o_writeack_1_0(STALLENABLE,473)
    -- Valid signal propagation
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0;
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V1 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_0 <= SE_i_memdep_or_count_backStall and SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0;
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_1 <= i_acl_push_i1_memdep_phi_push6_count_out_stall_out and SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_or0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_0;
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN <= not (SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_1 or SE_redist0_i_store_memdep_count_out_o_writeack_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_v_s_0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN and SE_out_i_store_memdep_count_V0;
    -- Backward Stall generation
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backStall <= not (SE_redist0_i_store_memdep_count_out_o_writeack_1_0_v_s_0);
    SE_redist0_i_store_memdep_count_out_o_writeack_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0 <= (others => '0');
            SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN = "0") THEN
                SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0 and SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_0;
            ELSE
                SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_v_s_0;
            END IF;

            IF (SE_redist0_i_store_memdep_count_out_o_writeack_1_0_backEN = "0") THEN
                SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1 and SE_redist0_i_store_memdep_count_out_o_writeack_1_0_s_tv_1;
            ELSE
                SE_redist0_i_store_memdep_count_out_o_writeack_1_0_R_v_1 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_memdep_or_count(STALLENABLE,429)
    -- Valid signal propagation
    SE_i_memdep_or_count_V0 <= SE_i_memdep_or_count_wireValid;
    -- Backward Stall generation
    SE_i_memdep_or_count_backStall <= i_iowr_bl_return_unnamed_count7_count_out_o_stall or not (SE_i_memdep_or_count_wireValid);
    -- Computing multiple Valid(s)
    SE_i_memdep_or_count_and0 <= SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V0;
    SE_i_memdep_or_count_wireValid <= SE_out_i_store_memdep_2_count_V0 and SE_i_memdep_or_count_and0;

    -- bubble_join_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo(BITJOIN,351)
    bubble_join_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_q <= redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_data_out;

    -- bubble_select_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo(BITSELECT,352)
    bubble_select_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_q(63 downto 0));

    -- i_store_memdep_2_count(BLACKBOX,184)@36
    -- in in_i_stall@20000000
    -- out out_lsu_memdep_2_o_active@20000000
    -- out out_memdep_2_avm_address@20000000
    -- out out_memdep_2_avm_burstcount@20000000
    -- out out_memdep_2_avm_byteenable@20000000
    -- out out_memdep_2_avm_enable@20000000
    -- out out_memdep_2_avm_read@20000000
    -- out out_memdep_2_avm_write@20000000
    -- out out_memdep_2_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@67
    -- out out_o_writeack@67
    thei_store_memdep_2_count : i_store_memdep_2_count53
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_store_memdep_2_count_backStall,
        in_i_valid => SE_out_redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_V0,
        in_i_writedata => bgTrunc_i_add18_count_sel_x_b,
        in_memdep_2_avm_readdata => in_memdep_2_avm_readdata,
        in_memdep_2_avm_readdatavalid => in_memdep_2_avm_readdatavalid,
        in_memdep_2_avm_waitrequest => in_memdep_2_avm_waitrequest,
        in_memdep_2_avm_writeack => in_memdep_2_avm_writeack,
        out_lsu_memdep_2_o_active => i_store_memdep_2_count_out_lsu_memdep_2_o_active,
        out_memdep_2_avm_address => i_store_memdep_2_count_out_memdep_2_avm_address,
        out_memdep_2_avm_burstcount => i_store_memdep_2_count_out_memdep_2_avm_burstcount,
        out_memdep_2_avm_byteenable => i_store_memdep_2_count_out_memdep_2_avm_byteenable,
        out_memdep_2_avm_enable => i_store_memdep_2_count_out_memdep_2_avm_enable,
        out_memdep_2_avm_read => i_store_memdep_2_count_out_memdep_2_avm_read,
        out_memdep_2_avm_write => i_store_memdep_2_count_out_memdep_2_avm_write,
        out_memdep_2_avm_writedata => i_store_memdep_2_count_out_memdep_2_avm_writedata,
        out_o_stall => i_store_memdep_2_count_out_o_stall,
        out_o_valid => i_store_memdep_2_count_out_o_valid,
        out_o_writeack => i_store_memdep_2_count_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_store_memdep_2_count(STALLENABLE,445)
    SE_out_i_store_memdep_2_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_store_memdep_2_count_fromReg0 <= (others => '0');
            SE_out_i_store_memdep_2_count_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_store_memdep_2_count_fromReg0 <= SE_out_i_store_memdep_2_count_toReg0;
            -- Succesor 1
            SE_out_i_store_memdep_2_count_fromReg1 <= SE_out_i_store_memdep_2_count_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_store_memdep_2_count_consumed0 <= (not (SE_i_memdep_or_count_backStall) and SE_out_i_store_memdep_2_count_wireValid) or SE_out_i_store_memdep_2_count_fromReg0;
    SE_out_i_store_memdep_2_count_consumed1 <= (not (i_acl_push_i1_memdep_phi3_push7_count_out_stall_out) and SE_out_i_store_memdep_2_count_wireValid) or SE_out_i_store_memdep_2_count_fromReg1;
    -- Consuming
    SE_out_i_store_memdep_2_count_StallValid <= SE_out_i_store_memdep_2_count_backStall and SE_out_i_store_memdep_2_count_wireValid;
    SE_out_i_store_memdep_2_count_toReg0 <= SE_out_i_store_memdep_2_count_StallValid and SE_out_i_store_memdep_2_count_consumed0;
    SE_out_i_store_memdep_2_count_toReg1 <= SE_out_i_store_memdep_2_count_StallValid and SE_out_i_store_memdep_2_count_consumed1;
    -- Backward Stall generation
    SE_out_i_store_memdep_2_count_or0 <= SE_out_i_store_memdep_2_count_consumed0;
    SE_out_i_store_memdep_2_count_wireStall <= not (SE_out_i_store_memdep_2_count_consumed1 and SE_out_i_store_memdep_2_count_or0);
    SE_out_i_store_memdep_2_count_backStall <= SE_out_i_store_memdep_2_count_wireStall;
    -- Valid signal propagation
    SE_out_i_store_memdep_2_count_V0 <= SE_out_i_store_memdep_2_count_wireValid and not (SE_out_i_store_memdep_2_count_fromReg0);
    SE_out_i_store_memdep_2_count_V1 <= SE_out_i_store_memdep_2_count_wireValid and not (SE_out_i_store_memdep_2_count_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_store_memdep_2_count_wireValid <= i_store_memdep_2_count_out_o_valid;

    -- i_acl_pop_i1_memdep_phi3_pop7_count(BLACKBOX,139)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_7@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_memdep_phi3_pop7_count : i_acl_pop_i1_memdep_phi3_pop7_count16
    PORT MAP (
        in_data_in => GND_q,
        in_dir => bubble_select_count_B1_start_merge_reg_aunroll_x_c,
        in_feedback_in_7 => i_acl_push_i1_memdep_phi3_push7_count_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i1_memdep_phi3_push7_count_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_backStall,
        in_valid_in => SE_out_count_B1_start_merge_reg_aunroll_x_V3,
        out_data_out => i_acl_pop_i1_memdep_phi3_pop7_count_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i1_memdep_phi3_pop7_count_out_feedback_stall_out_7,
        out_stall_out => i_acl_pop_i1_memdep_phi3_pop7_count_out_stall_out,
        out_valid_out => i_acl_pop_i1_memdep_phi3_pop7_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_store_memdep_2_count(BITJOIN,338)
    bubble_join_i_store_memdep_2_count_q <= i_store_memdep_2_count_out_o_writeack;

    -- bubble_select_i_store_memdep_2_count(BITSELECT,339)
    bubble_select_i_store_memdep_2_count_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_2_count_q(0 downto 0));

    -- i_acl_push_i1_memdep_phi3_push7_count(BLACKBOX,144)@67
    -- in in_stall_in@20000000
    -- out out_data_out@68
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@68
    thei_acl_push_i1_memdep_phi3_push7_count : i_acl_push_i1_memdep_phi3_push7_count55
    PORT MAP (
        in_data_in => bubble_select_i_store_memdep_2_count_b,
        in_feedback_stall_in_7 => i_acl_pop_i1_memdep_phi3_pop7_count_out_feedback_stall_out_7,
        in_stall_in => SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall,
        in_valid_in => SE_out_i_store_memdep_2_count_V1,
        out_feedback_out_7 => i_acl_push_i1_memdep_phi3_push7_count_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i1_memdep_phi3_push7_count_out_feedback_valid_out_7,
        out_stall_out => i_acl_push_i1_memdep_phi3_push7_count_out_stall_out,
        out_valid_out => i_acl_push_i1_memdep_phi3_push7_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_memdep_phi_push6_count(BLACKBOX,145)@67
    -- in in_stall_in@20000000
    -- out out_data_out@68
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@68
    thei_acl_push_i1_memdep_phi_push6_count : i_acl_push_i1_memdep_phi_push6_count51
    PORT MAP (
        in_data_in => redist0_i_store_memdep_count_out_o_writeack_1_0_q,
        in_feedback_stall_in_6 => i_acl_pop_i1_memdep_phi_pop6_count_out_feedback_stall_out_6,
        in_stall_in => SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall,
        in_valid_in => SE_redist0_i_store_memdep_count_out_o_writeack_1_0_V1,
        out_feedback_out_6 => i_acl_push_i1_memdep_phi_push6_count_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i1_memdep_phi_push6_count_out_feedback_valid_out_6,
        out_stall_out => i_acl_push_i1_memdep_phi_push6_count_out_stall_out,
        out_valid_out => i_acl_push_i1_memdep_phi_push6_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg(STALLFIFO,598)
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in <= SE_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_V0;
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall;
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in_bitsignaltemp <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in(0);
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in_bitsignaltemp <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in(0);
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out(0) <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out(0) <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 33,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg(STALLFIFO,599)
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in <= SE_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_V0;
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall;
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in_bitsignaltemp <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in(0);
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in_bitsignaltemp <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in(0);
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out(0) <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out(0) <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 32,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1(STALLENABLE,538)
    -- Valid signal propagation
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_V0 <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and0 <= bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_reg_valid_out;
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and1 <= bubble_out_i_acl_push_i32_y_count_4ia_addr_0_push4_count_1_reg_valid_out and SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and0;
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and2 <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out and SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and1;
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and3 <= i_acl_push_i1_memdep_phi_push6_count_out_valid_out and SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and2;
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and4 <= i_acl_push_i1_memdep_phi3_push7_count_out_valid_out and SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and3;
    SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_wireValid <= bubble_out_i_acl_pipeline_keep_going_count_1_reg_V0 and SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_and4;

    -- bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg(STALLFIFO,597)
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in <= SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_V0;
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_backStall;
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in_bitsignaltemp <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in(0);
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in_bitsignaltemp <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in(0);
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out(0) <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out(0) <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 33,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count(STALLENABLE,402)
    -- Valid signal propagation
    SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_V0 <= SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_backStall <= bubble_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_1_reg_stall_out or not (SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_wireValid <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_valid_out;

    -- SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count(STALLENABLE,390)
    -- Valid signal propagation
    SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_V0 <= SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_backStall <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backStall or not (SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_wireValid <= i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_valid_out;

    -- i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count(BLACKBOX,141)@32
    -- in in_stall_in@20000000
    -- out out_data_out@33
    -- out out_feedback_stall_out_5@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@33
    thei_acl_pop_i32_sum_count_4ia_addr_0_pop5_count : i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count10
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => bubble_select_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_b,
        in_feedback_in_5 => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_out_5,
        in_feedback_valid_in_5 => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_valid_out_5,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_backStall,
        in_valid_in => SE_out_redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_V1,
        out_data_out => i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_data_out,
        out_feedback_stall_out_5 => i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_feedback_stall_out_5,
        out_stall_out => i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_stall_out,
        out_valid_out => i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_9_count_q_1_0(REG,276)
    redist3_i_acl_9_count_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_acl_9_count_q_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_acl_9_count_q_1_0_backEN = "1") THEN
                redist3_i_acl_9_count_q_1_0_q <= STD_LOGIC_VECTOR(i_acl_9_count_q);
            END IF;
        END IF;
    END PROCESS;

    -- i_acl_push_i32_sum_count_4ia_addr_0_push5_count(BLACKBOX,147)@35
    -- in in_stall_in@20000000
    -- out out_data_out@36
    -- out out_feedback_out_5@20000000
    -- out out_feedback_valid_out_5@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@36
    thei_acl_push_i32_sum_count_4ia_addr_0_push5_count : i_acl_push_i32_sum_count_4ia_addr_0_push5_count24
    PORT MAP (
        in_data_in => redist3_i_acl_9_count_q_1_0_q,
        in_feedback_stall_in_5 => i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_out_feedback_stall_out_5,
        in_stall_in => SE_out_i_acl_push_i32_sum_count_4ia_addr_0_push5_count_backStall,
        in_valid_in => SE_redist3_i_acl_9_count_q_1_0_V1,
        out_feedback_out_5 => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_out_5,
        out_feedback_valid_out_5 => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_feedback_valid_out_5,
        out_stall_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_stall_out,
        out_valid_out => i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add12_count(ADD,151)@35
    i_add12_count_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add8_count_sel_x_b);
    i_add12_count_b <= STD_LOGIC_VECTOR("0" & redist3_i_acl_9_count_q_1_0_q);
    i_add12_count_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add12_count_a) + UNSIGNED(i_add12_count_b));
    i_add12_count_q <= i_add12_count_o(32 downto 0);

    -- bgTrunc_i_add12_count_sel_x(BITSELECT,3)@35
    bgTrunc_i_add12_count_sel_x_b <= i_add12_count_q(31 downto 0);

    -- SR_SE_i_add12_count(STALLREG,602)
    SR_SE_i_add12_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_add12_count_r_valid <= (others => '0');
            SR_SE_i_add12_count_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_add12_count_r_valid <= SE_i_add12_count_backStall and (SR_SE_i_add12_count_r_valid or SR_SE_i_add12_count_i_valid);

            IF (SR_SE_i_add12_count_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_add12_count_r_data0 <= STD_LOGIC_VECTOR(bgTrunc_i_add12_count_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_add12_count_and0 <= SE_i_add8_count_V0;
    SR_SE_i_add12_count_i_valid <= SE_redist3_i_acl_9_count_q_1_0_V0 and SR_SE_i_add12_count_and0;
    -- Stall signal propagation
    SR_SE_i_add12_count_backStall <= SR_SE_i_add12_count_r_valid or not (SR_SE_i_add12_count_i_valid);

    -- Valid
    SR_SE_i_add12_count_V <= SR_SE_i_add12_count_r_valid WHEN SR_SE_i_add12_count_r_valid = "1" ELSE SR_SE_i_add12_count_i_valid;

    SR_SE_i_add12_count_D0 <= SR_SE_i_add12_count_r_data0 WHEN SR_SE_i_add12_count_r_valid = "1" ELSE bgTrunc_i_add12_count_sel_x_b;

    -- SE_redist3_i_acl_9_count_q_1_0(STALLENABLE,476)
    -- Valid signal propagation
    SE_redist3_i_acl_9_count_q_1_0_V0 <= SE_redist3_i_acl_9_count_q_1_0_R_v_0;
    SE_redist3_i_acl_9_count_q_1_0_V1 <= SE_redist3_i_acl_9_count_q_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist3_i_acl_9_count_q_1_0_s_tv_0 <= SR_SE_i_add12_count_backStall and SE_redist3_i_acl_9_count_q_1_0_R_v_0;
    SE_redist3_i_acl_9_count_q_1_0_s_tv_1 <= i_acl_push_i32_sum_count_4ia_addr_0_push5_count_out_stall_out and SE_redist3_i_acl_9_count_q_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist3_i_acl_9_count_q_1_0_or0 <= SE_redist3_i_acl_9_count_q_1_0_s_tv_0;
    SE_redist3_i_acl_9_count_q_1_0_backEN <= not (SE_redist3_i_acl_9_count_q_1_0_s_tv_1 or SE_redist3_i_acl_9_count_q_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist3_i_acl_9_count_q_1_0_v_s_0 <= SE_redist3_i_acl_9_count_q_1_0_backEN and SE_i_acl_9_count_V1;
    -- Backward Stall generation
    SE_redist3_i_acl_9_count_q_1_0_backStall <= not (SE_redist3_i_acl_9_count_q_1_0_v_s_0);
    SE_redist3_i_acl_9_count_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist3_i_acl_9_count_q_1_0_R_v_0 <= (others => '0');
            SE_redist3_i_acl_9_count_q_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_acl_9_count_q_1_0_backEN = "0") THEN
                SE_redist3_i_acl_9_count_q_1_0_R_v_0 <= SE_redist3_i_acl_9_count_q_1_0_R_v_0 and SE_redist3_i_acl_9_count_q_1_0_s_tv_0;
            ELSE
                SE_redist3_i_acl_9_count_q_1_0_R_v_0 <= SE_redist3_i_acl_9_count_q_1_0_v_s_0;
            END IF;

            IF (SE_redist3_i_acl_9_count_q_1_0_backEN = "0") THEN
                SE_redist3_i_acl_9_count_q_1_0_R_v_1 <= SE_redist3_i_acl_9_count_q_1_0_R_v_1 and SE_redist3_i_acl_9_count_q_1_0_s_tv_1;
            ELSE
                SE_redist3_i_acl_9_count_q_1_0_R_v_1 <= SE_redist3_i_acl_9_count_q_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_load_unnamed_count3_count(STALLENABLE,422)
    -- Valid signal propagation
    SE_out_i_load_unnamed_count3_count_V0 <= SE_out_i_load_unnamed_count3_count_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count3_count_backStall <= SE_i_reduction_count_1_count_backStall or not (SE_out_i_load_unnamed_count3_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count3_count_and0 <= i_load_unnamed_count3_count_out_o_valid;
    SE_out_i_load_unnamed_count3_count_and1 <= SE_out_i_load_unnamed_count2_count_V0 and SE_out_i_load_unnamed_count3_count_and0;
    SE_out_i_load_unnamed_count3_count_wireValid <= SE_i_acl_9_count_V0 and SE_out_i_load_unnamed_count3_count_and1;

    -- SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0(STALLENABLE,489)
    -- Valid signal propagation
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_V0 <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_s_tv_0 <= SE_i_acl_9_count_backStall and SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backEN <= not (SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_v_s_0 <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backEN and SE_out_i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_V0;
    -- Backward Stall generation
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backStall <= not (SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_v_s_0);
    SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_backEN = "0") THEN
                SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0 <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0 and SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_R_v_0 <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_acl_9_count(STALLENABLE,382)
    SE_i_acl_9_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_acl_9_count_fromReg0 <= (others => '0');
            SE_i_acl_9_count_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_i_acl_9_count_fromReg0 <= SE_i_acl_9_count_toReg0;
            -- Succesor 1
            SE_i_acl_9_count_fromReg1 <= SE_i_acl_9_count_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_i_acl_9_count_consumed0 <= (not (SE_out_i_load_unnamed_count3_count_backStall) and SE_i_acl_9_count_wireValid) or SE_i_acl_9_count_fromReg0;
    SE_i_acl_9_count_consumed1 <= (not (SE_redist3_i_acl_9_count_q_1_0_backStall) and SE_i_acl_9_count_wireValid) or SE_i_acl_9_count_fromReg1;
    -- Consuming
    SE_i_acl_9_count_StallValid <= SE_i_acl_9_count_backStall and SE_i_acl_9_count_wireValid;
    SE_i_acl_9_count_toReg0 <= SE_i_acl_9_count_StallValid and SE_i_acl_9_count_consumed0;
    SE_i_acl_9_count_toReg1 <= SE_i_acl_9_count_StallValid and SE_i_acl_9_count_consumed1;
    -- Backward Stall generation
    SE_i_acl_9_count_or0 <= SE_i_acl_9_count_consumed0;
    SE_i_acl_9_count_wireStall <= not (SE_i_acl_9_count_consumed1 and SE_i_acl_9_count_or0);
    SE_i_acl_9_count_backStall <= SE_i_acl_9_count_wireStall;
    -- Valid signal propagation
    SE_i_acl_9_count_V0 <= SE_i_acl_9_count_wireValid and not (SE_i_acl_9_count_fromReg0);
    SE_i_acl_9_count_V1 <= SE_i_acl_9_count_wireValid and not (SE_i_acl_9_count_fromReg1);
    -- Computing multiple Valid(s)
    SE_i_acl_9_count_and0 <= SE_redist11_bgTrunc_i_phitmp_count_sel_x_b_1_0_V0;
    SE_i_acl_9_count_wireValid <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V2 and SE_i_acl_9_count_and0;

    -- SE_out_i_load_unnamed_count2_count(STALLENABLE,420)
    SE_out_i_load_unnamed_count2_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_load_unnamed_count2_count_fromReg0 <= (others => '0');
            SE_out_i_load_unnamed_count2_count_fromReg1 <= (others => '0');
            SE_out_i_load_unnamed_count2_count_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_load_unnamed_count2_count_fromReg0 <= SE_out_i_load_unnamed_count2_count_toReg0;
            -- Succesor 1
            SE_out_i_load_unnamed_count2_count_fromReg1 <= SE_out_i_load_unnamed_count2_count_toReg1;
            -- Succesor 2
            SE_out_i_load_unnamed_count2_count_fromReg2 <= SE_out_i_load_unnamed_count2_count_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_load_unnamed_count2_count_consumed0 <= (not (SE_out_i_load_unnamed_count3_count_backStall) and SE_out_i_load_unnamed_count2_count_wireValid) or SE_out_i_load_unnamed_count2_count_fromReg0;
    SE_out_i_load_unnamed_count2_count_consumed1 <= (not (SE_redist4_i_acl_8_count_q_2_0_backStall) and SE_out_i_load_unnamed_count2_count_wireValid) or SE_out_i_load_unnamed_count2_count_fromReg1;
    SE_out_i_load_unnamed_count2_count_consumed2 <= (not (SE_out_i_load_unnamed_count4_count_backStall) and SE_out_i_load_unnamed_count2_count_wireValid) or SE_out_i_load_unnamed_count2_count_fromReg2;
    -- Consuming
    SE_out_i_load_unnamed_count2_count_StallValid <= SE_out_i_load_unnamed_count2_count_backStall and SE_out_i_load_unnamed_count2_count_wireValid;
    SE_out_i_load_unnamed_count2_count_toReg0 <= SE_out_i_load_unnamed_count2_count_StallValid and SE_out_i_load_unnamed_count2_count_consumed0;
    SE_out_i_load_unnamed_count2_count_toReg1 <= SE_out_i_load_unnamed_count2_count_StallValid and SE_out_i_load_unnamed_count2_count_consumed1;
    SE_out_i_load_unnamed_count2_count_toReg2 <= SE_out_i_load_unnamed_count2_count_StallValid and SE_out_i_load_unnamed_count2_count_consumed2;
    -- Backward Stall generation
    SE_out_i_load_unnamed_count2_count_or0 <= SE_out_i_load_unnamed_count2_count_consumed0;
    SE_out_i_load_unnamed_count2_count_or1 <= SE_out_i_load_unnamed_count2_count_consumed1 and SE_out_i_load_unnamed_count2_count_or0;
    SE_out_i_load_unnamed_count2_count_wireStall <= not (SE_out_i_load_unnamed_count2_count_consumed2 and SE_out_i_load_unnamed_count2_count_or1);
    SE_out_i_load_unnamed_count2_count_backStall <= SE_out_i_load_unnamed_count2_count_wireStall;
    -- Valid signal propagation
    SE_out_i_load_unnamed_count2_count_V0 <= SE_out_i_load_unnamed_count2_count_wireValid and not (SE_out_i_load_unnamed_count2_count_fromReg0);
    SE_out_i_load_unnamed_count2_count_V1 <= SE_out_i_load_unnamed_count2_count_wireValid and not (SE_out_i_load_unnamed_count2_count_fromReg1);
    SE_out_i_load_unnamed_count2_count_V2 <= SE_out_i_load_unnamed_count2_count_wireValid and not (SE_out_i_load_unnamed_count2_count_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_count2_count_and0 <= i_load_unnamed_count2_count_out_o_valid;
    SE_out_i_load_unnamed_count2_count_and1 <= i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_out_valid_out and SE_out_i_load_unnamed_count2_count_and0;
    SE_out_i_load_unnamed_count2_count_wireValid <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V1 and SE_out_i_load_unnamed_count2_count_and1;

    -- SE_i_acl_7_count(STALLENABLE,380)
    -- Valid signal propagation
    SE_i_acl_7_count_V0 <= SE_i_acl_7_count_R_v_0;
    -- Stall signal propagation
    SE_i_acl_7_count_s_tv_0 <= SE_i_add8_count_backStall and SE_i_acl_7_count_R_v_0;
    -- Backward Enable generation
    SE_i_acl_7_count_backEN <= not (SE_i_acl_7_count_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_acl_7_count_and0 <= SE_out_i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_V0 and SE_i_acl_7_count_backEN;
    SE_i_acl_7_count_and1 <= SE_out_i_load_unnamed_count1_count_V0 and SE_i_acl_7_count_and0;
    SE_i_acl_7_count_v_s_0 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V0 and SE_i_acl_7_count_and1;
    -- Backward Stall generation
    SE_i_acl_7_count_backStall <= not (SE_i_acl_7_count_v_s_0);
    SE_i_acl_7_count_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_acl_7_count_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_acl_7_count_backEN = "0") THEN
                SE_i_acl_7_count_R_v_0 <= SE_i_acl_7_count_R_v_0 and SE_i_acl_7_count_s_tv_0;
            ELSE
                SE_i_acl_7_count_R_v_0 <= SE_i_acl_7_count_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo(STALLENABLE,485)
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg0 <= (others => '0');
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg1 <= (others => '0');
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg0 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg0;
            -- Succesor 1
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg1 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg1;
            -- Succesor 2
            SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg2 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed0 <= (not (SE_i_acl_7_count_backStall) and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid) or SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg0;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed1 <= (not (SE_out_i_load_unnamed_count2_count_backStall) and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid) or SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg1;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed2 <= (not (SE_i_acl_9_count_backStall) and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid) or SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg2;
    -- Consuming
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_StallValid <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_backStall and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg0 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_StallValid and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed0;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg1 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_StallValid and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed1;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_toReg2 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_StallValid and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed2;
    -- Backward Stall generation
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or0 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed0;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or1 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed1 and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or0;
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireStall <= not (SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_consumed2 and SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_or1);
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_backStall <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V0 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid and not (SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg0);
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V1 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid and not (SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg1);
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_V2 <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid and not (SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_wireValid <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out;

    -- redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo(STALLFIFO,282)
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V2;
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in <= SE_out_redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_backStall;
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_data_in <= redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q;
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in_bitsignaltemp <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in(0);
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in_bitsignaltemp <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in(0);
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out(0) <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out_bitsignaltemp;
    redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out(0) <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out_bitsignaltemp;
    theredist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 33,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_in_bitsignaltemp,
        data_in => redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_q,
        valid_out => redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out_bitsignaltemp,
        data_out => redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_in_i_load_unnamed_count2_count(STALLENABLE,419)
    -- Valid signal propagation
    SE_in_i_load_unnamed_count2_count_V0 <= SE_in_i_load_unnamed_count2_count_wireValid;
    -- Backward Stall generation
    SE_in_i_load_unnamed_count2_count_backStall <= i_load_unnamed_count2_count_out_o_stall or not (SE_in_i_load_unnamed_count2_count_wireValid);
    -- Computing multiple Valid(s)
    SE_in_i_load_unnamed_count2_count_and0 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V3;
    SE_in_i_load_unnamed_count2_count_and1 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V1 and SE_in_i_load_unnamed_count2_count_and0;
    SE_in_i_load_unnamed_count2_count_wireValid <= SE_out_i_acl_pop_i1_memdep_phi3_pop7_count_V0 and SE_in_i_load_unnamed_count2_count_and1;

    -- SE_in_i_load_unnamed_count1_count(STALLENABLE,417)
    -- Valid signal propagation
    SE_in_i_load_unnamed_count1_count_V0 <= SE_in_i_load_unnamed_count1_count_wireValid;
    -- Backward Stall generation
    SE_in_i_load_unnamed_count1_count_backStall <= i_load_unnamed_count1_count_out_o_stall or not (SE_in_i_load_unnamed_count1_count_wireValid);
    -- Computing multiple Valid(s)
    SE_in_i_load_unnamed_count1_count_and0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V0;
    SE_in_i_load_unnamed_count1_count_and1 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V0 and SE_in_i_load_unnamed_count1_count_and0;
    SE_in_i_load_unnamed_count1_count_wireValid <= SE_out_i_acl_pop_i1_memdep_phi_pop6_count_V0 and SE_in_i_load_unnamed_count1_count_and1;

    -- SE_out_count_B1_start_merge_reg_aunroll_x(STALLENABLE,369)
    SE_out_count_B1_start_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg5 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg3 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg4 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_count_B1_start_merge_reg_aunroll_x_fromReg5 <= SE_out_count_B1_start_merge_reg_aunroll_x_toReg5;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_count_B1_start_merge_reg_aunroll_x_2_reg_stall_out) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0;
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed1 <= (not (bubble_out_count_B1_start_merge_reg_aunroll_x_3_reg_stall_out) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1;
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed2 <= (not (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backStall) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2;
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed3 <= (not (i_acl_pop_i1_memdep_phi3_pop7_count_out_stall_out) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg3;
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed4 <= (not (i_acl_pop_i1_memdep_phi_pop6_count_out_stall_out) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg4;
    SE_out_count_B1_start_merge_reg_aunroll_x_consumed5 <= (not (redist9_count_B1_start_merge_reg_aunroll_x_out_data_out_1_31_fifo_stall_out) and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid) or SE_out_count_B1_start_merge_reg_aunroll_x_fromReg5;
    -- Consuming
    SE_out_count_B1_start_merge_reg_aunroll_x_StallValid <= SE_out_count_B1_start_merge_reg_aunroll_x_backStall and SE_out_count_B1_start_merge_reg_aunroll_x_wireValid;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg0 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed0;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg1 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed1;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg2 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed2;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg3 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed3;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg4 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed4;
    SE_out_count_B1_start_merge_reg_aunroll_x_toReg5 <= SE_out_count_B1_start_merge_reg_aunroll_x_StallValid and SE_out_count_B1_start_merge_reg_aunroll_x_consumed5;
    -- Backward Stall generation
    SE_out_count_B1_start_merge_reg_aunroll_x_or0 <= SE_out_count_B1_start_merge_reg_aunroll_x_consumed0;
    SE_out_count_B1_start_merge_reg_aunroll_x_or1 <= SE_out_count_B1_start_merge_reg_aunroll_x_consumed1 and SE_out_count_B1_start_merge_reg_aunroll_x_or0;
    SE_out_count_B1_start_merge_reg_aunroll_x_or2 <= SE_out_count_B1_start_merge_reg_aunroll_x_consumed2 and SE_out_count_B1_start_merge_reg_aunroll_x_or1;
    SE_out_count_B1_start_merge_reg_aunroll_x_or3 <= SE_out_count_B1_start_merge_reg_aunroll_x_consumed3 and SE_out_count_B1_start_merge_reg_aunroll_x_or2;
    SE_out_count_B1_start_merge_reg_aunroll_x_or4 <= SE_out_count_B1_start_merge_reg_aunroll_x_consumed4 and SE_out_count_B1_start_merge_reg_aunroll_x_or3;
    SE_out_count_B1_start_merge_reg_aunroll_x_wireStall <= not (SE_out_count_B1_start_merge_reg_aunroll_x_consumed5 and SE_out_count_B1_start_merge_reg_aunroll_x_or4);
    SE_out_count_B1_start_merge_reg_aunroll_x_backStall <= SE_out_count_B1_start_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_count_B1_start_merge_reg_aunroll_x_V0 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg0);
    SE_out_count_B1_start_merge_reg_aunroll_x_V1 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg1);
    SE_out_count_B1_start_merge_reg_aunroll_x_V2 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg2);
    SE_out_count_B1_start_merge_reg_aunroll_x_V3 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg3);
    SE_out_count_B1_start_merge_reg_aunroll_x_V4 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg4);
    SE_out_count_B1_start_merge_reg_aunroll_x_V5 <= SE_out_count_B1_start_merge_reg_aunroll_x_wireValid and not (SE_out_count_B1_start_merge_reg_aunroll_x_fromReg5);
    -- Computing multiple Valid(s)
    SE_out_count_B1_start_merge_reg_aunroll_x_wireValid <= count_B1_start_merge_reg_aunroll_x_out_valid_out;

    -- SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0(STALLENABLE,483)
    -- Valid signal propagation
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V1 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V2 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V3 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3;
    -- Stall signal propagation
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_0 <= SE_in_i_load_unnamed_count1_count_backStall and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_1 <= SE_in_i_load_unnamed_count2_count_backStall and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_2 <= redist8_count_B1_start_merge_reg_aunroll_x_out_data_out_0_33_fifo_stall_out and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_3 <= i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_stall and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3;
    -- Backward Enable generation
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_0;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or1 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_1 or SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or0;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or2 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_2 or SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or1;
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN <= not (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_3 or SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_or2);
    -- Determine whether to write valid data into the first register stage
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN and SE_out_count_B1_start_merge_reg_aunroll_x_V2;
    -- Backward Stall generation
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backStall <= not (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0);
    SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0 <= (others => '0');
            SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1 <= (others => '0');
            SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2 <= (others => '0');
            SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN = "0") THEN
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0 and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_0;
            ELSE
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_0 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0;
            END IF;

            IF (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN = "0") THEN
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1 and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_1;
            ELSE
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_1 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0;
            END IF;

            IF (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN = "0") THEN
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2 and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_2;
            ELSE
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_2 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0;
            END IF;

            IF (SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_backEN = "0") THEN
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3 and SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_s_tv_3;
            ELSE
                SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_R_v_3 <= SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x(STALLENABLE,379)
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg4 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg0 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg1 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg2 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg3 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg4 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg4;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed0 <= (not (SE_in_i_load_unnamed_count1_count_backStall) and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg0;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed1 <= (not (SR_SE_i_memdep_phi3_or_count_backStall) and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg1;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed2 <= (not (redist5_i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0_33_fifo_stall_out) and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg2;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed3 <= (not (SE_in_i_load_unnamed_count2_count_backStall) and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg3;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed4 <= (not (redist6_i_arrayidx20_pre_count_count9_trunc_sel_x_b_34_fifo_stall_out) and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid) or SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg4;
    -- Consuming
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_backStall and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg0 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg1 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed1;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg2 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed2;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg3 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed3;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_toReg4 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_StallValid and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed4;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or0 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed0;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or1 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed1 and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or0;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or2 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed2 and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or1;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or3 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed3 and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or2;
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireStall <= not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_consumed4 and SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_or3);
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_backStall <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V0 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg0);
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V1 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg1);
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V2 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg2);
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V3 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg3);
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_V4 <= SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid and not (SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_fromReg4);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_wireValid <= i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_valid;

    -- i_iord_bl_do_unnamed_count0_count_aunroll_x(BLACKBOX,97)@2
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_count0_count_aunroll_x : i_iord_bl_do_unnamed_count0_count8
    PORT MAP (
        in_i_stall => SE_out_i_iord_bl_do_unnamed_count0_count_aunroll_x_backStall,
        in_i_valid => SE_redist7_count_B1_start_merge_reg_aunroll_x_out_data_out_0_1_0_V3,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_o_data_0 => i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_0,
        out_o_data_1 => i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_data_1,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_count0_count_aunroll_x_out_iord_bl_do_o_fifoready,
        out_o_stall => i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_count0_count_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,14)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_count0_count_aunroll_x_out_iord_bl_do_o_fifoready;

    -- dupName_0_sync_out_x(GPOUT,18)@68
    out_valid_out <= SE_out_bubble_out_i_acl_push_i32_z_count_4ia_addr_0_push3_count_1_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,21)
    out_unnamed_count1_avm_address <= i_load_unnamed_count1_count_out_unnamed_count1_avm_address;
    out_unnamed_count1_avm_enable <= i_load_unnamed_count1_count_out_unnamed_count1_avm_enable;
    out_unnamed_count1_avm_read <= i_load_unnamed_count1_count_out_unnamed_count1_avm_read;
    out_unnamed_count1_avm_write <= i_load_unnamed_count1_count_out_unnamed_count1_avm_write;
    out_unnamed_count1_avm_writedata <= i_load_unnamed_count1_count_out_unnamed_count1_avm_writedata;
    out_unnamed_count1_avm_byteenable <= i_load_unnamed_count1_count_out_unnamed_count1_avm_byteenable;
    out_unnamed_count1_avm_burstcount <= i_load_unnamed_count1_count_out_unnamed_count1_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,25)
    out_unnamed_count2_avm_address <= i_load_unnamed_count2_count_out_unnamed_count2_avm_address;
    out_unnamed_count2_avm_enable <= i_load_unnamed_count2_count_out_unnamed_count2_avm_enable;
    out_unnamed_count2_avm_read <= i_load_unnamed_count2_count_out_unnamed_count2_avm_read;
    out_unnamed_count2_avm_write <= i_load_unnamed_count2_count_out_unnamed_count2_avm_write;
    out_unnamed_count2_avm_writedata <= i_load_unnamed_count2_count_out_unnamed_count2_avm_writedata;
    out_unnamed_count2_avm_byteenable <= i_load_unnamed_count2_count_out_unnamed_count2_avm_byteenable;
    out_unnamed_count2_avm_burstcount <= i_load_unnamed_count2_count_out_unnamed_count2_avm_burstcount;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,29)
    out_unnamed_count3_avm_address <= i_load_unnamed_count3_count_out_unnamed_count3_avm_address;
    out_unnamed_count3_avm_enable <= i_load_unnamed_count3_count_out_unnamed_count3_avm_enable;
    out_unnamed_count3_avm_read <= i_load_unnamed_count3_count_out_unnamed_count3_avm_read;
    out_unnamed_count3_avm_write <= i_load_unnamed_count3_count_out_unnamed_count3_avm_write;
    out_unnamed_count3_avm_writedata <= i_load_unnamed_count3_count_out_unnamed_count3_avm_writedata;
    out_unnamed_count3_avm_byteenable <= i_load_unnamed_count3_count_out_unnamed_count3_avm_byteenable;
    out_unnamed_count3_avm_burstcount <= i_load_unnamed_count3_count_out_unnamed_count3_avm_burstcount;

    -- dupName_4_ext_sig_sync_out_x(GPOUT,33)
    out_unnamed_count4_avm_address <= i_load_unnamed_count4_count_out_unnamed_count4_avm_address;
    out_unnamed_count4_avm_enable <= i_load_unnamed_count4_count_out_unnamed_count4_avm_enable;
    out_unnamed_count4_avm_read <= i_load_unnamed_count4_count_out_unnamed_count4_avm_read;
    out_unnamed_count4_avm_write <= i_load_unnamed_count4_count_out_unnamed_count4_avm_write;
    out_unnamed_count4_avm_writedata <= i_load_unnamed_count4_count_out_unnamed_count4_avm_writedata;
    out_unnamed_count4_avm_byteenable <= i_load_unnamed_count4_count_out_unnamed_count4_avm_byteenable;
    out_unnamed_count4_avm_burstcount <= i_load_unnamed_count4_count_out_unnamed_count4_avm_burstcount;

    -- dupName_5_ext_sig_sync_out_x(GPOUT,37)
    out_unnamed_count5_avm_address <= i_load_unnamed_count5_count_out_unnamed_count5_avm_address;
    out_unnamed_count5_avm_enable <= i_load_unnamed_count5_count_out_unnamed_count5_avm_enable;
    out_unnamed_count5_avm_read <= i_load_unnamed_count5_count_out_unnamed_count5_avm_read;
    out_unnamed_count5_avm_write <= i_load_unnamed_count5_count_out_unnamed_count5_avm_write;
    out_unnamed_count5_avm_writedata <= i_load_unnamed_count5_count_out_unnamed_count5_avm_writedata;
    out_unnamed_count5_avm_byteenable <= i_load_unnamed_count5_count_out_unnamed_count5_avm_byteenable;
    out_unnamed_count5_avm_burstcount <= i_load_unnamed_count5_count_out_unnamed_count5_avm_burstcount;

    -- dupName_6_ext_sig_sync_out_x(GPOUT,41)
    out_unnamed_count6_avm_address <= i_load_unnamed_count6_count_out_unnamed_count6_avm_address;
    out_unnamed_count6_avm_enable <= i_load_unnamed_count6_count_out_unnamed_count6_avm_enable;
    out_unnamed_count6_avm_read <= i_load_unnamed_count6_count_out_unnamed_count6_avm_read;
    out_unnamed_count6_avm_write <= i_load_unnamed_count6_count_out_unnamed_count6_avm_write;
    out_unnamed_count6_avm_writedata <= i_load_unnamed_count6_count_out_unnamed_count6_avm_writedata;
    out_unnamed_count6_avm_byteenable <= i_load_unnamed_count6_count_out_unnamed_count6_avm_byteenable;
    out_unnamed_count6_avm_burstcount <= i_load_unnamed_count6_count_out_unnamed_count6_avm_burstcount;

    -- dupName_7_ext_sig_sync_out_x(GPOUT,45)
    out_memdep_avm_address <= i_store_memdep_count_out_memdep_avm_address;
    out_memdep_avm_enable <= i_store_memdep_count_out_memdep_avm_enable;
    out_memdep_avm_read <= i_store_memdep_count_out_memdep_avm_read;
    out_memdep_avm_write <= i_store_memdep_count_out_memdep_avm_write;
    out_memdep_avm_writedata <= i_store_memdep_count_out_memdep_avm_writedata;
    out_memdep_avm_byteenable <= i_store_memdep_count_out_memdep_avm_byteenable;
    out_memdep_avm_burstcount <= i_store_memdep_count_out_memdep_avm_burstcount;

    -- dupName_8_ext_sig_sync_out_x(GPOUT,49)
    out_lsu_memdep_o_active <= i_store_memdep_count_out_lsu_memdep_o_active;

    -- dupName_9_ext_sig_sync_out_x(GPOUT,52)
    out_memdep_2_avm_address <= i_store_memdep_2_count_out_memdep_2_avm_address;
    out_memdep_2_avm_enable <= i_store_memdep_2_count_out_memdep_2_avm_enable;
    out_memdep_2_avm_read <= i_store_memdep_2_count_out_memdep_2_avm_read;
    out_memdep_2_avm_write <= i_store_memdep_2_count_out_memdep_2_avm_write;
    out_memdep_2_avm_writedata <= i_store_memdep_2_count_out_memdep_2_avm_writedata;
    out_memdep_2_avm_byteenable <= i_store_memdep_2_count_out_memdep_2_avm_byteenable;
    out_memdep_2_avm_burstcount <= i_store_memdep_2_count_out_memdep_2_avm_burstcount;

    -- dupName_10_ext_sig_sync_out_x(GPOUT,55)
    out_lsu_memdep_2_o_active <= i_store_memdep_2_count_out_lsu_memdep_2_o_active;

    -- dupName_11_ext_sig_sync_out_x(GPOUT,58)
    out_iowr_bl_return_o_fifodata <= i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifodata;
    out_iowr_bl_return_o_fifovalid <= i_iowr_bl_return_unnamed_count7_count_out_iowr_bl_return_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,134)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_valid_out <= i_acl_pipeline_keep_going_count_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_count_exiting_stall_out <= i_acl_pipeline_keep_going_count_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,196)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_count_out_pipeline_valid_out;

    -- sync_out(GPOUT,202)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;

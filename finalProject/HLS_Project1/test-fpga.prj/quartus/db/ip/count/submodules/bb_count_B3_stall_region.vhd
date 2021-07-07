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

-- VHDL created from bb_count_B3_stall_region
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

entity bb_count_B3_stall_region is
    port (
        in_memdep_1_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_1_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_1_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_lsu_memdep_1_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- ufix8
        in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B3_stall_region;

architecture normal of bb_count_B3_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_push_i1_throttle_push_count120 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_add185_count115 is
        port (
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_add84_count109 is
        port (
            in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_arrayidx13_count113 is
        port (
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_2_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_v52_count107 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_return_unnamed_count24_count119 is
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


    component i_store_memdep_1_count117 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_1_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_1_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_1_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_count111 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
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


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_count_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_throttle_push_count_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_add185_count_out_dest_data_out_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_add185_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_add185_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_add84_count_out_dest_data_out_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_add84_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_add84_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_arrayidx13_count_out_dest_data_out_2_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_arrayidx13_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_arrayidx13_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_v52_count_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_v52_count_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_v52_count_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count24_count_out_o_ack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count24_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_return_unnamed_count24_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_memdep_or_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_lsu_memdep_1_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_memdep_1_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_1_count_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_1_count_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
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
    signal bubble_join_i_ffwd_dst_add185_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_ffwd_dst_add185_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_add84_count_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_ffwd_dst_add84_count_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_arrayidx13_count_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_ffwd_dst_arrayidx13_count_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_ffwd_dst_v52_count_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_ffwd_dst_v52_count_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_iowr_bl_return_unnamed_count24_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_iowr_bl_return_unnamed_count24_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_store_memdep_1_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_1_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_store_memdep_count_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_store_memdep_count_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_arrayidx13_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_arrayidx13_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_arrayidx13_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_arrayidx13_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_v52_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_v52_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_v52_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_v52_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_count24_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_count24_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_return_unnamed_count24_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_memdep_count_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V3 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_ffwd_dst_v52_count(BLACKBOX,41)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_v52_count : i_ffwd_dst_v52_count107
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => SE_out_i_ffwd_dst_v52_count_backStall,
        in_valid_in => SE_stall_entry_V3,
        out_dest_data_out_0_0 => i_ffwd_dst_v52_count_out_dest_data_out_0_0,
        out_stall_out => i_ffwd_dst_v52_count_out_stall_out,
        out_valid_out => i_ffwd_dst_v52_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_ffwd_dst_add185_count(BITJOIN,55)
    bubble_join_i_ffwd_dst_add185_count_q <= i_ffwd_dst_add185_count_out_dest_data_out_9_0;

    -- bubble_select_i_ffwd_dst_add185_count(BITSELECT,56)
    bubble_select_i_ffwd_dst_add185_count_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_add185_count_q(31 downto 0));

    -- bubble_join_i_ffwd_dst_arrayidx13_count(BITJOIN,61)
    bubble_join_i_ffwd_dst_arrayidx13_count_q <= i_ffwd_dst_arrayidx13_count_out_dest_data_out_2_0;

    -- bubble_select_i_ffwd_dst_arrayidx13_count(BITSELECT,62)
    bubble_select_i_ffwd_dst_arrayidx13_count_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_arrayidx13_count_q(63 downto 0));

    -- i_store_memdep_1_count(BLACKBOX,44)@0
    -- in in_i_stall@20000000
    -- out out_lsu_memdep_1_o_active@20000000
    -- out out_memdep_1_avm_address@20000000
    -- out out_memdep_1_avm_burstcount@20000000
    -- out out_memdep_1_avm_byteenable@20000000
    -- out out_memdep_1_avm_enable@20000000
    -- out out_memdep_1_avm_read@20000000
    -- out out_memdep_1_avm_write@20000000
    -- out out_memdep_1_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@31
    -- out out_o_writeack@31
    thei_store_memdep_1_count : i_store_memdep_1_count117
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_ffwd_dst_arrayidx13_count_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_store_memdep_count_backStall,
        in_i_valid => SE_out_i_ffwd_dst_arrayidx13_count_V0,
        in_i_writedata => bubble_select_i_ffwd_dst_add185_count_b,
        in_memdep_1_avm_readdata => in_memdep_1_avm_readdata,
        in_memdep_1_avm_readdatavalid => in_memdep_1_avm_readdatavalid,
        in_memdep_1_avm_waitrequest => in_memdep_1_avm_waitrequest,
        in_memdep_1_avm_writeack => in_memdep_1_avm_writeack,
        out_lsu_memdep_1_o_active => i_store_memdep_1_count_out_lsu_memdep_1_o_active,
        out_memdep_1_avm_address => i_store_memdep_1_count_out_memdep_1_avm_address,
        out_memdep_1_avm_burstcount => i_store_memdep_1_count_out_memdep_1_avm_burstcount,
        out_memdep_1_avm_byteenable => i_store_memdep_1_count_out_memdep_1_avm_byteenable,
        out_memdep_1_avm_enable => i_store_memdep_1_count_out_memdep_1_avm_enable,
        out_memdep_1_avm_read => i_store_memdep_1_count_out_memdep_1_avm_read,
        out_memdep_1_avm_write => i_store_memdep_1_count_out_memdep_1_avm_write,
        out_memdep_1_avm_writedata => i_store_memdep_1_count_out_memdep_1_avm_writedata,
        out_o_stall => i_store_memdep_1_count_out_o_stall,
        out_o_valid => i_store_memdep_1_count_out_o_valid,
        out_o_writeack => i_store_memdep_1_count_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_dst_arrayidx13_count(STALLENABLE,86)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_arrayidx13_count_V0 <= SE_out_i_ffwd_dst_arrayidx13_count_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_arrayidx13_count_backStall <= i_store_memdep_1_count_out_o_stall or not (SE_out_i_ffwd_dst_arrayidx13_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_arrayidx13_count_and0 <= i_ffwd_dst_arrayidx13_count_out_valid_out;
    SE_out_i_ffwd_dst_arrayidx13_count_wireValid <= i_ffwd_dst_add185_count_out_valid_out and SE_out_i_ffwd_dst_arrayidx13_count_and0;

    -- i_ffwd_dst_arrayidx13_count(BLACKBOX,40)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_arrayidx13_count : i_ffwd_dst_arrayidx13_count113
    PORT MAP (
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_stall_in => SE_out_i_ffwd_dst_arrayidx13_count_backStall,
        in_valid_in => SE_stall_entry_V2,
        out_dest_data_out_2_0 => i_ffwd_dst_arrayidx13_count_out_dest_data_out_2_0,
        out_stall_out => i_ffwd_dst_arrayidx13_count_out_stall_out,
        out_valid_out => i_ffwd_dst_arrayidx13_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_add185_count(BLACKBOX,38)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_add185_count : i_ffwd_dst_add185_count115
    PORT MAP (
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_stall_in => SE_out_i_ffwd_dst_arrayidx13_count_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_dest_data_out_9_0 => i_ffwd_dst_add185_count_out_dest_data_out_9_0,
        out_stall_out => i_ffwd_dst_add185_count_out_stall_out,
        out_valid_out => i_ffwd_dst_add185_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,96)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
            SE_stall_entry_fromReg2 <= (others => '0');
            SE_stall_entry_fromReg3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            -- Succesor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            -- Succesor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            -- Succesor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (i_ffwd_dst_add185_count_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (i_ffwd_dst_add84_count_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    SE_stall_entry_consumed2 <= (not (i_ffwd_dst_arrayidx13_count_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg2;
    SE_stall_entry_consumed3 <= (not (i_ffwd_dst_v52_count_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg3;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    SE_stall_entry_toReg2 <= SE_stall_entry_StallValid and SE_stall_entry_consumed2;
    SE_stall_entry_toReg3 <= SE_stall_entry_StallValid and SE_stall_entry_consumed3;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_or1 <= SE_stall_entry_consumed1 and SE_stall_entry_or0;
    SE_stall_entry_or2 <= SE_stall_entry_consumed2 and SE_stall_entry_or1;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed3 and SE_stall_entry_or2);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    SE_stall_entry_V2 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg2);
    SE_stall_entry_V3 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg3);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- i_ffwd_dst_add84_count(BLACKBOX,39)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_add84_count : i_ffwd_dst_add84_count109
    PORT MAP (
        in_intel_reserved_ffwd_8_0 => in_intel_reserved_ffwd_8_0,
        in_stall_in => SE_out_i_ffwd_dst_v52_count_backStall,
        in_valid_in => SE_stall_entry_V1,
        out_dest_data_out_8_0 => i_ffwd_dst_add84_count_out_dest_data_out_8_0,
        out_stall_out => i_ffwd_dst_add84_count_out_stall_out,
        out_valid_out => i_ffwd_dst_add84_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_ffwd_dst_add84_count(BITJOIN,58)
    bubble_join_i_ffwd_dst_add84_count_q <= i_ffwd_dst_add84_count_out_dest_data_out_8_0;

    -- bubble_select_i_ffwd_dst_add84_count(BITSELECT,59)
    bubble_select_i_ffwd_dst_add84_count_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_add84_count_q(31 downto 0));

    -- SE_out_i_ffwd_dst_v52_count(STALLENABLE,88)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_v52_count_V0 <= SE_out_i_ffwd_dst_v52_count_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_v52_count_backStall <= i_store_memdep_count_out_o_stall or not (SE_out_i_ffwd_dst_v52_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_v52_count_and0 <= i_ffwd_dst_v52_count_out_valid_out;
    SE_out_i_ffwd_dst_v52_count_wireValid <= i_ffwd_dst_add84_count_out_valid_out and SE_out_i_ffwd_dst_v52_count_and0;

    -- SE_out_i_acl_push_i1_throttle_push_count(STALLENABLE,80)
    -- Valid signal propagation
    SE_out_i_acl_push_i1_throttle_push_count_V0 <= SE_out_i_acl_push_i1_throttle_push_count_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_push_i1_throttle_push_count_backStall <= in_stall_in or not (SE_out_i_acl_push_i1_throttle_push_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i1_throttle_push_count_wireValid <= i_acl_push_i1_throttle_push_count_out_valid_out;

    -- bubble_join_i_iowr_bl_return_unnamed_count24_count(BITJOIN,67)
    bubble_join_i_iowr_bl_return_unnamed_count24_count_q <= i_iowr_bl_return_unnamed_count24_count_out_o_ack;

    -- bubble_select_i_iowr_bl_return_unnamed_count24_count(BITSELECT,68)
    bubble_select_i_iowr_bl_return_unnamed_count24_count_b <= STD_LOGIC_VECTOR(bubble_join_i_iowr_bl_return_unnamed_count24_count_q(0 downto 0));

    -- i_acl_push_i1_throttle_push_count(BLACKBOX,37)@31
    -- in in_stall_in@20000000
    -- out out_data_out@32
    -- out out_feedback_out_1@20000000
    -- out out_feedback_valid_out_1@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@32
    thei_acl_push_i1_throttle_push_count : i_acl_push_i1_throttle_push_count120
    PORT MAP (
        in_data_in => bubble_select_i_iowr_bl_return_unnamed_count24_count_b,
        in_feedback_stall_in_1 => in_feedback_stall_in_1,
        in_stall_in => SE_out_i_acl_push_i1_throttle_push_count_backStall,
        in_valid_in => SE_out_i_iowr_bl_return_unnamed_count24_count_V0,
        out_feedback_out_1 => i_acl_push_i1_throttle_push_count_out_feedback_out_1,
        out_feedback_valid_out_1 => i_acl_push_i1_throttle_push_count_out_feedback_valid_out_1,
        out_stall_out => i_acl_push_i1_throttle_push_count_out_stall_out,
        out_valid_out => i_acl_push_i1_throttle_push_count_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iowr_bl_return_unnamed_count24_count(STALLENABLE,90)
    -- Valid signal propagation
    SE_out_i_iowr_bl_return_unnamed_count24_count_V0 <= SE_out_i_iowr_bl_return_unnamed_count24_count_wireValid;
    -- Backward Stall generation
    SE_out_i_iowr_bl_return_unnamed_count24_count_backStall <= i_acl_push_i1_throttle_push_count_out_stall_out or not (SE_out_i_iowr_bl_return_unnamed_count24_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_return_unnamed_count24_count_wireValid <= i_iowr_bl_return_unnamed_count24_count_out_o_valid;

    -- bubble_join_i_store_memdep_count(BITJOIN,73)
    bubble_join_i_store_memdep_count_q <= i_store_memdep_count_out_o_writeack;

    -- bubble_select_i_store_memdep_count(BITSELECT,74)
    bubble_select_i_store_memdep_count_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_count_q(0 downto 0));

    -- bubble_join_i_store_memdep_1_count(BITJOIN,70)
    bubble_join_i_store_memdep_1_count_q <= i_store_memdep_1_count_out_o_writeack;

    -- bubble_select_i_store_memdep_1_count(BITSELECT,71)
    bubble_select_i_store_memdep_1_count_b <= STD_LOGIC_VECTOR(bubble_join_i_store_memdep_1_count_q(0 downto 0));

    -- i_memdep_or_count(LOGICAL,43)@31
    i_memdep_or_count_q <= bubble_select_i_store_memdep_1_count_b or bubble_select_i_store_memdep_count_b;

    -- i_iowr_bl_return_unnamed_count24_count(BLACKBOX,42)@31
    -- in in_i_stall@20000000
    -- out out_iowr_bl_return_o_fifodata@20000000
    -- out out_iowr_bl_return_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_return_unnamed_count24_count : i_iowr_bl_return_unnamed_count24_count119
    PORT MAP (
        in_i_data => GND_q,
        in_i_dependence => i_memdep_or_count_q,
        in_i_stall => SE_out_i_iowr_bl_return_unnamed_count24_count_backStall,
        in_i_valid => SE_out_i_store_memdep_count_V0,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        out_iowr_bl_return_o_fifodata => i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifovalid,
        out_o_ack => i_iowr_bl_return_unnamed_count24_count_out_o_ack,
        out_o_stall => i_iowr_bl_return_unnamed_count24_count_out_o_stall,
        out_o_valid => i_iowr_bl_return_unnamed_count24_count_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_store_memdep_count(STALLENABLE,95)
    -- Valid signal propagation
    SE_out_i_store_memdep_count_V0 <= SE_out_i_store_memdep_count_wireValid;
    -- Backward Stall generation
    SE_out_i_store_memdep_count_backStall <= i_iowr_bl_return_unnamed_count24_count_out_o_stall or not (SE_out_i_store_memdep_count_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_store_memdep_count_and0 <= i_store_memdep_count_out_o_valid;
    SE_out_i_store_memdep_count_wireValid <= i_store_memdep_1_count_out_o_valid and SE_out_i_store_memdep_count_and0;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bubble_join_i_ffwd_dst_v52_count(BITJOIN,64)
    bubble_join_i_ffwd_dst_v52_count_q <= i_ffwd_dst_v52_count_out_dest_data_out_0_0;

    -- bubble_select_i_ffwd_dst_v52_count(BITSELECT,65)
    bubble_select_i_ffwd_dst_v52_count_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_v52_count_q(63 downto 0));

    -- i_store_memdep_count(BLACKBOX,45)@0
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
    -- out out_o_valid@31
    -- out out_o_writeack@31
    thei_store_memdep_count : i_store_memdep_count111
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_ffwd_dst_v52_count_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_store_memdep_count_backStall,
        in_i_valid => SE_out_i_ffwd_dst_v52_count_V0,
        in_i_writedata => bubble_select_i_ffwd_dst_add84_count_b,
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

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_lsu_memdep_o_active <= i_store_memdep_count_out_lsu_memdep_o_active;

    -- dupName_0_sync_out_x(GPOUT,8)@32
    out_valid_out <= SE_out_i_acl_push_i1_throttle_push_count_V0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,10)
    out_memdep_1_avm_address <= i_store_memdep_1_count_out_memdep_1_avm_address;
    out_memdep_1_avm_enable <= i_store_memdep_1_count_out_memdep_1_avm_enable;
    out_memdep_1_avm_read <= i_store_memdep_1_count_out_memdep_1_avm_read;
    out_memdep_1_avm_write <= i_store_memdep_1_count_out_memdep_1_avm_write;
    out_memdep_1_avm_writedata <= i_store_memdep_1_count_out_memdep_1_avm_writedata;
    out_memdep_1_avm_byteenable <= i_store_memdep_1_count_out_memdep_1_avm_byteenable;
    out_memdep_1_avm_burstcount <= i_store_memdep_1_count_out_memdep_1_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,14)
    out_lsu_memdep_1_o_active <= i_store_memdep_1_count_out_lsu_memdep_1_o_active;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,18)
    out_iowr_bl_return_o_fifodata <= i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifodata;
    out_iowr_bl_return_o_fifovalid <= i_iowr_bl_return_unnamed_count24_count_out_iowr_bl_return_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,33)
    out_memdep_avm_address <= i_store_memdep_count_out_memdep_avm_address;
    out_memdep_avm_enable <= i_store_memdep_count_out_memdep_avm_enable;
    out_memdep_avm_read <= i_store_memdep_count_out_memdep_avm_read;
    out_memdep_avm_write <= i_store_memdep_count_out_memdep_avm_write;
    out_memdep_avm_writedata <= i_store_memdep_count_out_memdep_avm_writedata;
    out_memdep_avm_byteenable <= i_store_memdep_count_out_memdep_avm_byteenable;
    out_memdep_avm_burstcount <= i_store_memdep_count_out_memdep_avm_burstcount;

    -- feedback_out_1_sync(GPOUT,34)
    out_feedback_out_1 <= i_acl_push_i1_throttle_push_count_out_feedback_out_1;

    -- feedback_valid_out_1_sync(GPOUT,36)
    out_feedback_valid_out_1 <= i_acl_push_i1_throttle_push_count_out_feedback_valid_out_1;

    -- sync_out(GPOUT,52)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;

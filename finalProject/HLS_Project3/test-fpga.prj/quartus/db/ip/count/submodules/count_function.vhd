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

-- VHDL created from count_function
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

entity count_function is
    port (
        in_arg_do : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_k : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_return : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_v : in std_logic_vector(63 downto 0);  -- ufix64
        in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- ufix128
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count1_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count3_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count5_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_o_active_memdep : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_memdep_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count1_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count1_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count3_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count3_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count3_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count3_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count5_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count5_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count5_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count5_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end count_function;

architecture normal of count_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_count_B1_start_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_count_B0_runOnce is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_count_B1_start is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initialized_count_4_NA_b_addr_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initialized_count_4_NA_b_addr_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(127 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_2_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count3_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count4_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count5_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_count6_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_2_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_2_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count1_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count2_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count3_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count4_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count5_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_count6_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_count_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B0_runOnce_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B0_runOnce_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_lsu_memdep_2_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_lsu_memdep_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_memdep_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_memdep_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count1_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count3_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count4_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count5_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B1_start_out_unnamed_count6_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_pipeline_keep_going_count_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_count_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_acl_pipeline_keep_going_count_sr(BLACKBOX,12)
    thei_acl_pipeline_keep_going_count_sr : i_acl_pipeline_keep_going_count_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => bb_count_B1_start_out_stall_out_0,
        in_i_valid => bb_count_B1_start_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_count_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_count_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bb_count_B0_runOnce(BLACKBOX,7)
    thebb_count_B0_runOnce : bb_count_B0_runOnce
    PORT MAP (
        in_stall_in_0 => bb_count_B1_start_sr_1_aunroll_x_out_o_stall,
        in_valid_in_0 => in_valid_in,
        out_stall_out_0 => bb_count_B0_runOnce_out_stall_out_0,
        out_valid_out_0 => bb_count_B0_runOnce_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_count_B1_start_sr_1_aunroll_x(BLACKBOX,2)
    thebb_count_B1_start_sr_1_aunroll_x : bb_count_B1_start_sr_1
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_data_1 => VCC_q,
        in_i_stall => bb_count_B1_start_out_stall_out_1,
        in_i_valid => bb_count_B0_runOnce_out_valid_out_0,
        out_o_data_0 => bb_count_B1_start_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_count_B1_start_sr_1_aunroll_x_out_o_data_1,
        out_o_stall => bb_count_B1_start_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_count_B1_start_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_count_B1_start(BLACKBOX,8)
    thebb_count_B1_start : bb_count_B1_start
    PORT MAP (
        in_flush => in_start,
        in_forked_0 => GND_q,
        in_forked_1 => bb_count_B1_start_sr_1_aunroll_x_out_o_data_1,
        in_initialized_count_4_NA_b_addr_0_0 => VCC_q,
        in_initialized_count_4_NA_b_addr_0_1 => bb_count_B1_start_sr_1_aunroll_x_out_o_data_0,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        in_memdep_2_avm_readdata => in_memdep_2_avm_readdata,
        in_memdep_2_avm_readdatavalid => in_memdep_2_avm_readdatavalid,
        in_memdep_2_avm_waitrequest => in_memdep_2_avm_waitrequest,
        in_memdep_2_avm_writeack => in_memdep_2_avm_writeack,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_count_sr_out_o_stall,
        in_stall_in_0 => GND_q,
        in_unnamed_count1_avm_readdata => in_unnamed_count1_avm_readdata,
        in_unnamed_count1_avm_readdatavalid => in_unnamed_count1_avm_readdatavalid,
        in_unnamed_count1_avm_waitrequest => in_unnamed_count1_avm_waitrequest,
        in_unnamed_count1_avm_writeack => in_unnamed_count1_avm_writeack,
        in_unnamed_count2_avm_readdata => in_unnamed_count2_avm_readdata,
        in_unnamed_count2_avm_readdatavalid => in_unnamed_count2_avm_readdatavalid,
        in_unnamed_count2_avm_waitrequest => in_unnamed_count2_avm_waitrequest,
        in_unnamed_count2_avm_writeack => in_unnamed_count2_avm_writeack,
        in_unnamed_count3_avm_readdata => in_unnamed_count3_avm_readdata,
        in_unnamed_count3_avm_readdatavalid => in_unnamed_count3_avm_readdatavalid,
        in_unnamed_count3_avm_waitrequest => in_unnamed_count3_avm_waitrequest,
        in_unnamed_count3_avm_writeack => in_unnamed_count3_avm_writeack,
        in_unnamed_count4_avm_readdata => in_unnamed_count4_avm_readdata,
        in_unnamed_count4_avm_readdatavalid => in_unnamed_count4_avm_readdatavalid,
        in_unnamed_count4_avm_waitrequest => in_unnamed_count4_avm_waitrequest,
        in_unnamed_count4_avm_writeack => in_unnamed_count4_avm_writeack,
        in_unnamed_count5_avm_readdata => in_unnamed_count5_avm_readdata,
        in_unnamed_count5_avm_readdatavalid => in_unnamed_count5_avm_readdatavalid,
        in_unnamed_count5_avm_waitrequest => in_unnamed_count5_avm_waitrequest,
        in_unnamed_count5_avm_writeack => in_unnamed_count5_avm_writeack,
        in_unnamed_count6_avm_readdata => in_unnamed_count6_avm_readdata,
        in_unnamed_count6_avm_readdatavalid => in_unnamed_count6_avm_readdatavalid,
        in_unnamed_count6_avm_waitrequest => in_unnamed_count6_avm_waitrequest,
        in_unnamed_count6_avm_writeack => in_unnamed_count6_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going_count_sr_out_o_valid,
        in_valid_in_1 => bb_count_B1_start_sr_1_aunroll_x_out_o_valid,
        out_iord_bl_do_o_fifoready => bb_count_B1_start_out_iord_bl_do_o_fifoready,
        out_iowr_bl_return_o_fifodata => bb_count_B1_start_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => bb_count_B1_start_out_iowr_bl_return_o_fifovalid,
        out_lsu_memdep_2_o_active => bb_count_B1_start_out_lsu_memdep_2_o_active,
        out_lsu_memdep_o_active => bb_count_B1_start_out_lsu_memdep_o_active,
        out_memdep_2_avm_address => bb_count_B1_start_out_memdep_2_avm_address,
        out_memdep_2_avm_burstcount => bb_count_B1_start_out_memdep_2_avm_burstcount,
        out_memdep_2_avm_byteenable => bb_count_B1_start_out_memdep_2_avm_byteenable,
        out_memdep_2_avm_enable => bb_count_B1_start_out_memdep_2_avm_enable,
        out_memdep_2_avm_read => bb_count_B1_start_out_memdep_2_avm_read,
        out_memdep_2_avm_write => bb_count_B1_start_out_memdep_2_avm_write,
        out_memdep_2_avm_writedata => bb_count_B1_start_out_memdep_2_avm_writedata,
        out_memdep_avm_address => bb_count_B1_start_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_count_B1_start_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_count_B1_start_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_count_B1_start_out_memdep_avm_enable,
        out_memdep_avm_read => bb_count_B1_start_out_memdep_avm_read,
        out_memdep_avm_write => bb_count_B1_start_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_count_B1_start_out_memdep_avm_writedata,
        out_pipeline_valid_out => bb_count_B1_start_out_pipeline_valid_out,
        out_stall_out_0 => bb_count_B1_start_out_stall_out_0,
        out_stall_out_1 => bb_count_B1_start_out_stall_out_1,
        out_unnamed_count1_avm_address => bb_count_B1_start_out_unnamed_count1_avm_address,
        out_unnamed_count1_avm_burstcount => bb_count_B1_start_out_unnamed_count1_avm_burstcount,
        out_unnamed_count1_avm_byteenable => bb_count_B1_start_out_unnamed_count1_avm_byteenable,
        out_unnamed_count1_avm_enable => bb_count_B1_start_out_unnamed_count1_avm_enable,
        out_unnamed_count1_avm_read => bb_count_B1_start_out_unnamed_count1_avm_read,
        out_unnamed_count1_avm_write => bb_count_B1_start_out_unnamed_count1_avm_write,
        out_unnamed_count1_avm_writedata => bb_count_B1_start_out_unnamed_count1_avm_writedata,
        out_unnamed_count2_avm_address => bb_count_B1_start_out_unnamed_count2_avm_address,
        out_unnamed_count2_avm_burstcount => bb_count_B1_start_out_unnamed_count2_avm_burstcount,
        out_unnamed_count2_avm_byteenable => bb_count_B1_start_out_unnamed_count2_avm_byteenable,
        out_unnamed_count2_avm_enable => bb_count_B1_start_out_unnamed_count2_avm_enable,
        out_unnamed_count2_avm_read => bb_count_B1_start_out_unnamed_count2_avm_read,
        out_unnamed_count2_avm_write => bb_count_B1_start_out_unnamed_count2_avm_write,
        out_unnamed_count2_avm_writedata => bb_count_B1_start_out_unnamed_count2_avm_writedata,
        out_unnamed_count3_avm_address => bb_count_B1_start_out_unnamed_count3_avm_address,
        out_unnamed_count3_avm_burstcount => bb_count_B1_start_out_unnamed_count3_avm_burstcount,
        out_unnamed_count3_avm_byteenable => bb_count_B1_start_out_unnamed_count3_avm_byteenable,
        out_unnamed_count3_avm_enable => bb_count_B1_start_out_unnamed_count3_avm_enable,
        out_unnamed_count3_avm_read => bb_count_B1_start_out_unnamed_count3_avm_read,
        out_unnamed_count3_avm_write => bb_count_B1_start_out_unnamed_count3_avm_write,
        out_unnamed_count3_avm_writedata => bb_count_B1_start_out_unnamed_count3_avm_writedata,
        out_unnamed_count4_avm_address => bb_count_B1_start_out_unnamed_count4_avm_address,
        out_unnamed_count4_avm_burstcount => bb_count_B1_start_out_unnamed_count4_avm_burstcount,
        out_unnamed_count4_avm_byteenable => bb_count_B1_start_out_unnamed_count4_avm_byteenable,
        out_unnamed_count4_avm_enable => bb_count_B1_start_out_unnamed_count4_avm_enable,
        out_unnamed_count4_avm_read => bb_count_B1_start_out_unnamed_count4_avm_read,
        out_unnamed_count4_avm_write => bb_count_B1_start_out_unnamed_count4_avm_write,
        out_unnamed_count4_avm_writedata => bb_count_B1_start_out_unnamed_count4_avm_writedata,
        out_unnamed_count5_avm_address => bb_count_B1_start_out_unnamed_count5_avm_address,
        out_unnamed_count5_avm_burstcount => bb_count_B1_start_out_unnamed_count5_avm_burstcount,
        out_unnamed_count5_avm_byteenable => bb_count_B1_start_out_unnamed_count5_avm_byteenable,
        out_unnamed_count5_avm_enable => bb_count_B1_start_out_unnamed_count5_avm_enable,
        out_unnamed_count5_avm_read => bb_count_B1_start_out_unnamed_count5_avm_read,
        out_unnamed_count5_avm_write => bb_count_B1_start_out_unnamed_count5_avm_write,
        out_unnamed_count5_avm_writedata => bb_count_B1_start_out_unnamed_count5_avm_writedata,
        out_unnamed_count6_avm_address => bb_count_B1_start_out_unnamed_count6_avm_address,
        out_unnamed_count6_avm_burstcount => bb_count_B1_start_out_unnamed_count6_avm_burstcount,
        out_unnamed_count6_avm_byteenable => bb_count_B1_start_out_unnamed_count6_avm_byteenable,
        out_unnamed_count6_avm_enable => bb_count_B1_start_out_unnamed_count6_avm_enable,
        out_unnamed_count6_avm_read => bb_count_B1_start_out_unnamed_count6_avm_read,
        out_unnamed_count6_avm_write => bb_count_B1_start_out_unnamed_count6_avm_write,
        out_unnamed_count6_avm_writedata => bb_count_B1_start_out_unnamed_count6_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- out_iord_bl_do_o_fifoready(GPOUT,55)
    out_iord_bl_do_o_fifoready <= bb_count_B1_start_out_iord_bl_do_o_fifoready;

    -- out_iowr_bl_return_o_fifodata(GPOUT,56)
    out_iowr_bl_return_o_fifodata <= bb_count_B1_start_out_iowr_bl_return_o_fifodata;

    -- out_iowr_bl_return_o_fifovalid(GPOUT,57)
    out_iowr_bl_return_o_fifovalid <= bb_count_B1_start_out_iowr_bl_return_o_fifovalid;

    -- out_memdep_2_avm_address(GPOUT,58)
    out_memdep_2_avm_address <= bb_count_B1_start_out_memdep_2_avm_address;

    -- out_memdep_2_avm_burstcount(GPOUT,59)
    out_memdep_2_avm_burstcount <= bb_count_B1_start_out_memdep_2_avm_burstcount;

    -- out_memdep_2_avm_byteenable(GPOUT,60)
    out_memdep_2_avm_byteenable <= bb_count_B1_start_out_memdep_2_avm_byteenable;

    -- out_memdep_2_avm_enable(GPOUT,61)
    out_memdep_2_avm_enable <= bb_count_B1_start_out_memdep_2_avm_enable;

    -- out_memdep_2_avm_read(GPOUT,62)
    out_memdep_2_avm_read <= bb_count_B1_start_out_memdep_2_avm_read;

    -- out_memdep_2_avm_write(GPOUT,63)
    out_memdep_2_avm_write <= bb_count_B1_start_out_memdep_2_avm_write;

    -- out_memdep_2_avm_writedata(GPOUT,64)
    out_memdep_2_avm_writedata <= bb_count_B1_start_out_memdep_2_avm_writedata;

    -- out_memdep_avm_address(GPOUT,65)
    out_memdep_avm_address <= bb_count_B1_start_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,66)
    out_memdep_avm_burstcount <= bb_count_B1_start_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,67)
    out_memdep_avm_byteenable <= bb_count_B1_start_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,68)
    out_memdep_avm_enable <= bb_count_B1_start_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,69)
    out_memdep_avm_read <= bb_count_B1_start_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,70)
    out_memdep_avm_write <= bb_count_B1_start_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,71)
    out_memdep_avm_writedata <= bb_count_B1_start_out_memdep_avm_writedata;

    -- out_o_active_memdep(GPOUT,72)
    out_o_active_memdep <= bb_count_B1_start_out_lsu_memdep_o_active;

    -- out_o_active_memdep_2(GPOUT,73)
    out_o_active_memdep_2 <= bb_count_B1_start_out_lsu_memdep_2_o_active;

    -- out_stall_out(GPOUT,74)
    out_stall_out <= bb_count_B0_runOnce_out_stall_out_0;

    -- out_unnamed_count1_avm_address(GPOUT,75)
    out_unnamed_count1_avm_address <= bb_count_B1_start_out_unnamed_count1_avm_address;

    -- out_unnamed_count1_avm_burstcount(GPOUT,76)
    out_unnamed_count1_avm_burstcount <= bb_count_B1_start_out_unnamed_count1_avm_burstcount;

    -- out_unnamed_count1_avm_byteenable(GPOUT,77)
    out_unnamed_count1_avm_byteenable <= bb_count_B1_start_out_unnamed_count1_avm_byteenable;

    -- out_unnamed_count1_avm_enable(GPOUT,78)
    out_unnamed_count1_avm_enable <= bb_count_B1_start_out_unnamed_count1_avm_enable;

    -- out_unnamed_count1_avm_read(GPOUT,79)
    out_unnamed_count1_avm_read <= bb_count_B1_start_out_unnamed_count1_avm_read;

    -- out_unnamed_count1_avm_write(GPOUT,80)
    out_unnamed_count1_avm_write <= bb_count_B1_start_out_unnamed_count1_avm_write;

    -- out_unnamed_count1_avm_writedata(GPOUT,81)
    out_unnamed_count1_avm_writedata <= bb_count_B1_start_out_unnamed_count1_avm_writedata;

    -- out_unnamed_count2_avm_address(GPOUT,82)
    out_unnamed_count2_avm_address <= bb_count_B1_start_out_unnamed_count2_avm_address;

    -- out_unnamed_count2_avm_burstcount(GPOUT,83)
    out_unnamed_count2_avm_burstcount <= bb_count_B1_start_out_unnamed_count2_avm_burstcount;

    -- out_unnamed_count2_avm_byteenable(GPOUT,84)
    out_unnamed_count2_avm_byteenable <= bb_count_B1_start_out_unnamed_count2_avm_byteenable;

    -- out_unnamed_count2_avm_enable(GPOUT,85)
    out_unnamed_count2_avm_enable <= bb_count_B1_start_out_unnamed_count2_avm_enable;

    -- out_unnamed_count2_avm_read(GPOUT,86)
    out_unnamed_count2_avm_read <= bb_count_B1_start_out_unnamed_count2_avm_read;

    -- out_unnamed_count2_avm_write(GPOUT,87)
    out_unnamed_count2_avm_write <= bb_count_B1_start_out_unnamed_count2_avm_write;

    -- out_unnamed_count2_avm_writedata(GPOUT,88)
    out_unnamed_count2_avm_writedata <= bb_count_B1_start_out_unnamed_count2_avm_writedata;

    -- out_unnamed_count3_avm_address(GPOUT,89)
    out_unnamed_count3_avm_address <= bb_count_B1_start_out_unnamed_count3_avm_address;

    -- out_unnamed_count3_avm_burstcount(GPOUT,90)
    out_unnamed_count3_avm_burstcount <= bb_count_B1_start_out_unnamed_count3_avm_burstcount;

    -- out_unnamed_count3_avm_byteenable(GPOUT,91)
    out_unnamed_count3_avm_byteenable <= bb_count_B1_start_out_unnamed_count3_avm_byteenable;

    -- out_unnamed_count3_avm_enable(GPOUT,92)
    out_unnamed_count3_avm_enable <= bb_count_B1_start_out_unnamed_count3_avm_enable;

    -- out_unnamed_count3_avm_read(GPOUT,93)
    out_unnamed_count3_avm_read <= bb_count_B1_start_out_unnamed_count3_avm_read;

    -- out_unnamed_count3_avm_write(GPOUT,94)
    out_unnamed_count3_avm_write <= bb_count_B1_start_out_unnamed_count3_avm_write;

    -- out_unnamed_count3_avm_writedata(GPOUT,95)
    out_unnamed_count3_avm_writedata <= bb_count_B1_start_out_unnamed_count3_avm_writedata;

    -- out_unnamed_count4_avm_address(GPOUT,96)
    out_unnamed_count4_avm_address <= bb_count_B1_start_out_unnamed_count4_avm_address;

    -- out_unnamed_count4_avm_burstcount(GPOUT,97)
    out_unnamed_count4_avm_burstcount <= bb_count_B1_start_out_unnamed_count4_avm_burstcount;

    -- out_unnamed_count4_avm_byteenable(GPOUT,98)
    out_unnamed_count4_avm_byteenable <= bb_count_B1_start_out_unnamed_count4_avm_byteenable;

    -- out_unnamed_count4_avm_enable(GPOUT,99)
    out_unnamed_count4_avm_enable <= bb_count_B1_start_out_unnamed_count4_avm_enable;

    -- out_unnamed_count4_avm_read(GPOUT,100)
    out_unnamed_count4_avm_read <= bb_count_B1_start_out_unnamed_count4_avm_read;

    -- out_unnamed_count4_avm_write(GPOUT,101)
    out_unnamed_count4_avm_write <= bb_count_B1_start_out_unnamed_count4_avm_write;

    -- out_unnamed_count4_avm_writedata(GPOUT,102)
    out_unnamed_count4_avm_writedata <= bb_count_B1_start_out_unnamed_count4_avm_writedata;

    -- out_unnamed_count5_avm_address(GPOUT,103)
    out_unnamed_count5_avm_address <= bb_count_B1_start_out_unnamed_count5_avm_address;

    -- out_unnamed_count5_avm_burstcount(GPOUT,104)
    out_unnamed_count5_avm_burstcount <= bb_count_B1_start_out_unnamed_count5_avm_burstcount;

    -- out_unnamed_count5_avm_byteenable(GPOUT,105)
    out_unnamed_count5_avm_byteenable <= bb_count_B1_start_out_unnamed_count5_avm_byteenable;

    -- out_unnamed_count5_avm_enable(GPOUT,106)
    out_unnamed_count5_avm_enable <= bb_count_B1_start_out_unnamed_count5_avm_enable;

    -- out_unnamed_count5_avm_read(GPOUT,107)
    out_unnamed_count5_avm_read <= bb_count_B1_start_out_unnamed_count5_avm_read;

    -- out_unnamed_count5_avm_write(GPOUT,108)
    out_unnamed_count5_avm_write <= bb_count_B1_start_out_unnamed_count5_avm_write;

    -- out_unnamed_count5_avm_writedata(GPOUT,109)
    out_unnamed_count5_avm_writedata <= bb_count_B1_start_out_unnamed_count5_avm_writedata;

    -- out_unnamed_count6_avm_address(GPOUT,110)
    out_unnamed_count6_avm_address <= bb_count_B1_start_out_unnamed_count6_avm_address;

    -- out_unnamed_count6_avm_burstcount(GPOUT,111)
    out_unnamed_count6_avm_burstcount <= bb_count_B1_start_out_unnamed_count6_avm_burstcount;

    -- out_unnamed_count6_avm_byteenable(GPOUT,112)
    out_unnamed_count6_avm_byteenable <= bb_count_B1_start_out_unnamed_count6_avm_byteenable;

    -- out_unnamed_count6_avm_enable(GPOUT,113)
    out_unnamed_count6_avm_enable <= bb_count_B1_start_out_unnamed_count6_avm_enable;

    -- out_unnamed_count6_avm_read(GPOUT,114)
    out_unnamed_count6_avm_read <= bb_count_B1_start_out_unnamed_count6_avm_read;

    -- out_unnamed_count6_avm_write(GPOUT,115)
    out_unnamed_count6_avm_write <= bb_count_B1_start_out_unnamed_count6_avm_write;

    -- out_unnamed_count6_avm_writedata(GPOUT,116)
    out_unnamed_count6_avm_writedata <= bb_count_B1_start_out_unnamed_count6_avm_writedata;

    -- out_valid_out(GPOUT,117)
    out_valid_out <= GND_q;

END normal;

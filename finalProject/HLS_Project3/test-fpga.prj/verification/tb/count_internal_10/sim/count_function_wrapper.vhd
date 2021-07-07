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

-- VHDL created from count_function_wrapper
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

entity count_function_wrapper is
    port (
        avm_memdep_2_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_memdep_2_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_memdep_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count1_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count2_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count3_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count4_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count5_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count6_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_do_data : in std_logic_vector(127 downto 0);  -- ufix128
        avst_iord_bl_do_valid : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_ready : in std_logic_vector(0 downto 0);  -- ufix1
        k : in std_logic_vector(63 downto 0);  -- ufix64
        stall : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        v : in std_logic_vector(63 downto 0);  -- ufix64
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_memdep_2_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_memdep_2_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_2_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_memdep_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_memdep_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_memdep_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_memdep_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count1_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count1_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count1_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count1_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count2_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count2_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count2_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count2_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count3_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count3_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count3_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count3_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count4_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count4_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count4_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count4_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count5_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count5_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count5_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count5_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count6_address : out std_logic_vector(63 downto 0);  -- ufix64
        avm_unnamed_count6_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_count6_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_count6_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        avst_iord_bl_do_ready : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_data : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_return_valid : out std_logic_vector(0 downto 0);  -- ufix1
        busy : out std_logic_vector(0 downto 0);  -- ufix1
        done : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end count_function_wrapper;

architecture normal of count_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component count_function is
        port (
            in_arg_do : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_k : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_return : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_v : in std_logic_vector(63 downto 0);  -- Fixed Point
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
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_o_active_memdep : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_memdep_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_reset_wire is
        port (
            o_resetn : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busy_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busy_or_q : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_memdep_2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_memdep_2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_memdep_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_memdep_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count1_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count1_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count1_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count2_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count2_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count2_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count3_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count3_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count3_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count3_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count3_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count3_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count3_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count4_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count4_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count4_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count4_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count4_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count4_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count4_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count5_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count5_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count5_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count5_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count5_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count5_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count5_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count6_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal count_function_out_unnamed_count6_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count6_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal count_function_out_unnamed_count6_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count6_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count6_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal count_function_out_unnamed_count6_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal do_const_q : STD_LOGIC_VECTOR (63 downto 0);
    signal implicit_input_q : STD_LOGIC_VECTOR (127 downto 0);
    signal not_ready_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_q : STD_LOGIC_VECTOR (0 downto 0);
    signal pos_reset_q : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn : STD_LOGIC_VECTOR (0 downto 0);
    signal reset_wire_inst_o_resetn_bitsignaltemp : std_logic;

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- not_stall(LOGICAL,53)
    not_stall_q <= not (stall);

    -- implicit_input(BITJOIN,8)
    implicit_input_q <= k & v;

    -- do_const(CONSTANT,7)
    do_const_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- count_function(BLACKBOX,6)
    thecount_function : count_function
    PORT MAP (
        in_arg_do => do_const_q,
        in_arg_k => do_const_q,
        in_arg_return => do_const_q,
        in_arg_v => do_const_q,
        in_iord_bl_do_i_fifodata => implicit_input_q,
        in_iord_bl_do_i_fifovalid => start,
        in_iowr_bl_return_i_fifoready => not_stall_q,
        in_memdep_2_avm_readdata => avm_memdep_2_readdata,
        in_memdep_2_avm_readdatavalid => avm_memdep_2_readdatavalid,
        in_memdep_2_avm_waitrequest => avm_memdep_2_waitrequest,
        in_memdep_2_avm_writeack => avm_memdep_2_writeack,
        in_memdep_avm_readdata => avm_memdep_readdata,
        in_memdep_avm_readdatavalid => avm_memdep_readdatavalid,
        in_memdep_avm_waitrequest => avm_memdep_waitrequest,
        in_memdep_avm_writeack => avm_memdep_writeack,
        in_stall_in => GND_q,
        in_start => GND_q,
        in_unnamed_count1_avm_readdata => avm_unnamed_count1_readdata,
        in_unnamed_count1_avm_readdatavalid => avm_unnamed_count1_readdatavalid,
        in_unnamed_count1_avm_waitrequest => avm_unnamed_count1_waitrequest,
        in_unnamed_count1_avm_writeack => avm_unnamed_count1_writeack,
        in_unnamed_count2_avm_readdata => avm_unnamed_count2_readdata,
        in_unnamed_count2_avm_readdatavalid => avm_unnamed_count2_readdatavalid,
        in_unnamed_count2_avm_waitrequest => avm_unnamed_count2_waitrequest,
        in_unnamed_count2_avm_writeack => avm_unnamed_count2_writeack,
        in_unnamed_count3_avm_readdata => avm_unnamed_count3_readdata,
        in_unnamed_count3_avm_readdatavalid => avm_unnamed_count3_readdatavalid,
        in_unnamed_count3_avm_waitrequest => avm_unnamed_count3_waitrequest,
        in_unnamed_count3_avm_writeack => avm_unnamed_count3_writeack,
        in_unnamed_count4_avm_readdata => avm_unnamed_count4_readdata,
        in_unnamed_count4_avm_readdatavalid => avm_unnamed_count4_readdatavalid,
        in_unnamed_count4_avm_waitrequest => avm_unnamed_count4_waitrequest,
        in_unnamed_count4_avm_writeack => avm_unnamed_count4_writeack,
        in_unnamed_count5_avm_readdata => avm_unnamed_count5_readdata,
        in_unnamed_count5_avm_readdatavalid => avm_unnamed_count5_readdatavalid,
        in_unnamed_count5_avm_waitrequest => avm_unnamed_count5_waitrequest,
        in_unnamed_count5_avm_writeack => avm_unnamed_count5_writeack,
        in_unnamed_count6_avm_readdata => avm_unnamed_count6_readdata,
        in_unnamed_count6_avm_readdatavalid => avm_unnamed_count6_readdatavalid,
        in_unnamed_count6_avm_waitrequest => avm_unnamed_count6_waitrequest,
        in_unnamed_count6_avm_writeack => avm_unnamed_count6_writeack,
        in_valid_in => VCC_q,
        out_iord_bl_do_o_fifoready => count_function_out_iord_bl_do_o_fifoready,
        out_iowr_bl_return_o_fifodata => count_function_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => count_function_out_iowr_bl_return_o_fifovalid,
        out_memdep_2_avm_address => count_function_out_memdep_2_avm_address,
        out_memdep_2_avm_burstcount => count_function_out_memdep_2_avm_burstcount,
        out_memdep_2_avm_byteenable => count_function_out_memdep_2_avm_byteenable,
        out_memdep_2_avm_enable => count_function_out_memdep_2_avm_enable,
        out_memdep_2_avm_read => count_function_out_memdep_2_avm_read,
        out_memdep_2_avm_write => count_function_out_memdep_2_avm_write,
        out_memdep_2_avm_writedata => count_function_out_memdep_2_avm_writedata,
        out_memdep_avm_address => count_function_out_memdep_avm_address,
        out_memdep_avm_burstcount => count_function_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => count_function_out_memdep_avm_byteenable,
        out_memdep_avm_enable => count_function_out_memdep_avm_enable,
        out_memdep_avm_read => count_function_out_memdep_avm_read,
        out_memdep_avm_write => count_function_out_memdep_avm_write,
        out_memdep_avm_writedata => count_function_out_memdep_avm_writedata,
        out_unnamed_count1_avm_address => count_function_out_unnamed_count1_avm_address,
        out_unnamed_count1_avm_burstcount => count_function_out_unnamed_count1_avm_burstcount,
        out_unnamed_count1_avm_byteenable => count_function_out_unnamed_count1_avm_byteenable,
        out_unnamed_count1_avm_enable => count_function_out_unnamed_count1_avm_enable,
        out_unnamed_count1_avm_read => count_function_out_unnamed_count1_avm_read,
        out_unnamed_count1_avm_write => count_function_out_unnamed_count1_avm_write,
        out_unnamed_count1_avm_writedata => count_function_out_unnamed_count1_avm_writedata,
        out_unnamed_count2_avm_address => count_function_out_unnamed_count2_avm_address,
        out_unnamed_count2_avm_burstcount => count_function_out_unnamed_count2_avm_burstcount,
        out_unnamed_count2_avm_byteenable => count_function_out_unnamed_count2_avm_byteenable,
        out_unnamed_count2_avm_enable => count_function_out_unnamed_count2_avm_enable,
        out_unnamed_count2_avm_read => count_function_out_unnamed_count2_avm_read,
        out_unnamed_count2_avm_write => count_function_out_unnamed_count2_avm_write,
        out_unnamed_count2_avm_writedata => count_function_out_unnamed_count2_avm_writedata,
        out_unnamed_count3_avm_address => count_function_out_unnamed_count3_avm_address,
        out_unnamed_count3_avm_burstcount => count_function_out_unnamed_count3_avm_burstcount,
        out_unnamed_count3_avm_byteenable => count_function_out_unnamed_count3_avm_byteenable,
        out_unnamed_count3_avm_enable => count_function_out_unnamed_count3_avm_enable,
        out_unnamed_count3_avm_read => count_function_out_unnamed_count3_avm_read,
        out_unnamed_count3_avm_write => count_function_out_unnamed_count3_avm_write,
        out_unnamed_count3_avm_writedata => count_function_out_unnamed_count3_avm_writedata,
        out_unnamed_count4_avm_address => count_function_out_unnamed_count4_avm_address,
        out_unnamed_count4_avm_burstcount => count_function_out_unnamed_count4_avm_burstcount,
        out_unnamed_count4_avm_byteenable => count_function_out_unnamed_count4_avm_byteenable,
        out_unnamed_count4_avm_enable => count_function_out_unnamed_count4_avm_enable,
        out_unnamed_count4_avm_read => count_function_out_unnamed_count4_avm_read,
        out_unnamed_count4_avm_write => count_function_out_unnamed_count4_avm_write,
        out_unnamed_count4_avm_writedata => count_function_out_unnamed_count4_avm_writedata,
        out_unnamed_count5_avm_address => count_function_out_unnamed_count5_avm_address,
        out_unnamed_count5_avm_burstcount => count_function_out_unnamed_count5_avm_burstcount,
        out_unnamed_count5_avm_byteenable => count_function_out_unnamed_count5_avm_byteenable,
        out_unnamed_count5_avm_enable => count_function_out_unnamed_count5_avm_enable,
        out_unnamed_count5_avm_read => count_function_out_unnamed_count5_avm_read,
        out_unnamed_count5_avm_write => count_function_out_unnamed_count5_avm_write,
        out_unnamed_count5_avm_writedata => count_function_out_unnamed_count5_avm_writedata,
        out_unnamed_count6_avm_address => count_function_out_unnamed_count6_avm_address,
        out_unnamed_count6_avm_burstcount => count_function_out_unnamed_count6_avm_burstcount,
        out_unnamed_count6_avm_byteenable => count_function_out_unnamed_count6_avm_byteenable,
        out_unnamed_count6_avm_enable => count_function_out_unnamed_count6_avm_enable,
        out_unnamed_count6_avm_read => count_function_out_unnamed_count6_avm_read,
        out_unnamed_count6_avm_write => count_function_out_unnamed_count6_avm_write,
        out_unnamed_count6_avm_writedata => count_function_out_unnamed_count6_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- avm_memdep_2_address(GPOUT,54)
    avm_memdep_2_address <= count_function_out_memdep_2_avm_address;

    -- avm_memdep_2_burstcount(GPOUT,55)
    avm_memdep_2_burstcount <= count_function_out_memdep_2_avm_burstcount;

    -- avm_memdep_2_byteenable(GPOUT,56)
    avm_memdep_2_byteenable <= count_function_out_memdep_2_avm_byteenable;

    -- avm_memdep_2_enable(GPOUT,57)
    avm_memdep_2_enable <= count_function_out_memdep_2_avm_enable;

    -- avm_memdep_2_read(GPOUT,58)
    avm_memdep_2_read <= count_function_out_memdep_2_avm_read;

    -- avm_memdep_2_write(GPOUT,59)
    avm_memdep_2_write <= count_function_out_memdep_2_avm_write;

    -- avm_memdep_2_writedata(GPOUT,60)
    avm_memdep_2_writedata <= count_function_out_memdep_2_avm_writedata;

    -- avm_memdep_address(GPOUT,61)
    avm_memdep_address <= count_function_out_memdep_avm_address;

    -- avm_memdep_burstcount(GPOUT,62)
    avm_memdep_burstcount <= count_function_out_memdep_avm_burstcount;

    -- avm_memdep_byteenable(GPOUT,63)
    avm_memdep_byteenable <= count_function_out_memdep_avm_byteenable;

    -- avm_memdep_enable(GPOUT,64)
    avm_memdep_enable <= count_function_out_memdep_avm_enable;

    -- avm_memdep_read(GPOUT,65)
    avm_memdep_read <= count_function_out_memdep_avm_read;

    -- avm_memdep_write(GPOUT,66)
    avm_memdep_write <= count_function_out_memdep_avm_write;

    -- avm_memdep_writedata(GPOUT,67)
    avm_memdep_writedata <= count_function_out_memdep_avm_writedata;

    -- avm_unnamed_count1_address(GPOUT,68)
    avm_unnamed_count1_address <= count_function_out_unnamed_count1_avm_address;

    -- avm_unnamed_count1_burstcount(GPOUT,69)
    avm_unnamed_count1_burstcount <= count_function_out_unnamed_count1_avm_burstcount;

    -- avm_unnamed_count1_byteenable(GPOUT,70)
    avm_unnamed_count1_byteenable <= count_function_out_unnamed_count1_avm_byteenable;

    -- avm_unnamed_count1_enable(GPOUT,71)
    avm_unnamed_count1_enable <= count_function_out_unnamed_count1_avm_enable;

    -- avm_unnamed_count1_read(GPOUT,72)
    avm_unnamed_count1_read <= count_function_out_unnamed_count1_avm_read;

    -- avm_unnamed_count1_write(GPOUT,73)
    avm_unnamed_count1_write <= count_function_out_unnamed_count1_avm_write;

    -- avm_unnamed_count1_writedata(GPOUT,74)
    avm_unnamed_count1_writedata <= count_function_out_unnamed_count1_avm_writedata;

    -- avm_unnamed_count2_address(GPOUT,75)
    avm_unnamed_count2_address <= count_function_out_unnamed_count2_avm_address;

    -- avm_unnamed_count2_burstcount(GPOUT,76)
    avm_unnamed_count2_burstcount <= count_function_out_unnamed_count2_avm_burstcount;

    -- avm_unnamed_count2_byteenable(GPOUT,77)
    avm_unnamed_count2_byteenable <= count_function_out_unnamed_count2_avm_byteenable;

    -- avm_unnamed_count2_enable(GPOUT,78)
    avm_unnamed_count2_enable <= count_function_out_unnamed_count2_avm_enable;

    -- avm_unnamed_count2_read(GPOUT,79)
    avm_unnamed_count2_read <= count_function_out_unnamed_count2_avm_read;

    -- avm_unnamed_count2_write(GPOUT,80)
    avm_unnamed_count2_write <= count_function_out_unnamed_count2_avm_write;

    -- avm_unnamed_count2_writedata(GPOUT,81)
    avm_unnamed_count2_writedata <= count_function_out_unnamed_count2_avm_writedata;

    -- avm_unnamed_count3_address(GPOUT,82)
    avm_unnamed_count3_address <= count_function_out_unnamed_count3_avm_address;

    -- avm_unnamed_count3_burstcount(GPOUT,83)
    avm_unnamed_count3_burstcount <= count_function_out_unnamed_count3_avm_burstcount;

    -- avm_unnamed_count3_byteenable(GPOUT,84)
    avm_unnamed_count3_byteenable <= count_function_out_unnamed_count3_avm_byteenable;

    -- avm_unnamed_count3_enable(GPOUT,85)
    avm_unnamed_count3_enable <= count_function_out_unnamed_count3_avm_enable;

    -- avm_unnamed_count3_read(GPOUT,86)
    avm_unnamed_count3_read <= count_function_out_unnamed_count3_avm_read;

    -- avm_unnamed_count3_write(GPOUT,87)
    avm_unnamed_count3_write <= count_function_out_unnamed_count3_avm_write;

    -- avm_unnamed_count3_writedata(GPOUT,88)
    avm_unnamed_count3_writedata <= count_function_out_unnamed_count3_avm_writedata;

    -- avm_unnamed_count4_address(GPOUT,89)
    avm_unnamed_count4_address <= count_function_out_unnamed_count4_avm_address;

    -- avm_unnamed_count4_burstcount(GPOUT,90)
    avm_unnamed_count4_burstcount <= count_function_out_unnamed_count4_avm_burstcount;

    -- avm_unnamed_count4_byteenable(GPOUT,91)
    avm_unnamed_count4_byteenable <= count_function_out_unnamed_count4_avm_byteenable;

    -- avm_unnamed_count4_enable(GPOUT,92)
    avm_unnamed_count4_enable <= count_function_out_unnamed_count4_avm_enable;

    -- avm_unnamed_count4_read(GPOUT,93)
    avm_unnamed_count4_read <= count_function_out_unnamed_count4_avm_read;

    -- avm_unnamed_count4_write(GPOUT,94)
    avm_unnamed_count4_write <= count_function_out_unnamed_count4_avm_write;

    -- avm_unnamed_count4_writedata(GPOUT,95)
    avm_unnamed_count4_writedata <= count_function_out_unnamed_count4_avm_writedata;

    -- avm_unnamed_count5_address(GPOUT,96)
    avm_unnamed_count5_address <= count_function_out_unnamed_count5_avm_address;

    -- avm_unnamed_count5_burstcount(GPOUT,97)
    avm_unnamed_count5_burstcount <= count_function_out_unnamed_count5_avm_burstcount;

    -- avm_unnamed_count5_byteenable(GPOUT,98)
    avm_unnamed_count5_byteenable <= count_function_out_unnamed_count5_avm_byteenable;

    -- avm_unnamed_count5_enable(GPOUT,99)
    avm_unnamed_count5_enable <= count_function_out_unnamed_count5_avm_enable;

    -- avm_unnamed_count5_read(GPOUT,100)
    avm_unnamed_count5_read <= count_function_out_unnamed_count5_avm_read;

    -- avm_unnamed_count5_write(GPOUT,101)
    avm_unnamed_count5_write <= count_function_out_unnamed_count5_avm_write;

    -- avm_unnamed_count5_writedata(GPOUT,102)
    avm_unnamed_count5_writedata <= count_function_out_unnamed_count5_avm_writedata;

    -- avm_unnamed_count6_address(GPOUT,103)
    avm_unnamed_count6_address <= count_function_out_unnamed_count6_avm_address;

    -- avm_unnamed_count6_burstcount(GPOUT,104)
    avm_unnamed_count6_burstcount <= count_function_out_unnamed_count6_avm_burstcount;

    -- avm_unnamed_count6_byteenable(GPOUT,105)
    avm_unnamed_count6_byteenable <= count_function_out_unnamed_count6_avm_byteenable;

    -- avm_unnamed_count6_enable(GPOUT,106)
    avm_unnamed_count6_enable <= count_function_out_unnamed_count6_avm_enable;

    -- avm_unnamed_count6_read(GPOUT,107)
    avm_unnamed_count6_read <= count_function_out_unnamed_count6_avm_read;

    -- avm_unnamed_count6_write(GPOUT,108)
    avm_unnamed_count6_write <= count_function_out_unnamed_count6_avm_write;

    -- avm_unnamed_count6_writedata(GPOUT,109)
    avm_unnamed_count6_writedata <= count_function_out_unnamed_count6_avm_writedata;

    -- avst_iord_bl_do_ready(GPOUT,110)
    avst_iord_bl_do_ready <= count_function_out_iord_bl_do_o_fifoready;

    -- avst_iowr_bl_return_data(GPOUT,111)
    avst_iowr_bl_return_data <= count_function_out_iowr_bl_return_o_fifodata;

    -- avst_iowr_bl_return_valid(GPOUT,112)
    avst_iowr_bl_return_valid <= count_function_out_iowr_bl_return_o_fifovalid;

    -- not_ready(LOGICAL,52)
    not_ready_q <= not (count_function_out_iord_bl_do_o_fifoready);

    -- busy_and(LOGICAL,2)
    busy_and_q <= not_ready_q and start;

    -- reset_wire_inst(EXTIFACE,116)
    reset_wire_inst_o_resetn(0) <= reset_wire_inst_o_resetn_bitsignaltemp;
    thereset_wire_inst : acl_reset_wire
    PORT MAP (
        o_resetn => reset_wire_inst_o_resetn_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- pos_reset(LOGICAL,115)
    pos_reset_q <= not (reset_wire_inst_o_resetn);

    -- busy_or(LOGICAL,3)
    busy_or_q <= pos_reset_q or busy_and_q;

    -- busy(GPOUT,113)
    busy <= busy_or_q;

    -- done(GPOUT,114)
    done <= count_function_out_iowr_bl_return_o_fifovalid;

END normal;

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

-- VHDL created from bb_count_B3
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

entity bb_count_B3 is
    port (
        out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- ufix8
        in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_1_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_memdep_1_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_1_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_1_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B3;

architecture normal of bb_count_B3 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_count_B3_stall_region is
        port (
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iowr_bl_return_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_1_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifodata : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_1_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_memdep_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_1_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_1_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B3_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B3_merge is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_count_B3_stall_region_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B3_stall_region_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_iowr_bl_return_o_fifodata : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_iowr_bl_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_lsu_memdep_1_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_lsu_memdep_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_1_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_address : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_memdep_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_count_B3_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B3_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B3_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B3_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B3_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B3_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- count_B3_merge(BLACKBOX,4)
    thecount_B3_merge : count_B3_merge
    PORT MAP (
        in_stall_in => bb_count_B3_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_stall_out_0 => count_B3_merge_out_stall_out_0,
        out_valid_out => count_B3_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- count_B3_branch(BLACKBOX,3)
    thecount_B3_branch : count_B3_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_count_B3_stall_region_out_valid_out,
        out_stall_out => count_B3_branch_out_stall_out,
        out_valid_out_0 => count_B3_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_count_B3_stall_region(BLACKBOX,2)
    thebb_count_B3_stall_region : bb_count_B3_stall_region
    PORT MAP (
        in_feedback_stall_in_1 => in_feedback_stall_in_1,
        in_flush => in_flush,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_8_0 => in_intel_reserved_ffwd_8_0,
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_iowr_bl_return_i_fifoready => in_iowr_bl_return_i_fifoready,
        in_memdep_1_avm_readdata => in_memdep_1_avm_readdata,
        in_memdep_1_avm_readdatavalid => in_memdep_1_avm_readdatavalid,
        in_memdep_1_avm_waitrequest => in_memdep_1_avm_waitrequest,
        in_memdep_1_avm_writeack => in_memdep_1_avm_writeack,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_stall_in => count_B3_branch_out_stall_out,
        in_valid_in => count_B3_merge_out_valid_out,
        out_feedback_out_1 => bb_count_B3_stall_region_out_feedback_out_1,
        out_feedback_valid_out_1 => bb_count_B3_stall_region_out_feedback_valid_out_1,
        out_iowr_bl_return_o_fifodata => bb_count_B3_stall_region_out_iowr_bl_return_o_fifodata,
        out_iowr_bl_return_o_fifovalid => bb_count_B3_stall_region_out_iowr_bl_return_o_fifovalid,
        out_lsu_memdep_1_o_active => bb_count_B3_stall_region_out_lsu_memdep_1_o_active,
        out_lsu_memdep_o_active => bb_count_B3_stall_region_out_lsu_memdep_o_active,
        out_memdep_1_avm_address => bb_count_B3_stall_region_out_memdep_1_avm_address,
        out_memdep_1_avm_burstcount => bb_count_B3_stall_region_out_memdep_1_avm_burstcount,
        out_memdep_1_avm_byteenable => bb_count_B3_stall_region_out_memdep_1_avm_byteenable,
        out_memdep_1_avm_enable => bb_count_B3_stall_region_out_memdep_1_avm_enable,
        out_memdep_1_avm_read => bb_count_B3_stall_region_out_memdep_1_avm_read,
        out_memdep_1_avm_write => bb_count_B3_stall_region_out_memdep_1_avm_write,
        out_memdep_1_avm_writedata => bb_count_B3_stall_region_out_memdep_1_avm_writedata,
        out_memdep_avm_address => bb_count_B3_stall_region_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_count_B3_stall_region_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_count_B3_stall_region_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_count_B3_stall_region_out_memdep_avm_enable,
        out_memdep_avm_read => bb_count_B3_stall_region_out_memdep_avm_read,
        out_memdep_avm_write => bb_count_B3_stall_region_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_count_B3_stall_region_out_memdep_avm_writedata,
        out_stall_out => bb_count_B3_stall_region_out_stall_out,
        out_valid_out => bb_count_B3_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- feedback_out_1_sync(GPOUT,5)
    out_feedback_out_1 <= bb_count_B3_stall_region_out_feedback_out_1;

    -- feedback_valid_out_1_sync(GPOUT,7)
    out_feedback_valid_out_1 <= bb_count_B3_stall_region_out_feedback_valid_out_1;

    -- out_iowr_bl_return_o_fifodata(GPOUT,24)
    out_iowr_bl_return_o_fifodata <= bb_count_B3_stall_region_out_iowr_bl_return_o_fifodata;

    -- out_iowr_bl_return_o_fifovalid(GPOUT,25)
    out_iowr_bl_return_o_fifovalid <= bb_count_B3_stall_region_out_iowr_bl_return_o_fifovalid;

    -- out_lsu_memdep_1_o_active(GPOUT,26)
    out_lsu_memdep_1_o_active <= bb_count_B3_stall_region_out_lsu_memdep_1_o_active;

    -- out_lsu_memdep_o_active(GPOUT,27)
    out_lsu_memdep_o_active <= bb_count_B3_stall_region_out_lsu_memdep_o_active;

    -- out_memdep_1_avm_address(GPOUT,28)
    out_memdep_1_avm_address <= bb_count_B3_stall_region_out_memdep_1_avm_address;

    -- out_memdep_1_avm_burstcount(GPOUT,29)
    out_memdep_1_avm_burstcount <= bb_count_B3_stall_region_out_memdep_1_avm_burstcount;

    -- out_memdep_1_avm_byteenable(GPOUT,30)
    out_memdep_1_avm_byteenable <= bb_count_B3_stall_region_out_memdep_1_avm_byteenable;

    -- out_memdep_1_avm_enable(GPOUT,31)
    out_memdep_1_avm_enable <= bb_count_B3_stall_region_out_memdep_1_avm_enable;

    -- out_memdep_1_avm_read(GPOUT,32)
    out_memdep_1_avm_read <= bb_count_B3_stall_region_out_memdep_1_avm_read;

    -- out_memdep_1_avm_write(GPOUT,33)
    out_memdep_1_avm_write <= bb_count_B3_stall_region_out_memdep_1_avm_write;

    -- out_memdep_1_avm_writedata(GPOUT,34)
    out_memdep_1_avm_writedata <= bb_count_B3_stall_region_out_memdep_1_avm_writedata;

    -- out_memdep_avm_address(GPOUT,35)
    out_memdep_avm_address <= bb_count_B3_stall_region_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,36)
    out_memdep_avm_burstcount <= bb_count_B3_stall_region_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,37)
    out_memdep_avm_byteenable <= bb_count_B3_stall_region_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,38)
    out_memdep_avm_enable <= bb_count_B3_stall_region_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,39)
    out_memdep_avm_read <= bb_count_B3_stall_region_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,40)
    out_memdep_avm_write <= bb_count_B3_stall_region_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,41)
    out_memdep_avm_writedata <= bb_count_B3_stall_region_out_memdep_avm_writedata;

    -- out_stall_out_0(GPOUT,42)
    out_stall_out_0 <= count_B3_merge_out_stall_out_0;

    -- out_valid_out_0(GPOUT,43)
    out_valid_out_0 <= count_B3_branch_out_valid_out_0;

END normal;

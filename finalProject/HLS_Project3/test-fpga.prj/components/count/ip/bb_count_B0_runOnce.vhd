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

-- VHDL created from bb_count_B0_runOnce
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

entity bb_count_B0_runOnce is
    port (
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_count_B0_runOnce;

architecture normal of bb_count_B0_runOnce is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_count_B0_runOnce_stall_region is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B0_runOnce_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component count_B0_runOnce_merge is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_count_B0_runOnce_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_count_B0_runOnce_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B0_runOnce_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B0_runOnce_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B0_runOnce_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal count_B0_runOnce_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- count_B0_runOnce_branch(BLACKBOX,3)
    thecount_B0_runOnce_branch : count_B0_runOnce_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_count_B0_runOnce_stall_region_out_valid_out,
        out_stall_out => count_B0_runOnce_branch_out_stall_out,
        out_valid_out_0 => count_B0_runOnce_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_count_B0_runOnce_stall_region(BLACKBOX,2)
    thebb_count_B0_runOnce_stall_region : bb_count_B0_runOnce_stall_region
    PORT MAP (
        in_stall_in => count_B0_runOnce_branch_out_stall_out,
        in_valid_in => count_B0_runOnce_merge_out_valid_out,
        out_stall_out => bb_count_B0_runOnce_stall_region_out_stall_out,
        out_valid_out => bb_count_B0_runOnce_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- count_B0_runOnce_merge(BLACKBOX,4)
    thecount_B0_runOnce_merge : count_B0_runOnce_merge
    PORT MAP (
        in_stall_in => bb_count_B0_runOnce_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_stall_out_0 => count_B0_runOnce_merge_out_stall_out_0,
        out_valid_out => count_B0_runOnce_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- out_stall_out_0(GPOUT,7)
    out_stall_out_0 <= count_B0_runOnce_merge_out_stall_out_0;

    -- out_valid_out_0(GPOUT,8)
    out_valid_out_0 <= count_B0_runOnce_branch_out_valid_out_0;

END normal;

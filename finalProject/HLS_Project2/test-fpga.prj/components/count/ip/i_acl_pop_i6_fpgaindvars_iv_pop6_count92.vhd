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

-- VHDL created from i_acl_pop_i6_fpgaindvars_iv_pop6_count92
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

entity i_acl_pop_i6_fpgaindvars_iv_pop6_count92 is
    port (
        in_data_in : in std_logic_vector(5 downto 0);  -- ufix6
        in_dir : in std_logic_vector(0 downto 0);  -- ufix1
        in_predicate : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_data_out : out std_logic_vector(5 downto 0);  -- ufix6
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_in_6 : in std_logic_vector(7 downto 0);  -- ufix8
        in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_acl_pop_i6_fpgaindvars_iv_pop6_count92;

architecture normal of i_acl_pop_i6_fpgaindvars_iv_pop6_count92 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_pop is
        generic (
            INF_LOOP : INTEGER;
            STYLE : STRING;
            COALESCE_DISTANCE : INTEGER := 1;
            DATA_WIDTH : INTEGER := 8
        );
        port (
            data_in : in std_logic_vector(7 downto 0);
            dir : in std_logic;
            feedback_in : in std_logic_vector(7 downto 0);
            feedback_valid_in : in std_logic;
            predicate : in std_logic;
            stall_in : in std_logic;
            valid_in : in std_logic;
            data_out : out std_logic_vector(7 downto 0);
            feedback_stall_out : out std_logic;
            stall_out : out std_logic;
            valid_out : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal adapt_scalar_trunc_sel_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal c_i2_0gr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal element_extension_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_data_in : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_in : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out_bitsignaltemp : std_logic;
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out_bitsignaltemp : std_logic;

begin


    -- c_i2_0gr(CONSTANT,6)
    c_i2_0gr_q <= "00";

    -- element_extension(BITJOIN,7)@2
    element_extension_q <= c_i2_0gr_q & in_data_in;

    -- i_acl_pop_i6_fpgaindvars_iv_pop6_count93(EXTIFACE,10)@2
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_data_in <= element_extension_q;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir <= in_dir;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_in <= in_feedback_in_6;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in <= in_feedback_valid_in_6;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate <= in_predicate;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in <= in_stall_in;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in <= in_valid_in;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir_bitsignaltemp <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir(0);
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in_bitsignaltemp <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in(0);
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate_bitsignaltemp <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate(0);
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in_bitsignaltemp <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in(0);
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in_bitsignaltemp <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in(0);
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out(0) <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out_bitsignaltemp;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out(0) <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out_bitsignaltemp;
    i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out(0) <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out_bitsignaltemp;
    thei_acl_pop_i6_fpgaindvars_iv_pop6_count93 : acl_pop
    GENERIC MAP (
        INF_LOOP => 0,
        STYLE => "REGULAR",
        COALESCE_DISTANCE => 1,
        DATA_WIDTH => 8
    )
    PORT MAP (
        data_in => element_extension_q,
        dir => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_dir_bitsignaltemp,
        feedback_in => in_feedback_in_6,
        feedback_valid_in => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_valid_in_bitsignaltemp,
        predicate => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_predicate_bitsignaltemp,
        stall_in => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_in_bitsignaltemp,
        valid_in => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_in_bitsignaltemp,
        data_out => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_data_out,
        feedback_stall_out => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out_bitsignaltemp,
        stall_out => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out_bitsignaltemp,
        valid_out => i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- adapt_scalar_trunc_sel_x(BITSELECT,2)@2
    adapt_scalar_trunc_sel_x_b <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_data_out(5 downto 0);

    -- dupName_0_sync_out_x(GPOUT,4)@2
    out_data_out <= adapt_scalar_trunc_sel_x_b;
    out_valid_out <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_valid_out;

    -- feedback_sync_out(GPOUT,9)
    out_feedback_stall_out_6 <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_feedback_stall_out;

    -- sync_out(GPOUT,12)@2
    out_stall_out <= i_acl_pop_i6_fpgaindvars_iv_pop6_count93_stall_out;

END normal;
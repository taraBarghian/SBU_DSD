-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/28/2021 22:04:13"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Project IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	ready : BUFFER std_logic;
	key : IN std_logic_vector(127 DOWNTO 0);
	value : IN std_logic_vector(63 DOWNTO 0);
	out_ans : BUFFER std_logic_vector(63 DOWNTO 0)
	);
END Project;

-- Design Ports Information
-- ready	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[5]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[10]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[12]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[14]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[16]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[17]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[18]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[19]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[20]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[22]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[24]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[25]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[26]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[27]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[28]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[29]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[30]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[31]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[32]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[33]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[34]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[35]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[36]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[37]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[38]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[39]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[40]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[41]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[42]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[43]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[44]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[45]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[46]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[47]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[48]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[49]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[50]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[51]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[52]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[53]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[54]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[55]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[56]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[57]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[58]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[59]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[60]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[61]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[62]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ans[63]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[1]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[4]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[5]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[11]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[14]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[16]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[17]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[18]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[19]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[20]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[21]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[22]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[23]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[24]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[25]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[26]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[27]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[28]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[29]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[31]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[32]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[33]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[34]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[35]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[36]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[37]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[38]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[39]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[40]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[41]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[42]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[43]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[44]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[45]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[46]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[47]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[48]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[49]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[50]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[51]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[52]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[53]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[54]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[55]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[56]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[57]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[58]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[59]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[60]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[61]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[62]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value[63]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[64]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[65]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[66]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[67]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[33]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[34]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[35]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[36]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[37]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[38]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[39]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[40]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[41]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[9]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[43]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[11]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[44]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[45]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[13]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[46]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[14]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[47]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[15]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[48]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[16]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[49]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[17]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[50]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[18]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[51]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[19]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[53]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[21]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[54]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[22]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[55]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[23]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[56]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[24]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[57]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[25]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[60]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[28]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[61]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[29]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[63]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[31]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[96]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[97]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[98]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[99]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[100]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[68]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[102]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[70]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[103]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[71]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[104]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[72]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[105]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[73]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[106]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[74]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[107]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[75]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[108]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[76]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[109]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[77]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[110]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[78]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[112]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[80]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[113]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[81]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[114]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[82]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[115]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[83]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[116]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[84]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[117]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[85]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[118]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[86]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[119]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[87]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[120]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[88]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[122]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[90]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[124]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[92]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[125]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[93]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[94]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[126]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[32]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[42]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[10]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[52]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[20]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[58]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[26]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[59]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[27]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[62]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[30]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[101]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[69]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[111]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[79]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[121]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[89]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[123]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[91]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[95]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[127]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_key : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_value : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_out_ans : std_logic_vector(63 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count_reg~0_combout\ : std_logic;
SIGNAL \count_reg~1_combout\ : std_logic;
SIGNAL \count_reg~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \count_reg~3_combout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \count_reg~4_combout\ : std_logic;
SIGNAL \count_reg~5_combout\ : std_logic;
SIGNAL \ready~0_combout\ : std_logic;
SIGNAL \state_reg~0_combout\ : std_logic;
SIGNAL \state_reg~q\ : std_logic;
SIGNAL \ready~1_combout\ : std_logic;
SIGNAL \value[0]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[32]~input_o\ : std_logic;
SIGNAL \key[69]~input_o\ : std_logic;
SIGNAL \value[1]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \value[33]~input_o\ : std_logic;
SIGNAL \key[65]~input_o\ : std_logic;
SIGNAL \value[34]~input_o\ : std_logic;
SIGNAL \key[66]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[71]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[67]~input_o\ : std_logic;
SIGNAL \value[4]~input_o\ : std_logic;
SIGNAL \sum[0]~32_combout\ : std_logic;
SIGNAL \Add0~2_sumout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6_sumout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_sumout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_sumout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_sumout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_sumout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_sumout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_sumout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34_sumout\ : std_logic;
SIGNAL \value[42]~input_o\ : std_logic;
SIGNAL \key[74]~input_o\ : std_logic;
SIGNAL \key[73]~input_o\ : std_logic;
SIGNAL \key[37]~input_o\ : std_logic;
SIGNAL \value[41]~input_o\ : std_logic;
SIGNAL \key[36]~input_o\ : std_logic;
SIGNAL \value[40]~input_o\ : std_logic;
SIGNAL \key[72]~input_o\ : std_logic;
SIGNAL \key[70]~input_o\ : std_logic;
SIGNAL \key[68]~input_o\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~121\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~40_sumout\ : std_logic;
SIGNAL \value[35]~input_o\ : std_logic;
SIGNAL \key[7]~input_o\ : std_logic;
SIGNAL \key[6]~input_o\ : std_logic;
SIGNAL \key[5]~input_o\ : std_logic;
SIGNAL \value[32]~input_o\ : std_logic;
SIGNAL \key[64]~input_o\ : std_logic;
SIGNAL \key[96]~input_o\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \yt~0_combout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \value[39]~input_o\ : std_logic;
SIGNAL \Add5~32_sumout\ : std_logic;
SIGNAL \key[102]~input_o\ : std_logic;
SIGNAL \value[11]~input_o\ : std_logic;
SIGNAL \key[11]~input_o\ : std_logic;
SIGNAL \key[10]~input_o\ : std_logic;
SIGNAL \value[38]~input_o\ : std_logic;
SIGNAL \value[37]~input_o\ : std_logic;
SIGNAL \key[9]~input_o\ : std_logic;
SIGNAL \key[8]~input_o\ : std_logic;
SIGNAL \value[36]~input_o\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~106_sumout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~38_sumout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \key[107]~input_o\ : std_logic;
SIGNAL \key[117]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~42_sumout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~46_sumout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~50_sumout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~54_sumout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~58_sumout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~62_sumout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~66_sumout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_sumout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~110_sumout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~74_sumout\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~78_sumout\ : std_logic;
SIGNAL \key[54]~input_o\ : std_logic;
SIGNAL \key[123]~input_o\ : std_logic;
SIGNAL \key[122]~input_o\ : std_logic;
SIGNAL \value[59]~input_o\ : std_logic;
SIGNAL \key[31]~input_o\ : std_logic;
SIGNAL \key[90]~input_o\ : std_logic;
SIGNAL \key[89]~input_o\ : std_logic;
SIGNAL \value[21]~input_o\ : std_logic;
SIGNAL \value[58]~input_o\ : std_logic;
SIGNAL \key[53]~input_o\ : std_logic;
SIGNAL \key[52]~input_o\ : std_logic;
SIGNAL \value[62]~input_o\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~82_sumout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~86_sumout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90_sumout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~114_sumout\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~122_sumout\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~94_sumout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~98_sumout\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~118_sumout\ : std_logic;
SIGNAL \value[57]~input_o\ : std_logic;
SIGNAL \key[29]~input_o\ : std_logic;
SIGNAL \key[120]~input_o\ : std_logic;
SIGNAL \key[119]~input_o\ : std_logic;
SIGNAL \key[28]~input_o\ : std_logic;
SIGNAL \value[56]~input_o\ : std_logic;
SIGNAL \value[55]~input_o\ : std_logic;
SIGNAL \key[118]~input_o\ : std_logic;
SIGNAL \key[59]~input_o\ : std_logic;
SIGNAL \key[58]~input_o\ : std_logic;
SIGNAL \value[63]~input_o\ : std_logic;
SIGNAL \key[127]~input_o\ : std_logic;
SIGNAL \key[126]~input_o\ : std_logic;
SIGNAL \key[125]~input_o\ : std_logic;
SIGNAL \key[124]~input_o\ : std_logic;
SIGNAL \Add7~122\ : std_logic;
SIGNAL \Add7~98\ : std_logic;
SIGNAL \Add7~102\ : std_logic;
SIGNAL \Add7~106\ : std_logic;
SIGNAL \Add7~125_sumout\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~102_sumout\ : std_logic;
SIGNAL \sum[31]~31_combout\ : std_logic;
SIGNAL \Add6~110\ : std_logic;
SIGNAL \Add6~129_sumout\ : std_logic;
SIGNAL \key[95]~input_o\ : std_logic;
SIGNAL \key[94]~input_o\ : std_logic;
SIGNAL \key[93]~input_o\ : std_logic;
SIGNAL \key[57]~input_o\ : std_logic;
SIGNAL \Add7~101_sumout\ : std_logic;
SIGNAL \key[84]~input_o\ : std_logic;
SIGNAL \key[83]~input_o\ : std_logic;
SIGNAL \key[111]~input_o\ : std_logic;
SIGNAL \key[112]~input_o\ : std_logic;
SIGNAL \key[110]~input_o\ : std_logic;
SIGNAL \key[51]~input_o\ : std_logic;
SIGNAL \key[50]~input_o\ : std_logic;
SIGNAL \value[54]~input_o\ : std_logic;
SIGNAL \key[49]~input_o\ : std_logic;
SIGNAL \key[48]~input_o\ : std_logic;
SIGNAL \value[53]~input_o\ : std_logic;
SIGNAL \value[52]~input_o\ : std_logic;
SIGNAL \key[47]~input_o\ : std_logic;
SIGNAL \key[115]~input_o\ : std_logic;
SIGNAL \value[23]~input_o\ : std_logic;
SIGNAL \value[51]~input_o\ : std_logic;
SIGNAL \key[23]~input_o\ : std_logic;
SIGNAL \key[22]~input_o\ : std_logic;
SIGNAL \key[114]~input_o\ : std_logic;
SIGNAL \key[113]~input_o\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~65_sumout\ : std_logic;
SIGNAL \value[46]~input_o\ : std_logic;
SIGNAL \key[109]~input_o\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \value[50]~input_o\ : std_logic;
SIGNAL \key[81]~input_o\ : std_logic;
SIGNAL \key[13]~input_o\ : std_logic;
SIGNAL \key[12]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \value[45]~input_o\ : std_logic;
SIGNAL \value[49]~input_o\ : std_logic;
SIGNAL \value[48]~input_o\ : std_logic;
SIGNAL \value[47]~input_o\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \key[17]~input_o\ : std_logic;
SIGNAL \value[44]~input_o\ : std_logic;
SIGNAL \key[16]~input_o\ : std_logic;
SIGNAL \value[43]~input_o\ : std_logic;
SIGNAL \key[15]~input_o\ : std_logic;
SIGNAL \key[14]~input_o\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \zt~15_combout\ : std_logic;
SIGNAL \value[17]~input_o\ : std_logic;
SIGNAL \value[16]~input_o\ : std_logic;
SIGNAL \value[15]~input_o\ : std_logic;
SIGNAL \value[14]~input_o\ : std_logic;
SIGNAL \value[13]~input_o\ : std_logic;
SIGNAL \key[44]~input_o\ : std_logic;
SIGNAL \key[43]~input_o\ : std_logic;
SIGNAL \key[42]~input_o\ : std_logic;
SIGNAL \key[41]~input_o\ : std_logic;
SIGNAL \key[40]~input_o\ : std_logic;
SIGNAL \key[39]~input_o\ : std_logic;
SIGNAL \key[38]~input_o\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \zt~10_combout\ : std_logic;
SIGNAL \value[12]~input_o\ : std_logic;
SIGNAL \value[10]~input_o\ : std_logic;
SIGNAL \value[9]~input_o\ : std_logic;
SIGNAL \value[8]~input_o\ : std_logic;
SIGNAL \value[7]~input_o\ : std_logic;
SIGNAL \value[6]~input_o\ : std_logic;
SIGNAL \value[5]~input_o\ : std_logic;
SIGNAL \value[3]~input_o\ : std_logic;
SIGNAL \value[2]~input_o\ : std_logic;
SIGNAL \Add4~126\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \key[108]~input_o\ : std_logic;
SIGNAL \key[106]~input_o\ : std_logic;
SIGNAL \key[105]~input_o\ : std_logic;
SIGNAL \key[104]~input_o\ : std_logic;
SIGNAL \key[103]~input_o\ : std_logic;
SIGNAL \key[101]~input_o\ : std_logic;
SIGNAL \key[100]~input_o\ : std_logic;
SIGNAL \key[99]~input_o\ : std_logic;
SIGNAL \key[98]~input_o\ : std_logic;
SIGNAL \key[97]~input_o\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~110\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \key[76]~input_o\ : std_logic;
SIGNAL \key[75]~input_o\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~56_sumout\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \yt~11_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \key[45]~input_o\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \zt~11_combout\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \key[80]~input_o\ : std_logic;
SIGNAL \key[79]~input_o\ : std_logic;
SIGNAL \key[78]~input_o\ : std_logic;
SIGNAL \key[77]~input_o\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~65\ : std_logic;
SIGNAL \Add5~125\ : std_logic;
SIGNAL \Add5~69\ : std_logic;
SIGNAL \Add5~72_sumout\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~118\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~65_sumout\ : std_logic;
SIGNAL \Add7~61_sumout\ : std_logic;
SIGNAL \yt~15_combout\ : std_logic;
SIGNAL \Add8~50\ : std_logic;
SIGNAL \Add8~54\ : std_logic;
SIGNAL \Add8~58\ : std_logic;
SIGNAL \Add8~62\ : std_logic;
SIGNAL \Add8~66\ : std_logic;
SIGNAL \Add8~69_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \key[18]~input_o\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \zt~16_combout\ : std_logic;
SIGNAL \value[18]~input_o\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add5~60_sumout\ : std_logic;
SIGNAL \yt~12_combout\ : std_logic;
SIGNAL \Add8~53_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \key[46]~input_o\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \zt~12_combout\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \key[82]~input_o\ : std_logic;
SIGNAL \Add5~73\ : std_logic;
SIGNAL \Add5~76_sumout\ : std_logic;
SIGNAL \Add6~66\ : std_logic;
SIGNAL \Add6~69_sumout\ : std_logic;
SIGNAL \yt~16_combout\ : std_logic;
SIGNAL \Add8~70\ : std_logic;
SIGNAL \Add8~73_sumout\ : std_logic;
SIGNAL \key[21]~input_o\ : std_logic;
SIGNAL \key[20]~input_o\ : std_logic;
SIGNAL \key[19]~input_o\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add7~97_sumout\ : std_logic;
SIGNAL \key[92]~input_o\ : std_logic;
SIGNAL \key[91]~input_o\ : std_logic;
SIGNAL \Add5~105\ : std_logic;
SIGNAL \Add5~133\ : std_logic;
SIGNAL \Add5~108_sumout\ : std_logic;
SIGNAL \Add6~101_sumout\ : std_logic;
SIGNAL \yt~24_combout\ : std_logic;
SIGNAL \value[60]~input_o\ : std_logic;
SIGNAL \Add8~74\ : std_logic;
SIGNAL \Add8~78\ : std_logic;
SIGNAL \Add8~82\ : std_logic;
SIGNAL \Add8~86\ : std_logic;
SIGNAL \Add8~90\ : std_logic;
SIGNAL \Add8~94\ : std_logic;
SIGNAL \Add8~98\ : std_logic;
SIGNAL \Add8~102\ : std_logic;
SIGNAL \Add8~106\ : std_logic;
SIGNAL \Add8~110\ : std_logic;
SIGNAL \Add8~113_sumout\ : std_logic;
SIGNAL \key[55]~input_o\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \zt~20_combout\ : std_logic;
SIGNAL \value[22]~input_o\ : std_logic;
SIGNAL \value[20]~input_o\ : std_logic;
SIGNAL \value[19]~input_o\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~69_sumout\ : std_logic;
SIGNAL \Add6~70\ : std_logic;
SIGNAL \Add6~73_sumout\ : std_logic;
SIGNAL \Add5~77\ : std_logic;
SIGNAL \Add5~80_sumout\ : std_logic;
SIGNAL \yt~17_combout\ : std_logic;
SIGNAL \Add8~77_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \zt~17_combout\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~114\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \Add5~68_sumout\ : std_logic;
SIGNAL \yt~14_combout\ : std_logic;
SIGNAL \Add8~65_sumout\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \zt~27_combout\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \Add7~113_sumout\ : std_logic;
SIGNAL \Add5~124_sumout\ : std_logic;
SIGNAL \Add6~117_sumout\ : std_logic;
SIGNAL \yt~28_combout\ : std_logic;
SIGNAL \Add8~61_sumout\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \zt~13_combout\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add5~81\ : std_logic;
SIGNAL \Add5~84_sumout\ : std_logic;
SIGNAL \Add6~74\ : std_logic;
SIGNAL \Add6~77_sumout\ : std_logic;
SIGNAL \key[116]~input_o\ : std_logic;
SIGNAL \Add7~70\ : std_logic;
SIGNAL \Add7~73_sumout\ : std_logic;
SIGNAL \yt~18_combout\ : std_logic;
SIGNAL \Add8~81_sumout\ : std_logic;
SIGNAL \key[24]~input_o\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \key[56]~input_o\ : std_logic;
SIGNAL \value[61]~input_o\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \zt~21_combout\ : std_logic;
SIGNAL \value[24]~input_o\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add6~78\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~86\ : std_logic;
SIGNAL \Add6~90\ : std_logic;
SIGNAL \Add6~94\ : std_logic;
SIGNAL \Add6~122\ : std_logic;
SIGNAL \Add6~98\ : std_logic;
SIGNAL \Add6~126\ : std_logic;
SIGNAL \Add6~102\ : std_logic;
SIGNAL \Add6~105_sumout\ : std_logic;
SIGNAL \Add5~109\ : std_logic;
SIGNAL \Add5~112_sumout\ : std_logic;
SIGNAL \yt~25_combout\ : std_logic;
SIGNAL \Add8~114\ : std_logic;
SIGNAL \Add8~117_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \key[25]~input_o\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \zt~22_combout\ : std_logic;
SIGNAL \value[25]~input_o\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \Add5~113\ : std_logic;
SIGNAL \Add5~117\ : std_logic;
SIGNAL \Add5~136_sumout\ : std_logic;
SIGNAL \yt~31_combout\ : std_logic;
SIGNAL \Add8~118\ : std_logic;
SIGNAL \Add8~122\ : std_logic;
SIGNAL \Add8~125_sumout\ : std_logic;
SIGNAL \z~93_combout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \key[27]~input_o\ : std_logic;
SIGNAL \key[26]~input_o\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \zt~29_combout\ : std_logic;
SIGNAL \value[27]~input_o\ : std_logic;
SIGNAL \value[26]~input_o\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \Add7~74\ : std_logic;
SIGNAL \Add7~78\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~85_sumout\ : std_logic;
SIGNAL \Add6~89_sumout\ : std_logic;
SIGNAL \key[87]~input_o\ : std_logic;
SIGNAL \key[86]~input_o\ : std_logic;
SIGNAL \key[85]~input_o\ : std_logic;
SIGNAL \Add5~85\ : std_logic;
SIGNAL \Add5~89\ : std_logic;
SIGNAL \Add5~93\ : std_logic;
SIGNAL \Add5~96_sumout\ : std_logic;
SIGNAL \yt~21_combout\ : std_logic;
SIGNAL \Add8~93_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \key[60]~input_o\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \zt~23_combout\ : std_logic;
SIGNAL \value[28]~input_o\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \Add7~86\ : std_logic;
SIGNAL \Add7~89_sumout\ : std_logic;
SIGNAL \key[88]~input_o\ : std_logic;
SIGNAL \Add5~97\ : std_logic;
SIGNAL \Add5~100_sumout\ : std_logic;
SIGNAL \Add6~93_sumout\ : std_logic;
SIGNAL \yt~22_combout\ : std_logic;
SIGNAL \Add8~97_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \key[61]~input_o\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \zt~24_combout\ : std_logic;
SIGNAL \value[29]~input_o\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \Add6~106\ : std_logic;
SIGNAL \Add6~109_sumout\ : std_logic;
SIGNAL \Add5~116_sumout\ : std_logic;
SIGNAL \Add7~105_sumout\ : std_logic;
SIGNAL \yt~26_combout\ : std_logic;
SIGNAL \Add8~121_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \key[30]~input_o\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \key[62]~input_o\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \zt~30_combout\ : std_logic;
SIGNAL \value[30]~input_o\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \key[121]~input_o\ : std_logic;
SIGNAL \Add7~90\ : std_logic;
SIGNAL \Add7~117_sumout\ : std_logic;
SIGNAL \Add5~101\ : std_logic;
SIGNAL \Add5~128_sumout\ : std_logic;
SIGNAL \Add6~121_sumout\ : std_logic;
SIGNAL \yt~29_combout\ : std_logic;
SIGNAL \Add8~101_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \zt~18_combout\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \Add5~129\ : std_logic;
SIGNAL \Add5~104_sumout\ : std_logic;
SIGNAL \Add6~97_sumout\ : std_logic;
SIGNAL \Add7~118\ : std_logic;
SIGNAL \Add7~93_sumout\ : std_logic;
SIGNAL \yt~23_combout\ : std_logic;
SIGNAL \Add8~105_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \key[63]~input_o\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \zt~25_combout\ : std_logic;
SIGNAL \value[31]~input_o\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \Add7~94\ : std_logic;
SIGNAL \Add7~121_sumout\ : std_logic;
SIGNAL \Add6~125_sumout\ : std_logic;
SIGNAL \Add5~132_sumout\ : std_logic;
SIGNAL \yt~30_combout\ : std_logic;
SIGNAL \Add8~109_sumout\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \zt~19_combout\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \Add6~85_sumout\ : std_logic;
SIGNAL \Add5~92_sumout\ : std_logic;
SIGNAL \Add7~81_sumout\ : std_logic;
SIGNAL \yt~20_combout\ : std_logic;
SIGNAL \Add8~89_sumout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \zt~28_combout\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \Add7~77_sumout\ : std_logic;
SIGNAL \Add6~81_sumout\ : std_logic;
SIGNAL \Add5~88_sumout\ : std_logic;
SIGNAL \yt~19_combout\ : std_logic;
SIGNAL \Add8~85_sumout\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \zt~14_combout\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \Add5~52_sumout\ : std_logic;
SIGNAL \yt~10_combout\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \zt~9_combout\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~114\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \yt~5_combout\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \zt~6_combout\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \yt~7_combout\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \key[35]~input_o\ : std_logic;
SIGNAL \key[34]~input_o\ : std_logic;
SIGNAL \key[33]~input_o\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \zt~4_combout\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~48_sumout\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \yt~9_combout\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \zt~26_combout\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add5~64_sumout\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \yt~13_combout\ : std_logic;
SIGNAL \Add8~57_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \zt~8_combout\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add5~44_sumout\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \yt~8_combout\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \zt~3_combout\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add5~28_sumout\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \yt~4_combout\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \zt~7_combout\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \yt~3_combout\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \zt~2_combout\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add5~36_sumout\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \yt~6_combout\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \zt~1_combout\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \yt~2_combout\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \zt~5_combout\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \yt~1_combout\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \zt~0_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add5~120_sumout\ : std_logic;
SIGNAL \Add6~113_sumout\ : std_logic;
SIGNAL \Add7~109_sumout\ : std_logic;
SIGNAL \yt~27_combout\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \zt~31_combout\ : std_logic;
SIGNAL \Add4~125_sumout\ : std_logic;
SIGNAL \y~31_combout\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \y~4_combout\ : std_logic;
SIGNAL \y~5_combout\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \y~7_combout\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \y~10_combout\ : std_logic;
SIGNAL \y~11_combout\ : std_logic;
SIGNAL \y~12_combout\ : std_logic;
SIGNAL \y~13_combout\ : std_logic;
SIGNAL \y~14_combout\ : std_logic;
SIGNAL \y~15_combout\ : std_logic;
SIGNAL \y~16_combout\ : std_logic;
SIGNAL \y~17_combout\ : std_logic;
SIGNAL \y~18_combout\ : std_logic;
SIGNAL \y~19_combout\ : std_logic;
SIGNAL \y~20_combout\ : std_logic;
SIGNAL \y~21_combout\ : std_logic;
SIGNAL \y~22_combout\ : std_logic;
SIGNAL \y~23_combout\ : std_logic;
SIGNAL \y~24_combout\ : std_logic;
SIGNAL \y~25_combout\ : std_logic;
SIGNAL \y~26_combout\ : std_logic;
SIGNAL \y~27_combout\ : std_logic;
SIGNAL \y~28_combout\ : std_logic;
SIGNAL \y~29_combout\ : std_logic;
SIGNAL \y~30_combout\ : std_logic;
SIGNAL \z~62_combout\ : std_logic;
SIGNAL \z~63_combout\ : std_logic;
SIGNAL \z~64_combout\ : std_logic;
SIGNAL \z~65_combout\ : std_logic;
SIGNAL \z~66_combout\ : std_logic;
SIGNAL \z~67_combout\ : std_logic;
SIGNAL \z~68_combout\ : std_logic;
SIGNAL \z~69_combout\ : std_logic;
SIGNAL \z~70_combout\ : std_logic;
SIGNAL \z~71_combout\ : std_logic;
SIGNAL \z~72_combout\ : std_logic;
SIGNAL \z~73_combout\ : std_logic;
SIGNAL \z~74_combout\ : std_logic;
SIGNAL \z~75_combout\ : std_logic;
SIGNAL \z~76_combout\ : std_logic;
SIGNAL \z~77_combout\ : std_logic;
SIGNAL \z~78_combout\ : std_logic;
SIGNAL \z~79_combout\ : std_logic;
SIGNAL \z~80_combout\ : std_logic;
SIGNAL \z~81_combout\ : std_logic;
SIGNAL \z~82_combout\ : std_logic;
SIGNAL \z~83_combout\ : std_logic;
SIGNAL \z~84_combout\ : std_logic;
SIGNAL \z~85_combout\ : std_logic;
SIGNAL \z~86_combout\ : std_logic;
SIGNAL \z~87_combout\ : std_logic;
SIGNAL \z~88_combout\ : std_logic;
SIGNAL \z~89_combout\ : std_logic;
SIGNAL \z~90_combout\ : std_logic;
SIGNAL \z~91_combout\ : std_logic;
SIGNAL \z~92_combout\ : std_logic;
SIGNAL count_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL k0 : std_logic_vector(31 DOWNTO 0);
SIGNAL k2 : std_logic_vector(31 DOWNTO 0);
SIGNAL k1 : std_logic_vector(31 DOWNTO 0);
SIGNAL k3 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add8~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~76_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~72_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~68_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~64_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~60_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~56_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~52_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~48_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~44_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~40_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~36_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~32_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~28_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~6_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~129_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~136_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~132_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~128_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~124_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~120_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~116_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~112_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~108_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~104_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~100_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~96_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~92_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~88_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~84_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~80_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~69_sumout\ : std_logic;
SIGNAL \ALT_INV_ready~1_combout\ : std_logic;
SIGNAL \ALT_INV_ready~0_combout\ : std_logic;
SIGNAL ALT_INV_count_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_state_reg~q\ : std_logic;
SIGNAL \ALT_INV_Add0~122_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~118_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~114_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~110_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~106_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~102_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~98_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~94_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~90_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~86_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~82_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~78_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~74_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~70_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~66_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~62_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~58_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~54_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~50_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~46_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~42_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~38_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~30_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~26_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~22_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~18_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~10_sumout\ : std_logic;
SIGNAL ALT_INV_k1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_k0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_k2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_sum[0]~32_combout\ : std_logic;
SIGNAL \ALT_INV_sum[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_zt~31_combout\ : std_logic;
SIGNAL \ALT_INV_yt~31_combout\ : std_logic;
SIGNAL \ALT_INV_yt~30_combout\ : std_logic;
SIGNAL \ALT_INV_yt~29_combout\ : std_logic;
SIGNAL \ALT_INV_yt~28_combout\ : std_logic;
SIGNAL \ALT_INV_yt~27_combout\ : std_logic;
SIGNAL \ALT_INV_zt~30_combout\ : std_logic;
SIGNAL \ALT_INV_zt~29_combout\ : std_logic;
SIGNAL \ALT_INV_zt~28_combout\ : std_logic;
SIGNAL \ALT_INV_zt~27_combout\ : std_logic;
SIGNAL \ALT_INV_zt~26_combout\ : std_logic;
SIGNAL \ALT_INV_z~93_combout\ : std_logic;
SIGNAL \ALT_INV_yt~26_combout\ : std_logic;
SIGNAL \ALT_INV_yt~25_combout\ : std_logic;
SIGNAL \ALT_INV_yt~24_combout\ : std_logic;
SIGNAL \ALT_INV_yt~23_combout\ : std_logic;
SIGNAL \ALT_INV_yt~22_combout\ : std_logic;
SIGNAL \ALT_INV_yt~21_combout\ : std_logic;
SIGNAL \ALT_INV_yt~20_combout\ : std_logic;
SIGNAL \ALT_INV_yt~19_combout\ : std_logic;
SIGNAL \ALT_INV_yt~18_combout\ : std_logic;
SIGNAL \ALT_INV_yt~17_combout\ : std_logic;
SIGNAL \ALT_INV_yt~16_combout\ : std_logic;
SIGNAL \ALT_INV_yt~15_combout\ : std_logic;
SIGNAL \ALT_INV_yt~14_combout\ : std_logic;
SIGNAL \ALT_INV_yt~13_combout\ : std_logic;
SIGNAL \ALT_INV_yt~12_combout\ : std_logic;
SIGNAL \ALT_INV_yt~11_combout\ : std_logic;
SIGNAL \ALT_INV_yt~10_combout\ : std_logic;
SIGNAL \ALT_INV_yt~9_combout\ : std_logic;
SIGNAL \ALT_INV_yt~8_combout\ : std_logic;
SIGNAL \ALT_INV_yt~7_combout\ : std_logic;
SIGNAL \ALT_INV_yt~6_combout\ : std_logic;
SIGNAL \ALT_INV_yt~5_combout\ : std_logic;
SIGNAL \ALT_INV_yt~4_combout\ : std_logic;
SIGNAL \ALT_INV_yt~3_combout\ : std_logic;
SIGNAL \ALT_INV_yt~2_combout\ : std_logic;
SIGNAL \ALT_INV_yt~1_combout\ : std_logic;
SIGNAL \ALT_INV_yt~0_combout\ : std_logic;
SIGNAL \ALT_INV_zt~25_combout\ : std_logic;
SIGNAL \ALT_INV_zt~24_combout\ : std_logic;
SIGNAL \ALT_INV_zt~23_combout\ : std_logic;
SIGNAL \ALT_INV_zt~22_combout\ : std_logic;
SIGNAL \ALT_INV_zt~21_combout\ : std_logic;
SIGNAL \ALT_INV_zt~20_combout\ : std_logic;
SIGNAL \ALT_INV_zt~19_combout\ : std_logic;
SIGNAL \ALT_INV_zt~18_combout\ : std_logic;
SIGNAL \ALT_INV_zt~17_combout\ : std_logic;
SIGNAL \ALT_INV_zt~16_combout\ : std_logic;
SIGNAL \ALT_INV_zt~15_combout\ : std_logic;
SIGNAL \ALT_INV_zt~14_combout\ : std_logic;
SIGNAL \ALT_INV_zt~13_combout\ : std_logic;
SIGNAL \ALT_INV_zt~12_combout\ : std_logic;
SIGNAL \ALT_INV_zt~11_combout\ : std_logic;
SIGNAL \ALT_INV_zt~10_combout\ : std_logic;
SIGNAL \ALT_INV_zt~9_combout\ : std_logic;
SIGNAL \ALT_INV_zt~8_combout\ : std_logic;
SIGNAL \ALT_INV_zt~7_combout\ : std_logic;
SIGNAL \ALT_INV_zt~6_combout\ : std_logic;
SIGNAL \ALT_INV_zt~5_combout\ : std_logic;
SIGNAL \ALT_INV_zt~4_combout\ : std_logic;
SIGNAL \ALT_INV_zt~3_combout\ : std_logic;
SIGNAL \ALT_INV_zt~2_combout\ : std_logic;
SIGNAL \ALT_INV_zt~1_combout\ : std_logic;
SIGNAL \ALT_INV_zt~0_combout\ : std_logic;
SIGNAL \ALT_INV_y~31_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \ALT_INV_value[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[1]~input_o\ : std_logic;
SIGNAL ALT_INV_k3 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_key[125]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[92]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[124]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[90]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[122]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[88]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[120]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[87]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[119]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[86]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[118]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[85]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[117]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[84]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[116]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[83]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[115]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[82]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[114]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[81]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[113]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[80]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[112]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[78]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[110]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[77]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[109]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[76]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[108]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[75]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[107]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[74]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[106]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[73]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[105]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[72]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[104]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[71]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[103]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[70]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[102]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[68]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[100]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[99]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[98]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[97]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[96]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[67]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[66]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[65]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[64]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_value[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_value[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[127]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[95]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[91]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[123]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[89]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[121]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[79]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[111]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[69]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[101]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[126]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[94]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[93]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ready <= ww_ready;
ww_key <= key;
ww_value <= value;
out_ans <= ww_out_ans;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add8~97_sumout\ <= NOT \Add8~97_sumout\;
\ALT_INV_Add8~93_sumout\ <= NOT \Add8~93_sumout\;
\ALT_INV_Add8~89_sumout\ <= NOT \Add8~89_sumout\;
\ALT_INV_Add8~85_sumout\ <= NOT \Add8~85_sumout\;
\ALT_INV_Add8~81_sumout\ <= NOT \Add8~81_sumout\;
\ALT_INV_Add8~77_sumout\ <= NOT \Add8~77_sumout\;
\ALT_INV_Add8~73_sumout\ <= NOT \Add8~73_sumout\;
\ALT_INV_Add8~69_sumout\ <= NOT \Add8~69_sumout\;
\ALT_INV_Add8~65_sumout\ <= NOT \Add8~65_sumout\;
\ALT_INV_Add8~61_sumout\ <= NOT \Add8~61_sumout\;
\ALT_INV_Add8~57_sumout\ <= NOT \Add8~57_sumout\;
\ALT_INV_Add8~53_sumout\ <= NOT \Add8~53_sumout\;
\ALT_INV_Add8~49_sumout\ <= NOT \Add8~49_sumout\;
\ALT_INV_Add8~45_sumout\ <= NOT \Add8~45_sumout\;
\ALT_INV_Add8~41_sumout\ <= NOT \Add8~41_sumout\;
\ALT_INV_Add8~37_sumout\ <= NOT \Add8~37_sumout\;
\ALT_INV_Add8~33_sumout\ <= NOT \Add8~33_sumout\;
\ALT_INV_Add8~29_sumout\ <= NOT \Add8~29_sumout\;
\ALT_INV_Add8~25_sumout\ <= NOT \Add8~25_sumout\;
\ALT_INV_Add8~21_sumout\ <= NOT \Add8~21_sumout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add4~121_sumout\ <= NOT \Add4~121_sumout\;
\ALT_INV_Add4~117_sumout\ <= NOT \Add4~117_sumout\;
\ALT_INV_Add4~113_sumout\ <= NOT \Add4~113_sumout\;
\ALT_INV_Add4~109_sumout\ <= NOT \Add4~109_sumout\;
\ALT_INV_Add4~105_sumout\ <= NOT \Add4~105_sumout\;
\ALT_INV_Add4~101_sumout\ <= NOT \Add4~101_sumout\;
\ALT_INV_Add4~97_sumout\ <= NOT \Add4~97_sumout\;
\ALT_INV_Add4~93_sumout\ <= NOT \Add4~93_sumout\;
\ALT_INV_Add4~89_sumout\ <= NOT \Add4~89_sumout\;
\ALT_INV_Add4~85_sumout\ <= NOT \Add4~85_sumout\;
\ALT_INV_Add4~81_sumout\ <= NOT \Add4~81_sumout\;
\ALT_INV_Add4~77_sumout\ <= NOT \Add4~77_sumout\;
\ALT_INV_Add4~73_sumout\ <= NOT \Add4~73_sumout\;
\ALT_INV_Add4~69_sumout\ <= NOT \Add4~69_sumout\;
\ALT_INV_Add4~65_sumout\ <= NOT \Add4~65_sumout\;
\ALT_INV_Add4~61_sumout\ <= NOT \Add4~61_sumout\;
\ALT_INV_Add4~57_sumout\ <= NOT \Add4~57_sumout\;
\ALT_INV_Add4~53_sumout\ <= NOT \Add4~53_sumout\;
\ALT_INV_Add4~49_sumout\ <= NOT \Add4~49_sumout\;
\ALT_INV_Add4~45_sumout\ <= NOT \Add4~45_sumout\;
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add2~77_sumout\ <= NOT \Add2~77_sumout\;
\ALT_INV_Add3~77_sumout\ <= NOT \Add3~77_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add2~73_sumout\ <= NOT \Add2~73_sumout\;
\ALT_INV_Add3~73_sumout\ <= NOT \Add3~73_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add2~69_sumout\ <= NOT \Add2~69_sumout\;
\ALT_INV_Add3~69_sumout\ <= NOT \Add3~69_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add2~65_sumout\ <= NOT \Add2~65_sumout\;
\ALT_INV_Add3~65_sumout\ <= NOT \Add3~65_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add4~125_sumout\ <= NOT \Add4~125_sumout\;
\ALT_INV_Add8~121_sumout\ <= NOT \Add8~121_sumout\;
\ALT_INV_Add8~117_sumout\ <= NOT \Add8~117_sumout\;
\ALT_INV_Add8~113_sumout\ <= NOT \Add8~113_sumout\;
\ALT_INV_Add8~109_sumout\ <= NOT \Add8~109_sumout\;
\ALT_INV_Add8~105_sumout\ <= NOT \Add8~105_sumout\;
\ALT_INV_Add8~101_sumout\ <= NOT \Add8~101_sumout\;
\ALT_INV_Add5~76_sumout\ <= NOT \Add5~76_sumout\;
\ALT_INV_Add6~69_sumout\ <= NOT \Add6~69_sumout\;
\ALT_INV_Add7~65_sumout\ <= NOT \Add7~65_sumout\;
\ALT_INV_Add5~72_sumout\ <= NOT \Add5~72_sumout\;
\ALT_INV_Add6~65_sumout\ <= NOT \Add6~65_sumout\;
\ALT_INV_Add7~61_sumout\ <= NOT \Add7~61_sumout\;
\ALT_INV_Add5~68_sumout\ <= NOT \Add5~68_sumout\;
\ALT_INV_Add6~61_sumout\ <= NOT \Add6~61_sumout\;
\ALT_INV_Add7~57_sumout\ <= NOT \Add7~57_sumout\;
\ALT_INV_Add5~64_sumout\ <= NOT \Add5~64_sumout\;
\ALT_INV_Add6~57_sumout\ <= NOT \Add6~57_sumout\;
\ALT_INV_Add7~53_sumout\ <= NOT \Add7~53_sumout\;
\ALT_INV_Add5~60_sumout\ <= NOT \Add5~60_sumout\;
\ALT_INV_Add6~53_sumout\ <= NOT \Add6~53_sumout\;
\ALT_INV_Add7~49_sumout\ <= NOT \Add7~49_sumout\;
\ALT_INV_Add5~56_sumout\ <= NOT \Add5~56_sumout\;
\ALT_INV_Add6~49_sumout\ <= NOT \Add6~49_sumout\;
\ALT_INV_Add7~45_sumout\ <= NOT \Add7~45_sumout\;
\ALT_INV_Add5~52_sumout\ <= NOT \Add5~52_sumout\;
\ALT_INV_Add6~45_sumout\ <= NOT \Add6~45_sumout\;
\ALT_INV_Add7~41_sumout\ <= NOT \Add7~41_sumout\;
\ALT_INV_Add5~48_sumout\ <= NOT \Add5~48_sumout\;
\ALT_INV_Add6~41_sumout\ <= NOT \Add6~41_sumout\;
\ALT_INV_Add7~37_sumout\ <= NOT \Add7~37_sumout\;
\ALT_INV_Add5~44_sumout\ <= NOT \Add5~44_sumout\;
\ALT_INV_Add6~37_sumout\ <= NOT \Add6~37_sumout\;
\ALT_INV_Add7~33_sumout\ <= NOT \Add7~33_sumout\;
\ALT_INV_Add5~40_sumout\ <= NOT \Add5~40_sumout\;
\ALT_INV_Add6~33_sumout\ <= NOT \Add6~33_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add5~36_sumout\ <= NOT \Add5~36_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add5~32_sumout\ <= NOT \Add5~32_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add5~28_sumout\ <= NOT \Add5~28_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add2~101_sumout\ <= NOT \Add2~101_sumout\;
\ALT_INV_Add3~101_sumout\ <= NOT \Add3~101_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add2~97_sumout\ <= NOT \Add2~97_sumout\;
\ALT_INV_Add3~97_sumout\ <= NOT \Add3~97_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add2~93_sumout\ <= NOT \Add2~93_sumout\;
\ALT_INV_Add3~93_sumout\ <= NOT \Add3~93_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add2~89_sumout\ <= NOT \Add2~89_sumout\;
\ALT_INV_Add3~89_sumout\ <= NOT \Add3~89_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add2~85_sumout\ <= NOT \Add2~85_sumout\;
\ALT_INV_Add3~85_sumout\ <= NOT \Add3~85_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add2~81_sumout\ <= NOT \Add2~81_sumout\;
\ALT_INV_Add3~81_sumout\ <= NOT \Add3~81_sumout\;
\ALT_INV_Add0~6_sumout\ <= NOT \Add0~6_sumout\;
\ALT_INV_Add0~2_sumout\ <= NOT \Add0~2_sumout\;
\ALT_INV_Add7~125_sumout\ <= NOT \Add7~125_sumout\;
\ALT_INV_Add6~129_sumout\ <= NOT \Add6~129_sumout\;
\ALT_INV_Add5~136_sumout\ <= NOT \Add5~136_sumout\;
\ALT_INV_Add5~132_sumout\ <= NOT \Add5~132_sumout\;
\ALT_INV_Add7~121_sumout\ <= NOT \Add7~121_sumout\;
\ALT_INV_Add6~125_sumout\ <= NOT \Add6~125_sumout\;
\ALT_INV_Add5~128_sumout\ <= NOT \Add5~128_sumout\;
\ALT_INV_Add7~117_sumout\ <= NOT \Add7~117_sumout\;
\ALT_INV_Add6~121_sumout\ <= NOT \Add6~121_sumout\;
\ALT_INV_Add5~124_sumout\ <= NOT \Add5~124_sumout\;
\ALT_INV_Add7~113_sumout\ <= NOT \Add7~113_sumout\;
\ALT_INV_Add6~117_sumout\ <= NOT \Add6~117_sumout\;
\ALT_INV_Add5~120_sumout\ <= NOT \Add5~120_sumout\;
\ALT_INV_Add7~109_sumout\ <= NOT \Add7~109_sumout\;
\ALT_INV_Add6~113_sumout\ <= NOT \Add6~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add3~125_sumout\ <= NOT \Add3~125_sumout\;
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add3~121_sumout\ <= NOT \Add3~121_sumout\;
\ALT_INV_Add2~121_sumout\ <= NOT \Add2~121_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add3~117_sumout\ <= NOT \Add3~117_sumout\;
\ALT_INV_Add2~117_sumout\ <= NOT \Add2~117_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add3~113_sumout\ <= NOT \Add3~113_sumout\;
\ALT_INV_Add2~113_sumout\ <= NOT \Add2~113_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add3~109_sumout\ <= NOT \Add3~109_sumout\;
\ALT_INV_Add2~109_sumout\ <= NOT \Add2~109_sumout\;
\ALT_INV_Add2~105_sumout\ <= NOT \Add2~105_sumout\;
\ALT_INV_Add3~105_sumout\ <= NOT \Add3~105_sumout\;
\ALT_INV_Add8~125_sumout\ <= NOT \Add8~125_sumout\;
\ALT_INV_Add7~105_sumout\ <= NOT \Add7~105_sumout\;
\ALT_INV_Add6~109_sumout\ <= NOT \Add6~109_sumout\;
\ALT_INV_Add5~116_sumout\ <= NOT \Add5~116_sumout\;
\ALT_INV_Add5~112_sumout\ <= NOT \Add5~112_sumout\;
\ALT_INV_Add6~105_sumout\ <= NOT \Add6~105_sumout\;
\ALT_INV_Add7~101_sumout\ <= NOT \Add7~101_sumout\;
\ALT_INV_Add5~108_sumout\ <= NOT \Add5~108_sumout\;
\ALT_INV_Add6~101_sumout\ <= NOT \Add6~101_sumout\;
\ALT_INV_Add7~97_sumout\ <= NOT \Add7~97_sumout\;
\ALT_INV_Add5~104_sumout\ <= NOT \Add5~104_sumout\;
\ALT_INV_Add6~97_sumout\ <= NOT \Add6~97_sumout\;
\ALT_INV_Add7~93_sumout\ <= NOT \Add7~93_sumout\;
\ALT_INV_Add5~100_sumout\ <= NOT \Add5~100_sumout\;
\ALT_INV_Add6~93_sumout\ <= NOT \Add6~93_sumout\;
\ALT_INV_Add7~89_sumout\ <= NOT \Add7~89_sumout\;
\ALT_INV_Add5~96_sumout\ <= NOT \Add5~96_sumout\;
\ALT_INV_Add6~89_sumout\ <= NOT \Add6~89_sumout\;
\ALT_INV_Add7~85_sumout\ <= NOT \Add7~85_sumout\;
\ALT_INV_Add5~92_sumout\ <= NOT \Add5~92_sumout\;
\ALT_INV_Add6~85_sumout\ <= NOT \Add6~85_sumout\;
\ALT_INV_Add7~81_sumout\ <= NOT \Add7~81_sumout\;
\ALT_INV_Add5~88_sumout\ <= NOT \Add5~88_sumout\;
\ALT_INV_Add6~81_sumout\ <= NOT \Add6~81_sumout\;
\ALT_INV_Add7~77_sumout\ <= NOT \Add7~77_sumout\;
\ALT_INV_Add5~84_sumout\ <= NOT \Add5~84_sumout\;
\ALT_INV_Add6~77_sumout\ <= NOT \Add6~77_sumout\;
\ALT_INV_Add7~73_sumout\ <= NOT \Add7~73_sumout\;
\ALT_INV_Add5~80_sumout\ <= NOT \Add5~80_sumout\;
\ALT_INV_Add6~73_sumout\ <= NOT \Add6~73_sumout\;
\ALT_INV_Add7~69_sumout\ <= NOT \Add7~69_sumout\;
\ALT_INV_ready~1_combout\ <= NOT \ready~1_combout\;
\ALT_INV_ready~0_combout\ <= NOT \ready~0_combout\;
ALT_INV_count_reg(5) <= NOT count_reg(5);
ALT_INV_count_reg(4) <= NOT count_reg(4);
ALT_INV_count_reg(3) <= NOT count_reg(3);
ALT_INV_count_reg(2) <= NOT count_reg(2);
ALT_INV_count_reg(1) <= NOT count_reg(1);
ALT_INV_count_reg(0) <= NOT count_reg(0);
\ALT_INV_state_reg~q\ <= NOT \state_reg~q\;
\ALT_INV_Add0~122_sumout\ <= NOT \Add0~122_sumout\;
\ALT_INV_Add0~118_sumout\ <= NOT \Add0~118_sumout\;
\ALT_INV_Add0~114_sumout\ <= NOT \Add0~114_sumout\;
\ALT_INV_Add0~110_sumout\ <= NOT \Add0~110_sumout\;
\ALT_INV_Add0~106_sumout\ <= NOT \Add0~106_sumout\;
\ALT_INV_Add0~102_sumout\ <= NOT \Add0~102_sumout\;
\ALT_INV_Add0~98_sumout\ <= NOT \Add0~98_sumout\;
\ALT_INV_Add0~94_sumout\ <= NOT \Add0~94_sumout\;
\ALT_INV_Add0~90_sumout\ <= NOT \Add0~90_sumout\;
\ALT_INV_Add0~86_sumout\ <= NOT \Add0~86_sumout\;
\ALT_INV_Add0~82_sumout\ <= NOT \Add0~82_sumout\;
\ALT_INV_Add0~78_sumout\ <= NOT \Add0~78_sumout\;
\ALT_INV_Add0~74_sumout\ <= NOT \Add0~74_sumout\;
\ALT_INV_Add0~70_sumout\ <= NOT \Add0~70_sumout\;
\ALT_INV_Add0~66_sumout\ <= NOT \Add0~66_sumout\;
\ALT_INV_Add0~62_sumout\ <= NOT \Add0~62_sumout\;
\ALT_INV_Add0~58_sumout\ <= NOT \Add0~58_sumout\;
\ALT_INV_Add0~54_sumout\ <= NOT \Add0~54_sumout\;
\ALT_INV_Add0~50_sumout\ <= NOT \Add0~50_sumout\;
\ALT_INV_Add0~46_sumout\ <= NOT \Add0~46_sumout\;
\ALT_INV_Add0~42_sumout\ <= NOT \Add0~42_sumout\;
\ALT_INV_Add0~38_sumout\ <= NOT \Add0~38_sumout\;
\ALT_INV_Add0~34_sumout\ <= NOT \Add0~34_sumout\;
\ALT_INV_Add0~30_sumout\ <= NOT \Add0~30_sumout\;
\ALT_INV_Add0~26_sumout\ <= NOT \Add0~26_sumout\;
\ALT_INV_Add0~22_sumout\ <= NOT \Add0~22_sumout\;
\ALT_INV_Add0~18_sumout\ <= NOT \Add0~18_sumout\;
\ALT_INV_Add0~14_sumout\ <= NOT \Add0~14_sumout\;
\ALT_INV_Add0~10_sumout\ <= NOT \Add0~10_sumout\;
ALT_INV_k1(23) <= NOT k1(23);
ALT_INV_k0(22) <= NOT k0(22);
ALT_INV_k1(22) <= NOT k1(22);
ALT_INV_k0(21) <= NOT k0(21);
ALT_INV_k1(21) <= NOT k1(21);
ALT_INV_k0(19) <= NOT k0(19);
ALT_INV_k1(19) <= NOT k1(19);
ALT_INV_k0(18) <= NOT k0(18);
ALT_INV_k1(18) <= NOT k1(18);
ALT_INV_k0(17) <= NOT k0(17);
ALT_INV_k1(17) <= NOT k1(17);
ALT_INV_k0(16) <= NOT k0(16);
ALT_INV_k1(16) <= NOT k1(16);
ALT_INV_k0(15) <= NOT k0(15);
ALT_INV_k1(15) <= NOT k1(15);
ALT_INV_k0(14) <= NOT k0(14);
ALT_INV_k1(14) <= NOT k1(14);
ALT_INV_k0(13) <= NOT k0(13);
ALT_INV_k1(13) <= NOT k1(13);
ALT_INV_k0(12) <= NOT k0(12);
ALT_INV_k1(12) <= NOT k1(12);
ALT_INV_k0(11) <= NOT k0(11);
ALT_INV_k1(11) <= NOT k1(11);
ALT_INV_k0(9) <= NOT k0(9);
ALT_INV_k1(9) <= NOT k1(9);
ALT_INV_k0(8) <= NOT k0(8);
ALT_INV_k1(8) <= NOT k1(8);
ALT_INV_k0(7) <= NOT k0(7);
ALT_INV_k1(7) <= NOT k1(7);
ALT_INV_k0(6) <= NOT k0(6);
ALT_INV_k1(6) <= NOT k1(6);
ALT_INV_k0(5) <= NOT k0(5);
ALT_INV_k1(5) <= NOT k1(5);
ALT_INV_k0(4) <= NOT k0(4);
ALT_INV_k1(4) <= NOT k1(4);
ALT_INV_k1(3) <= NOT k1(3);
ALT_INV_k1(2) <= NOT k1(2);
ALT_INV_k1(1) <= NOT k1(1);
ALT_INV_k2(3) <= NOT k2(3);
ALT_INV_k2(2) <= NOT k2(2);
ALT_INV_k2(1) <= NOT k2(1);
ALT_INV_k2(0) <= NOT k2(0);
ALT_INV_k0(3) <= NOT k0(3);
ALT_INV_k0(2) <= NOT k0(2);
ALT_INV_k0(1) <= NOT k0(1);
\ALT_INV_sum[0]~32_combout\ <= NOT \sum[0]~32_combout\;
\ALT_INV_sum[31]~31_combout\ <= NOT \sum[31]~31_combout\;
\ALT_INV_zt~31_combout\ <= NOT \zt~31_combout\;
\ALT_INV_yt~31_combout\ <= NOT \yt~31_combout\;
\ALT_INV_yt~30_combout\ <= NOT \yt~30_combout\;
\ALT_INV_yt~29_combout\ <= NOT \yt~29_combout\;
\ALT_INV_yt~28_combout\ <= NOT \yt~28_combout\;
\ALT_INV_yt~27_combout\ <= NOT \yt~27_combout\;
\ALT_INV_zt~30_combout\ <= NOT \zt~30_combout\;
\ALT_INV_zt~29_combout\ <= NOT \zt~29_combout\;
\ALT_INV_zt~28_combout\ <= NOT \zt~28_combout\;
\ALT_INV_zt~27_combout\ <= NOT \zt~27_combout\;
\ALT_INV_zt~26_combout\ <= NOT \zt~26_combout\;
\ALT_INV_z~93_combout\ <= NOT \z~93_combout\;
\ALT_INV_yt~26_combout\ <= NOT \yt~26_combout\;
\ALT_INV_yt~25_combout\ <= NOT \yt~25_combout\;
\ALT_INV_yt~24_combout\ <= NOT \yt~24_combout\;
\ALT_INV_yt~23_combout\ <= NOT \yt~23_combout\;
\ALT_INV_yt~22_combout\ <= NOT \yt~22_combout\;
\ALT_INV_yt~21_combout\ <= NOT \yt~21_combout\;
\ALT_INV_yt~20_combout\ <= NOT \yt~20_combout\;
\ALT_INV_yt~19_combout\ <= NOT \yt~19_combout\;
\ALT_INV_yt~18_combout\ <= NOT \yt~18_combout\;
\ALT_INV_yt~17_combout\ <= NOT \yt~17_combout\;
\ALT_INV_yt~16_combout\ <= NOT \yt~16_combout\;
\ALT_INV_yt~15_combout\ <= NOT \yt~15_combout\;
\ALT_INV_yt~14_combout\ <= NOT \yt~14_combout\;
\ALT_INV_yt~13_combout\ <= NOT \yt~13_combout\;
\ALT_INV_yt~12_combout\ <= NOT \yt~12_combout\;
\ALT_INV_yt~11_combout\ <= NOT \yt~11_combout\;
\ALT_INV_yt~10_combout\ <= NOT \yt~10_combout\;
\ALT_INV_yt~9_combout\ <= NOT \yt~9_combout\;
\ALT_INV_yt~8_combout\ <= NOT \yt~8_combout\;
\ALT_INV_yt~7_combout\ <= NOT \yt~7_combout\;
\ALT_INV_yt~6_combout\ <= NOT \yt~6_combout\;
\ALT_INV_yt~5_combout\ <= NOT \yt~5_combout\;
\ALT_INV_yt~4_combout\ <= NOT \yt~4_combout\;
\ALT_INV_yt~3_combout\ <= NOT \yt~3_combout\;
\ALT_INV_yt~2_combout\ <= NOT \yt~2_combout\;
\ALT_INV_yt~1_combout\ <= NOT \yt~1_combout\;
\ALT_INV_yt~0_combout\ <= NOT \yt~0_combout\;
\ALT_INV_zt~25_combout\ <= NOT \zt~25_combout\;
\ALT_INV_zt~24_combout\ <= NOT \zt~24_combout\;
\ALT_INV_zt~23_combout\ <= NOT \zt~23_combout\;
\ALT_INV_zt~22_combout\ <= NOT \zt~22_combout\;
\ALT_INV_zt~21_combout\ <= NOT \zt~21_combout\;
\ALT_INV_zt~20_combout\ <= NOT \zt~20_combout\;
\ALT_INV_zt~19_combout\ <= NOT \zt~19_combout\;
\ALT_INV_zt~18_combout\ <= NOT \zt~18_combout\;
\ALT_INV_zt~17_combout\ <= NOT \zt~17_combout\;
\ALT_INV_zt~16_combout\ <= NOT \zt~16_combout\;
\ALT_INV_zt~15_combout\ <= NOT \zt~15_combout\;
\ALT_INV_zt~14_combout\ <= NOT \zt~14_combout\;
\ALT_INV_zt~13_combout\ <= NOT \zt~13_combout\;
\ALT_INV_zt~12_combout\ <= NOT \zt~12_combout\;
\ALT_INV_zt~11_combout\ <= NOT \zt~11_combout\;
\ALT_INV_zt~10_combout\ <= NOT \zt~10_combout\;
\ALT_INV_zt~9_combout\ <= NOT \zt~9_combout\;
\ALT_INV_zt~8_combout\ <= NOT \zt~8_combout\;
\ALT_INV_zt~7_combout\ <= NOT \zt~7_combout\;
\ALT_INV_zt~6_combout\ <= NOT \zt~6_combout\;
\ALT_INV_zt~5_combout\ <= NOT \zt~5_combout\;
\ALT_INV_zt~4_combout\ <= NOT \zt~4_combout\;
\ALT_INV_zt~3_combout\ <= NOT \zt~3_combout\;
\ALT_INV_zt~2_combout\ <= NOT \zt~2_combout\;
\ALT_INV_zt~1_combout\ <= NOT \zt~1_combout\;
\ALT_INV_zt~0_combout\ <= NOT \zt~0_combout\;
\ALT_INV_y~31_combout\ <= NOT \y~31_combout\;
\ALT_INV_Add9~1_combout\ <= NOT \Add9~1_combout\;
\ALT_INV_Add9~0_combout\ <= NOT \Add9~0_combout\;
\ALT_INV_value[43]~input_o\ <= NOT \value[43]~input_o\;
\ALT_INV_value[42]~input_o\ <= NOT \value[42]~input_o\;
\ALT_INV_value[41]~input_o\ <= NOT \value[41]~input_o\;
\ALT_INV_value[40]~input_o\ <= NOT \value[40]~input_o\;
\ALT_INV_value[39]~input_o\ <= NOT \value[39]~input_o\;
\ALT_INV_value[38]~input_o\ <= NOT \value[38]~input_o\;
\ALT_INV_value[37]~input_o\ <= NOT \value[37]~input_o\;
\ALT_INV_value[36]~input_o\ <= NOT \value[36]~input_o\;
\ALT_INV_value[35]~input_o\ <= NOT \value[35]~input_o\;
\ALT_INV_value[34]~input_o\ <= NOT \value[34]~input_o\;
\ALT_INV_value[33]~input_o\ <= NOT \value[33]~input_o\;
\ALT_INV_value[32]~input_o\ <= NOT \value[32]~input_o\;
\ALT_INV_value[31]~input_o\ <= NOT \value[31]~input_o\;
\ALT_INV_value[30]~input_o\ <= NOT \value[30]~input_o\;
\ALT_INV_value[29]~input_o\ <= NOT \value[29]~input_o\;
\ALT_INV_value[28]~input_o\ <= NOT \value[28]~input_o\;
\ALT_INV_value[27]~input_o\ <= NOT \value[27]~input_o\;
\ALT_INV_value[26]~input_o\ <= NOT \value[26]~input_o\;
\ALT_INV_value[25]~input_o\ <= NOT \value[25]~input_o\;
\ALT_INV_value[24]~input_o\ <= NOT \value[24]~input_o\;
\ALT_INV_value[23]~input_o\ <= NOT \value[23]~input_o\;
\ALT_INV_value[22]~input_o\ <= NOT \value[22]~input_o\;
\ALT_INV_value[21]~input_o\ <= NOT \value[21]~input_o\;
\ALT_INV_value[20]~input_o\ <= NOT \value[20]~input_o\;
\ALT_INV_value[19]~input_o\ <= NOT \value[19]~input_o\;
\ALT_INV_value[18]~input_o\ <= NOT \value[18]~input_o\;
\ALT_INV_value[17]~input_o\ <= NOT \value[17]~input_o\;
\ALT_INV_value[16]~input_o\ <= NOT \value[16]~input_o\;
\ALT_INV_value[15]~input_o\ <= NOT \value[15]~input_o\;
\ALT_INV_value[14]~input_o\ <= NOT \value[14]~input_o\;
\ALT_INV_value[13]~input_o\ <= NOT \value[13]~input_o\;
\ALT_INV_value[12]~input_o\ <= NOT \value[12]~input_o\;
\ALT_INV_value[11]~input_o\ <= NOT \value[11]~input_o\;
\ALT_INV_value[10]~input_o\ <= NOT \value[10]~input_o\;
\ALT_INV_value[9]~input_o\ <= NOT \value[9]~input_o\;
\ALT_INV_value[8]~input_o\ <= NOT \value[8]~input_o\;
\ALT_INV_value[7]~input_o\ <= NOT \value[7]~input_o\;
\ALT_INV_value[6]~input_o\ <= NOT \value[6]~input_o\;
\ALT_INV_value[5]~input_o\ <= NOT \value[5]~input_o\;
\ALT_INV_value[4]~input_o\ <= NOT \value[4]~input_o\;
\ALT_INV_value[3]~input_o\ <= NOT \value[3]~input_o\;
\ALT_INV_value[2]~input_o\ <= NOT \value[2]~input_o\;
\ALT_INV_value[1]~input_o\ <= NOT \value[1]~input_o\;
ALT_INV_k3(31) <= NOT k3(31);
ALT_INV_k2(31) <= NOT k2(31);
ALT_INV_k2(27) <= NOT k2(27);
ALT_INV_k3(27) <= NOT k3(27);
ALT_INV_k2(25) <= NOT k2(25);
ALT_INV_k3(25) <= NOT k3(25);
ALT_INV_k2(15) <= NOT k2(15);
ALT_INV_k3(15) <= NOT k3(15);
ALT_INV_k2(5) <= NOT k2(5);
ALT_INV_k3(5) <= NOT k3(5);
ALT_INV_k0(30) <= NOT k0(30);
ALT_INV_k1(30) <= NOT k1(30);
ALT_INV_k0(27) <= NOT k0(27);
ALT_INV_k1(27) <= NOT k1(27);
ALT_INV_k0(26) <= NOT k0(26);
ALT_INV_k1(26) <= NOT k1(26);
ALT_INV_k0(20) <= NOT k0(20);
ALT_INV_k1(20) <= NOT k1(20);
ALT_INV_k0(10) <= NOT k0(10);
ALT_INV_k1(10) <= NOT k1(10);
ALT_INV_k1(0) <= NOT k1(0);
ALT_INV_k0(0) <= NOT k0(0);
ALT_INV_k3(30) <= NOT k3(30);
ALT_INV_k2(30) <= NOT k2(30);
ALT_INV_k2(29) <= NOT k2(29);
ALT_INV_k3(29) <= NOT k3(29);
ALT_INV_k2(28) <= NOT k2(28);
ALT_INV_k3(28) <= NOT k3(28);
ALT_INV_k2(26) <= NOT k2(26);
ALT_INV_k3(26) <= NOT k3(26);
ALT_INV_k2(24) <= NOT k2(24);
ALT_INV_k3(24) <= NOT k3(24);
ALT_INV_k2(23) <= NOT k2(23);
ALT_INV_k3(23) <= NOT k3(23);
ALT_INV_k2(22) <= NOT k2(22);
ALT_INV_k3(22) <= NOT k3(22);
ALT_INV_k2(21) <= NOT k2(21);
ALT_INV_k3(21) <= NOT k3(21);
ALT_INV_k2(20) <= NOT k2(20);
ALT_INV_k3(20) <= NOT k3(20);
ALT_INV_k2(19) <= NOT k2(19);
ALT_INV_k3(19) <= NOT k3(19);
ALT_INV_k2(18) <= NOT k2(18);
ALT_INV_k3(18) <= NOT k3(18);
ALT_INV_k2(17) <= NOT k2(17);
ALT_INV_k3(17) <= NOT k3(17);
ALT_INV_k2(16) <= NOT k2(16);
ALT_INV_k3(16) <= NOT k3(16);
ALT_INV_k2(14) <= NOT k2(14);
ALT_INV_k3(14) <= NOT k3(14);
ALT_INV_k2(13) <= NOT k2(13);
ALT_INV_k3(13) <= NOT k3(13);
ALT_INV_k2(12) <= NOT k2(12);
ALT_INV_k3(12) <= NOT k3(12);
ALT_INV_k2(11) <= NOT k2(11);
ALT_INV_k3(11) <= NOT k3(11);
ALT_INV_k2(10) <= NOT k2(10);
ALT_INV_k3(10) <= NOT k3(10);
ALT_INV_k2(9) <= NOT k2(9);
ALT_INV_k3(9) <= NOT k3(9);
ALT_INV_k2(8) <= NOT k2(8);
ALT_INV_k3(8) <= NOT k3(8);
ALT_INV_k2(7) <= NOT k2(7);
ALT_INV_k3(7) <= NOT k3(7);
ALT_INV_k2(6) <= NOT k2(6);
ALT_INV_k3(6) <= NOT k3(6);
ALT_INV_k2(4) <= NOT k2(4);
ALT_INV_k3(4) <= NOT k3(4);
ALT_INV_k3(3) <= NOT k3(3);
ALT_INV_k3(2) <= NOT k3(2);
ALT_INV_k3(1) <= NOT k3(1);
ALT_INV_k3(0) <= NOT k3(0);
ALT_INV_k0(31) <= NOT k0(31);
ALT_INV_k1(31) <= NOT k1(31);
ALT_INV_k0(29) <= NOT k0(29);
ALT_INV_k1(29) <= NOT k1(29);
ALT_INV_k0(28) <= NOT k0(28);
ALT_INV_k1(28) <= NOT k1(28);
ALT_INV_k0(25) <= NOT k0(25);
ALT_INV_k1(25) <= NOT k1(25);
ALT_INV_k0(24) <= NOT k0(24);
ALT_INV_k1(24) <= NOT k1(24);
ALT_INV_k0(23) <= NOT k0(23);
\ALT_INV_key[125]~input_o\ <= NOT \key[125]~input_o\;
\ALT_INV_key[92]~input_o\ <= NOT \key[92]~input_o\;
\ALT_INV_key[124]~input_o\ <= NOT \key[124]~input_o\;
\ALT_INV_key[90]~input_o\ <= NOT \key[90]~input_o\;
\ALT_INV_key[122]~input_o\ <= NOT \key[122]~input_o\;
\ALT_INV_key[88]~input_o\ <= NOT \key[88]~input_o\;
\ALT_INV_key[120]~input_o\ <= NOT \key[120]~input_o\;
\ALT_INV_key[87]~input_o\ <= NOT \key[87]~input_o\;
\ALT_INV_key[119]~input_o\ <= NOT \key[119]~input_o\;
\ALT_INV_key[86]~input_o\ <= NOT \key[86]~input_o\;
\ALT_INV_key[118]~input_o\ <= NOT \key[118]~input_o\;
\ALT_INV_key[85]~input_o\ <= NOT \key[85]~input_o\;
\ALT_INV_key[117]~input_o\ <= NOT \key[117]~input_o\;
\ALT_INV_key[84]~input_o\ <= NOT \key[84]~input_o\;
\ALT_INV_key[116]~input_o\ <= NOT \key[116]~input_o\;
\ALT_INV_key[83]~input_o\ <= NOT \key[83]~input_o\;
\ALT_INV_key[115]~input_o\ <= NOT \key[115]~input_o\;
\ALT_INV_key[82]~input_o\ <= NOT \key[82]~input_o\;
\ALT_INV_key[114]~input_o\ <= NOT \key[114]~input_o\;
\ALT_INV_key[81]~input_o\ <= NOT \key[81]~input_o\;
\ALT_INV_key[113]~input_o\ <= NOT \key[113]~input_o\;
\ALT_INV_key[80]~input_o\ <= NOT \key[80]~input_o\;
\ALT_INV_key[112]~input_o\ <= NOT \key[112]~input_o\;
\ALT_INV_key[78]~input_o\ <= NOT \key[78]~input_o\;
\ALT_INV_key[110]~input_o\ <= NOT \key[110]~input_o\;
\ALT_INV_key[77]~input_o\ <= NOT \key[77]~input_o\;
\ALT_INV_key[109]~input_o\ <= NOT \key[109]~input_o\;
\ALT_INV_key[76]~input_o\ <= NOT \key[76]~input_o\;
\ALT_INV_key[108]~input_o\ <= NOT \key[108]~input_o\;
\ALT_INV_key[75]~input_o\ <= NOT \key[75]~input_o\;
\ALT_INV_key[107]~input_o\ <= NOT \key[107]~input_o\;
\ALT_INV_key[74]~input_o\ <= NOT \key[74]~input_o\;
\ALT_INV_key[106]~input_o\ <= NOT \key[106]~input_o\;
\ALT_INV_key[73]~input_o\ <= NOT \key[73]~input_o\;
\ALT_INV_key[105]~input_o\ <= NOT \key[105]~input_o\;
\ALT_INV_key[72]~input_o\ <= NOT \key[72]~input_o\;
\ALT_INV_key[104]~input_o\ <= NOT \key[104]~input_o\;
\ALT_INV_key[71]~input_o\ <= NOT \key[71]~input_o\;
\ALT_INV_key[103]~input_o\ <= NOT \key[103]~input_o\;
\ALT_INV_key[70]~input_o\ <= NOT \key[70]~input_o\;
\ALT_INV_key[102]~input_o\ <= NOT \key[102]~input_o\;
\ALT_INV_key[68]~input_o\ <= NOT \key[68]~input_o\;
\ALT_INV_key[100]~input_o\ <= NOT \key[100]~input_o\;
\ALT_INV_key[99]~input_o\ <= NOT \key[99]~input_o\;
\ALT_INV_key[98]~input_o\ <= NOT \key[98]~input_o\;
\ALT_INV_key[97]~input_o\ <= NOT \key[97]~input_o\;
\ALT_INV_key[96]~input_o\ <= NOT \key[96]~input_o\;
\ALT_INV_key[31]~input_o\ <= NOT \key[31]~input_o\;
\ALT_INV_key[63]~input_o\ <= NOT \key[63]~input_o\;
\ALT_INV_key[29]~input_o\ <= NOT \key[29]~input_o\;
\ALT_INV_key[61]~input_o\ <= NOT \key[61]~input_o\;
\ALT_INV_key[28]~input_o\ <= NOT \key[28]~input_o\;
\ALT_INV_key[60]~input_o\ <= NOT \key[60]~input_o\;
\ALT_INV_key[25]~input_o\ <= NOT \key[25]~input_o\;
\ALT_INV_key[57]~input_o\ <= NOT \key[57]~input_o\;
\ALT_INV_key[24]~input_o\ <= NOT \key[24]~input_o\;
\ALT_INV_key[56]~input_o\ <= NOT \key[56]~input_o\;
\ALT_INV_key[23]~input_o\ <= NOT \key[23]~input_o\;
\ALT_INV_key[55]~input_o\ <= NOT \key[55]~input_o\;
\ALT_INV_key[22]~input_o\ <= NOT \key[22]~input_o\;
\ALT_INV_key[54]~input_o\ <= NOT \key[54]~input_o\;
\ALT_INV_key[21]~input_o\ <= NOT \key[21]~input_o\;
\ALT_INV_key[53]~input_o\ <= NOT \key[53]~input_o\;
\ALT_INV_key[19]~input_o\ <= NOT \key[19]~input_o\;
\ALT_INV_key[51]~input_o\ <= NOT \key[51]~input_o\;
\ALT_INV_key[18]~input_o\ <= NOT \key[18]~input_o\;
\ALT_INV_key[50]~input_o\ <= NOT \key[50]~input_o\;
\ALT_INV_key[17]~input_o\ <= NOT \key[17]~input_o\;
\ALT_INV_key[49]~input_o\ <= NOT \key[49]~input_o\;
\ALT_INV_key[16]~input_o\ <= NOT \key[16]~input_o\;
\ALT_INV_key[48]~input_o\ <= NOT \key[48]~input_o\;
\ALT_INV_key[15]~input_o\ <= NOT \key[15]~input_o\;
\ALT_INV_key[47]~input_o\ <= NOT \key[47]~input_o\;
\ALT_INV_key[14]~input_o\ <= NOT \key[14]~input_o\;
\ALT_INV_key[46]~input_o\ <= NOT \key[46]~input_o\;
\ALT_INV_key[13]~input_o\ <= NOT \key[13]~input_o\;
\ALT_INV_key[45]~input_o\ <= NOT \key[45]~input_o\;
\ALT_INV_key[12]~input_o\ <= NOT \key[12]~input_o\;
\ALT_INV_key[44]~input_o\ <= NOT \key[44]~input_o\;
\ALT_INV_key[11]~input_o\ <= NOT \key[11]~input_o\;
\ALT_INV_key[43]~input_o\ <= NOT \key[43]~input_o\;
\ALT_INV_key[9]~input_o\ <= NOT \key[9]~input_o\;
\ALT_INV_key[41]~input_o\ <= NOT \key[41]~input_o\;
\ALT_INV_key[8]~input_o\ <= NOT \key[8]~input_o\;
\ALT_INV_key[40]~input_o\ <= NOT \key[40]~input_o\;
\ALT_INV_key[7]~input_o\ <= NOT \key[7]~input_o\;
\ALT_INV_key[39]~input_o\ <= NOT \key[39]~input_o\;
\ALT_INV_key[6]~input_o\ <= NOT \key[6]~input_o\;
\ALT_INV_key[38]~input_o\ <= NOT \key[38]~input_o\;
\ALT_INV_key[5]~input_o\ <= NOT \key[5]~input_o\;
\ALT_INV_key[37]~input_o\ <= NOT \key[37]~input_o\;
\ALT_INV_key[4]~input_o\ <= NOT \key[4]~input_o\;
\ALT_INV_key[36]~input_o\ <= NOT \key[36]~input_o\;
\ALT_INV_key[35]~input_o\ <= NOT \key[35]~input_o\;
\ALT_INV_key[34]~input_o\ <= NOT \key[34]~input_o\;
\ALT_INV_key[33]~input_o\ <= NOT \key[33]~input_o\;
\ALT_INV_key[67]~input_o\ <= NOT \key[67]~input_o\;
\ALT_INV_key[66]~input_o\ <= NOT \key[66]~input_o\;
\ALT_INV_key[65]~input_o\ <= NOT \key[65]~input_o\;
\ALT_INV_key[64]~input_o\ <= NOT \key[64]~input_o\;
\ALT_INV_key[3]~input_o\ <= NOT \key[3]~input_o\;
\ALT_INV_key[2]~input_o\ <= NOT \key[2]~input_o\;
\ALT_INV_key[1]~input_o\ <= NOT \key[1]~input_o\;
\ALT_INV_value[63]~input_o\ <= NOT \value[63]~input_o\;
\ALT_INV_value[0]~input_o\ <= NOT \value[0]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_value[62]~input_o\ <= NOT \value[62]~input_o\;
\ALT_INV_value[61]~input_o\ <= NOT \value[61]~input_o\;
\ALT_INV_value[60]~input_o\ <= NOT \value[60]~input_o\;
\ALT_INV_value[59]~input_o\ <= NOT \value[59]~input_o\;
\ALT_INV_value[58]~input_o\ <= NOT \value[58]~input_o\;
\ALT_INV_value[57]~input_o\ <= NOT \value[57]~input_o\;
\ALT_INV_value[56]~input_o\ <= NOT \value[56]~input_o\;
\ALT_INV_value[55]~input_o\ <= NOT \value[55]~input_o\;
\ALT_INV_value[54]~input_o\ <= NOT \value[54]~input_o\;
\ALT_INV_value[53]~input_o\ <= NOT \value[53]~input_o\;
\ALT_INV_value[52]~input_o\ <= NOT \value[52]~input_o\;
\ALT_INV_value[51]~input_o\ <= NOT \value[51]~input_o\;
\ALT_INV_value[50]~input_o\ <= NOT \value[50]~input_o\;
\ALT_INV_value[49]~input_o\ <= NOT \value[49]~input_o\;
\ALT_INV_value[48]~input_o\ <= NOT \value[48]~input_o\;
\ALT_INV_value[47]~input_o\ <= NOT \value[47]~input_o\;
\ALT_INV_value[46]~input_o\ <= NOT \value[46]~input_o\;
\ALT_INV_value[45]~input_o\ <= NOT \value[45]~input_o\;
\ALT_INV_value[44]~input_o\ <= NOT \value[44]~input_o\;
\ALT_INV_key[127]~input_o\ <= NOT \key[127]~input_o\;
\ALT_INV_key[95]~input_o\ <= NOT \key[95]~input_o\;
\ALT_INV_key[91]~input_o\ <= NOT \key[91]~input_o\;
\ALT_INV_key[123]~input_o\ <= NOT \key[123]~input_o\;
\ALT_INV_key[89]~input_o\ <= NOT \key[89]~input_o\;
\ALT_INV_key[121]~input_o\ <= NOT \key[121]~input_o\;
\ALT_INV_key[79]~input_o\ <= NOT \key[79]~input_o\;
\ALT_INV_key[111]~input_o\ <= NOT \key[111]~input_o\;
\ALT_INV_key[69]~input_o\ <= NOT \key[69]~input_o\;
\ALT_INV_key[101]~input_o\ <= NOT \key[101]~input_o\;
\ALT_INV_key[30]~input_o\ <= NOT \key[30]~input_o\;
\ALT_INV_key[62]~input_o\ <= NOT \key[62]~input_o\;
\ALT_INV_key[27]~input_o\ <= NOT \key[27]~input_o\;
\ALT_INV_key[59]~input_o\ <= NOT \key[59]~input_o\;
\ALT_INV_key[26]~input_o\ <= NOT \key[26]~input_o\;
\ALT_INV_key[58]~input_o\ <= NOT \key[58]~input_o\;
\ALT_INV_key[20]~input_o\ <= NOT \key[20]~input_o\;
\ALT_INV_key[52]~input_o\ <= NOT \key[52]~input_o\;
\ALT_INV_key[10]~input_o\ <= NOT \key[10]~input_o\;
\ALT_INV_key[42]~input_o\ <= NOT \key[42]~input_o\;
\ALT_INV_key[32]~input_o\ <= NOT \key[32]~input_o\;
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\ALT_INV_key[126]~input_o\ <= NOT \key[126]~input_o\;
\ALT_INV_key[94]~input_o\ <= NOT \key[94]~input_o\;
\ALT_INV_key[93]~input_o\ <= NOT \key[93]~input_o\;

-- Location: IOOBUF_X78_Y0_N19
\ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ready~1_combout\,
	devoe => ww_devoe,
	o => ww_ready);

-- Location: IOOBUF_X38_Y81_N2
\out_ans[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~31_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(0));

-- Location: IOOBUF_X34_Y81_N42
\out_ans[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(1));

-- Location: IOOBUF_X28_Y81_N53
\out_ans[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(2));

-- Location: IOOBUF_X10_Y0_N59
\out_ans[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~2_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(3));

-- Location: IOOBUF_X40_Y81_N36
\out_ans[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~3_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(4));

-- Location: IOOBUF_X8_Y0_N2
\out_ans[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~4_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(5));

-- Location: IOOBUF_X30_Y81_N36
\out_ans[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~5_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(6));

-- Location: IOOBUF_X26_Y81_N93
\out_ans[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~6_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(7));

-- Location: IOOBUF_X20_Y0_N2
\out_ans[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~7_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(8));

-- Location: IOOBUF_X36_Y0_N19
\out_ans[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~8_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(9));

-- Location: IOOBUF_X24_Y0_N36
\out_ans[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~9_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(10));

-- Location: IOOBUF_X38_Y81_N19
\out_ans[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~10_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(11));

-- Location: IOOBUF_X89_Y4_N45
\out_ans[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~11_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(12));

-- Location: IOOBUF_X38_Y0_N36
\out_ans[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~12_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(13));

-- Location: IOOBUF_X34_Y0_N59
\out_ans[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~13_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(14));

-- Location: IOOBUF_X22_Y81_N2
\out_ans[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~14_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(15));

-- Location: IOOBUF_X26_Y0_N59
\out_ans[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~15_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(16));

-- Location: IOOBUF_X54_Y0_N36
\out_ans[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~16_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(17));

-- Location: IOOBUF_X24_Y0_N53
\out_ans[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~17_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(18));

-- Location: IOOBUF_X4_Y0_N2
\out_ans[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~18_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(19));

-- Location: IOOBUF_X52_Y0_N36
\out_ans[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~19_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(20));

-- Location: IOOBUF_X36_Y81_N36
\out_ans[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~20_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(21));

-- Location: IOOBUF_X54_Y0_N53
\out_ans[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~21_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(22));

-- Location: IOOBUF_X16_Y0_N19
\out_ans[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~22_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(23));

-- Location: IOOBUF_X8_Y0_N53
\out_ans[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~23_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(24));

-- Location: IOOBUF_X22_Y0_N19
\out_ans[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~24_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(25));

-- Location: IOOBUF_X14_Y0_N2
\out_ans[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~25_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(26));

-- Location: IOOBUF_X24_Y0_N2
\out_ans[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~26_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(27));

-- Location: IOOBUF_X50_Y0_N76
\out_ans[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~27_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(28));

-- Location: IOOBUF_X36_Y0_N53
\out_ans[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~28_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(29));

-- Location: IOOBUF_X4_Y0_N36
\out_ans[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~29_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(30));

-- Location: IOOBUF_X12_Y0_N2
\out_ans[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~30_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(31));

-- Location: IOOBUF_X32_Y81_N53
\out_ans[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~62_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(32));

-- Location: IOOBUF_X89_Y4_N62
\out_ans[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~63_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(33));

-- Location: IOOBUF_X32_Y81_N2
\out_ans[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~64_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(34));

-- Location: IOOBUF_X78_Y0_N36
\out_ans[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~65_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(35));

-- Location: IOOBUF_X89_Y6_N22
\out_ans[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~66_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(36));

-- Location: IOOBUF_X89_Y6_N5
\out_ans[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~67_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(37));

-- Location: IOOBUF_X68_Y0_N36
\out_ans[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~68_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(38));

-- Location: IOOBUF_X20_Y0_N19
\out_ans[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~69_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(39));

-- Location: IOOBUF_X34_Y81_N59
\out_ans[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~70_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(40));

-- Location: IOOBUF_X36_Y81_N19
\out_ans[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~71_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(41));

-- Location: IOOBUF_X68_Y0_N53
\out_ans[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~72_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(42));

-- Location: IOOBUF_X89_Y25_N5
\out_ans[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~73_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(43));

-- Location: IOOBUF_X89_Y9_N22
\out_ans[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~74_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(44));

-- Location: IOOBUF_X38_Y81_N36
\out_ans[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~75_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(45));

-- Location: IOOBUF_X88_Y0_N54
\out_ans[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~76_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(46));

-- Location: IOOBUF_X89_Y9_N56
\out_ans[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~77_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(47));

-- Location: IOOBUF_X89_Y11_N96
\out_ans[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~78_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(48));

-- Location: IOOBUF_X76_Y0_N53
\out_ans[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~79_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(49));

-- Location: IOOBUF_X89_Y9_N39
\out_ans[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~80_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(50));

-- Location: IOOBUF_X74_Y0_N42
\out_ans[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~81_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(51));

-- Location: IOOBUF_X68_Y0_N19
\out_ans[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~82_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(52));

-- Location: IOOBUF_X88_Y0_N3
\out_ans[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~83_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(53));

-- Location: IOOBUF_X72_Y0_N19
\out_ans[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~84_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(54));

-- Location: IOOBUF_X84_Y0_N2
\out_ans[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~85_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(55));

-- Location: IOOBUF_X72_Y0_N53
\out_ans[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~86_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(56));

-- Location: IOOBUF_X72_Y0_N2
\out_ans[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~87_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(57));

-- Location: IOOBUF_X74_Y0_N76
\out_ans[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~88_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(58));

-- Location: IOOBUF_X70_Y0_N19
\out_ans[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~89_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(59));

-- Location: IOOBUF_X89_Y4_N96
\out_ans[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~90_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(60));

-- Location: IOOBUF_X74_Y0_N93
\out_ans[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~91_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(61));

-- Location: IOOBUF_X78_Y0_N2
\out_ans[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~92_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(62));

-- Location: IOOBUF_X60_Y0_N36
\out_ans[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~93_combout\,
	devoe => ww_devoe,
	o => ww_out_ans(63));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X32_Y81_N35
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X20_Y81_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X63_Y14_N12
\count_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~0_combout\ = ( \state_reg~q\ & ( ((!\start~input_o\ & !count_reg(0))) # (\reset~input_o\) ) ) # ( !\state_reg~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_start~input_o\,
	datad => ALT_INV_count_reg(0),
	dataf => \ALT_INV_state_reg~q\,
	combout => \count_reg~0_combout\);

-- Location: FF_X63_Y14_N14
\count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(0));

-- Location: LABCELL_X63_Y14_N3
\count_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~1_combout\ = ( \state_reg~q\ & ( ((!\start~input_o\ & (!count_reg(0) $ (!count_reg(1))))) # (\reset~input_o\) ) ) # ( !\state_reg~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111011101100110011101110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => ALT_INV_count_reg(0),
	datad => ALT_INV_count_reg(1),
	dataf => \ALT_INV_state_reg~q\,
	combout => \count_reg~1_combout\);

-- Location: FF_X63_Y14_N5
\count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(1));

-- Location: LABCELL_X63_Y14_N54
\count_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~2_combout\ = ( count_reg(2) & ( \state_reg~q\ & ( ((!\start~input_o\ & ((!count_reg(1)) # (!count_reg(0))))) # (\reset~input_o\) ) ) ) # ( !count_reg(2) & ( \state_reg~q\ & ( ((!\start~input_o\ & (count_reg(1) & count_reg(0)))) # 
-- (\reset~input_o\) ) ) ) # ( count_reg(2) & ( !\state_reg~q\ & ( \reset~input_o\ ) ) ) # ( !count_reg(2) & ( !\state_reg~q\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001110111011101110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => ALT_INV_count_reg(1),
	datad => ALT_INV_count_reg(0),
	datae => ALT_INV_count_reg(2),
	dataf => \ALT_INV_state_reg~q\,
	combout => \count_reg~2_combout\);

-- Location: FF_X63_Y14_N56
\count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(2));

-- Location: LABCELL_X63_Y14_N30
\Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = ( count_reg(0) & ( !count_reg(3) $ (((!count_reg(1)) # (!count_reg(2)))) ) ) # ( !count_reg(0) & ( count_reg(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count_reg(3),
	datac => ALT_INV_count_reg(1),
	datad => ALT_INV_count_reg(2),
	dataf => ALT_INV_count_reg(0),
	combout => \Add9~0_combout\);

-- Location: LABCELL_X63_Y14_N39
\count_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~3_combout\ = ( \Add9~0_combout\ & ( ((\state_reg~q\ & !\start~input_o\)) # (\reset~input_o\) ) ) # ( !\Add9~0_combout\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_Add9~0_combout\,
	combout => \count_reg~3_combout\);

-- Location: FF_X63_Y14_N41
\count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(3));

-- Location: LABCELL_X63_Y14_N48
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = ( count_reg(3) & ( (count_reg(0) & (count_reg(2) & count_reg(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count_reg(0),
	datac => ALT_INV_count_reg(2),
	datad => ALT_INV_count_reg(1),
	dataf => ALT_INV_count_reg(3),
	combout => \Add9~1_combout\);

-- Location: LABCELL_X63_Y14_N27
\count_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~4_combout\ = ( \Add9~1_combout\ & ( ((\state_reg~q\ & (!\start~input_o\ & !count_reg(4)))) # (\reset~input_o\) ) ) # ( !\Add9~1_combout\ & ( ((\state_reg~q\ & (!\start~input_o\ & count_reg(4)))) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111101001111000011110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => ALT_INV_count_reg(4),
	dataf => \ALT_INV_Add9~1_combout\,
	combout => \count_reg~4_combout\);

-- Location: FF_X63_Y14_N29
\count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(4));

-- Location: LABCELL_X63_Y14_N6
\count_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_reg~5_combout\ = ( count_reg(5) & ( \Add9~1_combout\ & ( ((!count_reg(4) & (\state_reg~q\ & !\start~input_o\))) # (\reset~input_o\) ) ) ) # ( !count_reg(5) & ( \Add9~1_combout\ & ( ((count_reg(4) & (\state_reg~q\ & !\start~input_o\))) # 
-- (\reset~input_o\) ) ) ) # ( count_reg(5) & ( !\Add9~1_combout\ & ( ((\state_reg~q\ & !\start~input_o\)) # (\reset~input_o\) ) ) ) # ( !count_reg(5) & ( !\Add9~1_combout\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011001100110111001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_reg(4),
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_start~input_o\,
	datae => ALT_INV_count_reg(5),
	dataf => \ALT_INV_Add9~1_combout\,
	combout => \count_reg~5_combout\);

-- Location: FF_X63_Y14_N8
\count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(5));

-- Location: LABCELL_X63_Y14_N42
\ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ready~0_combout\ = ( count_reg(1) & ( count_reg(0) & ( (count_reg(4) & (!count_reg(5) & (count_reg(2) & count_reg(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count_reg(4),
	datab => ALT_INV_count_reg(5),
	datac => ALT_INV_count_reg(2),
	datad => ALT_INV_count_reg(3),
	datae => ALT_INV_count_reg(1),
	dataf => ALT_INV_count_reg(0),
	combout => \ready~0_combout\);

-- Location: LABCELL_X63_Y14_N33
\state_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_reg~0_combout\ = ( \ready~0_combout\ & ( (!\start~input_o\ & (!\reset~input_o\ & !\state_reg~q\)) ) ) # ( !\ready~0_combout\ & ( (!\start~input_o\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_ready~0_combout\,
	combout => \state_reg~0_combout\);

-- Location: FF_X63_Y14_N35
state_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg~q\);

-- Location: LABCELL_X67_Y14_N24
\ready~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ready~1_combout\ = ( \ready~0_combout\ & ( !\state_reg~q\ ) ) # ( !\ready~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_ready~0_combout\,
	combout => \ready~1_combout\);

-- Location: IOIBUF_X12_Y81_N35
\value[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(0),
	o => \value[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LABCELL_X64_Y15_N24
\k0[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(0) = ( \state_reg~q\ & ( k0(0) ) ) # ( !\state_reg~q\ & ( k0(0) & ( \key[0]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k0(0) & ( \key[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[0]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(0),
	combout => k0(0));

-- Location: IOIBUF_X22_Y0_N1
\key[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(32),
	o => \key[32]~input_o\);

-- Location: LABCELL_X63_Y14_N36
\k1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(0) = ( \state_reg~q\ & ( k1(0) ) ) # ( !\state_reg~q\ & ( \key[32]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[32]~input_o\,
	datad => ALT_INV_k1(0),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(0));

-- Location: IOIBUF_X14_Y0_N52
\key[69]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(69),
	o => \key[69]~input_o\);

-- Location: LABCELL_X61_Y14_N48
\k2[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(5) = ( k2(5) & ( (\state_reg~q\) # (\key[69]~input_o\) ) ) # ( !k2(5) & ( (\key[69]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[69]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(5),
	combout => k2(5));

-- Location: IOIBUF_X28_Y0_N52
\value[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(1),
	o => \value[1]~input_o\);

-- Location: IOIBUF_X18_Y81_N75
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: MLABCELL_X65_Y14_N48
\k0[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(1) = ( \state_reg~q\ & ( k0(1) ) ) # ( !\state_reg~q\ & ( k0(1) & ( \key[1]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k0(1) & ( \key[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[1]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(1),
	combout => k0(1));

-- Location: IOIBUF_X89_Y16_N55
\value[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(33),
	o => \value[33]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\key[65]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(65),
	o => \key[65]~input_o\);

-- Location: LABCELL_X63_Y15_N15
\k2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(1) = ( k2(1) & ( (\state_reg~q\) # (\key[65]~input_o\) ) ) # ( !k2(1) & ( (\key[65]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[65]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(1),
	combout => k2(1));

-- Location: IOIBUF_X89_Y8_N38
\value[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(34),
	o => \value[34]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\key[66]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(66),
	o => \key[66]~input_o\);

-- Location: LABCELL_X63_Y15_N42
\k2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(2) = ( k2(2) & ( (\state_reg~q\) # (\key[66]~input_o\) ) ) # ( !k2(2) & ( (\key[66]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[66]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(2),
	combout => k2(2));

-- Location: IOIBUF_X89_Y20_N78
\key[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LABCELL_X63_Y16_N42
\k0[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(2) = ( \state_reg~q\ & ( k0(2) ) ) # ( !\state_reg~q\ & ( k0(2) & ( \key[2]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k0(2) & ( \key[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[2]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(2),
	combout => k0(2));

-- Location: IOIBUF_X6_Y0_N52
\key[71]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(71),
	o => \key[71]~input_o\);

-- Location: LABCELL_X62_Y16_N12
\k2[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(7) = ( k2(7) & ( (\key[71]~input_o\) # (\state_reg~q\) ) ) # ( !k2(7) & ( (!\state_reg~q\ & \key[71]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[71]~input_o\,
	dataf => ALT_INV_k2(7),
	combout => k2(7));

-- Location: IOIBUF_X28_Y0_N1
\key[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: LABCELL_X63_Y14_N15
\k0[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(3) = ( k0(3) & ( (\key[3]~input_o\) # (\state_reg~q\) ) ) # ( !k0(3) & ( (!\state_reg~q\ & \key[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[3]~input_o\,
	dataf => ALT_INV_k0(3),
	combout => k0(3));

-- Location: IOIBUF_X22_Y81_N52
\key[67]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(67),
	o => \key[67]~input_o\);

-- Location: LABCELL_X63_Y14_N24
\k2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(3) = ( k2(3) & ( (\key[67]~input_o\) # (\state_reg~q\) ) ) # ( !k2(3) & ( (!\state_reg~q\ & \key[67]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[67]~input_o\,
	dataf => ALT_INV_k2(3),
	combout => k2(3));

-- Location: IOIBUF_X40_Y0_N35
\value[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(4),
	o => \value[4]~input_o\);

-- Location: MLABCELL_X65_Y14_N36
\sum[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[0]~32_combout\ = (\state_reg~q\ & !\sum[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_sum[0]~32_combout\,
	combout => \sum[0]~32_combout\);

-- Location: LABCELL_X61_Y15_N0
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_sumout\ = SUM(( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( (\state_reg~q\ & \Add0~2_sumout\) ) + ( !VCC ))
-- \Add0~3\ = CARRY(( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( (\state_reg~q\ & \Add0~2_sumout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~2_sumout\,
	datad => \ALT_INV_sum[0]~32_combout\,
	cin => GND,
	sumout => \Add0~2_sumout\,
	cout => \Add0~3\);

-- Location: LABCELL_X61_Y15_N3
\Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~6_sumout\ = SUM(( (\state_reg~q\ & \Add0~6_sumout\) ) + ( GND ) + ( \Add0~3\ ))
-- \Add0~7\ = CARRY(( (\state_reg~q\ & \Add0~6_sumout\) ) + ( GND ) + ( \Add0~3\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~6_sumout\,
	cin => \Add0~3\,
	sumout => \Add0~6_sumout\,
	cout => \Add0~7\);

-- Location: LABCELL_X61_Y15_N6
\Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~10_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( VCC ) + ( \Add0~7\ ))
-- \Add0~11\ = CARRY(( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( VCC ) + ( \Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~10_sumout\,
	cin => \Add0~7\,
	sumout => \Add0~10_sumout\,
	cout => \Add0~11\);

-- Location: LABCELL_X61_Y15_N9
\Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~14_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( VCC ) + ( \Add0~11\ ))
-- \Add0~15\ = CARRY(( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( VCC ) + ( \Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~14_sumout\,
	cin => \Add0~11\,
	sumout => \Add0~14_sumout\,
	cout => \Add0~15\);

-- Location: LABCELL_X61_Y15_N12
\Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~18_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( VCC ) + ( \Add0~15\ ))
-- \Add0~19\ = CARRY(( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( VCC ) + ( \Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~18_sumout\,
	cin => \Add0~15\,
	sumout => \Add0~18_sumout\,
	cout => \Add0~19\);

-- Location: LABCELL_X61_Y15_N15
\Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~22_sumout\ = SUM(( (\state_reg~q\ & \Add0~22_sumout\) ) + ( GND ) + ( \Add0~19\ ))
-- \Add0~23\ = CARRY(( (\state_reg~q\ & \Add0~22_sumout\) ) + ( GND ) + ( \Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~22_sumout\,
	cin => \Add0~19\,
	sumout => \Add0~22_sumout\,
	cout => \Add0~23\);

-- Location: LABCELL_X61_Y15_N18
\Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~26_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( VCC ) + ( \Add0~23\ ))
-- \Add0~27\ = CARRY(( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( VCC ) + ( \Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~26_sumout\,
	cin => \Add0~23\,
	sumout => \Add0~26_sumout\,
	cout => \Add0~27\);

-- Location: LABCELL_X61_Y15_N21
\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( VCC ) + ( \Add0~27\ ))
-- \Add0~31\ = CARRY(( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( VCC ) + ( \Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~30_sumout\,
	cin => \Add0~27\,
	sumout => \Add0~30_sumout\,
	cout => \Add0~31\);

-- Location: LABCELL_X61_Y15_N24
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_sumout\ = SUM(( (\state_reg~q\ & \Add0~34_sumout\) ) + ( GND ) + ( \Add0~31\ ))
-- \Add0~35\ = CARRY(( (\state_reg~q\ & \Add0~34_sumout\) ) + ( GND ) + ( \Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~34_sumout\,
	cin => \Add0~31\,
	sumout => \Add0~34_sumout\,
	cout => \Add0~35\);

-- Location: IOIBUF_X89_Y13_N21
\value[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(42),
	o => \value[42]~input_o\);

-- Location: IOIBUF_X24_Y81_N18
\key[74]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(74),
	o => \key[74]~input_o\);

-- Location: LABCELL_X62_Y16_N15
\k2[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(10) = ( k2(10) & ( (\key[74]~input_o\) # (\state_reg~q\) ) ) # ( !k2(10) & ( (!\state_reg~q\ & \key[74]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[74]~input_o\,
	dataf => ALT_INV_k2(10),
	combout => k2(10));

-- Location: IOIBUF_X40_Y81_N18
\key[73]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(73),
	o => \key[73]~input_o\);

-- Location: LABCELL_X62_Y16_N9
\k2[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(9) = ( k2(9) & ( (\key[73]~input_o\) # (\state_reg~q\) ) ) # ( !k2(9) & ( (!\state_reg~q\ & \key[73]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[73]~input_o\,
	dataf => ALT_INV_k2(9),
	combout => k2(9));

-- Location: IOIBUF_X58_Y0_N92
\key[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(37),
	o => \key[37]~input_o\);

-- Location: LABCELL_X62_Y14_N18
\k1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(5) = ( k1(5) & ( (\key[37]~input_o\) # (\state_reg~q\) ) ) # ( !k1(5) & ( (!\state_reg~q\ & \key[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[37]~input_o\,
	dataf => ALT_INV_k1(5),
	combout => k1(5));

-- Location: IOIBUF_X89_Y13_N4
\value[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(41),
	o => \value[41]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\key[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(36),
	o => \key[36]~input_o\);

-- Location: LABCELL_X62_Y14_N6
\k1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(4) = ( k1(4) & ( (\state_reg~q\) # (\key[36]~input_o\) ) ) # ( !k1(4) & ( (\key[36]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[36]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(4),
	combout => k1(4));

-- Location: IOIBUF_X89_Y16_N38
\value[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(40),
	o => \value[40]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\key[72]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(72),
	o => \key[72]~input_o\);

-- Location: LABCELL_X62_Y16_N6
\k2[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(8) = ( k2(8) & ( (\key[72]~input_o\) # (\state_reg~q\) ) ) # ( !k2(8) & ( (!\state_reg~q\ & \key[72]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[72]~input_o\,
	dataf => ALT_INV_k2(8),
	combout => k2(8));

-- Location: IOIBUF_X89_Y20_N61
\key[70]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(70),
	o => \key[70]~input_o\);

-- Location: LABCELL_X62_Y16_N21
\k2[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(6) = ( \state_reg~q\ & ( k2(6) ) ) # ( !\state_reg~q\ & ( \key[70]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[70]~input_o\,
	datad => ALT_INV_k2(6),
	dataf => \ALT_INV_state_reg~q\,
	combout => k2(6));

-- Location: IOIBUF_X40_Y81_N52
\key[68]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(68),
	o => \key[68]~input_o\);

-- Location: LABCELL_X62_Y16_N24
\k2[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(4) = ( \state_reg~q\ & ( k2(4) ) ) # ( !\state_reg~q\ & ( \key[68]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[68]~input_o\,
	datac => ALT_INV_k2(4),
	dataf => \ALT_INV_state_reg~q\,
	combout => k2(4));

-- Location: LABCELL_X62_Y16_N30
\Add5~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~28_sumout\ = SUM(( \Add4~125_sumout\ ) + ( k2(4) ) + ( !VCC ))
-- \Add5~29\ = CARRY(( \Add4~125_sumout\ ) + ( k2(4) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~125_sumout\,
	dataf => ALT_INV_k2(4),
	cin => GND,
	sumout => \Add5~28_sumout\,
	cout => \Add5~29\);

-- Location: LABCELL_X62_Y16_N33
\Add5~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~120_sumout\ = SUM(( \Add4~1_sumout\ ) + ( k2(5) ) + ( \Add5~29\ ))
-- \Add5~121\ = CARRY(( \Add4~1_sumout\ ) + ( k2(5) ) + ( \Add5~29\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(5),
	datac => \ALT_INV_Add4~1_sumout\,
	cin => \Add5~29\,
	sumout => \Add5~120_sumout\,
	cout => \Add5~121\);

-- Location: LABCELL_X62_Y16_N36
\Add5~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~32_sumout\ = SUM(( \Add4~5_sumout\ ) + ( k2(6) ) + ( \Add5~121\ ))
-- \Add5~33\ = CARRY(( \Add4~5_sumout\ ) + ( k2(6) ) + ( \Add5~121\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(6),
	datac => \ALT_INV_Add4~5_sumout\,
	cin => \Add5~121\,
	sumout => \Add5~32_sumout\,
	cout => \Add5~33\);

-- Location: LABCELL_X62_Y16_N39
\Add5~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~36_sumout\ = SUM(( \Add4~9_sumout\ ) + ( k2(7) ) + ( \Add5~33\ ))
-- \Add5~37\ = CARRY(( \Add4~9_sumout\ ) + ( k2(7) ) + ( \Add5~33\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(7),
	datad => \ALT_INV_Add4~9_sumout\,
	cin => \Add5~33\,
	sumout => \Add5~36_sumout\,
	cout => \Add5~37\);

-- Location: LABCELL_X62_Y16_N42
\Add5~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~40_sumout\ = SUM(( \Add4~13_sumout\ ) + ( k2(8) ) + ( \Add5~37\ ))
-- \Add5~41\ = CARRY(( \Add4~13_sumout\ ) + ( k2(8) ) + ( \Add5~37\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(8),
	datac => \ALT_INV_Add4~13_sumout\,
	cin => \Add5~37\,
	sumout => \Add5~40_sumout\,
	cout => \Add5~41\);

-- Location: IOIBUF_X14_Y0_N18
\value[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(35),
	o => \value[35]~input_o\);

-- Location: IOIBUF_X20_Y81_N18
\key[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(7),
	o => \key[7]~input_o\);

-- Location: LABCELL_X64_Y14_N15
\k0[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(7) = ( k0(7) & ( (\key[7]~input_o\) # (\state_reg~q\) ) ) # ( !k0(7) & ( (!\state_reg~q\ & \key[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[7]~input_o\,
	dataf => ALT_INV_k0(7),
	combout => k0(7));

-- Location: IOIBUF_X82_Y0_N92
\key[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(6),
	o => \key[6]~input_o\);

-- Location: LABCELL_X64_Y14_N6
\k0[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(6) = ( k0(6) & ( (\state_reg~q\) # (\key[6]~input_o\) ) ) # ( !k0(6) & ( (\key[6]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[6]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(6),
	combout => k0(6));

-- Location: IOIBUF_X22_Y81_N18
\key[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(5),
	o => \key[5]~input_o\);

-- Location: LABCELL_X64_Y14_N12
\k0[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(5) = ( k0(5) & ( (\key[5]~input_o\) # (\state_reg~q\) ) ) # ( !k0(5) & ( (!\state_reg~q\ & \key[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[5]~input_o\,
	dataf => ALT_INV_k0(5),
	combout => k0(5));

-- Location: IOIBUF_X70_Y0_N52
\value[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(32),
	o => \value[32]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\key[64]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(64),
	o => \key[64]~input_o\);

-- Location: LABCELL_X64_Y14_N27
\k2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(0) = ( k2(0) & ( (\state_reg~q\) # (\key[64]~input_o\) ) ) # ( !k2(0) & ( (\key[64]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[64]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(0),
	combout => k2(0));

-- Location: IOIBUF_X89_Y21_N38
\key[96]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(96),
	o => \key[96]~input_o\);

-- Location: MLABCELL_X65_Y14_N42
\k3[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(0) = ( \state_reg~q\ & ( k3(0) ) ) # ( !\state_reg~q\ & ( k3(0) & ( \key[96]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(0) & ( \key[96]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[96]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(0),
	combout => k3(0));

-- Location: MLABCELL_X59_Y15_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \Add4~17_sumout\ ) + ( k3(0) ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \Add4~17_sumout\ ) + ( k3(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(0),
	datac => \ALT_INV_Add4~17_sumout\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X60_Y15_N0
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( \Add4~125_sumout\ ) + ( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( !VCC ))
-- \Add6~6\ = CARRY(( \Add4~125_sumout\ ) + ( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~125_sumout\,
	dataf => \ALT_INV_sum[0]~32_combout\,
	cin => GND,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: LABCELL_X66_Y14_N21
\yt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~0_combout\ = ( \Add6~5_sumout\ & ( !k2(0) $ (\Add7~1_sumout\) ) ) # ( !\Add6~5_sumout\ & ( !k2(0) $ (!\Add7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(0),
	datad => \ALT_INV_Add7~1_sumout\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \yt~0_combout\);

-- Location: LABCELL_X66_Y14_N30
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( \yt~0_combout\ ) + ( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( !VCC ))
-- \Add8~2\ = CARRY(( \yt~0_combout\ ) + ( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_value[32]~input_o\,
	datad => \ALT_INV_yt~0_combout\,
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: IOIBUF_X88_Y0_N19
\key[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(4),
	o => \key[4]~input_o\);

-- Location: LABCELL_X64_Y14_N9
\k0[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(4) = ( k0(4) & ( (\state_reg~q\) # (\key[4]~input_o\) ) ) # ( !k0(4) & ( (\key[4]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[4]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(4),
	combout => k0(4));

-- Location: LABCELL_X64_Y14_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( k0(4) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( k0(4) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~1_sumout\,
	datad => \ALT_INV_value[32]~input_o\,
	dataf => ALT_INV_k0(4),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X64_Y14_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( (!\state_reg~q\ & (\value[33]~input_o\)) # (\state_reg~q\ & ((\Add8~5_sumout\))) ) + ( k0(5) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( (!\state_reg~q\ & (\value[33]~input_o\)) # (\state_reg~q\ & ((\Add8~5_sumout\))) ) + ( k0(5) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[33]~input_o\,
	datac => \ALT_INV_Add8~5_sumout\,
	dataf => ALT_INV_k0(5),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X64_Y14_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( k0(6) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( k0(6) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~9_sumout\,
	datad => \ALT_INV_value[34]~input_o\,
	dataf => ALT_INV_k0(6),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X64_Y14_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( k0(7) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( k0(7) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~13_sumout\,
	datad => \ALT_INV_value[35]~input_o\,
	dataf => ALT_INV_k0(7),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: IOIBUF_X62_Y0_N1
\value[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(39),
	o => \value[39]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\key[102]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(102),
	o => \key[102]~input_o\);

-- Location: LABCELL_X64_Y15_N48
\k3[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(6) = ( \state_reg~q\ & ( k3(6) ) ) # ( !\state_reg~q\ & ( k3(6) & ( \key[102]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(6) & ( \key[102]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[102]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(6),
	combout => k3(6));

-- Location: IOIBUF_X38_Y0_N52
\value[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(11),
	o => \value[11]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\key[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(11),
	o => \key[11]~input_o\);

-- Location: LABCELL_X64_Y14_N21
\k0[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(11) = ( k0(11) & ( (\state_reg~q\) # (\key[11]~input_o\) ) ) # ( !k0(11) & ( (\key[11]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[11]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(11),
	combout => k0(11));

-- Location: IOIBUF_X86_Y0_N52
\key[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(10),
	o => \key[10]~input_o\);

-- Location: LABCELL_X64_Y14_N0
\k0[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(10) = (!\state_reg~q\ & (\key[10]~input_o\)) # (\state_reg~q\ & ((k0(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[10]~input_o\,
	datab => \ALT_INV_state_reg~q\,
	datad => ALT_INV_k0(10),
	combout => k0(10));

-- Location: IOIBUF_X89_Y16_N21
\value[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(38),
	o => \value[38]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\value[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(37),
	o => \value[37]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\key[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(9),
	o => \key[9]~input_o\);

-- Location: LABCELL_X63_Y14_N51
\k0[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(9) = ( \state_reg~q\ & ( k0(9) ) ) # ( !\state_reg~q\ & ( \key[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k0(9),
	datac => \ALT_INV_key[9]~input_o\,
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(9));

-- Location: IOIBUF_X34_Y81_N92
\key[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(8),
	o => \key[8]~input_o\);

-- Location: LABCELL_X64_Y14_N18
\k0[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(8) = ( k0(8) & ( (\state_reg~q\) # (\key[8]~input_o\) ) ) # ( !k0(8) & ( (\key[8]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[8]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(8),
	combout => k0(8));

-- Location: IOIBUF_X70_Y0_N1
\value[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(36),
	o => \value[36]~input_o\);

-- Location: LABCELL_X64_Y14_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( k0(8) ) + ( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( k0(8) ) + ( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~17_sumout\,
	datad => ALT_INV_k0(8),
	dataf => \ALT_INV_value[36]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X64_Y14_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( (!\state_reg~q\ & (\value[37]~input_o\)) # (\state_reg~q\ & ((\Add8~21_sumout\))) ) + ( k0(9) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( (!\state_reg~q\ & (\value[37]~input_o\)) # (\state_reg~q\ & ((\Add8~21_sumout\))) ) + ( k0(9) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[37]~input_o\,
	datac => \ALT_INV_Add8~21_sumout\,
	dataf => ALT_INV_k0(9),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X64_Y14_N48
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( k0(10) ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add1~22\ ))
-- \Add1~94\ = CARRY(( k0(10) ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~25_sumout\,
	datad => ALT_INV_k0(10),
	dataf => \ALT_INV_value[38]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: LABCELL_X64_Y14_N51
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( k0(11) ) + ( (!\state_reg~q\ & (\value[39]~input_o\)) # (\state_reg~q\ & ((\Add8~29_sumout\))) ) + ( \Add1~94\ ))
-- \Add1~26\ = CARRY(( k0(11) ) + ( (!\state_reg~q\ & (\value[39]~input_o\)) # (\state_reg~q\ & ((\Add8~29_sumout\))) ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[39]~input_o\,
	datac => \ALT_INV_Add8~29_sumout\,
	datad => ALT_INV_k0(11),
	cin => \Add1~94\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X61_Y15_N27
\Add0~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~106_sumout\ = SUM(( (\state_reg~q\ & \Add0~106_sumout\) ) + ( GND ) + ( \Add0~35\ ))
-- \Add0~107\ = CARRY(( (\state_reg~q\ & \Add0~106_sumout\) ) + ( GND ) + ( \Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~106_sumout\,
	cin => \Add0~35\,
	sumout => \Add0~106_sumout\,
	cout => \Add0~107\);

-- Location: LABCELL_X61_Y15_N30
\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( VCC ) + ( \Add0~107\ ))
-- \Add0~39\ = CARRY(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( VCC ) + ( \Add0~107\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~38_sumout\,
	cin => \Add0~107\,
	sumout => \Add0~38_sumout\,
	cout => \Add0~39\);

-- Location: LABCELL_X60_Y15_N24
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( \Add4~29_sumout\ ) + ( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( \Add4~29_sumout\ ) + ( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~30_sumout\,
	datad => \ALT_INV_Add4~29_sumout\,
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: LABCELL_X60_Y15_N27
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( \Add4~33_sumout\ ) + ( (\state_reg~q\ & \Add0~34_sumout\) ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( \Add4~33_sumout\ ) + ( (\state_reg~q\ & \Add0~34_sumout\) ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~34_sumout\,
	datad => \ALT_INV_Add4~33_sumout\,
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: LABCELL_X60_Y15_N30
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( \Add4~37_sumout\ ) + ( (\state_reg~q\ & \Add0~106_sumout\) ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( \Add4~37_sumout\ ) + ( (\state_reg~q\ & \Add0~106_sumout\) ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~106_sumout\,
	datad => \ALT_INV_Add4~37_sumout\,
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: LABCELL_X60_Y15_N33
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( \Add4~41_sumout\ ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( \Add4~41_sumout\ ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~41_sumout\,
	datad => \ALT_INV_Add0~38_sumout\,
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\);

-- Location: IOIBUF_X89_Y21_N4
\key[107]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(107),
	o => \key[107]~input_o\);

-- Location: LABCELL_X64_Y13_N9
\k3[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(11) = ( k3(11) & ( (\state_reg~q\) # (\key[107]~input_o\) ) ) # ( !k3(11) & ( (\key[107]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[107]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(11),
	combout => k3(11));

-- Location: IOIBUF_X32_Y0_N52
\key[117]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(117),
	o => \key[117]~input_o\);

-- Location: LABCELL_X63_Y13_N54
\k3[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(21) = ( k3(21) & ( \state_reg~q\ ) ) # ( k3(21) & ( !\state_reg~q\ & ( \key[117]~input_o\ ) ) ) # ( !k3(21) & ( !\state_reg~q\ & ( \key[117]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[117]~input_o\,
	datae => ALT_INV_k3(21),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(21));

-- Location: LABCELL_X61_Y15_N33
\Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~42_sumout\ = SUM(( VCC ) + ( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( \Add0~39\ ))
-- \Add0~43\ = CARRY(( VCC ) + ( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( \Add0~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add0~42_sumout\,
	cin => \Add0~39\,
	sumout => \Add0~42_sumout\,
	cout => \Add0~43\);

-- Location: LABCELL_X61_Y15_N36
\Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~46_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( VCC ) + ( \Add0~43\ ))
-- \Add0~47\ = CARRY(( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( VCC ) + ( \Add0~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~46_sumout\,
	cin => \Add0~43\,
	sumout => \Add0~46_sumout\,
	cout => \Add0~47\);

-- Location: LABCELL_X61_Y15_N39
\Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~50_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( VCC ) + ( \Add0~47\ ))
-- \Add0~51\ = CARRY(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( VCC ) + ( \Add0~47\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~50_sumout\,
	cin => \Add0~47\,
	sumout => \Add0~50_sumout\,
	cout => \Add0~51\);

-- Location: LABCELL_X61_Y15_N42
\Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~54_sumout\ = SUM(( (\state_reg~q\ & \Add0~54_sumout\) ) + ( GND ) + ( \Add0~51\ ))
-- \Add0~55\ = CARRY(( (\state_reg~q\ & \Add0~54_sumout\) ) + ( GND ) + ( \Add0~51\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~54_sumout\,
	cin => \Add0~51\,
	sumout => \Add0~54_sumout\,
	cout => \Add0~55\);

-- Location: LABCELL_X61_Y15_N45
\Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~58_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( VCC ) + ( \Add0~55\ ))
-- \Add0~59\ = CARRY(( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( VCC ) + ( \Add0~55\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~58_sumout\,
	cin => \Add0~55\,
	sumout => \Add0~58_sumout\,
	cout => \Add0~59\);

-- Location: LABCELL_X61_Y15_N48
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( VCC ) + ( \Add0~59\ ))
-- \Add0~63\ = CARRY(( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( VCC ) + ( \Add0~59\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~62_sumout\,
	cin => \Add0~59\,
	sumout => \Add0~62_sumout\,
	cout => \Add0~63\);

-- Location: LABCELL_X61_Y15_N51
\Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~66_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( VCC ) + ( \Add0~63\ ))
-- \Add0~67\ = CARRY(( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( VCC ) + ( \Add0~63\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~66_sumout\,
	cin => \Add0~63\,
	sumout => \Add0~66_sumout\,
	cout => \Add0~67\);

-- Location: LABCELL_X61_Y15_N54
\Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~70_sumout\ = SUM(( (\state_reg~q\ & \Add0~70_sumout\) ) + ( GND ) + ( \Add0~67\ ))
-- \Add0~71\ = CARRY(( (\state_reg~q\ & \Add0~70_sumout\) ) + ( GND ) + ( \Add0~67\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~70_sumout\,
	cin => \Add0~67\,
	sumout => \Add0~70_sumout\,
	cout => \Add0~71\);

-- Location: LABCELL_X61_Y15_N57
\Add0~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~110_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( VCC ) + ( \Add0~71\ ))
-- \Add0~111\ = CARRY(( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( VCC ) + ( \Add0~71\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~110_sumout\,
	cin => \Add0~71\,
	sumout => \Add0~110_sumout\,
	cout => \Add0~111\);

-- Location: LABCELL_X61_Y14_N0
\Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~74_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( VCC ) + ( \Add0~111\ ))
-- \Add0~75\ = CARRY(( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( VCC ) + ( \Add0~111\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~74_sumout\,
	cin => \Add0~111\,
	sumout => \Add0~74_sumout\,
	cout => \Add0~75\);

-- Location: LABCELL_X61_Y14_N3
\Add0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~78_sumout\ = SUM(( (\state_reg~q\ & \Add0~78_sumout\) ) + ( GND ) + ( \Add0~75\ ))
-- \Add0~79\ = CARRY(( (\state_reg~q\ & \Add0~78_sumout\) ) + ( GND ) + ( \Add0~75\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~78_sumout\,
	cin => \Add0~75\,
	sumout => \Add0~78_sumout\,
	cout => \Add0~79\);

-- Location: IOIBUF_X56_Y0_N35
\key[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(54),
	o => \key[54]~input_o\);

-- Location: LABCELL_X62_Y12_N42
\k1[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(22) = ( k1(22) & ( (\state_reg~q\) # (\key[54]~input_o\) ) ) # ( !k1(22) & ( (\key[54]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[54]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(22),
	combout => k1(22));

-- Location: IOIBUF_X20_Y81_N52
\key[123]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(123),
	o => \key[123]~input_o\);

-- Location: LABCELL_X61_Y14_N54
\k3[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(27) = (!\state_reg~q\ & (\key[123]~input_o\)) # (\state_reg~q\ & ((k3(27))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[123]~input_o\,
	datad => ALT_INV_k3(27),
	combout => k3(27));

-- Location: IOIBUF_X16_Y0_N52
\key[122]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(122),
	o => \key[122]~input_o\);

-- Location: LABCELL_X60_Y14_N48
\k3[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(26) = (!\state_reg~q\ & (\key[122]~input_o\)) # (\state_reg~q\ & ((k3(26))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[122]~input_o\,
	datac => ALT_INV_k3(26),
	datad => \ALT_INV_state_reg~q\,
	combout => k3(26));

-- Location: IOIBUF_X66_Y0_N41
\value[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(59),
	o => \value[59]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\key[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(31),
	o => \key[31]~input_o\);

-- Location: LABCELL_X64_Y12_N6
\k0[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(31) = ( k0(31) & ( (\state_reg~q\) # (\key[31]~input_o\) ) ) # ( !k0(31) & ( (\key[31]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[31]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(31),
	combout => k0(31));

-- Location: IOIBUF_X89_Y23_N4
\key[90]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(90),
	o => \key[90]~input_o\);

-- Location: LABCELL_X62_Y15_N54
\k2[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(26) = (!\state_reg~q\ & (\key[90]~input_o\)) # (\state_reg~q\ & ((k2(26))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[90]~input_o\,
	datad => ALT_INV_k2(26),
	combout => k2(26));

-- Location: IOIBUF_X18_Y81_N58
\key[89]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(89),
	o => \key[89]~input_o\);

-- Location: LABCELL_X63_Y15_N18
\k2[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(25) = ( k2(25) & ( (\state_reg~q\) # (\key[89]~input_o\) ) ) # ( !k2(25) & ( (\key[89]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[89]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(25),
	combout => k2(25));

-- Location: IOIBUF_X52_Y0_N52
\value[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(21),
	o => \value[21]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\value[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(58),
	o => \value[58]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\key[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(53),
	o => \key[53]~input_o\);

-- Location: LABCELL_X62_Y12_N51
\k1[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(21) = ( k1(21) & ( (\key[53]~input_o\) # (\state_reg~q\) ) ) # ( !k1(21) & ( (!\state_reg~q\ & \key[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[53]~input_o\,
	dataf => ALT_INV_k1(21),
	combout => k1(21));

-- Location: IOIBUF_X84_Y0_N52
\key[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(52),
	o => \key[52]~input_o\);

-- Location: LABCELL_X62_Y12_N54
\k1[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(20) = ( \state_reg~q\ & ( k1(20) ) ) # ( !\state_reg~q\ & ( \key[52]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[52]~input_o\,
	datad => ALT_INV_k1(20),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(20));

-- Location: IOIBUF_X60_Y0_N18
\value[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(62),
	o => \value[62]~input_o\);

-- Location: LABCELL_X61_Y14_N6
\Add0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~82_sumout\ = SUM(( (\state_reg~q\ & \Add0~82_sumout\) ) + ( GND ) + ( \Add0~79\ ))
-- \Add0~83\ = CARRY(( (\state_reg~q\ & \Add0~82_sumout\) ) + ( GND ) + ( \Add0~79\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~82_sumout\,
	cin => \Add0~79\,
	sumout => \Add0~82_sumout\,
	cout => \Add0~83\);

-- Location: LABCELL_X61_Y14_N9
\Add0~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~86_sumout\ = SUM(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( GND ) + ( \Add0~83\ ))
-- \Add0~87\ = CARRY(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( GND ) + ( \Add0~83\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~86_sumout\,
	cin => \Add0~83\,
	sumout => \Add0~86_sumout\,
	cout => \Add0~87\);

-- Location: LABCELL_X61_Y14_N12
\Add0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~90_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( VCC ) + ( \Add0~87\ ))
-- \Add0~91\ = CARRY(( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( VCC ) + ( \Add0~87\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add0~90_sumout\,
	cin => \Add0~87\,
	sumout => \Add0~90_sumout\,
	cout => \Add0~91\);

-- Location: LABCELL_X61_Y14_N15
\Add0~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~114_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( VCC ) + ( \Add0~91\ ))
-- \Add0~115\ = CARRY(( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( VCC ) + ( \Add0~91\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~114_sumout\,
	cin => \Add0~91\,
	sumout => \Add0~114_sumout\,
	cout => \Add0~115\);

-- Location: LABCELL_X61_Y14_N18
\Add0~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~122_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( VCC ) + ( \Add0~115\ ))
-- \Add0~123\ = CARRY(( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( VCC ) + ( \Add0~115\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~122_sumout\,
	cin => \Add0~115\,
	sumout => \Add0~122_sumout\,
	cout => \Add0~123\);

-- Location: LABCELL_X61_Y14_N21
\Add0~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~94_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( VCC ) + ( \Add0~123\ ))
-- \Add0~95\ = CARRY(( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( VCC ) + ( \Add0~123\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~94_sumout\,
	cin => \Add0~123\,
	sumout => \Add0~94_sumout\,
	cout => \Add0~95\);

-- Location: LABCELL_X61_Y14_N24
\Add0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~98_sumout\ = SUM(( (\state_reg~q\ & \Add0~98_sumout\) ) + ( GND ) + ( \Add0~95\ ))
-- \Add0~99\ = CARRY(( (\state_reg~q\ & \Add0~98_sumout\) ) + ( GND ) + ( \Add0~95\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~98_sumout\,
	cin => \Add0~95\,
	sumout => \Add0~98_sumout\,
	cout => \Add0~99\);

-- Location: LABCELL_X61_Y14_N27
\Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~118_sumout\ = SUM(( (\state_reg~q\ & \Add0~118_sumout\) ) + ( GND ) + ( \Add0~99\ ))
-- \Add0~119\ = CARRY(( (\state_reg~q\ & \Add0~118_sumout\) ) + ( GND ) + ( \Add0~99\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~118_sumout\,
	cin => \Add0~99\,
	sumout => \Add0~118_sumout\,
	cout => \Add0~119\);

-- Location: IOIBUF_X64_Y0_N52
\value[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(57),
	o => \value[57]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\key[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(29),
	o => \key[29]~input_o\);

-- Location: LABCELL_X64_Y12_N24
\k0[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(29) = ( k0(29) & ( (\state_reg~q\) # (\key[29]~input_o\) ) ) # ( !k0(29) & ( (\key[29]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[29]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(29),
	combout => k0(29));

-- Location: IOIBUF_X22_Y0_N52
\key[120]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(120),
	o => \key[120]~input_o\);

-- Location: LABCELL_X63_Y13_N48
\k3[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(24) = ( \state_reg~q\ & ( k3(24) ) ) # ( !\state_reg~q\ & ( \key[120]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[120]~input_o\,
	datac => ALT_INV_k3(24),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(24));

-- Location: IOIBUF_X36_Y0_N1
\key[119]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(119),
	o => \key[119]~input_o\);

-- Location: MLABCELL_X59_Y14_N57
\k3[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(23) = ( \state_reg~q\ & ( k3(23) ) ) # ( !\state_reg~q\ & ( k3(23) & ( \key[119]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(23) & ( \key[119]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[119]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(23),
	combout => k3(23));

-- Location: IOIBUF_X89_Y25_N38
\key[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(28),
	o => \key[28]~input_o\);

-- Location: MLABCELL_X65_Y14_N30
\k0[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(28) = ( k0(28) & ( (\state_reg~q\) # (\key[28]~input_o\) ) ) # ( !k0(28) & ( (\key[28]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[28]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(28),
	combout => k0(28));

-- Location: IOIBUF_X89_Y6_N38
\value[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(56),
	o => \value[56]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\value[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(55),
	o => \value[55]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\key[118]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(118),
	o => \key[118]~input_o\);

-- Location: LABCELL_X61_Y14_N57
\k3[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(22) = ( k3(22) & ( (\state_reg~q\) # (\key[118]~input_o\) ) ) # ( !k3(22) & ( (\key[118]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[118]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(22),
	combout => k3(22));

-- Location: IOIBUF_X14_Y0_N35
\key[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(59),
	o => \key[59]~input_o\);

-- Location: LABCELL_X62_Y12_N39
\k1[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(27) = ( k1(27) & ( (\key[59]~input_o\) # (\state_reg~q\) ) ) # ( !k1(27) & ( (!\state_reg~q\ & \key[59]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[59]~input_o\,
	dataf => ALT_INV_k1(27),
	combout => k1(27));

-- Location: IOIBUF_X56_Y0_N18
\key[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(58),
	o => \key[58]~input_o\);

-- Location: LABCELL_X62_Y12_N45
\k1[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(26) = ( \state_reg~q\ & ( k1(26) ) ) # ( !\state_reg~q\ & ( \key[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[58]~input_o\,
	datad => ALT_INV_k1(26),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(26));

-- Location: IOIBUF_X72_Y0_N35
\value[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(63),
	o => \value[63]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\key[127]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(127),
	o => \key[127]~input_o\);

-- Location: LABCELL_X61_Y14_N39
\k3[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(31) = ( k3(31) & ( (\state_reg~q\) # (\key[127]~input_o\) ) ) # ( !k3(31) & ( (\key[127]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[127]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(31),
	combout => k3(31));

-- Location: IOIBUF_X89_Y6_N55
\key[126]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(126),
	o => \key[126]~input_o\);

-- Location: LABCELL_X63_Y13_N45
\k3[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(30) = ( k3(30) & ( \state_reg~q\ ) ) # ( k3(30) & ( !\state_reg~q\ & ( \key[126]~input_o\ ) ) ) # ( !k3(30) & ( !\state_reg~q\ & ( \key[126]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[126]~input_o\,
	datae => ALT_INV_k3(30),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(30));

-- Location: IOIBUF_X40_Y0_N18
\key[125]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(125),
	o => \key[125]~input_o\);

-- Location: MLABCELL_X59_Y14_N48
\k3[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(29) = ( k3(29) & ( (\state_reg~q\) # (\key[125]~input_o\) ) ) # ( !k3(29) & ( (\key[125]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[125]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(29),
	combout => k3(29));

-- Location: IOIBUF_X38_Y0_N1
\key[124]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(124),
	o => \key[124]~input_o\);

-- Location: MLABCELL_X59_Y14_N39
\k3[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(28) = ( \state_reg~q\ & ( k3(28) ) ) # ( !\state_reg~q\ & ( k3(28) & ( \key[124]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(28) & ( \key[124]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[124]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(28),
	combout => k3(28));

-- Location: MLABCELL_X59_Y14_N21
\Add7~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~121_sumout\ = SUM(( k3(27) ) + ( GND ) + ( \Add7~94\ ))
-- \Add7~122\ = CARRY(( k3(27) ) + ( GND ) + ( \Add7~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(27),
	cin => \Add7~94\,
	sumout => \Add7~121_sumout\,
	cout => \Add7~122\);

-- Location: MLABCELL_X59_Y14_N24
\Add7~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~97_sumout\ = SUM(( k3(28) ) + ( GND ) + ( \Add7~122\ ))
-- \Add7~98\ = CARRY(( k3(28) ) + ( GND ) + ( \Add7~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(28),
	cin => \Add7~122\,
	sumout => \Add7~97_sumout\,
	cout => \Add7~98\);

-- Location: MLABCELL_X59_Y14_N27
\Add7~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~101_sumout\ = SUM(( k3(29) ) + ( GND ) + ( \Add7~98\ ))
-- \Add7~102\ = CARRY(( k3(29) ) + ( GND ) + ( \Add7~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(29),
	cin => \Add7~98\,
	sumout => \Add7~101_sumout\,
	cout => \Add7~102\);

-- Location: MLABCELL_X59_Y14_N30
\Add7~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~105_sumout\ = SUM(( k3(30) ) + ( GND ) + ( \Add7~102\ ))
-- \Add7~106\ = CARRY(( k3(30) ) + ( GND ) + ( \Add7~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(30),
	cin => \Add7~102\,
	sumout => \Add7~105_sumout\,
	cout => \Add7~106\);

-- Location: MLABCELL_X59_Y14_N33
\Add7~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~125_sumout\ = SUM(( k3(31) ) + ( GND ) + ( \Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(31),
	cin => \Add7~106\,
	sumout => \Add7~125_sumout\);

-- Location: LABCELL_X61_Y14_N30
\Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~102_sumout\ = SUM(( \sum[31]~31_combout\ ) + ( VCC ) + ( \Add0~119\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sum[31]~31_combout\,
	cin => \Add0~119\,
	sumout => \Add0~102_sumout\);

-- Location: LABCELL_X60_Y14_N54
\sum[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[31]~31_combout\ = ( \Add0~102_sumout\ ) # ( !\Add0~102_sumout\ & ( !\state_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add0~102_sumout\,
	combout => \sum[31]~31_combout\);

-- Location: LABCELL_X60_Y14_N30
\Add6~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~109_sumout\ = SUM(( (\state_reg~q\ & \Add0~118_sumout\) ) + ( \Add4~117_sumout\ ) + ( \Add6~106\ ))
-- \Add6~110\ = CARRY(( (\state_reg~q\ & \Add0~118_sumout\) ) + ( \Add4~117_sumout\ ) + ( \Add6~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~117_sumout\,
	datad => \ALT_INV_Add0~118_sumout\,
	cin => \Add6~106\,
	sumout => \Add6~109_sumout\,
	cout => \Add6~110\);

-- Location: LABCELL_X60_Y14_N33
\Add6~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~129_sumout\ = SUM(( \sum[31]~31_combout\ ) + ( \Add4~121_sumout\ ) + ( \Add6~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~121_sumout\,
	datad => \ALT_INV_sum[31]~31_combout\,
	cin => \Add6~110\,
	sumout => \Add6~129_sumout\);

-- Location: IOIBUF_X10_Y0_N75
\key[95]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(95),
	o => \key[95]~input_o\);

-- Location: LABCELL_X63_Y15_N48
\k2[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(31) = ( k2(31) & ( (\state_reg~q\) # (\key[95]~input_o\) ) ) # ( !k2(31) & ( (\key[95]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[95]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(31),
	combout => k2(31));

-- Location: IOIBUF_X80_Y0_N1
\key[94]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(94),
	o => \key[94]~input_o\);

-- Location: LABCELL_X63_Y15_N27
\k2[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(30) = ( k2(30) & ( (\state_reg~q\) # (\key[94]~input_o\) ) ) # ( !k2(30) & ( (\key[94]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[94]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(30),
	combout => k2(30));

-- Location: IOIBUF_X80_Y0_N35
\key[93]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(93),
	o => \key[93]~input_o\);

-- Location: LABCELL_X63_Y15_N3
\k2[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(29) = (!\state_reg~q\ & (\key[93]~input_o\)) # (\state_reg~q\ & ((k2(29))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[93]~input_o\,
	datad => ALT_INV_k2(29),
	combout => k2(29));

-- Location: IOIBUF_X56_Y0_N1
\key[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(57),
	o => \key[57]~input_o\);

-- Location: LABCELL_X62_Y12_N48
\k1[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(25) = ( k1(25) & ( (\state_reg~q\) # (\key[57]~input_o\) ) ) # ( !k1(25) & ( (\key[57]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[57]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(25),
	combout => k1(25));

-- Location: IOIBUF_X89_Y23_N55
\key[84]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(84),
	o => \key[84]~input_o\);

-- Location: LABCELL_X63_Y15_N9
\k2[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(20) = ( k2(20) & ( (\state_reg~q\) # (\key[84]~input_o\) ) ) # ( !k2(20) & ( (\key[84]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[84]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(20),
	combout => k2(20));

-- Location: IOIBUF_X10_Y0_N92
\key[83]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(83),
	o => \key[83]~input_o\);

-- Location: LABCELL_X63_Y15_N24
\k2[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(19) = ( k2(19) & ( (\state_reg~q\) # (\key[83]~input_o\) ) ) # ( !k2(19) & ( (\key[83]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[83]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(19),
	combout => k2(19));

-- Location: IOIBUF_X78_Y0_N52
\key[111]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(111),
	o => \key[111]~input_o\);

-- Location: LABCELL_X64_Y15_N33
\k3[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(15) = ( \state_reg~q\ & ( k3(15) ) ) # ( !\state_reg~q\ & ( k3(15) & ( \key[111]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(15) & ( \key[111]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[111]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(15),
	combout => k3(15));

-- Location: IOIBUF_X6_Y0_N1
\key[112]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(112),
	o => \key[112]~input_o\);

-- Location: LABCELL_X63_Y15_N21
\k3[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(16) = ( \state_reg~q\ & ( k3(16) ) ) # ( !\state_reg~q\ & ( \key[112]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[112]~input_o\,
	datad => ALT_INV_k3(16),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(16));

-- Location: IOIBUF_X84_Y0_N35
\key[110]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(110),
	o => \key[110]~input_o\);

-- Location: LABCELL_X64_Y15_N3
\k3[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(14) = ( \state_reg~q\ & ( k3(14) ) ) # ( !\state_reg~q\ & ( k3(14) & ( \key[110]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(14) & ( \key[110]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[110]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(14),
	combout => k3(14));

-- Location: IOIBUF_X30_Y0_N1
\key[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(51),
	o => \key[51]~input_o\);

-- Location: LABCELL_X62_Y13_N12
\k1[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(19) = ( k1(19) & ( (\state_reg~q\) # (\key[51]~input_o\) ) ) # ( !k1(19) & ( (\key[51]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[51]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(19),
	combout => k1(19));

-- Location: IOIBUF_X30_Y81_N52
\key[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(50),
	o => \key[50]~input_o\);

-- Location: LABCELL_X62_Y13_N3
\k1[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(18) = ( \key[50]~input_o\ & ( (!\state_reg~q\) # (k1(18)) ) ) # ( !\key[50]~input_o\ & ( (\state_reg~q\ & k1(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => ALT_INV_k1(18),
	dataf => \ALT_INV_key[50]~input_o\,
	combout => k1(18));

-- Location: IOIBUF_X89_Y8_N55
\value[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(54),
	o => \value[54]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\key[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(49),
	o => \key[49]~input_o\);

-- Location: LABCELL_X62_Y13_N6
\k1[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(17) = ( k1(17) & ( (\state_reg~q\) # (\key[49]~input_o\) ) ) # ( !k1(17) & ( (\key[49]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[49]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(17),
	combout => k1(17));

-- Location: IOIBUF_X2_Y0_N75
\key[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(48),
	o => \key[48]~input_o\);

-- Location: LABCELL_X62_Y13_N0
\k1[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(16) = (!\state_reg~q\ & (\key[48]~input_o\)) # (\state_reg~q\ & ((k1(16))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[48]~input_o\,
	datac => ALT_INV_k1(16),
	datad => \ALT_INV_state_reg~q\,
	combout => k1(16));

-- Location: IOIBUF_X64_Y0_N1
\value[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(53),
	o => \value[53]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\value[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(52),
	o => \value[52]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\key[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(47),
	o => \key[47]~input_o\);

-- Location: LABCELL_X62_Y13_N24
\k1[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(15) = ( k1(15) & ( (\state_reg~q\) # (\key[47]~input_o\) ) ) # ( !k1(15) & ( (\key[47]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[47]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(15),
	combout => k1(15));

-- Location: IOIBUF_X34_Y0_N92
\key[115]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(115),
	o => \key[115]~input_o\);

-- Location: LABCELL_X63_Y15_N12
\k3[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(19) = ( k3(19) & ( (\state_reg~q\) # (\key[115]~input_o\) ) ) # ( !k3(19) & ( (\key[115]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[115]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(19),
	combout => k3(19));

-- Location: IOIBUF_X54_Y0_N18
\value[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(23),
	o => \value[23]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\value[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(51),
	o => \value[51]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\key[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(23),
	o => \key[23]~input_o\);

-- Location: LABCELL_X64_Y13_N15
\k0[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(23) = ( k0(23) & ( (\state_reg~q\) # (\key[23]~input_o\) ) ) # ( !k0(23) & ( (\key[23]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[23]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(23),
	combout => k0(23));

-- Location: IOIBUF_X74_Y0_N58
\key[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(22),
	o => \key[22]~input_o\);

-- Location: LABCELL_X64_Y13_N18
\k0[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(22) = ( k0(22) & ( (\state_reg~q\) # (\key[22]~input_o\) ) ) # ( !k0(22) & ( (\key[22]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[22]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(22),
	combout => k0(22));

-- Location: IOIBUF_X32_Y0_N35
\key[114]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(114),
	o => \key[114]~input_o\);

-- Location: LABCELL_X63_Y15_N36
\k3[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(18) = ( \state_reg~q\ & ( k3(18) ) ) # ( !\state_reg~q\ & ( \key[114]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[114]~input_o\,
	datad => ALT_INV_k3(18),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(18));

-- Location: IOIBUF_X89_Y15_N55
\key[113]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(113),
	o => \key[113]~input_o\);

-- Location: LABCELL_X64_Y15_N42
\k3[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(17) = ( \state_reg~q\ & ( k3(17) ) ) # ( !\state_reg~q\ & ( k3(17) & ( \key[113]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(17) & ( \key[113]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[113]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(17),
	combout => k3(17));

-- Location: MLABCELL_X59_Y15_N48
\Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( \Add4~81_sumout\ ) + ( k3(16) ) + ( \Add7~114\ ))
-- \Add7~58\ = CARRY(( \Add4~81_sumout\ ) + ( k3(16) ) + ( \Add7~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(16),
	datad => \ALT_INV_Add4~81_sumout\,
	cin => \Add7~114\,
	sumout => \Add7~57_sumout\,
	cout => \Add7~58\);

-- Location: MLABCELL_X59_Y15_N51
\Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~61_sumout\ = SUM(( \Add4~85_sumout\ ) + ( k3(17) ) + ( \Add7~58\ ))
-- \Add7~62\ = CARRY(( \Add4~85_sumout\ ) + ( k3(17) ) + ( \Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(17),
	datac => \ALT_INV_Add4~85_sumout\,
	cin => \Add7~58\,
	sumout => \Add7~61_sumout\,
	cout => \Add7~62\);

-- Location: MLABCELL_X59_Y15_N54
\Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~65_sumout\ = SUM(( \Add4~89_sumout\ ) + ( k3(18) ) + ( \Add7~62\ ))
-- \Add7~66\ = CARRY(( \Add4~89_sumout\ ) + ( k3(18) ) + ( \Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~89_sumout\,
	dataf => ALT_INV_k3(18),
	cin => \Add7~62\,
	sumout => \Add7~65_sumout\,
	cout => \Add7~66\);

-- Location: IOIBUF_X89_Y11_N44
\value[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(46),
	o => \value[46]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\key[109]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(109),
	o => \key[109]~input_o\);

-- Location: LABCELL_X64_Y14_N24
\k3[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(13) = ( k3(13) & ( (\state_reg~q\) # (\key[109]~input_o\) ) ) # ( !k3(13) & ( (\key[109]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[109]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(13),
	combout => k3(13));

-- Location: LABCELL_X62_Y13_N54
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( k1(18) ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( k1(18) ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~93_sumout\,
	datad => \ALT_INV_value[55]~input_o\,
	dataf => ALT_INV_k1(18),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: IOIBUF_X89_Y11_N61
\value[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(50),
	o => \value[50]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\key[81]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(81),
	o => \key[81]~input_o\);

-- Location: LABCELL_X63_Y15_N57
\k2[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(17) = ( k2(17) & ( (\state_reg~q\) # (\key[81]~input_o\) ) ) # ( !k2(17) & ( (\key[81]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[81]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(17),
	combout => k2(17));

-- Location: IOIBUF_X4_Y0_N52
\key[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(13),
	o => \key[13]~input_o\);

-- Location: LABCELL_X63_Y14_N0
\k0[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(13) = ( \state_reg~q\ & ( k0(13) ) ) # ( !\state_reg~q\ & ( \key[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[13]~input_o\,
	datad => ALT_INV_k0(13),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(13));

-- Location: IOIBUF_X26_Y81_N41
\key[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(12),
	o => \key[12]~input_o\);

-- Location: LABCELL_X64_Y14_N3
\k0[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(12) = (!\state_reg~q\ & (\key[12]~input_o\)) # (\state_reg~q\ & ((k0(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[12]~input_o\,
	datad => ALT_INV_k0(12),
	combout => k0(12));

-- Location: LABCELL_X64_Y14_N54
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( k0(12) ) + ( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( k0(12) ) + ( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~33_sumout\,
	datad => ALT_INV_k0(12),
	dataf => \ALT_INV_value[40]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X64_Y14_N57
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( k0(13) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( k0(13) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~37_sumout\,
	datad => \ALT_INV_value[41]~input_o\,
	dataf => ALT_INV_k0(13),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: IOIBUF_X89_Y16_N4
\value[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(45),
	o => \value[45]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\value[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(49),
	o => \value[49]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\value[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(48),
	o => \value[48]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\value[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(47),
	o => \value[47]~input_o\);

-- Location: MLABCELL_X65_Y13_N12
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~50_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~57_sumout\,
	dataf => \ALT_INV_value[46]~input_o\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X65_Y13_N15
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( (\state_reg~q\ & \Add0~54_sumout\) ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( (\state_reg~q\ & \Add0~54_sumout\) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~61_sumout\,
	datad => \ALT_INV_value[47]~input_o\,
	dataf => \ALT_INV_Add0~54_sumout\,
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X65_Y13_N18
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~65_sumout\,
	datad => \ALT_INV_value[48]~input_o\,
	dataf => \ALT_INV_Add0~58_sumout\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X65_Y13_N21
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~62_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~69_sumout\,
	dataf => \ALT_INV_value[49]~input_o\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: IOIBUF_X82_Y0_N75
\key[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(17),
	o => \key[17]~input_o\);

-- Location: LABCELL_X64_Y13_N21
\k0[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(17) = ( k0(17) & ( (\state_reg~q\) # (\key[17]~input_o\) ) ) # ( !k0(17) & ( (\key[17]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[17]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(17),
	combout => k0(17));

-- Location: IOIBUF_X89_Y13_N55
\value[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(44),
	o => \value[44]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\key[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(16),
	o => \key[16]~input_o\);

-- Location: LABCELL_X64_Y13_N24
\k0[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(16) = ( k0(16) & ( (\state_reg~q\) # (\key[16]~input_o\) ) ) # ( !k0(16) & ( (\key[16]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[16]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(16),
	combout => k0(16));

-- Location: IOIBUF_X89_Y13_N38
\value[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(43),
	o => \value[43]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\key[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(15),
	o => \key[15]~input_o\);

-- Location: LABCELL_X64_Y13_N6
\k0[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(15) = ( k0(15) & ( (\state_reg~q\) # (\key[15]~input_o\) ) ) # ( !k0(15) & ( (\key[15]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[15]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(15),
	combout => k0(15));

-- Location: IOIBUF_X64_Y0_N35
\key[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(14),
	o => \key[14]~input_o\);

-- Location: LABCELL_X64_Y13_N12
\k0[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(14) = ( k0(14) & ( (\state_reg~q\) # (\key[14]~input_o\) ) ) # ( !k0(14) & ( (\key[14]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[14]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(14),
	combout => k0(14));

-- Location: LABCELL_X64_Y13_N30
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( k0(14) ) + ( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( k0(14) ) + ( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => ALT_INV_k0(14),
	datac => \ALT_INV_Add8~41_sumout\,
	dataf => \ALT_INV_value[42]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X64_Y13_N33
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( k0(15) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( k0(15) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~45_sumout\,
	datad => \ALT_INV_value[43]~input_o\,
	dataf => ALT_INV_k0(15),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X64_Y13_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( k0(16) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( k0(16) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~49_sumout\,
	datad => \ALT_INV_value[44]~input_o\,
	dataf => ALT_INV_k0(16),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X64_Y13_N39
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( (!\state_reg~q\ & (\value[45]~input_o\)) # (\state_reg~q\ & ((\Add8~53_sumout\))) ) + ( k0(17) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( (!\state_reg~q\ & (\value[45]~input_o\)) # (\state_reg~q\ & ((\Add8~53_sumout\))) ) + ( k0(17) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[45]~input_o\,
	datac => \ALT_INV_Add8~53_sumout\,
	dataf => ALT_INV_k0(17),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X62_Y13_N51
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( k1(17) ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( k1(17) ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~89_sumout\,
	datad => \ALT_INV_value[54]~input_o\,
	dataf => ALT_INV_k1(17),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: LABCELL_X61_Y13_N36
\zt~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~15_combout\ = ( \Add1~49_sumout\ & ( \Add3~61_sumout\ & ( \Add2~61_sumout\ ) ) ) # ( !\Add1~49_sumout\ & ( \Add3~61_sumout\ & ( !\Add2~61_sumout\ ) ) ) # ( \Add1~49_sumout\ & ( !\Add3~61_sumout\ & ( !\Add2~61_sumout\ ) ) ) # ( !\Add1~49_sumout\ & ( 
-- !\Add3~61_sumout\ & ( \Add2~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~61_sumout\,
	datae => \ALT_INV_Add1~49_sumout\,
	dataf => \ALT_INV_Add3~61_sumout\,
	combout => \zt~15_combout\);

-- Location: IOIBUF_X28_Y81_N35
\value[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(17),
	o => \value[17]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\value[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(16),
	o => \value[16]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\value[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(15),
	o => \value[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\value[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(14),
	o => \value[14]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\value[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(13),
	o => \value[13]~input_o\);

-- Location: IOIBUF_X16_Y81_N35
\key[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(44),
	o => \key[44]~input_o\);

-- Location: LABCELL_X62_Y13_N9
\k1[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(12) = ( k1(12) & ( (\state_reg~q\) # (\key[44]~input_o\) ) ) # ( !k1(12) & ( (\key[44]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[44]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(12),
	combout => k1(12));

-- Location: IOIBUF_X30_Y0_N52
\key[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(43),
	o => \key[43]~input_o\);

-- Location: LABCELL_X62_Y13_N27
\k1[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(11) = ( k1(11) & ( (\state_reg~q\) # (\key[43]~input_o\) ) ) # ( !k1(11) & ( (\key[43]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[43]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(11),
	combout => k1(11));

-- Location: IOIBUF_X56_Y0_N52
\key[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(42),
	o => \key[42]~input_o\);

-- Location: LABCELL_X62_Y13_N18
\k1[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(10) = ( k1(10) & ( (\state_reg~q\) # (\key[42]~input_o\) ) ) # ( !k1(10) & ( (\key[42]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[42]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(10),
	combout => k1(10));

-- Location: IOIBUF_X6_Y0_N18
\key[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(41),
	o => \key[41]~input_o\);

-- Location: LABCELL_X62_Y14_N15
\k1[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(9) = ( k1(9) & ( (\state_reg~q\) # (\key[41]~input_o\) ) ) # ( !k1(9) & ( (\key[41]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[41]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(9),
	combout => k1(9));

-- Location: IOIBUF_X18_Y81_N41
\key[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(40),
	o => \key[40]~input_o\);

-- Location: LABCELL_X62_Y14_N24
\k1[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(8) = ( k1(8) & ( (\state_reg~q\) # (\key[40]~input_o\) ) ) # ( !k1(8) & ( (\key[40]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[40]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(8),
	combout => k1(8));

-- Location: IOIBUF_X28_Y81_N18
\key[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(39),
	o => \key[39]~input_o\);

-- Location: LABCELL_X62_Y14_N21
\k1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(7) = ( \state_reg~q\ & ( k1(7) ) ) # ( !\state_reg~q\ & ( \key[39]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[39]~input_o\,
	datad => ALT_INV_k1(7),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(7));

-- Location: IOIBUF_X16_Y0_N35
\key[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(38),
	o => \key[38]~input_o\);

-- Location: LABCELL_X62_Y14_N3
\k1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(6) = ( \state_reg~q\ & ( k1(6) ) ) # ( !\state_reg~q\ & ( \key[38]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[38]~input_o\,
	datad => ALT_INV_k1(6),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(6));

-- Location: LABCELL_X62_Y14_N45
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( (!\state_reg~q\ & (\value[42]~input_o\)) # (\state_reg~q\ & ((\Add8~41_sumout\))) ) + ( k1(5) ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( (!\state_reg~q\ & (\value[42]~input_o\)) # (\state_reg~q\ & ((\Add8~41_sumout\))) ) + ( k1(5) ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_value[42]~input_o\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~41_sumout\,
	dataf => ALT_INV_k1(5),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X62_Y14_N48
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( k1(6) ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( k1(6) ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~45_sumout\,
	datad => ALT_INV_k1(6),
	dataf => \ALT_INV_value[43]~input_o\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X62_Y14_N51
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( k1(7) ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( k1(7) ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~49_sumout\,
	datad => \ALT_INV_value[44]~input_o\,
	dataf => ALT_INV_k1(7),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X62_Y14_N54
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( k1(8) ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( k1(8) ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~53_sumout\,
	datad => \ALT_INV_value[45]~input_o\,
	dataf => ALT_INV_k1(8),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X62_Y14_N57
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( k1(9) ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( k1(9) ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~57_sumout\,
	datad => \ALT_INV_value[46]~input_o\,
	dataf => ALT_INV_k1(9),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X62_Y13_N30
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( k1(10) ) + ( \Add3~34\ ))
-- \Add3~110\ = CARRY(( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( k1(10) ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~61_sumout\,
	datad => \ALT_INV_value[47]~input_o\,
	dataf => ALT_INV_k1(10),
	cin => \Add3~34\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: LABCELL_X62_Y13_N33
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( k1(11) ) + ( \Add3~110\ ))
-- \Add3~38\ = CARRY(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( k1(11) ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~65_sumout\,
	datad => \ALT_INV_value[48]~input_o\,
	dataf => ALT_INV_k1(11),
	cin => \Add3~110\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X62_Y13_N36
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( k1(12) ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( k1(12) ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~69_sumout\,
	datad => \ALT_INV_value[49]~input_o\,
	dataf => ALT_INV_k1(12),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X65_Y14_N21
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~29_sumout\,
	datad => \ALT_INV_value[39]~input_o\,
	dataf => \ALT_INV_Add0~26_sumout\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X65_Y14_N24
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~30_sumout\) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~33_sumout\,
	datac => \ALT_INV_value[40]~input_o\,
	dataf => \ALT_INV_Add0~30_sumout\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X65_Y14_N27
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( (\state_reg~q\ & \Add0~34_sumout\) ) + ( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( (\state_reg~q\ & \Add0~34_sumout\) ) + ( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~37_sumout\,
	datad => \ALT_INV_Add0~34_sumout\,
	dataf => \ALT_INV_value[41]~input_o\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X65_Y13_N0
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( (\state_reg~q\ & \Add0~106_sumout\) ) + ( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \Add2~34\ ))
-- \Add2~110\ = CARRY(( (\state_reg~q\ & \Add0~106_sumout\) ) + ( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~41_sumout\,
	datad => \ALT_INV_Add0~106_sumout\,
	dataf => \ALT_INV_value[42]~input_o\,
	cin => \Add2~34\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: MLABCELL_X65_Y13_N3
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add2~110\ ))
-- \Add2~38\ = CARRY(( (!\state_reg~q\) # (\Add0~38_sumout\) ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~45_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add0~38_sumout\,
	dataf => \ALT_INV_value[43]~input_o\,
	cin => \Add2~110\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X65_Y13_N6
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~49_sumout\,
	datad => \ALT_INV_Add0~42_sumout\,
	dataf => \ALT_INV_value[44]~input_o\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: LABCELL_X61_Y13_N0
\zt~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~10_combout\ = ( \Add2~41_sumout\ & ( \Add1~29_sumout\ & ( \Add3~41_sumout\ ) ) ) # ( !\Add2~41_sumout\ & ( \Add1~29_sumout\ & ( !\Add3~41_sumout\ ) ) ) # ( \Add2~41_sumout\ & ( !\Add1~29_sumout\ & ( !\Add3~41_sumout\ ) ) ) # ( !\Add2~41_sumout\ & ( 
-- !\Add1~29_sumout\ & ( \Add3~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add3~41_sumout\,
	datae => \ALT_INV_Add2~41_sumout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \zt~10_combout\);

-- Location: IOIBUF_X89_Y8_N21
\value[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(12),
	o => \value[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\value[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(10),
	o => \value[10]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\value[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(9),
	o => \value[9]~input_o\);

-- Location: IOIBUF_X20_Y81_N35
\value[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(8),
	o => \value[8]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\value[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(7),
	o => \value[7]~input_o\);

-- Location: IOIBUF_X14_Y81_N18
\value[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(6),
	o => \value[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\value[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(5),
	o => \value[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\value[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(3),
	o => \value[3]~input_o\);

-- Location: IOIBUF_X24_Y81_N1
\value[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(2),
	o => \value[2]~input_o\);

-- Location: LABCELL_X57_Y14_N30
\Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~125_sumout\ = SUM(( \y~31_combout\ ) + ( \zt~31_combout\ ) + ( !VCC ))
-- \Add4~126\ = CARRY(( \y~31_combout\ ) + ( \zt~31_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_zt~31_combout\,
	datad => \ALT_INV_y~31_combout\,
	cin => GND,
	sumout => \Add4~125_sumout\,
	cout => \Add4~126\);

-- Location: LABCELL_X57_Y14_N33
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \zt~0_combout\ ) + ( (!\state_reg~q\ & ((\value[1]~input_o\))) # (\state_reg~q\ & (\Add4~1_sumout\)) ) + ( \Add4~126\ ))
-- \Add4~2\ = CARRY(( \zt~0_combout\ ) + ( (!\state_reg~q\ & ((\value[1]~input_o\))) # (\state_reg~q\ & (\Add4~1_sumout\)) ) + ( \Add4~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[1]~input_o\,
	datad => \ALT_INV_zt~0_combout\,
	cin => \Add4~126\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X57_Y14_N36
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \zt~1_combout\ ) + ( (!\state_reg~q\ & ((\value[2]~input_o\))) # (\state_reg~q\ & (\Add4~5_sumout\)) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( \zt~1_combout\ ) + ( (!\state_reg~q\ & ((\value[2]~input_o\))) # (\state_reg~q\ & (\Add4~5_sumout\)) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~5_sumout\,
	datad => \ALT_INV_zt~1_combout\,
	dataf => \ALT_INV_value[2]~input_o\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: LABCELL_X57_Y14_N39
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \zt~2_combout\ ) + ( (!\state_reg~q\ & ((\value[3]~input_o\))) # (\state_reg~q\ & (\Add4~9_sumout\)) ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( \zt~2_combout\ ) + ( (!\state_reg~q\ & ((\value[3]~input_o\))) # (\state_reg~q\ & (\Add4~9_sumout\)) ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~9_sumout\,
	datad => \ALT_INV_zt~2_combout\,
	dataf => \ALT_INV_value[3]~input_o\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X57_Y14_N42
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \zt~3_combout\ ) + ( (!\state_reg~q\ & ((\value[4]~input_o\))) # (\state_reg~q\ & (\Add4~13_sumout\)) ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( \zt~3_combout\ ) + ( (!\state_reg~q\ & ((\value[4]~input_o\))) # (\state_reg~q\ & (\Add4~13_sumout\)) ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add4~13_sumout\,
	datac => \ALT_INV_value[4]~input_o\,
	datad => \ALT_INV_zt~3_combout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: LABCELL_X57_Y14_N45
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \zt~4_combout\ ) + ( (!\state_reg~q\ & ((\value[5]~input_o\))) # (\state_reg~q\ & (\Add4~17_sumout\)) ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( \zt~4_combout\ ) + ( (!\state_reg~q\ & ((\value[5]~input_o\))) # (\state_reg~q\ & (\Add4~17_sumout\)) ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~17_sumout\,
	datad => \ALT_INV_zt~4_combout\,
	dataf => \ALT_INV_value[5]~input_o\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X57_Y14_N48
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \zt~5_combout\ ) + ( (!\state_reg~q\ & ((\value[6]~input_o\))) # (\state_reg~q\ & (\Add4~21_sumout\)) ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( \zt~5_combout\ ) + ( (!\state_reg~q\ & ((\value[6]~input_o\))) # (\state_reg~q\ & (\Add4~21_sumout\)) ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~21_sumout\,
	datad => \ALT_INV_zt~5_combout\,
	dataf => \ALT_INV_value[6]~input_o\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X57_Y14_N51
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \zt~6_combout\ ) + ( (!\state_reg~q\ & ((\value[7]~input_o\))) # (\state_reg~q\ & (\Add4~25_sumout\)) ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( \zt~6_combout\ ) + ( (!\state_reg~q\ & ((\value[7]~input_o\))) # (\state_reg~q\ & (\Add4~25_sumout\)) ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add4~25_sumout\,
	datac => \ALT_INV_zt~6_combout\,
	dataf => \ALT_INV_value[7]~input_o\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X57_Y14_N54
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \zt~7_combout\ ) + ( (!\state_reg~q\ & ((\value[8]~input_o\))) # (\state_reg~q\ & (\Add4~29_sumout\)) ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( \zt~7_combout\ ) + ( (!\state_reg~q\ & ((\value[8]~input_o\))) # (\state_reg~q\ & (\Add4~29_sumout\)) ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~29_sumout\,
	datad => \ALT_INV_zt~7_combout\,
	dataf => \ALT_INV_value[8]~input_o\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X57_Y14_N57
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \zt~8_combout\ ) + ( (!\state_reg~q\ & ((\value[9]~input_o\))) # (\state_reg~q\ & (\Add4~33_sumout\)) ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( \zt~8_combout\ ) + ( (!\state_reg~q\ & ((\value[9]~input_o\))) # (\state_reg~q\ & (\Add4~33_sumout\)) ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~33_sumout\,
	datad => \ALT_INV_zt~8_combout\,
	dataf => \ALT_INV_value[9]~input_o\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: LABCELL_X57_Y13_N30
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \zt~26_combout\ ) + ( (!\state_reg~q\ & ((\value[10]~input_o\))) # (\state_reg~q\ & (\Add4~37_sumout\)) ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( \zt~26_combout\ ) + ( (!\state_reg~q\ & ((\value[10]~input_o\))) # (\state_reg~q\ & (\Add4~37_sumout\)) ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~37_sumout\,
	datad => \ALT_INV_zt~26_combout\,
	dataf => \ALT_INV_value[10]~input_o\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X57_Y13_N33
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \zt~9_combout\ ) + ( (!\state_reg~q\ & ((\value[11]~input_o\))) # (\state_reg~q\ & (\Add4~41_sumout\)) ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( \zt~9_combout\ ) + ( (!\state_reg~q\ & ((\value[11]~input_o\))) # (\state_reg~q\ & (\Add4~41_sumout\)) ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~41_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[11]~input_o\,
	datad => \ALT_INV_zt~9_combout\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: LABCELL_X57_Y13_N36
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \zt~10_combout\ ) + ( (!\state_reg~q\ & ((\value[12]~input_o\))) # (\state_reg~q\ & (\Add4~45_sumout\)) ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( \zt~10_combout\ ) + ( (!\state_reg~q\ & ((\value[12]~input_o\))) # (\state_reg~q\ & (\Add4~45_sumout\)) ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~45_sumout\,
	datad => \ALT_INV_zt~10_combout\,
	dataf => \ALT_INV_value[12]~input_o\,
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: LABCELL_X57_Y13_N39
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \zt~11_combout\ ) + ( (!\state_reg~q\ & ((\value[13]~input_o\))) # (\state_reg~q\ & (\Add4~49_sumout\)) ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( \zt~11_combout\ ) + ( (!\state_reg~q\ & ((\value[13]~input_o\))) # (\state_reg~q\ & (\Add4~49_sumout\)) ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~49_sumout\,
	datad => \ALT_INV_zt~11_combout\,
	dataf => \ALT_INV_value[13]~input_o\,
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: LABCELL_X57_Y13_N42
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \zt~12_combout\ ) + ( (!\state_reg~q\ & ((\value[14]~input_o\))) # (\state_reg~q\ & (\Add4~53_sumout\)) ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( \zt~12_combout\ ) + ( (!\state_reg~q\ & ((\value[14]~input_o\))) # (\state_reg~q\ & (\Add4~53_sumout\)) ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~53_sumout\,
	datad => \ALT_INV_zt~12_combout\,
	dataf => \ALT_INV_value[14]~input_o\,
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: LABCELL_X57_Y13_N45
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( \zt~13_combout\ ) + ( (!\state_reg~q\ & ((\value[15]~input_o\))) # (\state_reg~q\ & (\Add4~57_sumout\)) ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( \zt~13_combout\ ) + ( (!\state_reg~q\ & ((\value[15]~input_o\))) # (\state_reg~q\ & (\Add4~57_sumout\)) ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~57_sumout\,
	datad => \ALT_INV_zt~13_combout\,
	dataf => \ALT_INV_value[15]~input_o\,
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: LABCELL_X57_Y13_N48
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( \zt~14_combout\ ) + ( (!\state_reg~q\ & ((\value[16]~input_o\))) # (\state_reg~q\ & (\Add4~61_sumout\)) ) + ( \Add4~58\ ))
-- \Add4~62\ = CARRY(( \zt~14_combout\ ) + ( (!\state_reg~q\ & ((\value[16]~input_o\))) # (\state_reg~q\ & (\Add4~61_sumout\)) ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~61_sumout\,
	datad => \ALT_INV_zt~14_combout\,
	dataf => \ALT_INV_value[16]~input_o\,
	cin => \Add4~58\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: LABCELL_X57_Y13_N51
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( \zt~15_combout\ ) + ( (!\state_reg~q\ & ((\value[17]~input_o\))) # (\state_reg~q\ & (\Add4~65_sumout\)) ) + ( \Add4~62\ ))
-- \Add4~66\ = CARRY(( \zt~15_combout\ ) + ( (!\state_reg~q\ & ((\value[17]~input_o\))) # (\state_reg~q\ & (\Add4~65_sumout\)) ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~65_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_zt~15_combout\,
	dataf => \ALT_INV_value[17]~input_o\,
	cin => \Add4~62\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: IOIBUF_X89_Y21_N21
\key[108]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(108),
	o => \key[108]~input_o\);

-- Location: LABCELL_X64_Y15_N6
\k3[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(12) = ( \state_reg~q\ & ( k3(12) ) ) # ( !\state_reg~q\ & ( k3(12) & ( \key[108]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(12) & ( \key[108]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[108]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(12),
	combout => k3(12));

-- Location: IOIBUF_X22_Y0_N35
\key[106]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(106),
	o => \key[106]~input_o\);

-- Location: LABCELL_X61_Y14_N51
\k3[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(10) = ( k3(10) & ( (\state_reg~q\) # (\key[106]~input_o\) ) ) # ( !k3(10) & ( (\key[106]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[106]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(10),
	combout => k3(10));

-- Location: IOIBUF_X89_Y4_N78
\key[105]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(105),
	o => \key[105]~input_o\);

-- Location: LABCELL_X64_Y15_N39
\k3[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(9) = ( \state_reg~q\ & ( k3(9) ) ) # ( !\state_reg~q\ & ( k3(9) & ( \key[105]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(9) & ( \key[105]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[105]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(9),
	combout => k3(9));

-- Location: IOIBUF_X26_Y0_N75
\key[104]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(104),
	o => \key[104]~input_o\);

-- Location: LABCELL_X60_Y14_N45
\k3[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(8) = (!\state_reg~q\ & (\key[104]~input_o\)) # (\state_reg~q\ & ((k3(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[104]~input_o\,
	datac => ALT_INV_k3(8),
	datad => \ALT_INV_state_reg~q\,
	combout => k3(8));

-- Location: IOIBUF_X89_Y15_N4
\key[103]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(103),
	o => \key[103]~input_o\);

-- Location: LABCELL_X64_Y15_N18
\k3[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(7) = ( \state_reg~q\ & ( k3(7) ) ) # ( !\state_reg~q\ & ( k3(7) & ( \key[103]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(7) & ( \key[103]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[103]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(7),
	combout => k3(7));

-- Location: IOIBUF_X40_Y0_N52
\key[101]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(101),
	o => \key[101]~input_o\);

-- Location: LABCELL_X56_Y14_N21
\k3[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(5) = ( k3(5) & ( \state_reg~q\ ) ) # ( k3(5) & ( !\state_reg~q\ & ( \key[101]~input_o\ ) ) ) # ( !k3(5) & ( !\state_reg~q\ & ( \key[101]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[101]~input_o\,
	datae => ALT_INV_k3(5),
	dataf => \ALT_INV_state_reg~q\,
	combout => k3(5));

-- Location: IOIBUF_X89_Y23_N21
\key[100]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(100),
	o => \key[100]~input_o\);

-- Location: LABCELL_X64_Y15_N57
\k3[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(4) = ( \state_reg~q\ & ( k3(4) ) ) # ( !\state_reg~q\ & ( k3(4) & ( \key[100]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(4) & ( \key[100]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[100]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(4),
	combout => k3(4));

-- Location: IOIBUF_X88_Y0_N36
\key[99]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(99),
	o => \key[99]~input_o\);

-- Location: LABCELL_X64_Y15_N12
\k3[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(3) = ( \state_reg~q\ & ( k3(3) ) ) # ( !\state_reg~q\ & ( k3(3) & ( \key[99]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(3) & ( \key[99]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[99]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(3),
	combout => k3(3));

-- Location: IOIBUF_X4_Y0_N18
\key[98]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(98),
	o => \key[98]~input_o\);

-- Location: LABCELL_X63_Y14_N21
\k3[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(2) = ( k3(2) & ( (\key[98]~input_o\) # (\state_reg~q\) ) ) # ( !k3(2) & ( (!\state_reg~q\ & \key[98]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[98]~input_o\,
	dataf => ALT_INV_k3(2),
	combout => k3(2));

-- Location: IOIBUF_X60_Y0_N52
\key[97]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(97),
	o => \key[97]~input_o\);

-- Location: LABCELL_X63_Y14_N18
\k3[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(1) = ( k3(1) & ( (\key[97]~input_o\) # (\state_reg~q\) ) ) # ( !k3(1) & ( (!\state_reg~q\ & \key[97]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[97]~input_o\,
	dataf => ALT_INV_k3(1),
	combout => k3(1));

-- Location: MLABCELL_X59_Y15_N3
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \Add4~21_sumout\ ) + ( k3(1) ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \Add4~21_sumout\ ) + ( k3(1) ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~21_sumout\,
	dataf => ALT_INV_k3(1),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: MLABCELL_X59_Y15_N6
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \Add4~25_sumout\ ) + ( k3(2) ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \Add4~25_sumout\ ) + ( k3(2) ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(2),
	datac => \ALT_INV_Add4~25_sumout\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: MLABCELL_X59_Y15_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( k3(3) ) + ( \Add4~29_sumout\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( k3(3) ) + ( \Add4~29_sumout\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~29_sumout\,
	datad => ALT_INV_k3(3),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: MLABCELL_X59_Y15_N12
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \Add4~33_sumout\ ) + ( k3(4) ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \Add4~33_sumout\ ) + ( k3(4) ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(4),
	datad => \ALT_INV_Add4~33_sumout\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: MLABCELL_X59_Y15_N15
\Add7~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~109_sumout\ = SUM(( \Add4~37_sumout\ ) + ( k3(5) ) + ( \Add7~18\ ))
-- \Add7~110\ = CARRY(( \Add4~37_sumout\ ) + ( k3(5) ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(5),
	datac => \ALT_INV_Add4~37_sumout\,
	cin => \Add7~18\,
	sumout => \Add7~109_sumout\,
	cout => \Add7~110\);

-- Location: MLABCELL_X59_Y15_N18
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \Add4~41_sumout\ ) + ( k3(6) ) + ( \Add7~110\ ))
-- \Add7~22\ = CARRY(( \Add4~41_sumout\ ) + ( k3(6) ) + ( \Add7~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(6),
	datad => \ALT_INV_Add4~41_sumout\,
	cin => \Add7~110\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: MLABCELL_X59_Y15_N21
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \Add4~45_sumout\ ) + ( k3(7) ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( \Add4~45_sumout\ ) + ( k3(7) ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(7),
	datac => \ALT_INV_Add4~45_sumout\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: MLABCELL_X59_Y15_N24
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \Add4~49_sumout\ ) + ( k3(8) ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( \Add4~49_sumout\ ) + ( k3(8) ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(8),
	datac => \ALT_INV_Add4~49_sumout\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: MLABCELL_X59_Y15_N27
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \Add4~53_sumout\ ) + ( k3(9) ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \Add4~53_sumout\ ) + ( k3(9) ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~53_sumout\,
	dataf => ALT_INV_k3(9),
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: MLABCELL_X59_Y15_N30
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \Add4~57_sumout\ ) + ( k3(10) ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( \Add4~57_sumout\ ) + ( k3(10) ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(10),
	datac => \ALT_INV_Add4~57_sumout\,
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: MLABCELL_X59_Y15_N33
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \Add4~61_sumout\ ) + ( k3(11) ) + ( \Add7~38\ ))
-- \Add7~42\ = CARRY(( \Add4~61_sumout\ ) + ( k3(11) ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(11),
	datac => \ALT_INV_Add4~61_sumout\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: MLABCELL_X59_Y15_N36
\Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( k3(12) ) + ( \Add4~65_sumout\ ) + ( \Add7~42\ ))
-- \Add7~46\ = CARRY(( k3(12) ) + ( \Add4~65_sumout\ ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~65_sumout\,
	datad => ALT_INV_k3(12),
	cin => \Add7~42\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: IOIBUF_X30_Y81_N1
\key[76]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(76),
	o => \key[76]~input_o\);

-- Location: LABCELL_X62_Y16_N0
\k2[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(12) = ( \state_reg~q\ & ( k2(12) ) ) # ( !\state_reg~q\ & ( \key[76]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[76]~input_o\,
	datad => ALT_INV_k2(12),
	dataf => \ALT_INV_state_reg~q\,
	combout => k2(12));

-- Location: IOIBUF_X34_Y0_N75
\key[75]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(75),
	o => \key[75]~input_o\);

-- Location: LABCELL_X63_Y13_N36
\k2[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(11) = ( k2(11) & ( \state_reg~q\ ) ) # ( k2(11) & ( !\state_reg~q\ & ( \key[75]~input_o\ ) ) ) # ( !k2(11) & ( !\state_reg~q\ & ( \key[75]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[75]~input_o\,
	datae => ALT_INV_k2(11),
	dataf => \ALT_INV_state_reg~q\,
	combout => k2(11));

-- Location: LABCELL_X62_Y16_N48
\Add5~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~48_sumout\ = SUM(( \Add4~21_sumout\ ) + ( k2(10) ) + ( \Add5~45\ ))
-- \Add5~49\ = CARRY(( \Add4~21_sumout\ ) + ( k2(10) ) + ( \Add5~45\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(10),
	datac => \ALT_INV_Add4~21_sumout\,
	cin => \Add5~45\,
	sumout => \Add5~48_sumout\,
	cout => \Add5~49\);

-- Location: LABCELL_X62_Y16_N51
\Add5~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~52_sumout\ = SUM(( \Add4~25_sumout\ ) + ( k2(11) ) + ( \Add5~49\ ))
-- \Add5~53\ = CARRY(( \Add4~25_sumout\ ) + ( k2(11) ) + ( \Add5~49\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(11),
	datad => \ALT_INV_Add4~25_sumout\,
	cin => \Add5~49\,
	sumout => \Add5~52_sumout\,
	cout => \Add5~53\);

-- Location: LABCELL_X62_Y16_N54
\Add5~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~56_sumout\ = SUM(( \Add4~29_sumout\ ) + ( k2(12) ) + ( \Add5~53\ ))
-- \Add5~57\ = CARRY(( \Add4~29_sumout\ ) + ( k2(12) ) + ( \Add5~53\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(12),
	datac => \ALT_INV_Add4~29_sumout\,
	cin => \Add5~53\,
	sumout => \Add5~56_sumout\,
	cout => \Add5~57\);

-- Location: LABCELL_X60_Y15_N36
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( \Add4~45_sumout\ ) + ( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( \Add4~45_sumout\ ) + ( (!\state_reg~q\) # (\Add0~42_sumout\) ) + ( \Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~45_sumout\,
	dataf => \ALT_INV_Add0~42_sumout\,
	cin => \Add6~46\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: LABCELL_X61_Y13_N51
\yt~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~11_combout\ = ( \Add5~56_sumout\ & ( \Add6~49_sumout\ & ( \Add7~45_sumout\ ) ) ) # ( !\Add5~56_sumout\ & ( \Add6~49_sumout\ & ( !\Add7~45_sumout\ ) ) ) # ( \Add5~56_sumout\ & ( !\Add6~49_sumout\ & ( !\Add7~45_sumout\ ) ) ) # ( !\Add5~56_sumout\ & ( 
-- !\Add6~49_sumout\ & ( \Add7~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~45_sumout\,
	datae => \ALT_INV_Add5~56_sumout\,
	dataf => \ALT_INV_Add6~49_sumout\,
	combout => \yt~11_combout\);

-- Location: LABCELL_X66_Y14_N33
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( (!\state_reg~q\ & ((\value[33]~input_o\))) # (\state_reg~q\ & (\Add8~5_sumout\)) ) + ( \yt~1_combout\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( (!\state_reg~q\ & ((\value[33]~input_o\))) # (\state_reg~q\ & (\Add8~5_sumout\)) ) + ( \yt~1_combout\ ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~5_sumout\,
	datad => \ALT_INV_value[33]~input_o\,
	dataf => \ALT_INV_yt~1_combout\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: LABCELL_X66_Y14_N36
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( \yt~2_combout\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( \yt~2_combout\ ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~9_sumout\,
	datad => \ALT_INV_value[34]~input_o\,
	dataf => \ALT_INV_yt~2_combout\,
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: LABCELL_X66_Y14_N39
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( \yt~3_combout\ ) + ( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( \yt~3_combout\ ) + ( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~13_sumout\,
	datad => \ALT_INV_yt~3_combout\,
	dataf => \ALT_INV_value[35]~input_o\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: LABCELL_X66_Y14_N42
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( \yt~4_combout\ ) + ( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( \yt~4_combout\ ) + ( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~17_sumout\,
	datac => \ALT_INV_yt~4_combout\,
	dataf => \ALT_INV_value[36]~input_o\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: LABCELL_X66_Y14_N45
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( \yt~27_combout\ ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( \yt~27_combout\ ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~21_sumout\,
	datad => \ALT_INV_yt~27_combout\,
	dataf => \ALT_INV_value[37]~input_o\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: LABCELL_X66_Y14_N48
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( \yt~5_combout\ ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( \yt~5_combout\ ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~25_sumout\,
	datad => \ALT_INV_yt~5_combout\,
	dataf => \ALT_INV_value[38]~input_o\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: LABCELL_X66_Y14_N51
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( \yt~6_combout\ ) + ( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( \yt~6_combout\ ) + ( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~29_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_yt~6_combout\,
	dataf => \ALT_INV_value[39]~input_o\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: LABCELL_X66_Y14_N54
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( \yt~7_combout\ ) + ( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( \yt~7_combout\ ) + ( (!\state_reg~q\ & ((\value[40]~input_o\))) # (\state_reg~q\ & (\Add8~33_sumout\)) ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~33_sumout\,
	datad => \ALT_INV_yt~7_combout\,
	dataf => \ALT_INV_value[40]~input_o\,
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: LABCELL_X66_Y14_N57
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( \yt~8_combout\ ) + ( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( \yt~8_combout\ ) + ( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~37_sumout\,
	datad => \ALT_INV_yt~8_combout\,
	dataf => \ALT_INV_value[41]~input_o\,
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: LABCELL_X66_Y13_N30
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \yt~9_combout\ ) + ( \Add8~38\ ))
-- \Add8~42\ = CARRY(( (!\state_reg~q\ & ((\value[42]~input_o\))) # (\state_reg~q\ & (\Add8~41_sumout\)) ) + ( \yt~9_combout\ ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~41_sumout\,
	datad => \ALT_INV_value[42]~input_o\,
	dataf => \ALT_INV_yt~9_combout\,
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: LABCELL_X66_Y13_N33
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( \yt~10_combout\ ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add8~42\ ))
-- \Add8~46\ = CARRY(( \yt~10_combout\ ) + ( (!\state_reg~q\ & ((\value[43]~input_o\))) # (\state_reg~q\ & (\Add8~45_sumout\)) ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~45_sumout\,
	datad => \ALT_INV_yt~10_combout\,
	dataf => \ALT_INV_value[43]~input_o\,
	cin => \Add8~42\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: LABCELL_X66_Y13_N36
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( \yt~11_combout\ ) + ( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( \Add8~46\ ))
-- \Add8~50\ = CARRY(( \yt~11_combout\ ) + ( (!\state_reg~q\ & ((\value[44]~input_o\))) # (\state_reg~q\ & (\Add8~49_sumout\)) ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~49_sumout\,
	datad => \ALT_INV_yt~11_combout\,
	dataf => \ALT_INV_value[44]~input_o\,
	cin => \Add8~46\,
	sumout => \Add8~49_sumout\,
	cout => \Add8~50\);

-- Location: MLABCELL_X65_Y13_N9
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~53_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[45]~input_o\,
	dataf => \ALT_INV_Add0~46_sumout\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: IOIBUF_X16_Y81_N1
\key[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(45),
	o => \key[45]~input_o\);

-- Location: LABCELL_X62_Y13_N15
\k1[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(13) = ( k1(13) & ( (\state_reg~q\) # (\key[45]~input_o\) ) ) # ( !k1(13) & ( (\key[45]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[45]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(13),
	combout => k1(13));

-- Location: LABCELL_X62_Y13_N39
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( k1(13) ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( k1(13) ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~73_sumout\,
	datad => \ALT_INV_value[50]~input_o\,
	dataf => ALT_INV_k1(13),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X61_Y13_N9
\zt~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~11_combout\ = ( \Add2~45_sumout\ & ( \Add3~45_sumout\ & ( \Add1~33_sumout\ ) ) ) # ( !\Add2~45_sumout\ & ( \Add3~45_sumout\ & ( !\Add1~33_sumout\ ) ) ) # ( \Add2~45_sumout\ & ( !\Add3~45_sumout\ & ( !\Add1~33_sumout\ ) ) ) # ( !\Add2~45_sumout\ & ( 
-- !\Add3~45_sumout\ & ( \Add1~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	datae => \ALT_INV_Add2~45_sumout\,
	dataf => \ALT_INV_Add3~45_sumout\,
	combout => \zt~11_combout\);

-- Location: IOIBUF_X89_Y25_N55
\key[80]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(80),
	o => \key[80]~input_o\);

-- Location: LABCELL_X63_Y15_N39
\k2[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(16) = ( k2(16) & ( (\state_reg~q\) # (\key[80]~input_o\) ) ) # ( !k2(16) & ( (\key[80]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[80]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(16),
	combout => k2(16));

-- Location: IOIBUF_X32_Y81_N18
\key[79]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(79),
	o => \key[79]~input_o\);

-- Location: LABCELL_X63_Y15_N33
\k2[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(15) = ( k2(15) & ( (\state_reg~q\) # (\key[79]~input_o\) ) ) # ( !k2(15) & ( (\key[79]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[79]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(15),
	combout => k2(15));

-- Location: IOIBUF_X89_Y20_N44
\key[78]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(78),
	o => \key[78]~input_o\);

-- Location: LABCELL_X63_Y15_N51
\k2[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(14) = ( k2(14) & ( (\state_reg~q\) # (\key[78]~input_o\) ) ) # ( !k2(14) & ( (\key[78]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[78]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(14),
	combout => k2(14));

-- Location: IOIBUF_X10_Y0_N41
\key[77]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(77),
	o => \key[77]~input_o\);

-- Location: LABCELL_X62_Y16_N3
\k2[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(13) = ( \state_reg~q\ & ( k2(13) ) ) # ( !\state_reg~q\ & ( \key[77]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[77]~input_o\,
	datad => ALT_INV_k2(13),
	dataf => \ALT_INV_state_reg~q\,
	combout => k2(13));

-- Location: LABCELL_X62_Y16_N57
\Add5~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~60_sumout\ = SUM(( k2(13) ) + ( \Add4~33_sumout\ ) + ( \Add5~57\ ))
-- \Add5~61\ = CARRY(( k2(13) ) + ( \Add4~33_sumout\ ) + ( \Add5~57\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~33_sumout\,
	datad => ALT_INV_k2(13),
	cin => \Add5~57\,
	sumout => \Add5~60_sumout\,
	cout => \Add5~61\);

-- Location: LABCELL_X62_Y15_N0
\Add5~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~64_sumout\ = SUM(( \Add4~37_sumout\ ) + ( k2(14) ) + ( \Add5~61\ ))
-- \Add5~65\ = CARRY(( \Add4~37_sumout\ ) + ( k2(14) ) + ( \Add5~61\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~37_sumout\,
	dataf => ALT_INV_k2(14),
	cin => \Add5~61\,
	sumout => \Add5~64_sumout\,
	cout => \Add5~65\);

-- Location: LABCELL_X62_Y15_N3
\Add5~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~124_sumout\ = SUM(( \Add4~41_sumout\ ) + ( k2(15) ) + ( \Add5~65\ ))
-- \Add5~125\ = CARRY(( \Add4~41_sumout\ ) + ( k2(15) ) + ( \Add5~65\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(15),
	datac => \ALT_INV_Add4~41_sumout\,
	cin => \Add5~65\,
	sumout => \Add5~124_sumout\,
	cout => \Add5~125\);

-- Location: LABCELL_X62_Y15_N6
\Add5~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~68_sumout\ = SUM(( \Add4~45_sumout\ ) + ( k2(16) ) + ( \Add5~125\ ))
-- \Add5~69\ = CARRY(( \Add4~45_sumout\ ) + ( k2(16) ) + ( \Add5~125\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(16),
	datac => \ALT_INV_Add4~45_sumout\,
	cin => \Add5~125\,
	sumout => \Add5~68_sumout\,
	cout => \Add5~69\);

-- Location: LABCELL_X62_Y15_N9
\Add5~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~72_sumout\ = SUM(( \Add4~49_sumout\ ) + ( k2(17) ) + ( \Add5~69\ ))
-- \Add5~73\ = CARRY(( \Add4~49_sumout\ ) + ( k2(17) ) + ( \Add5~69\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(17),
	datad => \ALT_INV_Add4~49_sumout\,
	cin => \Add5~69\,
	sumout => \Add5~72_sumout\,
	cout => \Add5~73\);

-- Location: LABCELL_X60_Y15_N39
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( \Add4~49_sumout\ ) + ( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( \Add4~49_sumout\ ) + ( (!\state_reg~q\) # (\Add0~46_sumout\) ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~49_sumout\,
	dataf => \ALT_INV_Add0~46_sumout\,
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: LABCELL_X60_Y15_N42
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( \Add4~53_sumout\ ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( (!\state_reg~q\) # (\Add0~50_sumout\) ) + ( \Add4~53_sumout\ ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~53_sumout\,
	datad => \ALT_INV_Add0~50_sumout\,
	cin => \Add6~54\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: LABCELL_X60_Y15_N45
\Add6~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~117_sumout\ = SUM(( (\state_reg~q\ & \Add0~54_sumout\) ) + ( \Add4~57_sumout\ ) + ( \Add6~58\ ))
-- \Add6~118\ = CARRY(( (\state_reg~q\ & \Add0~54_sumout\) ) + ( \Add4~57_sumout\ ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~57_sumout\,
	datad => \ALT_INV_Add0~54_sumout\,
	cin => \Add6~58\,
	sumout => \Add6~117_sumout\,
	cout => \Add6~118\);

-- Location: LABCELL_X60_Y15_N48
\Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( \Add4~61_sumout\ ) + ( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( \Add6~118\ ))
-- \Add6~62\ = CARRY(( \Add4~61_sumout\ ) + ( (!\state_reg~q\) # (\Add0~58_sumout\) ) + ( \Add6~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~61_sumout\,
	dataf => \ALT_INV_Add0~58_sumout\,
	cin => \Add6~118\,
	sumout => \Add6~61_sumout\,
	cout => \Add6~62\);

-- Location: LABCELL_X60_Y15_N51
\Add6~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~65_sumout\ = SUM(( \Add4~65_sumout\ ) + ( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( \Add6~62\ ))
-- \Add6~66\ = CARRY(( \Add4~65_sumout\ ) + ( (!\state_reg~q\) # (\Add0~62_sumout\) ) + ( \Add6~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~62_sumout\,
	datad => \ALT_INV_Add4~65_sumout\,
	cin => \Add6~62\,
	sumout => \Add6~65_sumout\,
	cout => \Add6~66\);

-- Location: LABCELL_X57_Y15_N30
\yt~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~15_combout\ = ( \Add6~65_sumout\ & ( \Add7~61_sumout\ & ( \Add5~72_sumout\ ) ) ) # ( !\Add6~65_sumout\ & ( \Add7~61_sumout\ & ( !\Add5~72_sumout\ ) ) ) # ( \Add6~65_sumout\ & ( !\Add7~61_sumout\ & ( !\Add5~72_sumout\ ) ) ) # ( !\Add6~65_sumout\ & ( 
-- !\Add7~61_sumout\ & ( \Add5~72_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~72_sumout\,
	datae => \ALT_INV_Add6~65_sumout\,
	dataf => \ALT_INV_Add7~61_sumout\,
	combout => \yt~15_combout\);

-- Location: LABCELL_X66_Y13_N39
\Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~53_sumout\ = SUM(( \yt~12_combout\ ) + ( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( \Add8~50\ ))
-- \Add8~54\ = CARRY(( \yt~12_combout\ ) + ( (!\state_reg~q\ & ((\value[45]~input_o\))) # (\state_reg~q\ & (\Add8~53_sumout\)) ) + ( \Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~53_sumout\,
	datad => \ALT_INV_yt~12_combout\,
	dataf => \ALT_INV_value[45]~input_o\,
	cin => \Add8~50\,
	sumout => \Add8~53_sumout\,
	cout => \Add8~54\);

-- Location: LABCELL_X66_Y13_N42
\Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~57_sumout\ = SUM(( \yt~13_combout\ ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add8~54\ ))
-- \Add8~58\ = CARRY(( \yt~13_combout\ ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~57_sumout\,
	datad => \ALT_INV_yt~13_combout\,
	dataf => \ALT_INV_value[46]~input_o\,
	cin => \Add8~54\,
	sumout => \Add8~57_sumout\,
	cout => \Add8~58\);

-- Location: LABCELL_X66_Y13_N45
\Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~61_sumout\ = SUM(( \yt~28_combout\ ) + ( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( \Add8~58\ ))
-- \Add8~62\ = CARRY(( \yt~28_combout\ ) + ( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( \Add8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~61_sumout\,
	datad => \ALT_INV_yt~28_combout\,
	dataf => \ALT_INV_value[47]~input_o\,
	cin => \Add8~58\,
	sumout => \Add8~61_sumout\,
	cout => \Add8~62\);

-- Location: LABCELL_X66_Y13_N48
\Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~65_sumout\ = SUM(( \yt~14_combout\ ) + ( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( \Add8~62\ ))
-- \Add8~66\ = CARRY(( \yt~14_combout\ ) + ( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( \Add8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~65_sumout\,
	datad => \ALT_INV_yt~14_combout\,
	dataf => \ALT_INV_value[48]~input_o\,
	cin => \Add8~62\,
	sumout => \Add8~65_sumout\,
	cout => \Add8~66\);

-- Location: LABCELL_X66_Y13_N51
\Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~69_sumout\ = SUM(( \yt~15_combout\ ) + ( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( \Add8~66\ ))
-- \Add8~70\ = CARRY(( \yt~15_combout\ ) + ( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( \Add8~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~69_sumout\,
	datad => \ALT_INV_yt~15_combout\,
	dataf => \ALT_INV_value[49]~input_o\,
	cin => \Add8~66\,
	sumout => \Add8~69_sumout\,
	cout => \Add8~70\);

-- Location: MLABCELL_X65_Y13_N24
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~73_sumout\,
	datad => \ALT_INV_Add0~66_sumout\,
	dataf => \ALT_INV_value[50]~input_o\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: IOIBUF_X32_Y0_N1
\key[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(18),
	o => \key[18]~input_o\);

-- Location: LABCELL_X63_Y13_N0
\k0[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(18) = ( k0(18) & ( \state_reg~q\ ) ) # ( k0(18) & ( !\state_reg~q\ & ( \key[18]~input_o\ ) ) ) # ( !k0(18) & ( !\state_reg~q\ & ( \key[18]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[18]~input_o\,
	datae => ALT_INV_k0(18),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(18));

-- Location: LABCELL_X64_Y13_N42
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( k0(18) ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( k0(18) ) + ( (!\state_reg~q\ & ((\value[46]~input_o\))) # (\state_reg~q\ & (\Add8~57_sumout\)) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~57_sumout\,
	datad => ALT_INV_k0(18),
	dataf => \ALT_INV_value[46]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X60_Y13_N57
\zt~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~16_combout\ = ( \Add2~65_sumout\ & ( \Add1~53_sumout\ & ( \Add3~65_sumout\ ) ) ) # ( !\Add2~65_sumout\ & ( \Add1~53_sumout\ & ( !\Add3~65_sumout\ ) ) ) # ( \Add2~65_sumout\ & ( !\Add1~53_sumout\ & ( !\Add3~65_sumout\ ) ) ) # ( !\Add2~65_sumout\ & ( 
-- !\Add1~53_sumout\ & ( \Add3~65_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~65_sumout\,
	datae => \ALT_INV_Add2~65_sumout\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \zt~16_combout\);

-- Location: IOIBUF_X50_Y0_N41
\value[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(18),
	o => \value[18]~input_o\);

-- Location: LABCELL_X57_Y13_N54
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( \zt~16_combout\ ) + ( (!\state_reg~q\ & ((\value[18]~input_o\))) # (\state_reg~q\ & (\Add4~69_sumout\)) ) + ( \Add4~66\ ))
-- \Add4~70\ = CARRY(( \zt~16_combout\ ) + ( (!\state_reg~q\ & ((\value[18]~input_o\))) # (\state_reg~q\ & (\Add4~69_sumout\)) ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~69_sumout\,
	datad => \ALT_INV_zt~16_combout\,
	dataf => \ALT_INV_value[18]~input_o\,
	cin => \Add4~66\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: MLABCELL_X59_Y15_N39
\Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( \Add4~69_sumout\ ) + ( k3(13) ) + ( \Add7~46\ ))
-- \Add7~50\ = CARRY(( \Add4~69_sumout\ ) + ( k3(13) ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(13),
	datac => \ALT_INV_Add4~69_sumout\,
	cin => \Add7~46\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: LABCELL_X56_Y15_N33
\yt~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~12_combout\ = ( \Add6~53_sumout\ & ( \Add5~60_sumout\ & ( \Add7~49_sumout\ ) ) ) # ( !\Add6~53_sumout\ & ( \Add5~60_sumout\ & ( !\Add7~49_sumout\ ) ) ) # ( \Add6~53_sumout\ & ( !\Add5~60_sumout\ & ( !\Add7~49_sumout\ ) ) ) # ( !\Add6~53_sumout\ & ( 
-- !\Add5~60_sumout\ & ( \Add7~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~49_sumout\,
	datae => \ALT_INV_Add6~53_sumout\,
	dataf => \ALT_INV_Add5~60_sumout\,
	combout => \yt~12_combout\);

-- Location: IOIBUF_X2_Y0_N41
\key[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(46),
	o => \key[46]~input_o\);

-- Location: LABCELL_X62_Y13_N21
\k1[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(14) = ( k1(14) & ( (\state_reg~q\) # (\key[46]~input_o\) ) ) # ( !k1(14) & ( (\key[46]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[46]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(14),
	combout => k1(14));

-- Location: LABCELL_X62_Y13_N42
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( k1(14) ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( k1(14) ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~77_sumout\,
	datad => \ALT_INV_value[51]~input_o\,
	dataf => ALT_INV_k1(14),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: MLABCELL_X65_Y13_N51
\zt~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~12_combout\ = ( \Add1~37_sumout\ & ( !\Add2~49_sumout\ $ (\Add3~49_sumout\) ) ) # ( !\Add1~37_sumout\ & ( !\Add2~49_sumout\ $ (!\Add3~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~49_sumout\,
	datad => \ALT_INV_Add3~49_sumout\,
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \zt~12_combout\);

-- Location: IOIBUF_X16_Y81_N52
\key[82]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(82),
	o => \key[82]~input_o\);

-- Location: LABCELL_X62_Y15_N57
\k2[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(18) = ( k2(18) & ( (\state_reg~q\) # (\key[82]~input_o\) ) ) # ( !k2(18) & ( (\key[82]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[82]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(18),
	combout => k2(18));

-- Location: LABCELL_X62_Y15_N12
\Add5~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~76_sumout\ = SUM(( \Add4~53_sumout\ ) + ( k2(18) ) + ( \Add5~73\ ))
-- \Add5~77\ = CARRY(( \Add4~53_sumout\ ) + ( k2(18) ) + ( \Add5~73\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~53_sumout\,
	dataf => ALT_INV_k2(18),
	cin => \Add5~73\,
	sumout => \Add5~76_sumout\,
	cout => \Add5~77\);

-- Location: LABCELL_X60_Y15_N54
\Add6~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~69_sumout\ = SUM(( \Add4~69_sumout\ ) + ( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( \Add6~66\ ))
-- \Add6~70\ = CARRY(( \Add4~69_sumout\ ) + ( (!\state_reg~q\) # (\Add0~66_sumout\) ) + ( \Add6~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~69_sumout\,
	dataf => \ALT_INV_Add0~66_sumout\,
	cin => \Add6~66\,
	sumout => \Add6~69_sumout\,
	cout => \Add6~70\);

-- Location: LABCELL_X53_Y15_N12
\yt~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~16_combout\ = ( \Add5~76_sumout\ & ( \Add6~69_sumout\ & ( \Add7~65_sumout\ ) ) ) # ( !\Add5~76_sumout\ & ( \Add6~69_sumout\ & ( !\Add7~65_sumout\ ) ) ) # ( \Add5~76_sumout\ & ( !\Add6~69_sumout\ & ( !\Add7~65_sumout\ ) ) ) # ( !\Add5~76_sumout\ & ( 
-- !\Add6~69_sumout\ & ( \Add7~65_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~65_sumout\,
	datae => \ALT_INV_Add5~76_sumout\,
	dataf => \ALT_INV_Add6~69_sumout\,
	combout => \yt~16_combout\);

-- Location: LABCELL_X66_Y13_N54
\Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~73_sumout\ = SUM(( \yt~16_combout\ ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add8~70\ ))
-- \Add8~74\ = CARRY(( \yt~16_combout\ ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add8~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~73_sumout\,
	datad => \ALT_INV_yt~16_combout\,
	dataf => \ALT_INV_value[50]~input_o\,
	cin => \Add8~70\,
	sumout => \Add8~73_sumout\,
	cout => \Add8~74\);

-- Location: IOIBUF_X6_Y0_N35
\key[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(21),
	o => \key[21]~input_o\);

-- Location: LABCELL_X64_Y13_N3
\k0[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(21) = (!\state_reg~q\ & (\key[21]~input_o\)) # (\state_reg~q\ & ((k0(21))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[21]~input_o\,
	datad => ALT_INV_k0(21),
	combout => k0(21));

-- Location: IOIBUF_X89_Y9_N4
\key[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(20),
	o => \key[20]~input_o\);

-- Location: LABCELL_X64_Y13_N27
\k0[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(20) = ( k0(20) & ( (\state_reg~q\) # (\key[20]~input_o\) ) ) # ( !k0(20) & ( (\key[20]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[20]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(20),
	combout => k0(20));

-- Location: IOIBUF_X82_Y0_N58
\key[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(19),
	o => \key[19]~input_o\);

-- Location: LABCELL_X64_Y13_N0
\k0[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(19) = (!\state_reg~q\ & (\key[19]~input_o\)) # (\state_reg~q\ & ((k0(19))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[19]~input_o\,
	datad => ALT_INV_k0(19),
	combout => k0(19));

-- Location: LABCELL_X64_Y13_N45
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( k0(19) ) + ( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( k0(19) ) + ( (!\state_reg~q\ & ((\value[47]~input_o\))) # (\state_reg~q\ & (\Add8~61_sumout\)) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k0(19),
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~61_sumout\,
	dataf => \ALT_INV_value[47]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X64_Y13_N48
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( k0(20) ) + ( \Add1~58\ ))
-- \Add1~98\ = CARRY(( (!\state_reg~q\ & ((\value[48]~input_o\))) # (\state_reg~q\ & (\Add8~65_sumout\)) ) + ( k0(20) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~65_sumout\,
	datad => \ALT_INV_value[48]~input_o\,
	dataf => ALT_INV_k0(20),
	cin => \Add1~58\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: LABCELL_X64_Y13_N51
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( k0(21) ) + ( \Add1~98\ ))
-- \Add1~62\ = CARRY(( (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\)) ) + ( k0(21) ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k0(21),
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~69_sumout\,
	datad => \ALT_INV_value[49]~input_o\,
	cin => \Add1~98\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: LABCELL_X64_Y13_N54
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( k0(22) ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( k0(22) ) + ( (!\state_reg~q\ & ((\value[50]~input_o\))) # (\state_reg~q\ & (\Add8~73_sumout\)) ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k0(22),
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~73_sumout\,
	dataf => \ALT_INV_value[50]~input_o\,
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: LABCELL_X64_Y13_N57
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( k0(23) ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( k0(23) ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~77_sumout\,
	datad => \ALT_INV_value[51]~input_o\,
	dataf => ALT_INV_k0(23),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: MLABCELL_X65_Y13_N27
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( (\state_reg~q\ & \Add0~70_sumout\) ) + ( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( (\state_reg~q\ & \Add0~70_sumout\) ) + ( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~77_sumout\,
	datad => \ALT_INV_Add0~70_sumout\,
	dataf => \ALT_INV_value[51]~input_o\,
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: MLABCELL_X65_Y12_N0
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( \Add2~70\ ))
-- \Add2~114\ = CARRY(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~81_sumout\,
	datad => \ALT_INV_value[52]~input_o\,
	dataf => \ALT_INV_Add0~110_sumout\,
	cin => \Add2~70\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: MLABCELL_X65_Y12_N3
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( \Add2~114\ ))
-- \Add2~74\ = CARRY(( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~85_sumout\,
	datad => \ALT_INV_value[53]~input_o\,
	dataf => \ALT_INV_Add0~74_sumout\,
	cin => \Add2~114\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: MLABCELL_X65_Y12_N6
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( (\state_reg~q\ & \Add0~78_sumout\) ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( (\state_reg~q\ & \Add0~78_sumout\) ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~89_sumout\,
	datad => \ALT_INV_Add0~78_sumout\,
	dataf => \ALT_INV_value[54]~input_o\,
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: MLABCELL_X65_Y12_N9
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( (\state_reg~q\ & \Add0~82_sumout\) ) + ( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( (\state_reg~q\ & \Add0~82_sumout\) ) + ( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~93_sumout\,
	datad => \ALT_INV_Add0~82_sumout\,
	dataf => \ALT_INV_value[55]~input_o\,
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: IOIBUF_X89_Y23_N38
\key[92]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(92),
	o => \key[92]~input_o\);

-- Location: LABCELL_X63_Y15_N6
\k2[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(28) = ( k2(28) & ( (\state_reg~q\) # (\key[92]~input_o\) ) ) # ( !k2(28) & ( (\key[92]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[92]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(28),
	combout => k2(28));

-- Location: IOIBUF_X36_Y81_N1
\key[91]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(91),
	o => \key[91]~input_o\);

-- Location: LABCELL_X63_Y15_N54
\k2[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(27) = (!\state_reg~q\ & (\key[91]~input_o\)) # (\state_reg~q\ & ((k2(27))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[91]~input_o\,
	datad => ALT_INV_k2(27),
	combout => k2(27));

-- Location: LABCELL_X62_Y15_N36
\Add5~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~104_sumout\ = SUM(( \Add4~85_sumout\ ) + ( k2(26) ) + ( \Add5~129\ ))
-- \Add5~105\ = CARRY(( \Add4~85_sumout\ ) + ( k2(26) ) + ( \Add5~129\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(26),
	datac => \ALT_INV_Add4~85_sumout\,
	cin => \Add5~129\,
	sumout => \Add5~104_sumout\,
	cout => \Add5~105\);

-- Location: LABCELL_X62_Y15_N39
\Add5~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~132_sumout\ = SUM(( \Add4~89_sumout\ ) + ( k2(27) ) + ( \Add5~105\ ))
-- \Add5~133\ = CARRY(( \Add4~89_sumout\ ) + ( k2(27) ) + ( \Add5~105\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(27),
	datad => \ALT_INV_Add4~89_sumout\,
	cin => \Add5~105\,
	sumout => \Add5~132_sumout\,
	cout => \Add5~133\);

-- Location: LABCELL_X62_Y15_N42
\Add5~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~108_sumout\ = SUM(( \Add4~93_sumout\ ) + ( k2(28) ) + ( \Add5~133\ ))
-- \Add5~109\ = CARRY(( \Add4~93_sumout\ ) + ( k2(28) ) + ( \Add5~133\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(28),
	datad => \ALT_INV_Add4~93_sumout\,
	cin => \Add5~133\,
	sumout => \Add5~108_sumout\,
	cout => \Add5~109\);

-- Location: LABCELL_X60_Y14_N24
\Add6~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~101_sumout\ = SUM(( \Add4~109_sumout\ ) + ( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( \Add6~126\ ))
-- \Add6~102\ = CARRY(( \Add4~109_sumout\ ) + ( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( \Add6~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~109_sumout\,
	dataf => \ALT_INV_Add0~94_sumout\,
	cin => \Add6~126\,
	sumout => \Add6~101_sumout\,
	cout => \Add6~102\);

-- Location: LABCELL_X60_Y14_N51
\yt~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~24_combout\ = ( \Add6~101_sumout\ & ( !\Add7~97_sumout\ $ (\Add5~108_sumout\) ) ) # ( !\Add6~101_sumout\ & ( !\Add7~97_sumout\ $ (!\Add5~108_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~97_sumout\,
	datad => \ALT_INV_Add5~108_sumout\,
	dataf => \ALT_INV_Add6~101_sumout\,
	combout => \yt~24_combout\);

-- Location: IOIBUF_X68_Y0_N1
\value[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(60),
	o => \value[60]~input_o\);

-- Location: LABCELL_X66_Y13_N57
\Add8~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~77_sumout\ = SUM(( \yt~17_combout\ ) + ( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( \Add8~74\ ))
-- \Add8~78\ = CARRY(( \yt~17_combout\ ) + ( (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\)) ) + ( \Add8~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~77_sumout\,
	datad => \ALT_INV_yt~17_combout\,
	dataf => \ALT_INV_value[51]~input_o\,
	cin => \Add8~74\,
	sumout => \Add8~77_sumout\,
	cout => \Add8~78\);

-- Location: LABCELL_X66_Y12_N0
\Add8~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~81_sumout\ = SUM(( \yt~18_combout\ ) + ( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( \Add8~78\ ))
-- \Add8~82\ = CARRY(( \yt~18_combout\ ) + ( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( \Add8~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~81_sumout\,
	datad => \ALT_INV_yt~18_combout\,
	dataf => \ALT_INV_value[52]~input_o\,
	cin => \Add8~78\,
	sumout => \Add8~81_sumout\,
	cout => \Add8~82\);

-- Location: LABCELL_X66_Y12_N3
\Add8~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~85_sumout\ = SUM(( \yt~19_combout\ ) + ( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( \Add8~82\ ))
-- \Add8~86\ = CARRY(( \yt~19_combout\ ) + ( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( \Add8~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~85_sumout\,
	datad => \ALT_INV_yt~19_combout\,
	dataf => \ALT_INV_value[53]~input_o\,
	cin => \Add8~82\,
	sumout => \Add8~85_sumout\,
	cout => \Add8~86\);

-- Location: LABCELL_X66_Y12_N6
\Add8~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~89_sumout\ = SUM(( \yt~20_combout\ ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add8~86\ ))
-- \Add8~90\ = CARRY(( \yt~20_combout\ ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add8~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~89_sumout\,
	datad => \ALT_INV_yt~20_combout\,
	dataf => \ALT_INV_value[54]~input_o\,
	cin => \Add8~86\,
	sumout => \Add8~89_sumout\,
	cout => \Add8~90\);

-- Location: LABCELL_X66_Y12_N9
\Add8~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~93_sumout\ = SUM(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( \yt~21_combout\ ) + ( \Add8~90\ ))
-- \Add8~94\ = CARRY(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( \yt~21_combout\ ) + ( \Add8~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~93_sumout\,
	datad => \ALT_INV_value[55]~input_o\,
	dataf => \ALT_INV_yt~21_combout\,
	cin => \Add8~90\,
	sumout => \Add8~93_sumout\,
	cout => \Add8~94\);

-- Location: LABCELL_X66_Y12_N12
\Add8~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~97_sumout\ = SUM(( \yt~22_combout\ ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add8~94\ ))
-- \Add8~98\ = CARRY(( \yt~22_combout\ ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add8~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~97_sumout\,
	datac => \ALT_INV_yt~22_combout\,
	dataf => \ALT_INV_value[56]~input_o\,
	cin => \Add8~94\,
	sumout => \Add8~97_sumout\,
	cout => \Add8~98\);

-- Location: LABCELL_X66_Y12_N15
\Add8~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~101_sumout\ = SUM(( \yt~29_combout\ ) + ( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( \Add8~98\ ))
-- \Add8~102\ = CARRY(( \yt~29_combout\ ) + ( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( \Add8~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~101_sumout\,
	datad => \ALT_INV_yt~29_combout\,
	dataf => \ALT_INV_value[57]~input_o\,
	cin => \Add8~98\,
	sumout => \Add8~101_sumout\,
	cout => \Add8~102\);

-- Location: LABCELL_X66_Y12_N18
\Add8~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~105_sumout\ = SUM(( \yt~23_combout\ ) + ( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( \Add8~102\ ))
-- \Add8~106\ = CARRY(( \yt~23_combout\ ) + ( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( \Add8~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~105_sumout\,
	datad => \ALT_INV_yt~23_combout\,
	dataf => \ALT_INV_value[58]~input_o\,
	cin => \Add8~102\,
	sumout => \Add8~105_sumout\,
	cout => \Add8~106\);

-- Location: LABCELL_X66_Y12_N21
\Add8~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~109_sumout\ = SUM(( \yt~30_combout\ ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add8~106\ ))
-- \Add8~110\ = CARRY(( \yt~30_combout\ ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add8~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~109_sumout\,
	datad => \ALT_INV_yt~30_combout\,
	dataf => \ALT_INV_value[59]~input_o\,
	cin => \Add8~106\,
	sumout => \Add8~109_sumout\,
	cout => \Add8~110\);

-- Location: LABCELL_X66_Y12_N24
\Add8~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~113_sumout\ = SUM(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( \yt~24_combout\ ) + ( \Add8~110\ ))
-- \Add8~114\ = CARRY(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( \yt~24_combout\ ) + ( \Add8~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_yt~24_combout\,
	datac => \ALT_INV_Add8~113_sumout\,
	datad => \ALT_INV_value[60]~input_o\,
	cin => \Add8~110\,
	sumout => \Add8~113_sumout\,
	cout => \Add8~114\);

-- Location: IOIBUF_X58_Y0_N58
\key[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(55),
	o => \key[55]~input_o\);

-- Location: LABCELL_X63_Y12_N39
\k1[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(23) = ( \state_reg~q\ & ( k1(23) ) ) # ( !\state_reg~q\ & ( k1(23) & ( \key[55]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k1(23) & ( \key[55]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[55]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(23),
	combout => k1(23));

-- Location: LABCELL_X62_Y12_N3
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( k1(21) ) + ( \Add3~114\ ))
-- \Add3~74\ = CARRY(( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( k1(21) ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~105_sumout\,
	datad => \ALT_INV_value[58]~input_o\,
	dataf => ALT_INV_k1(21),
	cin => \Add3~114\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: LABCELL_X62_Y12_N6
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( k1(22) ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( k1(22) ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => ALT_INV_k1(22),
	datac => \ALT_INV_Add8~109_sumout\,
	dataf => \ALT_INV_value[59]~input_o\,
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: LABCELL_X62_Y12_N9
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( k1(23) ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( k1(23) ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~113_sumout\,
	datad => \ALT_INV_value[60]~input_o\,
	dataf => ALT_INV_k1(23),
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: LABCELL_X63_Y12_N0
\zt~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~20_combout\ = ( \Add2~81_sumout\ & ( \Add3~81_sumout\ & ( \Add1~69_sumout\ ) ) ) # ( !\Add2~81_sumout\ & ( \Add3~81_sumout\ & ( !\Add1~69_sumout\ ) ) ) # ( \Add2~81_sumout\ & ( !\Add3~81_sumout\ & ( !\Add1~69_sumout\ ) ) ) # ( !\Add2~81_sumout\ & ( 
-- !\Add3~81_sumout\ & ( \Add1~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~69_sumout\,
	datae => \ALT_INV_Add2~81_sumout\,
	dataf => \ALT_INV_Add3~81_sumout\,
	combout => \zt~20_combout\);

-- Location: IOIBUF_X58_Y0_N75
\value[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(22),
	o => \value[22]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\value[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(20),
	o => \value[20]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\value[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(19),
	o => \value[19]~input_o\);

-- Location: LABCELL_X57_Y13_N57
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( \zt~17_combout\ ) + ( (!\state_reg~q\ & ((\value[19]~input_o\))) # (\state_reg~q\ & (\Add4~73_sumout\)) ) + ( \Add4~70\ ))
-- \Add4~74\ = CARRY(( \zt~17_combout\ ) + ( (!\state_reg~q\ & ((\value[19]~input_o\))) # (\state_reg~q\ & (\Add4~73_sumout\)) ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~73_sumout\,
	datad => \ALT_INV_zt~17_combout\,
	dataf => \ALT_INV_value[19]~input_o\,
	cin => \Add4~70\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: LABCELL_X57_Y12_N0
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( \zt~27_combout\ ) + ( (!\state_reg~q\ & ((\value[20]~input_o\))) # (\state_reg~q\ & (\Add4~77_sumout\)) ) + ( \Add4~74\ ))
-- \Add4~78\ = CARRY(( \zt~27_combout\ ) + ( (!\state_reg~q\ & ((\value[20]~input_o\))) # (\state_reg~q\ & (\Add4~77_sumout\)) ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~77_sumout\,
	datad => \ALT_INV_zt~27_combout\,
	dataf => \ALT_INV_value[20]~input_o\,
	cin => \Add4~74\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: LABCELL_X57_Y12_N3
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( \zt~18_combout\ ) + ( (!\state_reg~q\ & ((\value[21]~input_o\))) # (\state_reg~q\ & (\Add4~81_sumout\)) ) + ( \Add4~78\ ))
-- \Add4~82\ = CARRY(( \zt~18_combout\ ) + ( (!\state_reg~q\ & ((\value[21]~input_o\))) # (\state_reg~q\ & (\Add4~81_sumout\)) ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~81_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[21]~input_o\,
	datad => \ALT_INV_zt~18_combout\,
	cin => \Add4~78\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: LABCELL_X57_Y12_N6
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( \zt~19_combout\ ) + ( (!\state_reg~q\ & ((\value[22]~input_o\))) # (\state_reg~q\ & (\Add4~85_sumout\)) ) + ( \Add4~82\ ))
-- \Add4~86\ = CARRY(( \zt~19_combout\ ) + ( (!\state_reg~q\ & ((\value[22]~input_o\))) # (\state_reg~q\ & (\Add4~85_sumout\)) ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~85_sumout\,
	datad => \ALT_INV_zt~19_combout\,
	dataf => \ALT_INV_value[22]~input_o\,
	cin => \Add4~82\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: LABCELL_X57_Y12_N9
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( \zt~20_combout\ ) + ( (!\state_reg~q\ & (\value[23]~input_o\)) # (\state_reg~q\ & ((\Add4~89_sumout\))) ) + ( \Add4~86\ ))
-- \Add4~90\ = CARRY(( \zt~20_combout\ ) + ( (!\state_reg~q\ & (\value[23]~input_o\)) # (\state_reg~q\ & ((\Add4~89_sumout\))) ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[23]~input_o\,
	datac => \ALT_INV_Add4~89_sumout\,
	datad => \ALT_INV_zt~20_combout\,
	cin => \Add4~86\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: MLABCELL_X59_Y15_N57
\Add7~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~69_sumout\ = SUM(( \Add4~93_sumout\ ) + ( k3(19) ) + ( \Add7~66\ ))
-- \Add7~70\ = CARRY(( \Add4~93_sumout\ ) + ( k3(19) ) + ( \Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(19),
	datac => \ALT_INV_Add4~93_sumout\,
	cin => \Add7~66\,
	sumout => \Add7~69_sumout\,
	cout => \Add7~70\);

-- Location: LABCELL_X60_Y15_N57
\Add6~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~73_sumout\ = SUM(( \Add4~73_sumout\ ) + ( (\state_reg~q\ & \Add0~70_sumout\) ) + ( \Add6~70\ ))
-- \Add6~74\ = CARRY(( \Add4~73_sumout\ ) + ( (\state_reg~q\ & \Add0~70_sumout\) ) + ( \Add6~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~73_sumout\,
	dataf => \ALT_INV_Add0~70_sumout\,
	cin => \Add6~70\,
	sumout => \Add6~73_sumout\,
	cout => \Add6~74\);

-- Location: LABCELL_X62_Y15_N15
\Add5~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~80_sumout\ = SUM(( \Add4~57_sumout\ ) + ( k2(19) ) + ( \Add5~77\ ))
-- \Add5~81\ = CARRY(( \Add4~57_sumout\ ) + ( k2(19) ) + ( \Add5~77\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(19),
	datac => \ALT_INV_Add4~57_sumout\,
	cin => \Add5~77\,
	sumout => \Add5~80_sumout\,
	cout => \Add5~81\);

-- Location: LABCELL_X66_Y13_N27
\yt~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~17_combout\ = ( \Add5~80_sumout\ & ( !\Add7~69_sumout\ $ (\Add6~73_sumout\) ) ) # ( !\Add5~80_sumout\ & ( !\Add7~69_sumout\ $ (!\Add6~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~69_sumout\,
	datad => \ALT_INV_Add6~73_sumout\,
	dataf => \ALT_INV_Add5~80_sumout\,
	combout => \yt~17_combout\);

-- Location: LABCELL_X62_Y13_N45
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( k1(15) ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( k1(15) ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~81_sumout\,
	datad => \ALT_INV_value[52]~input_o\,
	dataf => ALT_INV_k1(15),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X62_Y13_N48
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( k1(16) ) + ( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( k1(16) ) + ( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~85_sumout\,
	datad => ALT_INV_k1(16),
	dataf => \ALT_INV_value[53]~input_o\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: LABCELL_X62_Y13_N57
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( k1(19) ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( k1(19) ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~97_sumout\,
	datad => \ALT_INV_value[56]~input_o\,
	dataf => ALT_INV_k1(19),
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: LABCELL_X61_Y13_N45
\zt~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~17_combout\ = ( \Add1~57_sumout\ & ( \Add2~69_sumout\ & ( \Add3~69_sumout\ ) ) ) # ( !\Add1~57_sumout\ & ( \Add2~69_sumout\ & ( !\Add3~69_sumout\ ) ) ) # ( \Add1~57_sumout\ & ( !\Add2~69_sumout\ & ( !\Add3~69_sumout\ ) ) ) # ( !\Add1~57_sumout\ & ( 
-- !\Add2~69_sumout\ & ( \Add3~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~69_sumout\,
	datae => \ALT_INV_Add1~57_sumout\,
	dataf => \ALT_INV_Add2~69_sumout\,
	combout => \zt~17_combout\);

-- Location: MLABCELL_X59_Y15_N42
\Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( \Add4~73_sumout\ ) + ( k3(14) ) + ( \Add7~50\ ))
-- \Add7~54\ = CARRY(( \Add4~73_sumout\ ) + ( k3(14) ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(14),
	datad => \ALT_INV_Add4~73_sumout\,
	cin => \Add7~50\,
	sumout => \Add7~53_sumout\,
	cout => \Add7~54\);

-- Location: MLABCELL_X59_Y15_N45
\Add7~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~113_sumout\ = SUM(( \Add4~77_sumout\ ) + ( k3(15) ) + ( \Add7~54\ ))
-- \Add7~114\ = CARRY(( \Add4~77_sumout\ ) + ( k3(15) ) + ( \Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(15),
	datac => \ALT_INV_Add4~77_sumout\,
	cin => \Add7~54\,
	sumout => \Add7~113_sumout\,
	cout => \Add7~114\);

-- Location: LABCELL_X57_Y15_N12
\yt~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~14_combout\ = ( \Add6~61_sumout\ & ( \Add5~68_sumout\ & ( \Add7~57_sumout\ ) ) ) # ( !\Add6~61_sumout\ & ( \Add5~68_sumout\ & ( !\Add7~57_sumout\ ) ) ) # ( \Add6~61_sumout\ & ( !\Add5~68_sumout\ & ( !\Add7~57_sumout\ ) ) ) # ( !\Add6~61_sumout\ & ( 
-- !\Add5~68_sumout\ & ( \Add7~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~57_sumout\,
	datae => \ALT_INV_Add6~61_sumout\,
	dataf => \ALT_INV_Add5~68_sumout\,
	combout => \yt~14_combout\);

-- Location: LABCELL_X62_Y12_N0
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( k1(20) ) + ( \Add3~70\ ))
-- \Add3~114\ = CARRY(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( k1(20) ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => ALT_INV_k1(20),
	datac => \ALT_INV_Add8~101_sumout\,
	datad => \ALT_INV_value[57]~input_o\,
	cin => \Add3~70\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: LABCELL_X60_Y12_N6
\zt~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~27_combout\ = ( \Add2~113_sumout\ & ( \Add3~113_sumout\ & ( \Add1~97_sumout\ ) ) ) # ( !\Add2~113_sumout\ & ( \Add3~113_sumout\ & ( !\Add1~97_sumout\ ) ) ) # ( \Add2~113_sumout\ & ( !\Add3~113_sumout\ & ( !\Add1~97_sumout\ ) ) ) # ( !\Add2~113_sumout\ 
-- & ( !\Add3~113_sumout\ & ( \Add1~97_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~97_sumout\,
	datae => \ALT_INV_Add2~113_sumout\,
	dataf => \ALT_INV_Add3~113_sumout\,
	combout => \zt~27_combout\);

-- Location: LABCELL_X66_Y13_N0
\yt~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~28_combout\ = ( \Add6~117_sumout\ & ( !\Add7~113_sumout\ $ (\Add5~124_sumout\) ) ) # ( !\Add6~117_sumout\ & ( !\Add7~113_sumout\ $ (!\Add5~124_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~113_sumout\,
	datad => \ALT_INV_Add5~124_sumout\,
	dataf => \ALT_INV_Add6~117_sumout\,
	combout => \yt~28_combout\);

-- Location: LABCELL_X61_Y13_N24
\zt~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~13_combout\ = ( \Add1~41_sumout\ & ( \Add3~53_sumout\ & ( \Add2~53_sumout\ ) ) ) # ( !\Add1~41_sumout\ & ( \Add3~53_sumout\ & ( !\Add2~53_sumout\ ) ) ) # ( \Add1~41_sumout\ & ( !\Add3~53_sumout\ & ( !\Add2~53_sumout\ ) ) ) # ( !\Add1~41_sumout\ & ( 
-- !\Add3~53_sumout\ & ( \Add2~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~53_sumout\,
	datae => \ALT_INV_Add1~41_sumout\,
	dataf => \ALT_INV_Add3~53_sumout\,
	combout => \zt~13_combout\);

-- Location: LABCELL_X62_Y15_N18
\Add5~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~84_sumout\ = SUM(( k2(20) ) + ( \Add4~61_sumout\ ) + ( \Add5~81\ ))
-- \Add5~85\ = CARRY(( k2(20) ) + ( \Add4~61_sumout\ ) + ( \Add5~81\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~61_sumout\,
	datad => ALT_INV_k2(20),
	cin => \Add5~81\,
	sumout => \Add5~84_sumout\,
	cout => \Add5~85\);

-- Location: LABCELL_X60_Y14_N0
\Add6~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~77_sumout\ = SUM(( \Add4~77_sumout\ ) + ( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( \Add6~74\ ))
-- \Add6~78\ = CARRY(( \Add4~77_sumout\ ) + ( (!\state_reg~q\) # (\Add0~110_sumout\) ) + ( \Add6~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~77_sumout\,
	dataf => \ALT_INV_Add0~110_sumout\,
	cin => \Add6~74\,
	sumout => \Add6~77_sumout\,
	cout => \Add6~78\);

-- Location: IOIBUF_X8_Y0_N18
\key[116]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(116),
	o => \key[116]~input_o\);

-- Location: LABCELL_X61_Y14_N45
\k3[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(20) = (!\state_reg~q\ & (\key[116]~input_o\)) # (\state_reg~q\ & ((k3(20))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[116]~input_o\,
	datad => ALT_INV_k3(20),
	combout => k3(20));

-- Location: MLABCELL_X59_Y14_N0
\Add7~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~73_sumout\ = SUM(( \Add4~97_sumout\ ) + ( k3(20) ) + ( \Add7~70\ ))
-- \Add7~74\ = CARRY(( \Add4~97_sumout\ ) + ( k3(20) ) + ( \Add7~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add4~97_sumout\,
	datac => ALT_INV_k3(20),
	cin => \Add7~70\,
	sumout => \Add7~73_sumout\,
	cout => \Add7~74\);

-- Location: LABCELL_X63_Y12_N12
\yt~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~18_combout\ = ( \Add6~77_sumout\ & ( \Add7~73_sumout\ & ( \Add5~84_sumout\ ) ) ) # ( !\Add6~77_sumout\ & ( \Add7~73_sumout\ & ( !\Add5~84_sumout\ ) ) ) # ( \Add6~77_sumout\ & ( !\Add7~73_sumout\ & ( !\Add5~84_sumout\ ) ) ) # ( !\Add6~77_sumout\ & ( 
-- !\Add7~73_sumout\ & ( \Add5~84_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~84_sumout\,
	datae => \ALT_INV_Add6~77_sumout\,
	dataf => \ALT_INV_Add7~73_sumout\,
	combout => \yt~18_combout\);

-- Location: IOIBUF_X64_Y0_N18
\key[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(24),
	o => \key[24]~input_o\);

-- Location: LABCELL_X64_Y12_N3
\k0[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(24) = ( \state_reg~q\ & ( k0(24) ) ) # ( !\state_reg~q\ & ( \key[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[24]~input_o\,
	datad => ALT_INV_k0(24),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(24));

-- Location: LABCELL_X64_Y12_N30
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( k0(24) ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( (!\state_reg~q\ & ((\value[52]~input_o\))) # (\state_reg~q\ & (\Add8~81_sumout\)) ) + ( k0(24) ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~81_sumout\,
	datad => \ALT_INV_value[52]~input_o\,
	dataf => ALT_INV_k0(24),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: IOIBUF_X62_Y0_N52
\key[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(56),
	o => \key[56]~input_o\);

-- Location: LABCELL_X62_Y12_N36
\k1[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(24) = ( \state_reg~q\ & ( k1(24) ) ) # ( !\state_reg~q\ & ( \key[56]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[56]~input_o\,
	datad => ALT_INV_k1(24),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(24));

-- Location: IOIBUF_X60_Y0_N1
\value[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(61),
	o => \value[61]~input_o\);

-- Location: LABCELL_X62_Y12_N12
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( k1(24) ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( k1(24) ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~117_sumout\,
	datad => ALT_INV_k1(24),
	dataf => \ALT_INV_value[61]~input_o\,
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: MLABCELL_X65_Y12_N12
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~97_sumout\,
	datac => \ALT_INV_Add0~86_sumout\,
	dataf => \ALT_INV_value[56]~input_o\,
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: LABCELL_X64_Y12_N9
\zt~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~21_combout\ = ( \Add2~85_sumout\ & ( !\Add1~73_sumout\ $ (\Add3~85_sumout\) ) ) # ( !\Add2~85_sumout\ & ( !\Add1~73_sumout\ $ (!\Add3~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~73_sumout\,
	datad => \ALT_INV_Add3~85_sumout\,
	dataf => \ALT_INV_Add2~85_sumout\,
	combout => \zt~21_combout\);

-- Location: IOIBUF_X26_Y0_N92
\value[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(24),
	o => \value[24]~input_o\);

-- Location: LABCELL_X57_Y12_N12
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( \zt~21_combout\ ) + ( (!\state_reg~q\ & ((\value[24]~input_o\))) # (\state_reg~q\ & (\Add4~93_sumout\)) ) + ( \Add4~90\ ))
-- \Add4~94\ = CARRY(( \zt~21_combout\ ) + ( (!\state_reg~q\ & ((\value[24]~input_o\))) # (\state_reg~q\ & (\Add4~93_sumout\)) ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add4~93_sumout\,
	datac => \ALT_INV_zt~21_combout\,
	dataf => \ALT_INV_value[24]~input_o\,
	cin => \Add4~90\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: LABCELL_X60_Y14_N3
\Add6~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~81_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( \Add4~81_sumout\ ) + ( \Add6~78\ ))
-- \Add6~82\ = CARRY(( (!\state_reg~q\) # (\Add0~74_sumout\) ) + ( \Add4~81_sumout\ ) + ( \Add6~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~81_sumout\,
	datad => \ALT_INV_Add0~74_sumout\,
	cin => \Add6~78\,
	sumout => \Add6~81_sumout\,
	cout => \Add6~82\);

-- Location: LABCELL_X60_Y14_N6
\Add6~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~85_sumout\ = SUM(( \Add4~85_sumout\ ) + ( (\state_reg~q\ & \Add0~78_sumout\) ) + ( \Add6~82\ ))
-- \Add6~86\ = CARRY(( \Add4~85_sumout\ ) + ( (\state_reg~q\ & \Add0~78_sumout\) ) + ( \Add6~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~78_sumout\,
	datad => \ALT_INV_Add4~85_sumout\,
	cin => \Add6~82\,
	sumout => \Add6~85_sumout\,
	cout => \Add6~86\);

-- Location: LABCELL_X60_Y14_N9
\Add6~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~89_sumout\ = SUM(( \Add4~89_sumout\ ) + ( (\state_reg~q\ & \Add0~82_sumout\) ) + ( \Add6~86\ ))
-- \Add6~90\ = CARRY(( \Add4~89_sumout\ ) + ( (\state_reg~q\ & \Add0~82_sumout\) ) + ( \Add6~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~82_sumout\,
	datad => \ALT_INV_Add4~89_sumout\,
	cin => \Add6~86\,
	sumout => \Add6~89_sumout\,
	cout => \Add6~90\);

-- Location: LABCELL_X60_Y14_N12
\Add6~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~93_sumout\ = SUM(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( \Add4~93_sumout\ ) + ( \Add6~90\ ))
-- \Add6~94\ = CARRY(( (\state_reg~q\ & \Add0~86_sumout\) ) + ( \Add4~93_sumout\ ) + ( \Add6~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~93_sumout\,
	datad => \ALT_INV_Add0~86_sumout\,
	cin => \Add6~90\,
	sumout => \Add6~93_sumout\,
	cout => \Add6~94\);

-- Location: LABCELL_X60_Y14_N15
\Add6~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~121_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( \Add4~97_sumout\ ) + ( \Add6~94\ ))
-- \Add6~122\ = CARRY(( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( \Add4~97_sumout\ ) + ( \Add6~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~97_sumout\,
	datad => \ALT_INV_Add0~90_sumout\,
	cin => \Add6~94\,
	sumout => \Add6~121_sumout\,
	cout => \Add6~122\);

-- Location: LABCELL_X60_Y14_N18
\Add6~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~97_sumout\ = SUM(( \Add4~101_sumout\ ) + ( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( \Add6~122\ ))
-- \Add6~98\ = CARRY(( \Add4~101_sumout\ ) + ( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( \Add6~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~101_sumout\,
	dataf => \ALT_INV_Add0~114_sumout\,
	cin => \Add6~122\,
	sumout => \Add6~97_sumout\,
	cout => \Add6~98\);

-- Location: LABCELL_X60_Y14_N21
\Add6~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~125_sumout\ = SUM(( \Add4~105_sumout\ ) + ( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( \Add6~98\ ))
-- \Add6~126\ = CARRY(( \Add4~105_sumout\ ) + ( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( \Add6~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~105_sumout\,
	dataf => \ALT_INV_Add0~122_sumout\,
	cin => \Add6~98\,
	sumout => \Add6~125_sumout\,
	cout => \Add6~126\);

-- Location: LABCELL_X60_Y14_N27
\Add6~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~105_sumout\ = SUM(( \Add4~113_sumout\ ) + ( (\state_reg~q\ & \Add0~98_sumout\) ) + ( \Add6~102\ ))
-- \Add6~106\ = CARRY(( \Add4~113_sumout\ ) + ( (\state_reg~q\ & \Add0~98_sumout\) ) + ( \Add6~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~98_sumout\,
	datad => \ALT_INV_Add4~113_sumout\,
	cin => \Add6~102\,
	sumout => \Add6~105_sumout\,
	cout => \Add6~106\);

-- Location: LABCELL_X62_Y15_N45
\Add5~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~112_sumout\ = SUM(( \Add4~97_sumout\ ) + ( k2(29) ) + ( \Add5~109\ ))
-- \Add5~113\ = CARRY(( \Add4~97_sumout\ ) + ( k2(29) ) + ( \Add5~109\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(29),
	datac => \ALT_INV_Add4~97_sumout\,
	cin => \Add5~109\,
	sumout => \Add5~112_sumout\,
	cout => \Add5~113\);

-- Location: LABCELL_X60_Y14_N42
\yt~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~25_combout\ = ( \Add5~112_sumout\ & ( !\Add7~101_sumout\ $ (\Add6~105_sumout\) ) ) # ( !\Add5~112_sumout\ & ( !\Add7~101_sumout\ $ (!\Add6~105_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~101_sumout\,
	datad => \ALT_INV_Add6~105_sumout\,
	dataf => \ALT_INV_Add5~112_sumout\,
	combout => \yt~25_combout\);

-- Location: LABCELL_X66_Y12_N27
\Add8~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~117_sumout\ = SUM(( \yt~25_combout\ ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add8~114\ ))
-- \Add8~118\ = CARRY(( \yt~25_combout\ ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add8~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~117_sumout\,
	datad => \ALT_INV_yt~25_combout\,
	dataf => \ALT_INV_value[61]~input_o\,
	cin => \Add8~114\,
	sumout => \Add8~117_sumout\,
	cout => \Add8~118\);

-- Location: LABCELL_X62_Y12_N15
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( k1(25) ) + ( (!\state_reg~q\ & ((\value[62]~input_o\))) # (\state_reg~q\ & (\Add8~121_sumout\)) ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( k1(25) ) + ( (!\state_reg~q\ & ((\value[62]~input_o\))) # (\state_reg~q\ & (\Add8~121_sumout\)) ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~121_sumout\,
	datad => ALT_INV_k1(25),
	dataf => \ALT_INV_value[62]~input_o\,
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: MLABCELL_X65_Y12_N15
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~90_sumout\) ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~101_sumout\,
	datad => \ALT_INV_value[57]~input_o\,
	dataf => \ALT_INV_Add0~90_sumout\,
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: IOIBUF_X80_Y0_N18
\key[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(25),
	o => \key[25]~input_o\);

-- Location: LABCELL_X64_Y12_N18
\k0[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(25) = ( \state_reg~q\ & ( k0(25) ) ) # ( !\state_reg~q\ & ( \key[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[25]~input_o\,
	datac => ALT_INV_k0(25),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(25));

-- Location: LABCELL_X64_Y12_N33
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( k0(25) ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( (!\state_reg~q\ & ((\value[53]~input_o\))) # (\state_reg~q\ & (\Add8~85_sumout\)) ) + ( k0(25) ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~85_sumout\,
	datad => \ALT_INV_value[53]~input_o\,
	dataf => ALT_INV_k0(25),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: LABCELL_X63_Y12_N33
\zt~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~22_combout\ = ( \Add2~89_sumout\ & ( \Add1~77_sumout\ & ( \Add3~89_sumout\ ) ) ) # ( !\Add2~89_sumout\ & ( \Add1~77_sumout\ & ( !\Add3~89_sumout\ ) ) ) # ( \Add2~89_sumout\ & ( !\Add1~77_sumout\ & ( !\Add3~89_sumout\ ) ) ) # ( !\Add2~89_sumout\ & ( 
-- !\Add1~77_sumout\ & ( \Add3~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~89_sumout\,
	datae => \ALT_INV_Add2~89_sumout\,
	dataf => \ALT_INV_Add1~77_sumout\,
	combout => \zt~22_combout\);

-- Location: IOIBUF_X24_Y0_N18
\value[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(25),
	o => \value[25]~input_o\);

-- Location: LABCELL_X57_Y12_N15
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( \zt~22_combout\ ) + ( (!\state_reg~q\ & ((\value[25]~input_o\))) # (\state_reg~q\ & (\Add4~97_sumout\)) ) + ( \Add4~94\ ))
-- \Add4~98\ = CARRY(( \zt~22_combout\ ) + ( (!\state_reg~q\ & ((\value[25]~input_o\))) # (\state_reg~q\ & (\Add4~97_sumout\)) ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~97_sumout\,
	datad => \ALT_INV_zt~22_combout\,
	dataf => \ALT_INV_value[25]~input_o\,
	cin => \Add4~94\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: LABCELL_X62_Y15_N48
\Add5~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~116_sumout\ = SUM(( \Add4~101_sumout\ ) + ( k2(30) ) + ( \Add5~113\ ))
-- \Add5~117\ = CARRY(( \Add4~101_sumout\ ) + ( k2(30) ) + ( \Add5~113\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(30),
	datac => \ALT_INV_Add4~101_sumout\,
	cin => \Add5~113\,
	sumout => \Add5~116_sumout\,
	cout => \Add5~117\);

-- Location: LABCELL_X62_Y15_N51
\Add5~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~136_sumout\ = SUM(( \Add4~105_sumout\ ) + ( k2(31) ) + ( \Add5~117\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(31),
	datad => \ALT_INV_Add4~105_sumout\,
	cin => \Add5~117\,
	sumout => \Add5~136_sumout\);

-- Location: LABCELL_X60_Y12_N39
\yt~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~31_combout\ = ( \Add6~129_sumout\ & ( \Add5~136_sumout\ & ( \Add7~125_sumout\ ) ) ) # ( !\Add6~129_sumout\ & ( \Add5~136_sumout\ & ( !\Add7~125_sumout\ ) ) ) # ( \Add6~129_sumout\ & ( !\Add5~136_sumout\ & ( !\Add7~125_sumout\ ) ) ) # ( 
-- !\Add6~129_sumout\ & ( !\Add5~136_sumout\ & ( \Add7~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~125_sumout\,
	datae => \ALT_INV_Add6~129_sumout\,
	dataf => \ALT_INV_Add5~136_sumout\,
	combout => \yt~31_combout\);

-- Location: LABCELL_X66_Y12_N30
\Add8~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~121_sumout\ = SUM(( \yt~26_combout\ ) + ( (!\state_reg~q\ & ((\value[62]~input_o\))) # (\state_reg~q\ & (\Add8~121_sumout\)) ) + ( \Add8~118\ ))
-- \Add8~122\ = CARRY(( \yt~26_combout\ ) + ( (!\state_reg~q\ & ((\value[62]~input_o\))) # (\state_reg~q\ & (\Add8~121_sumout\)) ) + ( \Add8~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~121_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_yt~26_combout\,
	dataf => \ALT_INV_value[62]~input_o\,
	cin => \Add8~118\,
	sumout => \Add8~121_sumout\,
	cout => \Add8~122\);

-- Location: LABCELL_X66_Y12_N33
\Add8~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~125_sumout\ = SUM(( \z~93_combout\ ) + ( \yt~31_combout\ ) + ( \Add8~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_yt~31_combout\,
	datad => \ALT_INV_z~93_combout\,
	cin => \Add8~122\,
	sumout => \Add8~125_sumout\);

-- Location: LABCELL_X66_Y12_N51
\z~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~93_combout\ = ( \Add8~125_sumout\ & ( (\value[63]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~125_sumout\ & ( (!\state_reg~q\ & \value[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[63]~input_o\,
	dataf => \ALT_INV_Add8~125_sumout\,
	combout => \z~93_combout\);

-- Location: LABCELL_X62_Y12_N18
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( \z~93_combout\ ) + ( k1(26) ) + ( \Add3~90\ ))
-- \Add3~118\ = CARRY(( \z~93_combout\ ) + ( k1(26) ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k1(26),
	datad => \ALT_INV_z~93_combout\,
	cin => \Add3~90\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: LABCELL_X62_Y12_N21
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( k1(27) ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( k1(27) ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k1(27),
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: MLABCELL_X65_Y12_N18
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( \Add2~90\ ))
-- \Add2~118\ = CARRY(( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~114_sumout\) ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~105_sumout\,
	datad => \ALT_INV_value[58]~input_o\,
	dataf => \ALT_INV_Add0~114_sumout\,
	cin => \Add2~90\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: MLABCELL_X65_Y12_N21
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( (!\state_reg~q\) # (\Add0~122_sumout\) ) + ( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~109_sumout\,
	datad => \ALT_INV_Add0~122_sumout\,
	dataf => \ALT_INV_value[59]~input_o\,
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: IOIBUF_X70_Y0_N35
\key[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(27),
	o => \key[27]~input_o\);

-- Location: LABCELL_X64_Y12_N15
\k0[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(27) = ( \state_reg~q\ & ( k0(27) ) ) # ( !\state_reg~q\ & ( \key[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[27]~input_o\,
	datac => ALT_INV_k0(27),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(27));

-- Location: IOIBUF_X76_Y0_N18
\key[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(26),
	o => \key[26]~input_o\);

-- Location: LABCELL_X64_Y12_N57
\k0[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(26) = ( \state_reg~q\ & ( k0(26) ) ) # ( !\state_reg~q\ & ( \key[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[26]~input_o\,
	datad => ALT_INV_k0(26),
	dataf => \ALT_INV_state_reg~q\,
	combout => k0(26));

-- Location: LABCELL_X64_Y12_N36
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( k0(26) ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add1~78\ ))
-- \Add1~102\ = CARRY(( k0(26) ) + ( (!\state_reg~q\ & ((\value[54]~input_o\))) # (\state_reg~q\ & (\Add8~89_sumout\)) ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~89_sumout\,
	datad => ALT_INV_k0(26),
	dataf => \ALT_INV_value[54]~input_o\,
	cin => \Add1~78\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: LABCELL_X64_Y12_N39
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( k0(27) ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( (!\state_reg~q\ & ((\value[55]~input_o\))) # (\state_reg~q\ & (\Add8~93_sumout\)) ) + ( k0(27) ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~93_sumout\,
	datad => \ALT_INV_value[55]~input_o\,
	dataf => ALT_INV_k0(27),
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: LABCELL_X63_Y12_N18
\zt~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~29_combout\ = ( \Add2~121_sumout\ & ( \Add1~105_sumout\ & ( \Add3~121_sumout\ ) ) ) # ( !\Add2~121_sumout\ & ( \Add1~105_sumout\ & ( !\Add3~121_sumout\ ) ) ) # ( \Add2~121_sumout\ & ( !\Add1~105_sumout\ & ( !\Add3~121_sumout\ ) ) ) # ( 
-- !\Add2~121_sumout\ & ( !\Add1~105_sumout\ & ( \Add3~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~121_sumout\,
	datae => \ALT_INV_Add2~121_sumout\,
	dataf => \ALT_INV_Add1~105_sumout\,
	combout => \zt~29_combout\);

-- Location: IOIBUF_X50_Y0_N92
\value[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(27),
	o => \value[27]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\value[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(26),
	o => \value[26]~input_o\);

-- Location: LABCELL_X57_Y12_N18
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( \zt~28_combout\ ) + ( (!\state_reg~q\ & ((\value[26]~input_o\))) # (\state_reg~q\ & (\Add4~101_sumout\)) ) + ( \Add4~98\ ))
-- \Add4~102\ = CARRY(( \zt~28_combout\ ) + ( (!\state_reg~q\ & ((\value[26]~input_o\))) # (\state_reg~q\ & (\Add4~101_sumout\)) ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~101_sumout\,
	datad => \ALT_INV_zt~28_combout\,
	dataf => \ALT_INV_value[26]~input_o\,
	cin => \Add4~98\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: LABCELL_X57_Y12_N21
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( \zt~29_combout\ ) + ( (!\state_reg~q\ & ((\value[27]~input_o\))) # (\state_reg~q\ & (\Add4~105_sumout\)) ) + ( \Add4~102\ ))
-- \Add4~106\ = CARRY(( \zt~29_combout\ ) + ( (!\state_reg~q\ & ((\value[27]~input_o\))) # (\state_reg~q\ & (\Add4~105_sumout\)) ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~105_sumout\,
	datad => \ALT_INV_zt~29_combout\,
	dataf => \ALT_INV_value[27]~input_o\,
	cin => \Add4~102\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: MLABCELL_X59_Y14_N3
\Add7~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~77_sumout\ = SUM(( \Add4~101_sumout\ ) + ( k3(21) ) + ( \Add7~74\ ))
-- \Add7~78\ = CARRY(( \Add4~101_sumout\ ) + ( k3(21) ) + ( \Add7~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(21),
	datad => \ALT_INV_Add4~101_sumout\,
	cin => \Add7~74\,
	sumout => \Add7~77_sumout\,
	cout => \Add7~78\);

-- Location: MLABCELL_X59_Y14_N6
\Add7~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~81_sumout\ = SUM(( \Add4~105_sumout\ ) + ( k3(22) ) + ( \Add7~78\ ))
-- \Add7~82\ = CARRY(( \Add4~105_sumout\ ) + ( k3(22) ) + ( \Add7~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k3(22),
	datad => \ALT_INV_Add4~105_sumout\,
	cin => \Add7~78\,
	sumout => \Add7~81_sumout\,
	cout => \Add7~82\);

-- Location: MLABCELL_X59_Y14_N9
\Add7~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~85_sumout\ = SUM(( \Add4~109_sumout\ ) + ( k3(23) ) + ( \Add7~82\ ))
-- \Add7~86\ = CARRY(( \Add4~109_sumout\ ) + ( k3(23) ) + ( \Add7~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(23),
	datac => \ALT_INV_Add4~109_sumout\,
	cin => \Add7~82\,
	sumout => \Add7~85_sumout\,
	cout => \Add7~86\);

-- Location: IOIBUF_X18_Y0_N75
\key[87]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(87),
	o => \key[87]~input_o\);

-- Location: LABCELL_X63_Y15_N0
\k2[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(23) = (!\state_reg~q\ & (\key[87]~input_o\)) # (\state_reg~q\ & ((k2(23))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[87]~input_o\,
	datad => ALT_INV_k2(23),
	combout => k2(23));

-- Location: IOIBUF_X40_Y81_N1
\key[86]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(86),
	o => \key[86]~input_o\);

-- Location: LABCELL_X62_Y14_N12
\k2[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(22) = ( k2(22) & ( (\state_reg~q\) # (\key[86]~input_o\) ) ) # ( !k2(22) & ( (\key[86]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[86]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(22),
	combout => k2(22));

-- Location: IOIBUF_X36_Y81_N52
\key[85]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(85),
	o => \key[85]~input_o\);

-- Location: LABCELL_X63_Y15_N45
\k2[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(21) = (!\state_reg~q\ & (\key[85]~input_o\)) # (\state_reg~q\ & ((k2(21))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_key[85]~input_o\,
	datad => ALT_INV_k2(21),
	combout => k2(21));

-- Location: LABCELL_X62_Y15_N21
\Add5~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~88_sumout\ = SUM(( \Add4~65_sumout\ ) + ( k2(21) ) + ( \Add5~85\ ))
-- \Add5~89\ = CARRY(( \Add4~65_sumout\ ) + ( k2(21) ) + ( \Add5~85\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(21),
	datac => \ALT_INV_Add4~65_sumout\,
	cin => \Add5~85\,
	sumout => \Add5~88_sumout\,
	cout => \Add5~89\);

-- Location: LABCELL_X62_Y15_N24
\Add5~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~92_sumout\ = SUM(( \Add4~69_sumout\ ) + ( k2(22) ) + ( \Add5~89\ ))
-- \Add5~93\ = CARRY(( \Add4~69_sumout\ ) + ( k2(22) ) + ( \Add5~89\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(22),
	datac => \ALT_INV_Add4~69_sumout\,
	cin => \Add5~89\,
	sumout => \Add5~92_sumout\,
	cout => \Add5~93\);

-- Location: LABCELL_X62_Y15_N27
\Add5~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~96_sumout\ = SUM(( \Add4~73_sumout\ ) + ( k2(23) ) + ( \Add5~93\ ))
-- \Add5~97\ = CARRY(( \Add4~73_sumout\ ) + ( k2(23) ) + ( \Add5~93\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~73_sumout\,
	dataf => ALT_INV_k2(23),
	cin => \Add5~93\,
	sumout => \Add5~96_sumout\,
	cout => \Add5~97\);

-- Location: MLABCELL_X59_Y14_N51
\yt~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~21_combout\ = ( \Add5~96_sumout\ & ( !\Add7~85_sumout\ $ (\Add6~89_sumout\) ) ) # ( !\Add5~96_sumout\ & ( !\Add7~85_sumout\ $ (!\Add6~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~85_sumout\,
	datad => \ALT_INV_Add6~89_sumout\,
	dataf => \ALT_INV_Add5~96_sumout\,
	combout => \yt~21_combout\);

-- Location: LABCELL_X64_Y12_N42
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( k0(28) ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add1~106\ ))
-- \Add1~82\ = CARRY(( k0(28) ) + ( (!\state_reg~q\ & ((\value[56]~input_o\))) # (\state_reg~q\ & (\Add8~97_sumout\)) ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~97_sumout\,
	datad => ALT_INV_k0(28),
	dataf => \ALT_INV_value[56]~input_o\,
	cin => \Add1~106\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: IOIBUF_X34_Y0_N41
\key[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(60),
	o => \key[60]~input_o\);

-- Location: LABCELL_X61_Y14_N42
\k1[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(28) = ( k1(28) & ( (\state_reg~q\) # (\key[60]~input_o\) ) ) # ( !k1(28) & ( (\key[60]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[60]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(28),
	combout => k1(28));

-- Location: LABCELL_X62_Y12_N24
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( k1(28) ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~94\ = CARRY(( k1(28) ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k1(28),
	cin => \Add3~122\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: MLABCELL_X65_Y12_N24
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( \Add2~122\ ))
-- \Add2~94\ = CARRY(( (!\state_reg~q\ & ((\value[60]~input_o\))) # (\state_reg~q\ & (\Add8~113_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~94_sumout\) ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~113_sumout\,
	datad => \ALT_INV_value[60]~input_o\,
	dataf => \ALT_INV_Add0~94_sumout\,
	cin => \Add2~122\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: LABCELL_X64_Y12_N12
\zt~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~23_combout\ = ( \Add2~93_sumout\ & ( !\Add1~81_sumout\ $ (\Add3~93_sumout\) ) ) # ( !\Add2~93_sumout\ & ( !\Add1~81_sumout\ $ (!\Add3~93_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~81_sumout\,
	datad => \ALT_INV_Add3~93_sumout\,
	dataf => \ALT_INV_Add2~93_sumout\,
	combout => \zt~23_combout\);

-- Location: IOIBUF_X20_Y0_N52
\value[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(28),
	o => \value[28]~input_o\);

-- Location: LABCELL_X57_Y12_N24
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( \zt~23_combout\ ) + ( (!\state_reg~q\ & ((\value[28]~input_o\))) # (\state_reg~q\ & (\Add4~109_sumout\)) ) + ( \Add4~106\ ))
-- \Add4~110\ = CARRY(( \zt~23_combout\ ) + ( (!\state_reg~q\ & ((\value[28]~input_o\))) # (\state_reg~q\ & (\Add4~109_sumout\)) ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~109_sumout\,
	datad => \ALT_INV_zt~23_combout\,
	dataf => \ALT_INV_value[28]~input_o\,
	cin => \Add4~106\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: MLABCELL_X59_Y14_N12
\Add7~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~89_sumout\ = SUM(( \Add4~113_sumout\ ) + ( k3(24) ) + ( \Add7~86\ ))
-- \Add7~90\ = CARRY(( \Add4~113_sumout\ ) + ( k3(24) ) + ( \Add7~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k3(24),
	datac => \ALT_INV_Add4~113_sumout\,
	cin => \Add7~86\,
	sumout => \Add7~89_sumout\,
	cout => \Add7~90\);

-- Location: IOIBUF_X24_Y81_N52
\key[88]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(88),
	o => \key[88]~input_o\);

-- Location: LABCELL_X63_Y15_N30
\k2[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- k2(24) = ( k2(24) & ( (\state_reg~q\) # (\key[88]~input_o\) ) ) # ( !k2(24) & ( (\key[88]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[88]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k2(24),
	combout => k2(24));

-- Location: LABCELL_X62_Y15_N30
\Add5~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~100_sumout\ = SUM(( \Add4~77_sumout\ ) + ( k2(24) ) + ( \Add5~97\ ))
-- \Add5~101\ = CARRY(( \Add4~77_sumout\ ) + ( k2(24) ) + ( \Add5~97\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k2(24),
	datac => \ALT_INV_Add4~77_sumout\,
	cin => \Add5~97\,
	sumout => \Add5~100_sumout\,
	cout => \Add5~101\);

-- Location: LABCELL_X63_Y12_N57
\yt~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~22_combout\ = ( \Add5~100_sumout\ & ( \Add6~93_sumout\ & ( \Add7~89_sumout\ ) ) ) # ( !\Add5~100_sumout\ & ( \Add6~93_sumout\ & ( !\Add7~89_sumout\ ) ) ) # ( \Add5~100_sumout\ & ( !\Add6~93_sumout\ & ( !\Add7~89_sumout\ ) ) ) # ( !\Add5~100_sumout\ & 
-- ( !\Add6~93_sumout\ & ( \Add7~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~89_sumout\,
	datae => \ALT_INV_Add5~100_sumout\,
	dataf => \ALT_INV_Add6~93_sumout\,
	combout => \yt~22_combout\);

-- Location: LABCELL_X64_Y12_N45
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( k0(29) ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( (!\state_reg~q\ & ((\value[57]~input_o\))) # (\state_reg~q\ & (\Add8~101_sumout\)) ) + ( k0(29) ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~101_sumout\,
	datad => \ALT_INV_value[57]~input_o\,
	dataf => ALT_INV_k0(29),
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: MLABCELL_X65_Y12_N27
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( (\state_reg~q\ & \Add0~98_sumout\) ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( (\state_reg~q\ & \Add0~98_sumout\) ) + ( (!\state_reg~q\ & ((\value[61]~input_o\))) # (\state_reg~q\ & (\Add8~117_sumout\)) ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~117_sumout\,
	datad => \ALT_INV_Add0~98_sumout\,
	dataf => \ALT_INV_value[61]~input_o\,
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: IOIBUF_X58_Y0_N41
\key[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(61),
	o => \key[61]~input_o\);

-- Location: LABCELL_X62_Y12_N57
\k1[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(29) = ( k1(29) & ( (\key[61]~input_o\) # (\state_reg~q\) ) ) # ( !k1(29) & ( (!\state_reg~q\ & \key[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_key[61]~input_o\,
	dataf => ALT_INV_k1(29),
	combout => k1(29));

-- Location: LABCELL_X62_Y12_N27
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( k1(29) ) + ( GND ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( k1(29) ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k1(29),
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: LABCELL_X64_Y12_N21
\zt~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~24_combout\ = ( \Add3~97_sumout\ & ( !\Add1~85_sumout\ $ (\Add2~97_sumout\) ) ) # ( !\Add3~97_sumout\ & ( !\Add1~85_sumout\ $ (!\Add2~97_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~85_sumout\,
	datad => \ALT_INV_Add2~97_sumout\,
	dataf => \ALT_INV_Add3~97_sumout\,
	combout => \zt~24_combout\);

-- Location: IOIBUF_X52_Y0_N18
\value[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(29),
	o => \value[29]~input_o\);

-- Location: LABCELL_X57_Y12_N27
\Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( \zt~24_combout\ ) + ( (!\state_reg~q\ & ((\value[29]~input_o\))) # (\state_reg~q\ & (\Add4~113_sumout\)) ) + ( \Add4~110\ ))
-- \Add4~114\ = CARRY(( \zt~24_combout\ ) + ( (!\state_reg~q\ & ((\value[29]~input_o\))) # (\state_reg~q\ & (\Add4~113_sumout\)) ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~113_sumout\,
	datad => \ALT_INV_zt~24_combout\,
	dataf => \ALT_INV_value[29]~input_o\,
	cin => \Add4~110\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: LABCELL_X60_Y14_N39
\yt~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~26_combout\ = ( \Add7~105_sumout\ & ( !\Add6~109_sumout\ $ (\Add5~116_sumout\) ) ) # ( !\Add7~105_sumout\ & ( !\Add6~109_sumout\ $ (!\Add5~116_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~109_sumout\,
	datad => \ALT_INV_Add5~116_sumout\,
	dataf => \ALT_INV_Add7~105_sumout\,
	combout => \yt~26_combout\);

-- Location: MLABCELL_X65_Y12_N30
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( (!\state_reg~q\ & (\value[62]~input_o\)) # (\state_reg~q\ & ((\Add8~121_sumout\))) ) + ( (\state_reg~q\ & \Add0~118_sumout\) ) + ( \Add2~98\ ))
-- \Add2~126\ = CARRY(( (!\state_reg~q\ & (\value[62]~input_o\)) # (\state_reg~q\ & ((\Add8~121_sumout\))) ) + ( (\state_reg~q\ & \Add0~118_sumout\) ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[62]~input_o\,
	datac => \ALT_INV_Add8~121_sumout\,
	dataf => \ALT_INV_Add0~118_sumout\,
	cin => \Add2~98\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: IOIBUF_X26_Y0_N41
\key[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(30),
	o => \key[30]~input_o\);

-- Location: LABCELL_X63_Y13_N27
\k0[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- k0(30) = ( \state_reg~q\ & ( k0(30) ) ) # ( !\state_reg~q\ & ( k0(30) & ( \key[30]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k0(30) & ( \key[30]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[30]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k0(30),
	combout => k0(30));

-- Location: LABCELL_X64_Y12_N48
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( k0(30) ) + ( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( \Add1~86\ ))
-- \Add1~110\ = CARRY(( k0(30) ) + ( (!\state_reg~q\ & ((\value[58]~input_o\))) # (\state_reg~q\ & (\Add8~105_sumout\)) ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~105_sumout\,
	datad => ALT_INV_k0(30),
	dataf => \ALT_INV_value[58]~input_o\,
	cin => \Add1~86\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: IOIBUF_X80_Y0_N52
\key[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(62),
	o => \key[62]~input_o\);

-- Location: LABCELL_X63_Y12_N42
\k1[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(30) = ( \state_reg~q\ & ( k1(30) ) ) # ( !\state_reg~q\ & ( k1(30) & ( \key[62]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k1(30) & ( \key[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[62]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(30),
	combout => k1(30));

-- Location: LABCELL_X62_Y12_N30
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( k1(30) ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~126\ = CARRY(( k1(30) ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k1(30),
	cin => \Add3~98\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: LABCELL_X61_Y12_N57
\zt~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~30_combout\ = ( \Add1~109_sumout\ & ( \Add3~125_sumout\ & ( \Add2~125_sumout\ ) ) ) # ( !\Add1~109_sumout\ & ( \Add3~125_sumout\ & ( !\Add2~125_sumout\ ) ) ) # ( \Add1~109_sumout\ & ( !\Add3~125_sumout\ & ( !\Add2~125_sumout\ ) ) ) # ( 
-- !\Add1~109_sumout\ & ( !\Add3~125_sumout\ & ( \Add2~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add2~125_sumout\,
	datae => \ALT_INV_Add1~109_sumout\,
	dataf => \ALT_INV_Add3~125_sumout\,
	combout => \zt~30_combout\);

-- Location: IOIBUF_X54_Y0_N1
\value[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(30),
	o => \value[30]~input_o\);

-- Location: LABCELL_X57_Y12_N30
\Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( \zt~30_combout\ ) + ( (!\state_reg~q\ & ((\value[30]~input_o\))) # (\state_reg~q\ & (\Add4~117_sumout\)) ) + ( \Add4~114\ ))
-- \Add4~118\ = CARRY(( \zt~30_combout\ ) + ( (!\state_reg~q\ & ((\value[30]~input_o\))) # (\state_reg~q\ & (\Add4~117_sumout\)) ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~117_sumout\,
	datad => \ALT_INV_zt~30_combout\,
	dataf => \ALT_INV_value[30]~input_o\,
	cin => \Add4~114\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: IOIBUF_X12_Y0_N35
\key[121]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(121),
	o => \key[121]~input_o\);

-- Location: MLABCELL_X59_Y14_N42
\k3[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- k3(25) = ( \state_reg~q\ & ( k3(25) ) ) # ( !\state_reg~q\ & ( k3(25) & ( \key[121]~input_o\ ) ) ) # ( !\state_reg~q\ & ( !k3(25) & ( \key[121]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[121]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k3(25),
	combout => k3(25));

-- Location: MLABCELL_X59_Y14_N15
\Add7~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~117_sumout\ = SUM(( \Add4~117_sumout\ ) + ( k3(25) ) + ( \Add7~90\ ))
-- \Add7~118\ = CARRY(( \Add4~117_sumout\ ) + ( k3(25) ) + ( \Add7~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add4~117_sumout\,
	dataf => ALT_INV_k3(25),
	cin => \Add7~90\,
	sumout => \Add7~117_sumout\,
	cout => \Add7~118\);

-- Location: LABCELL_X62_Y15_N33
\Add5~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~128_sumout\ = SUM(( \Add4~81_sumout\ ) + ( k2(25) ) + ( \Add5~101\ ))
-- \Add5~129\ = CARRY(( \Add4~81_sumout\ ) + ( k2(25) ) + ( \Add5~101\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k2(25),
	datac => \ALT_INV_Add4~81_sumout\,
	cin => \Add5~101\,
	sumout => \Add5~128_sumout\,
	cout => \Add5~129\);

-- Location: LABCELL_X60_Y14_N57
\yt~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~29_combout\ = ( \Add6~121_sumout\ & ( !\Add7~117_sumout\ $ (\Add5~128_sumout\) ) ) # ( !\Add6~121_sumout\ & ( !\Add7~117_sumout\ $ (!\Add5~128_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~117_sumout\,
	datad => \ALT_INV_Add5~128_sumout\,
	dataf => \ALT_INV_Add6~121_sumout\,
	combout => \yt~29_combout\);

-- Location: LABCELL_X61_Y12_N36
\zt~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~18_combout\ = ( \Add1~61_sumout\ & ( \Add2~73_sumout\ & ( \Add3~73_sumout\ ) ) ) # ( !\Add1~61_sumout\ & ( \Add2~73_sumout\ & ( !\Add3~73_sumout\ ) ) ) # ( \Add1~61_sumout\ & ( !\Add2~73_sumout\ & ( !\Add3~73_sumout\ ) ) ) # ( !\Add1~61_sumout\ & ( 
-- !\Add2~73_sumout\ & ( \Add3~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~73_sumout\,
	datae => \ALT_INV_Add1~61_sumout\,
	dataf => \ALT_INV_Add2~73_sumout\,
	combout => \zt~18_combout\);

-- Location: MLABCELL_X59_Y14_N18
\Add7~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~93_sumout\ = SUM(( \Add4~121_sumout\ ) + ( k3(26) ) + ( \Add7~118\ ))
-- \Add7~94\ = CARRY(( \Add4~121_sumout\ ) + ( k3(26) ) + ( \Add7~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k3(26),
	datad => \ALT_INV_Add4~121_sumout\,
	cin => \Add7~118\,
	sumout => \Add7~93_sumout\,
	cout => \Add7~94\);

-- Location: LABCELL_X63_Y12_N48
\yt~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~23_combout\ = ( \Add6~97_sumout\ & ( \Add7~93_sumout\ & ( \Add5~104_sumout\ ) ) ) # ( !\Add6~97_sumout\ & ( \Add7~93_sumout\ & ( !\Add5~104_sumout\ ) ) ) # ( \Add6~97_sumout\ & ( !\Add7~93_sumout\ & ( !\Add5~104_sumout\ ) ) ) # ( !\Add6~97_sumout\ & ( 
-- !\Add7~93_sumout\ & ( \Add5~104_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~104_sumout\,
	datae => \ALT_INV_Add6~97_sumout\,
	dataf => \ALT_INV_Add7~93_sumout\,
	combout => \yt~23_combout\);

-- Location: LABCELL_X64_Y12_N51
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( (!\state_reg~q\ & ((\value[59]~input_o\))) # (\state_reg~q\ & (\Add8~109_sumout\)) ) + ( k0(31) ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~109_sumout\,
	datad => \ALT_INV_value[59]~input_o\,
	dataf => ALT_INV_k0(31),
	cin => \Add1~110\,
	sumout => \Add1~89_sumout\);

-- Location: IOIBUF_X28_Y0_N35
\key[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(63),
	o => \key[63]~input_o\);

-- Location: LABCELL_X63_Y13_N21
\k1[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(31) = ( k1(31) & ( \state_reg~q\ ) ) # ( k1(31) & ( !\state_reg~q\ & ( \key[63]~input_o\ ) ) ) # ( !k1(31) & ( !\state_reg~q\ & ( \key[63]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[63]~input_o\,
	datae => ALT_INV_k1(31),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(31));

-- Location: LABCELL_X62_Y12_N33
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( k1(31) ) + ( GND ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k1(31),
	cin => \Add3~126\,
	sumout => \Add3~101_sumout\);

-- Location: MLABCELL_X65_Y12_N33
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( \sum[31]~31_combout\ ) + ( \z~93_combout\ ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_z~93_combout\,
	datad => \ALT_INV_sum[31]~31_combout\,
	cin => \Add2~126\,
	sumout => \Add2~101_sumout\);

-- Location: LABCELL_X64_Y12_N0
\zt~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~25_combout\ = ( \Add2~101_sumout\ & ( !\Add1~89_sumout\ $ (\Add3~101_sumout\) ) ) # ( !\Add2~101_sumout\ & ( !\Add1~89_sumout\ $ (!\Add3~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~89_sumout\,
	datad => \ALT_INV_Add3~101_sumout\,
	dataf => \ALT_INV_Add2~101_sumout\,
	combout => \zt~25_combout\);

-- Location: IOIBUF_X40_Y0_N1
\value[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value(31),
	o => \value[31]~input_o\);

-- Location: LABCELL_X57_Y12_N33
\Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( \zt~25_combout\ ) + ( (!\state_reg~q\ & ((\value[31]~input_o\))) # (\state_reg~q\ & (\Add4~121_sumout\)) ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~121_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_zt~25_combout\,
	dataf => \ALT_INV_value[31]~input_o\,
	cin => \Add4~118\,
	sumout => \Add4~121_sumout\);

-- Location: LABCELL_X60_Y14_N36
\yt~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~30_combout\ = ( \Add5~132_sumout\ & ( !\Add7~121_sumout\ $ (\Add6~125_sumout\) ) ) # ( !\Add5~132_sumout\ & ( !\Add7~121_sumout\ $ (!\Add6~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~121_sumout\,
	datad => \ALT_INV_Add6~125_sumout\,
	dataf => \ALT_INV_Add5~132_sumout\,
	combout => \yt~30_combout\);

-- Location: LABCELL_X61_Y12_N9
\zt~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~19_combout\ = ( \Add1~65_sumout\ & ( \Add2~77_sumout\ & ( \Add3~77_sumout\ ) ) ) # ( !\Add1~65_sumout\ & ( \Add2~77_sumout\ & ( !\Add3~77_sumout\ ) ) ) # ( \Add1~65_sumout\ & ( !\Add2~77_sumout\ & ( !\Add3~77_sumout\ ) ) ) # ( !\Add1~65_sumout\ & ( 
-- !\Add2~77_sumout\ & ( \Add3~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add3~77_sumout\,
	datae => \ALT_INV_Add1~65_sumout\,
	dataf => \ALT_INV_Add2~77_sumout\,
	combout => \zt~19_combout\);

-- Location: LABCELL_X61_Y12_N12
\yt~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~20_combout\ = ( \Add5~92_sumout\ & ( \Add7~81_sumout\ & ( \Add6~85_sumout\ ) ) ) # ( !\Add5~92_sumout\ & ( \Add7~81_sumout\ & ( !\Add6~85_sumout\ ) ) ) # ( \Add5~92_sumout\ & ( !\Add7~81_sumout\ & ( !\Add6~85_sumout\ ) ) ) # ( !\Add5~92_sumout\ & ( 
-- !\Add7~81_sumout\ & ( \Add6~85_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~85_sumout\,
	datae => \ALT_INV_Add5~92_sumout\,
	dataf => \ALT_INV_Add7~81_sumout\,
	combout => \yt~20_combout\);

-- Location: LABCELL_X64_Y12_N54
\zt~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~28_combout\ = ( \Add2~117_sumout\ & ( !\Add1~101_sumout\ $ (\Add3~117_sumout\) ) ) # ( !\Add2~117_sumout\ & ( !\Add1~101_sumout\ $ (!\Add3~117_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~101_sumout\,
	datad => \ALT_INV_Add3~117_sumout\,
	dataf => \ALT_INV_Add2~117_sumout\,
	combout => \zt~28_combout\);

-- Location: LABCELL_X56_Y14_N48
\yt~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~19_combout\ = ( \Add6~81_sumout\ & ( \Add5~88_sumout\ & ( \Add7~77_sumout\ ) ) ) # ( !\Add6~81_sumout\ & ( \Add5~88_sumout\ & ( !\Add7~77_sumout\ ) ) ) # ( \Add6~81_sumout\ & ( !\Add5~88_sumout\ & ( !\Add7~77_sumout\ ) ) ) # ( !\Add6~81_sumout\ & ( 
-- !\Add5~88_sumout\ & ( \Add7~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~77_sumout\,
	datae => \ALT_INV_Add6~81_sumout\,
	dataf => \ALT_INV_Add5~88_sumout\,
	combout => \yt~19_combout\);

-- Location: LABCELL_X61_Y13_N57
\zt~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~14_combout\ = ( \Add2~57_sumout\ & ( \Add1~45_sumout\ & ( \Add3~57_sumout\ ) ) ) # ( !\Add2~57_sumout\ & ( \Add1~45_sumout\ & ( !\Add3~57_sumout\ ) ) ) # ( \Add2~57_sumout\ & ( !\Add1~45_sumout\ & ( !\Add3~57_sumout\ ) ) ) # ( !\Add2~57_sumout\ & ( 
-- !\Add1~45_sumout\ & ( \Add3~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~57_sumout\,
	datae => \ALT_INV_Add2~57_sumout\,
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \zt~14_combout\);

-- Location: LABCELL_X56_Y15_N48
\yt~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~10_combout\ = ( \Add7~41_sumout\ & ( \Add5~52_sumout\ & ( \Add6~45_sumout\ ) ) ) # ( !\Add7~41_sumout\ & ( \Add5~52_sumout\ & ( !\Add6~45_sumout\ ) ) ) # ( \Add7~41_sumout\ & ( !\Add5~52_sumout\ & ( !\Add6~45_sumout\ ) ) ) # ( !\Add7~41_sumout\ & ( 
-- !\Add5~52_sumout\ & ( \Add6~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~45_sumout\,
	datae => \ALT_INV_Add7~41_sumout\,
	dataf => \ALT_INV_Add5~52_sumout\,
	combout => \yt~10_combout\);

-- Location: LABCELL_X60_Y13_N12
\zt~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~9_combout\ = ( \Add2~37_sumout\ & ( \Add3~37_sumout\ & ( \Add1~25_sumout\ ) ) ) # ( !\Add2~37_sumout\ & ( \Add3~37_sumout\ & ( !\Add1~25_sumout\ ) ) ) # ( \Add2~37_sumout\ & ( !\Add3~37_sumout\ & ( !\Add1~25_sumout\ ) ) ) # ( !\Add2~37_sumout\ & ( 
-- !\Add3~37_sumout\ & ( \Add1~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~25_sumout\,
	datae => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_Add3~37_sumout\,
	combout => \zt~9_combout\);

-- Location: LABCELL_X60_Y15_N3
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( (\state_reg~q\ & \Add0~2_sumout\) ) + ( \Add4~1_sumout\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( (\state_reg~q\ & \Add0~2_sumout\) ) + ( \Add4~1_sumout\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_Add0~2_sumout\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: LABCELL_X60_Y15_N6
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( (\state_reg~q\ & \Add0~6_sumout\) ) + ( \Add4~5_sumout\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( (\state_reg~q\ & \Add0~6_sumout\) ) + ( \Add4~5_sumout\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~5_sumout\,
	datad => \ALT_INV_Add0~6_sumout\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: LABCELL_X60_Y15_N9
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( \Add4~9_sumout\ ) + ( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( \Add4~9_sumout\ ) + ( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~10_sumout\,
	datad => \ALT_INV_Add4~9_sumout\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: LABCELL_X60_Y15_N12
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \Add4~13_sumout\ ) + ( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( \Add4~13_sumout\ ) + ( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~13_sumout\,
	dataf => \ALT_INV_Add0~14_sumout\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: LABCELL_X60_Y15_N15
\Add6~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~113_sumout\ = SUM(( \Add4~17_sumout\ ) + ( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( \Add6~22\ ))
-- \Add6~114\ = CARRY(( \Add4~17_sumout\ ) + ( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~17_sumout\,
	dataf => \ALT_INV_Add0~18_sumout\,
	cin => \Add6~22\,
	sumout => \Add6~113_sumout\,
	cout => \Add6~114\);

-- Location: LABCELL_X60_Y15_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( \Add4~21_sumout\ ) + ( (\state_reg~q\ & \Add0~22_sumout\) ) + ( \Add6~114\ ))
-- \Add6~26\ = CARRY(( \Add4~21_sumout\ ) + ( (\state_reg~q\ & \Add0~22_sumout\) ) + ( \Add6~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add0~22_sumout\,
	datad => \ALT_INV_Add4~21_sumout\,
	cin => \Add6~114\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: MLABCELL_X65_Y15_N21
\yt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~5_combout\ = ( \Add7~21_sumout\ & ( \Add6~25_sumout\ & ( \Add5~32_sumout\ ) ) ) # ( !\Add7~21_sumout\ & ( \Add6~25_sumout\ & ( !\Add5~32_sumout\ ) ) ) # ( \Add7~21_sumout\ & ( !\Add6~25_sumout\ & ( !\Add5~32_sumout\ ) ) ) # ( !\Add7~21_sumout\ & ( 
-- !\Add6~25_sumout\ & ( \Add5~32_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~32_sumout\,
	datae => \ALT_INV_Add7~21_sumout\,
	dataf => \ALT_INV_Add6~25_sumout\,
	combout => \yt~5_combout\);

-- Location: MLABCELL_X65_Y14_N0
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( !VCC ))
-- \Add2~106\ = CARRY(( (!\state_reg~q\) # (\sum[0]~32_combout\) ) + ( (!\state_reg~q\ & ((\value[32]~input_o\))) # (\state_reg~q\ & (\Add8~1_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~1_sumout\,
	datad => \ALT_INV_sum[0]~32_combout\,
	dataf => \ALT_INV_value[32]~input_o\,
	cin => GND,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: MLABCELL_X65_Y14_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( (!\state_reg~q\ & ((\value[33]~input_o\))) # (\state_reg~q\ & (\Add8~5_sumout\)) ) + ( (\state_reg~q\ & \Add0~2_sumout\) ) + ( \Add2~106\ ))
-- \Add2~2\ = CARRY(( (!\state_reg~q\ & ((\value[33]~input_o\))) # (\state_reg~q\ & (\Add8~5_sumout\)) ) + ( (\state_reg~q\ & \Add0~2_sumout\) ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~5_sumout\,
	datad => \ALT_INV_value[33]~input_o\,
	dataf => \ALT_INV_Add0~2_sumout\,
	cin => \Add2~106\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X65_Y14_N6
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( (\Add0~6_sumout\ & \state_reg~q\) ) + ( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( (\Add0~6_sumout\ & \state_reg~q\) ) + ( (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\)) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~6_sumout\,
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~9_sumout\,
	dataf => \ALT_INV_value[34]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X65_Y14_N9
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( (!\state_reg~q\) # (\Add0~10_sumout\) ) + ( (!\state_reg~q\ & ((\value[35]~input_o\))) # (\state_reg~q\ & (\Add8~13_sumout\)) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~13_sumout\,
	datad => \ALT_INV_Add0~10_sumout\,
	dataf => \ALT_INV_value[35]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X65_Y14_N12
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( (!\state_reg~q\ & ((\value[36]~input_o\))) # (\state_reg~q\ & (\Add8~17_sumout\)) ) + ( (!\state_reg~q\) # (\Add0~14_sumout\) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~17_sumout\,
	datad => \ALT_INV_value[36]~input_o\,
	dataf => \ALT_INV_Add0~14_sumout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X65_Y14_N15
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( (!\state_reg~q\) # (\Add0~18_sumout\) ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~21_sumout\,
	datad => \ALT_INV_Add0~18_sumout\,
	dataf => \ALT_INV_value[37]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X65_Y14_N18
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( (\state_reg~q\ & \Add0~22_sumout\) ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( (\state_reg~q\ & \Add0~22_sumout\) ) + ( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~25_sumout\,
	datad => \ALT_INV_Add0~22_sumout\,
	dataf => \ALT_INV_value[38]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X67_Y14_N3
\zt~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~6_combout\ = ( \Add2~25_sumout\ & ( \Add3~25_sumout\ & ( \Add1~13_sumout\ ) ) ) # ( !\Add2~25_sumout\ & ( \Add3~25_sumout\ & ( !\Add1~13_sumout\ ) ) ) # ( \Add2~25_sumout\ & ( !\Add3~25_sumout\ & ( !\Add1~13_sumout\ ) ) ) # ( !\Add2~25_sumout\ & ( 
-- !\Add3~25_sumout\ & ( \Add1~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~13_sumout\,
	datae => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_Add3~25_sumout\,
	combout => \zt~6_combout\);

-- Location: LABCELL_X60_Y15_N21
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( \Add4~25_sumout\ ) + ( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( \Add4~25_sumout\ ) + ( (!\state_reg~q\) # (\Add0~26_sumout\) ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~25_sumout\,
	dataf => \ALT_INV_Add0~26_sumout\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: LABCELL_X62_Y16_N27
\yt~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~7_combout\ = ( \Add7~29_sumout\ & ( !\Add5~40_sumout\ $ (\Add6~33_sumout\) ) ) # ( !\Add7~29_sumout\ & ( !\Add5~40_sumout\ $ (!\Add6~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~40_sumout\,
	datad => \ALT_INV_Add6~33_sumout\,
	dataf => \ALT_INV_Add7~29_sumout\,
	combout => \yt~7_combout\);

-- Location: IOIBUF_X30_Y0_N18
\key[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(35),
	o => \key[35]~input_o\);

-- Location: LABCELL_X62_Y14_N0
\k1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(3) = ( \state_reg~q\ & ( k1(3) ) ) # ( !\state_reg~q\ & ( \key[35]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[35]~input_o\,
	datac => ALT_INV_k1(3),
	dataf => \ALT_INV_state_reg~q\,
	combout => k1(3));

-- Location: IOIBUF_X18_Y0_N92
\key[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(34),
	o => \key[34]~input_o\);

-- Location: LABCELL_X62_Y14_N9
\k1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(2) = ( k1(2) & ( (\state_reg~q\) # (\key[34]~input_o\) ) ) # ( !k1(2) & ( (\key[34]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[34]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(2),
	combout => k1(2));

-- Location: IOIBUF_X22_Y81_N35
\key[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(33),
	o => \key[33]~input_o\);

-- Location: LABCELL_X62_Y14_N27
\k1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- k1(1) = ( k1(1) & ( (\state_reg~q\) # (\key[33]~input_o\) ) ) # ( !k1(1) & ( (\key[33]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[33]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => ALT_INV_k1(1),
	combout => k1(1));

-- Location: LABCELL_X62_Y14_N30
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( k1(0) ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( !VCC ))
-- \Add3~106\ = CARRY(( k1(0) ) + ( (!\state_reg~q\ & ((\value[37]~input_o\))) # (\state_reg~q\ & (\Add8~21_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k1(0),
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~21_sumout\,
	dataf => \ALT_INV_value[37]~input_o\,
	cin => GND,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: LABCELL_X62_Y14_N33
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( k1(1) ) + ( \Add3~106\ ))
-- \Add3~2\ = CARRY(( (!\state_reg~q\ & ((\value[38]~input_o\))) # (\state_reg~q\ & (\Add8~25_sumout\)) ) + ( k1(1) ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~25_sumout\,
	datad => \ALT_INV_value[38]~input_o\,
	dataf => ALT_INV_k1(1),
	cin => \Add3~106\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X62_Y14_N36
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( k1(2) ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( (!\state_reg~q\ & ((\value[39]~input_o\))) # (\state_reg~q\ & (\Add8~29_sumout\)) ) + ( k1(2) ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~29_sumout\,
	datad => \ALT_INV_value[39]~input_o\,
	dataf => ALT_INV_k1(2),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X62_Y14_N39
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( k1(3) ) + ( (!\state_reg~q\ & (\value[40]~input_o\)) # (\state_reg~q\ & ((\Add8~33_sumout\))) ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( k1(3) ) + ( (!\state_reg~q\ & (\value[40]~input_o\)) # (\state_reg~q\ & ((\Add8~33_sumout\))) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[40]~input_o\,
	datac => \ALT_INV_Add8~33_sumout\,
	datad => ALT_INV_k1(3),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X62_Y14_N42
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( k1(4) ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( (!\state_reg~q\ & ((\value[41]~input_o\))) # (\state_reg~q\ & (\Add8~37_sumout\)) ) + ( k1(4) ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~37_sumout\,
	datad => \ALT_INV_value[41]~input_o\,
	dataf => ALT_INV_k1(4),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X67_Y14_N30
\zt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~4_combout\ = ( \Add1~5_sumout\ & ( \Add2~17_sumout\ & ( \Add3~17_sumout\ ) ) ) # ( !\Add1~5_sumout\ & ( \Add2~17_sumout\ & ( !\Add3~17_sumout\ ) ) ) # ( \Add1~5_sumout\ & ( !\Add2~17_sumout\ & ( !\Add3~17_sumout\ ) ) ) # ( !\Add1~5_sumout\ & ( 
-- !\Add2~17_sumout\ & ( \Add3~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add3~17_sumout\,
	datae => \ALT_INV_Add1~5_sumout\,
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \zt~4_combout\);

-- Location: LABCELL_X62_Y16_N45
\Add5~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~44_sumout\ = SUM(( \Add4~17_sumout\ ) + ( k2(9) ) + ( \Add5~41\ ))
-- \Add5~45\ = CARRY(( \Add4~17_sumout\ ) + ( k2(9) ) + ( \Add5~41\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(9),
	datad => \ALT_INV_Add4~17_sumout\,
	cin => \Add5~41\,
	sumout => \Add5~44_sumout\,
	cout => \Add5~45\);

-- Location: MLABCELL_X65_Y15_N3
\yt~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~9_combout\ = ( \Add7~37_sumout\ & ( \Add6~41_sumout\ & ( \Add5~48_sumout\ ) ) ) # ( !\Add7~37_sumout\ & ( \Add6~41_sumout\ & ( !\Add5~48_sumout\ ) ) ) # ( \Add7~37_sumout\ & ( !\Add6~41_sumout\ & ( !\Add5~48_sumout\ ) ) ) # ( !\Add7~37_sumout\ & ( 
-- !\Add6~41_sumout\ & ( \Add5~48_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~48_sumout\,
	datae => \ALT_INV_Add7~37_sumout\,
	dataf => \ALT_INV_Add6~41_sumout\,
	combout => \yt~9_combout\);

-- Location: MLABCELL_X65_Y13_N48
\zt~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~26_combout\ = ( \Add1~93_sumout\ & ( !\Add2~109_sumout\ $ (\Add3~109_sumout\) ) ) # ( !\Add1~93_sumout\ & ( !\Add2~109_sumout\ $ (!\Add3~109_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~109_sumout\,
	datad => \ALT_INV_Add3~109_sumout\,
	dataf => \ALT_INV_Add1~93_sumout\,
	combout => \zt~26_combout\);

-- Location: LABCELL_X55_Y15_N3
\yt~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~13_combout\ = ( \Add7~53_sumout\ & ( \Add6~57_sumout\ & ( \Add5~64_sumout\ ) ) ) # ( !\Add7~53_sumout\ & ( \Add6~57_sumout\ & ( !\Add5~64_sumout\ ) ) ) # ( \Add7~53_sumout\ & ( !\Add6~57_sumout\ & ( !\Add5~64_sumout\ ) ) ) # ( !\Add7~53_sumout\ & ( 
-- !\Add6~57_sumout\ & ( \Add5~64_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~64_sumout\,
	datae => \ALT_INV_Add7~53_sumout\,
	dataf => \ALT_INV_Add6~57_sumout\,
	combout => \yt~13_combout\);

-- Location: LABCELL_X67_Y14_N6
\zt~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~8_combout\ = ( \Add2~33_sumout\ & ( \Add1~21_sumout\ & ( \Add3~33_sumout\ ) ) ) # ( !\Add2~33_sumout\ & ( \Add1~21_sumout\ & ( !\Add3~33_sumout\ ) ) ) # ( \Add2~33_sumout\ & ( !\Add1~21_sumout\ & ( !\Add3~33_sumout\ ) ) ) # ( !\Add2~33_sumout\ & ( 
-- !\Add1~21_sumout\ & ( \Add3~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~33_sumout\,
	datae => \ALT_INV_Add2~33_sumout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \zt~8_combout\);

-- Location: MLABCELL_X65_Y15_N45
\yt~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~8_combout\ = ( \Add5~44_sumout\ & ( \Add7~33_sumout\ & ( \Add6~37_sumout\ ) ) ) # ( !\Add5~44_sumout\ & ( \Add7~33_sumout\ & ( !\Add6~37_sumout\ ) ) ) # ( \Add5~44_sumout\ & ( !\Add7~33_sumout\ & ( !\Add6~37_sumout\ ) ) ) # ( !\Add5~44_sumout\ & ( 
-- !\Add7~33_sumout\ & ( \Add6~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~37_sumout\,
	datae => \ALT_INV_Add5~44_sumout\,
	dataf => \ALT_INV_Add7~33_sumout\,
	combout => \yt~8_combout\);

-- Location: LABCELL_X67_Y14_N15
\zt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~3_combout\ = ( \Add1~1_sumout\ & ( \Add2~13_sumout\ & ( \Add3~13_sumout\ ) ) ) # ( !\Add1~1_sumout\ & ( \Add2~13_sumout\ & ( !\Add3~13_sumout\ ) ) ) # ( \Add1~1_sumout\ & ( !\Add2~13_sumout\ & ( !\Add3~13_sumout\ ) ) ) # ( !\Add1~1_sumout\ & ( 
-- !\Add2~13_sumout\ & ( \Add3~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~13_sumout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \zt~3_combout\);

-- Location: MLABCELL_X65_Y15_N48
\yt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~4_combout\ = ( \Add5~28_sumout\ & ( \Add7~17_sumout\ & ( \Add6~21_sumout\ ) ) ) # ( !\Add5~28_sumout\ & ( \Add7~17_sumout\ & ( !\Add6~21_sumout\ ) ) ) # ( \Add5~28_sumout\ & ( !\Add7~17_sumout\ & ( !\Add6~21_sumout\ ) ) ) # ( !\Add5~28_sumout\ & ( 
-- !\Add7~17_sumout\ & ( \Add6~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~21_sumout\,
	datae => \ALT_INV_Add5~28_sumout\,
	dataf => \ALT_INV_Add7~17_sumout\,
	combout => \yt~4_combout\);

-- Location: LABCELL_X61_Y14_N36
\zt~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~7_combout\ = ( \Add2~29_sumout\ & ( !\Add1~17_sumout\ $ (\Add3~29_sumout\) ) ) # ( !\Add2~29_sumout\ & ( !\Add1~17_sumout\ $ (!\Add3~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add3~29_sumout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \zt~7_combout\);

-- Location: LABCELL_X66_Y14_N0
\yt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~3_combout\ = ( \Add6~17_sumout\ & ( !k2(3) $ (\Add7~13_sumout\) ) ) # ( !\Add6~17_sumout\ & ( !k2(3) $ (!\Add7~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(3),
	datad => \ALT_INV_Add7~13_sumout\,
	dataf => \ALT_INV_Add6~17_sumout\,
	combout => \yt~3_combout\);

-- Location: LABCELL_X56_Y14_N57
\zt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~2_combout\ = ( \Add2~9_sumout\ & ( \Add3~9_sumout\ & ( k0(3) ) ) ) # ( !\Add2~9_sumout\ & ( \Add3~9_sumout\ & ( !k0(3) ) ) ) # ( \Add2~9_sumout\ & ( !\Add3~9_sumout\ & ( !k0(3) ) ) ) # ( !\Add2~9_sumout\ & ( !\Add3~9_sumout\ & ( k0(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k0(3),
	datae => \ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_Add3~9_sumout\,
	combout => \zt~2_combout\);

-- Location: MLABCELL_X65_Y15_N39
\yt~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~6_combout\ = ( \Add6~29_sumout\ & ( \Add7~25_sumout\ & ( \Add5~36_sumout\ ) ) ) # ( !\Add6~29_sumout\ & ( \Add7~25_sumout\ & ( !\Add5~36_sumout\ ) ) ) # ( \Add6~29_sumout\ & ( !\Add7~25_sumout\ & ( !\Add5~36_sumout\ ) ) ) # ( !\Add6~29_sumout\ & ( 
-- !\Add7~25_sumout\ & ( \Add5~36_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~36_sumout\,
	datae => \ALT_INV_Add6~29_sumout\,
	dataf => \ALT_INV_Add7~25_sumout\,
	combout => \yt~6_combout\);

-- Location: LABCELL_X63_Y16_N39
\zt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~1_combout\ = ( \Add3~5_sumout\ & ( \Add2~5_sumout\ & ( k0(2) ) ) ) # ( !\Add3~5_sumout\ & ( \Add2~5_sumout\ & ( !k0(2) ) ) ) # ( \Add3~5_sumout\ & ( !\Add2~5_sumout\ & ( !k0(2) ) ) ) # ( !\Add3~5_sumout\ & ( !\Add2~5_sumout\ & ( k0(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k0(2),
	datae => \ALT_INV_Add3~5_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \zt~1_combout\);

-- Location: LABCELL_X57_Y15_N6
\yt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~2_combout\ = ( \Add6~13_sumout\ & ( \Add7~9_sumout\ & ( k2(2) ) ) ) # ( !\Add6~13_sumout\ & ( \Add7~9_sumout\ & ( !k2(2) ) ) ) # ( \Add6~13_sumout\ & ( !\Add7~9_sumout\ & ( !k2(2) ) ) ) # ( !\Add6~13_sumout\ & ( !\Add7~9_sumout\ & ( k2(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(2),
	datae => \ALT_INV_Add6~13_sumout\,
	dataf => \ALT_INV_Add7~9_sumout\,
	combout => \yt~2_combout\);

-- Location: MLABCELL_X65_Y14_N54
\zt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~5_combout\ = ( \Add2~21_sumout\ & ( !\Add1~9_sumout\ $ (\Add3~21_sumout\) ) ) # ( !\Add2~21_sumout\ & ( !\Add1~9_sumout\ $ (!\Add3~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add3~21_sumout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \zt~5_combout\);

-- Location: LABCELL_X57_Y15_N48
\yt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~1_combout\ = ( \Add7~5_sumout\ & ( \Add6~9_sumout\ & ( k2(1) ) ) ) # ( !\Add7~5_sumout\ & ( \Add6~9_sumout\ & ( !k2(1) ) ) ) # ( \Add7~5_sumout\ & ( !\Add6~9_sumout\ & ( !k2(1) ) ) ) # ( !\Add7~5_sumout\ & ( !\Add6~9_sumout\ & ( k2(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_k2(1),
	datae => \ALT_INV_Add7~5_sumout\,
	dataf => \ALT_INV_Add6~9_sumout\,
	combout => \yt~1_combout\);

-- Location: MLABCELL_X65_Y14_N57
\zt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~0_combout\ = ( \Add3~1_sumout\ & ( !k0(1) $ (\Add2~1_sumout\) ) ) # ( !\Add3~1_sumout\ & ( !k0(1) $ (!\Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_k0(1),
	datad => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => \zt~0_combout\);

-- Location: LABCELL_X62_Y16_N18
\yt~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \yt~27_combout\ = ( \Add7~109_sumout\ & ( !\Add5~120_sumout\ $ (\Add6~113_sumout\) ) ) # ( !\Add7~109_sumout\ & ( !\Add5~120_sumout\ $ (!\Add6~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~120_sumout\,
	datad => \ALT_INV_Add6~113_sumout\,
	dataf => \ALT_INV_Add7~109_sumout\,
	combout => \yt~27_combout\);

-- Location: LABCELL_X55_Y14_N48
\zt~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \zt~31_combout\ = ( \Add3~105_sumout\ & ( \Add2~105_sumout\ & ( k0(0) ) ) ) # ( !\Add3~105_sumout\ & ( \Add2~105_sumout\ & ( !k0(0) ) ) ) # ( \Add3~105_sumout\ & ( !\Add2~105_sumout\ & ( !k0(0) ) ) ) # ( !\Add3~105_sumout\ & ( !\Add2~105_sumout\ & ( k0(0) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_k0(0),
	datae => \ALT_INV_Add3~105_sumout\,
	dataf => \ALT_INV_Add2~105_sumout\,
	combout => \zt~31_combout\);

-- Location: LABCELL_X57_Y14_N27
\y~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~31_combout\ = ( \Add4~125_sumout\ & ( (\value[0]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~125_sumout\ & ( (!\state_reg~q\ & \value[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[0]~input_o\,
	dataf => \ALT_INV_Add4~125_sumout\,
	combout => \y~31_combout\);

-- Location: LABCELL_X57_Y14_N12
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \value[1]~input_o\ & ( (!\state_reg~q\) # (\Add4~1_sumout\) ) ) # ( !\value[1]~input_o\ & ( (\state_reg~q\ & \Add4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~1_sumout\,
	dataf => \ALT_INV_value[1]~input_o\,
	combout => \y~0_combout\);

-- Location: LABCELL_X57_Y14_N21
\y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~1_combout\ = ( \value[2]~input_o\ & ( (!\state_reg~q\) # (\Add4~5_sumout\) ) ) # ( !\value[2]~input_o\ & ( (\state_reg~q\ & \Add4~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~5_sumout\,
	dataf => \ALT_INV_value[2]~input_o\,
	combout => \y~1_combout\);

-- Location: LABCELL_X57_Y14_N15
\y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~2_combout\ = ( \value[3]~input_o\ & ( (!\state_reg~q\) # (\Add4~9_sumout\) ) ) # ( !\value[3]~input_o\ & ( (\state_reg~q\ & \Add4~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~9_sumout\,
	dataf => \ALT_INV_value[3]~input_o\,
	combout => \y~2_combout\);

-- Location: LABCELL_X57_Y14_N0
\y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~3_combout\ = ( \Add4~13_sumout\ & ( (\value[4]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~13_sumout\ & ( (!\state_reg~q\ & \value[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[4]~input_o\,
	dataf => \ALT_INV_Add4~13_sumout\,
	combout => \y~3_combout\);

-- Location: LABCELL_X57_Y14_N6
\y~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~4_combout\ = (!\state_reg~q\ & (\value[5]~input_o\)) # (\state_reg~q\ & ((\Add4~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[5]~input_o\,
	datad => \ALT_INV_Add4~17_sumout\,
	combout => \y~4_combout\);

-- Location: LABCELL_X57_Y14_N9
\y~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~5_combout\ = ( \Add4~21_sumout\ & ( (\value[6]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~21_sumout\ & ( (!\state_reg~q\ & \value[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_value[6]~input_o\,
	dataf => \ALT_INV_Add4~21_sumout\,
	combout => \y~5_combout\);

-- Location: LABCELL_X57_Y14_N18
\y~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~6_combout\ = ( \Add4~25_sumout\ & ( (\value[7]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~25_sumout\ & ( (!\state_reg~q\ & \value[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[7]~input_o\,
	dataf => \ALT_INV_Add4~25_sumout\,
	combout => \y~6_combout\);

-- Location: LABCELL_X57_Y14_N24
\y~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~7_combout\ = ( \value[8]~input_o\ & ( (!\state_reg~q\) # (\Add4~29_sumout\) ) ) # ( !\value[8]~input_o\ & ( (\state_reg~q\ & \Add4~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~29_sumout\,
	dataf => \ALT_INV_value[8]~input_o\,
	combout => \y~7_combout\);

-- Location: LABCELL_X57_Y14_N3
\y~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~8_combout\ = ( \value[9]~input_o\ & ( (!\state_reg~q\) # (\Add4~33_sumout\) ) ) # ( !\value[9]~input_o\ & ( (\state_reg~q\ & \Add4~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_value[9]~input_o\,
	combout => \y~8_combout\);

-- Location: LABCELL_X57_Y13_N0
\y~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~9_combout\ = ( \Add4~37_sumout\ & ( (\value[10]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~37_sumout\ & ( (!\state_reg~q\ & \value[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[10]~input_o\,
	dataf => \ALT_INV_Add4~37_sumout\,
	combout => \y~9_combout\);

-- Location: LABCELL_X57_Y13_N9
\y~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~10_combout\ = ( \Add4~41_sumout\ & ( (\value[11]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~41_sumout\ & ( (!\state_reg~q\ & \value[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[11]~input_o\,
	dataf => \ALT_INV_Add4~41_sumout\,
	combout => \y~10_combout\);

-- Location: LABCELL_X67_Y14_N57
\y~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~11_combout\ = ( \value[12]~input_o\ & ( (!\state_reg~q\) # (\Add4~45_sumout\) ) ) # ( !\value[12]~input_o\ & ( (\Add4~45_sumout\ & \state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~45_sumout\,
	datad => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_value[12]~input_o\,
	combout => \y~11_combout\);

-- Location: LABCELL_X57_Y13_N15
\y~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~12_combout\ = ( \Add4~49_sumout\ & ( (\value[13]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~49_sumout\ & ( (!\state_reg~q\ & \value[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[13]~input_o\,
	dataf => \ALT_INV_Add4~49_sumout\,
	combout => \y~12_combout\);

-- Location: LABCELL_X57_Y13_N12
\y~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~13_combout\ = ( \Add4~53_sumout\ & ( (\value[14]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~53_sumout\ & ( (!\state_reg~q\ & \value[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[14]~input_o\,
	dataf => \ALT_INV_Add4~53_sumout\,
	combout => \y~13_combout\);

-- Location: LABCELL_X57_Y13_N18
\y~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~14_combout\ = ( \Add4~57_sumout\ & ( \state_reg~q\ ) ) # ( \Add4~57_sumout\ & ( !\state_reg~q\ & ( \value[15]~input_o\ ) ) ) # ( !\Add4~57_sumout\ & ( !\state_reg~q\ & ( \value[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[15]~input_o\,
	datae => \ALT_INV_Add4~57_sumout\,
	dataf => \ALT_INV_state_reg~q\,
	combout => \y~14_combout\);

-- Location: LABCELL_X57_Y13_N24
\y~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~15_combout\ = ( \Add4~61_sumout\ & ( (\value[16]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~61_sumout\ & ( (!\state_reg~q\ & \value[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_value[16]~input_o\,
	dataf => \ALT_INV_Add4~61_sumout\,
	combout => \y~15_combout\);

-- Location: LABCELL_X57_Y13_N3
\y~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~16_combout\ = ( \Add4~65_sumout\ & ( (\state_reg~q\) # (\value[17]~input_o\) ) ) # ( !\Add4~65_sumout\ & ( (\value[17]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_value[17]~input_o\,
	datab => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add4~65_sumout\,
	combout => \y~16_combout\);

-- Location: LABCELL_X57_Y13_N6
\y~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~17_combout\ = ( \value[18]~input_o\ & ( (!\state_reg~q\) # (\Add4~69_sumout\) ) ) # ( !\value[18]~input_o\ & ( (\state_reg~q\ & \Add4~69_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~69_sumout\,
	dataf => \ALT_INV_value[18]~input_o\,
	combout => \y~17_combout\);

-- Location: LABCELL_X57_Y13_N27
\y~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~18_combout\ = ( \value[19]~input_o\ & ( (!\state_reg~q\) # (\Add4~73_sumout\) ) ) # ( !\value[19]~input_o\ & ( (\state_reg~q\ & \Add4~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~73_sumout\,
	dataf => \ALT_INV_value[19]~input_o\,
	combout => \y~18_combout\);

-- Location: LABCELL_X57_Y12_N36
\y~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~19_combout\ = ( \value[20]~input_o\ & ( (!\state_reg~q\) # (\Add4~77_sumout\) ) ) # ( !\value[20]~input_o\ & ( (\state_reg~q\ & \Add4~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~77_sumout\,
	dataf => \ALT_INV_value[20]~input_o\,
	combout => \y~19_combout\);

-- Location: LABCELL_X57_Y12_N45
\y~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~20_combout\ = ( \value[21]~input_o\ & ( (!\state_reg~q\) # (\Add4~81_sumout\) ) ) # ( !\value[21]~input_o\ & ( (\state_reg~q\ & \Add4~81_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add4~81_sumout\,
	dataf => \ALT_INV_value[21]~input_o\,
	combout => \y~20_combout\);

-- Location: LABCELL_X60_Y12_N24
\y~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~21_combout\ = ( \Add4~85_sumout\ & ( (\value[22]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~85_sumout\ & ( (!\state_reg~q\ & \value[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[22]~input_o\,
	dataf => \ALT_INV_Add4~85_sumout\,
	combout => \y~21_combout\);

-- Location: LABCELL_X60_Y12_N57
\y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~22_combout\ = ( \state_reg~q\ & ( \Add4~89_sumout\ ) ) # ( !\state_reg~q\ & ( \value[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~89_sumout\,
	datac => \ALT_INV_value[23]~input_o\,
	dataf => \ALT_INV_state_reg~q\,
	combout => \y~22_combout\);

-- Location: LABCELL_X56_Y14_N36
\y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~23_combout\ = ( \value[24]~input_o\ & ( \Add4~93_sumout\ ) ) # ( !\value[24]~input_o\ & ( \Add4~93_sumout\ & ( \state_reg~q\ ) ) ) # ( \value[24]~input_o\ & ( !\Add4~93_sumout\ & ( !\state_reg~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg~q\,
	datae => \ALT_INV_value[24]~input_o\,
	dataf => \ALT_INV_Add4~93_sumout\,
	combout => \y~23_combout\);

-- Location: LABCELL_X57_Y12_N51
\y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~24_combout\ = ( \Add4~97_sumout\ & ( (\value[25]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~97_sumout\ & ( (!\state_reg~q\ & \value[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[25]~input_o\,
	dataf => \ALT_INV_Add4~97_sumout\,
	combout => \y~24_combout\);

-- Location: LABCELL_X60_Y12_N48
\y~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~25_combout\ = ( \Add4~101_sumout\ & ( \state_reg~q\ ) ) # ( \Add4~101_sumout\ & ( !\state_reg~q\ & ( \value[26]~input_o\ ) ) ) # ( !\Add4~101_sumout\ & ( !\state_reg~q\ & ( \value[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_value[26]~input_o\,
	datae => \ALT_INV_Add4~101_sumout\,
	dataf => \ALT_INV_state_reg~q\,
	combout => \y~25_combout\);

-- Location: LABCELL_X57_Y12_N48
\y~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~26_combout\ = ( \Add4~105_sumout\ & ( (\value[27]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~105_sumout\ & ( (!\state_reg~q\ & \value[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_value[27]~input_o\,
	dataf => \ALT_INV_Add4~105_sumout\,
	combout => \y~26_combout\);

-- Location: LABCELL_X57_Y12_N54
\y~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~27_combout\ = ( \Add4~109_sumout\ & ( (\value[28]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~109_sumout\ & ( (!\state_reg~q\ & \value[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[28]~input_o\,
	dataf => \ALT_INV_Add4~109_sumout\,
	combout => \y~27_combout\);

-- Location: LABCELL_X57_Y12_N39
\y~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~28_combout\ = ( \value[29]~input_o\ & ( (!\state_reg~q\) # (\Add4~113_sumout\) ) ) # ( !\value[29]~input_o\ & ( (\state_reg~q\ & \Add4~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add4~113_sumout\,
	dataf => \ALT_INV_value[29]~input_o\,
	combout => \y~28_combout\);

-- Location: LABCELL_X57_Y12_N42
\y~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~29_combout\ = ( \Add4~117_sumout\ & ( (\value[30]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~117_sumout\ & ( (!\state_reg~q\ & \value[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[30]~input_o\,
	dataf => \ALT_INV_Add4~117_sumout\,
	combout => \y~29_combout\);

-- Location: LABCELL_X57_Y12_N57
\y~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~30_combout\ = ( \Add4~121_sumout\ & ( (\value[31]~input_o\) # (\state_reg~q\) ) ) # ( !\Add4~121_sumout\ & ( (!\state_reg~q\ & \value[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[31]~input_o\,
	dataf => \ALT_INV_Add4~121_sumout\,
	combout => \y~30_combout\);

-- Location: LABCELL_X66_Y14_N12
\z~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~62_combout\ = ( \Add8~1_sumout\ & ( (\value[32]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~1_sumout\ & ( (!\state_reg~q\ & \value[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[32]~input_o\,
	dataf => \ALT_INV_Add8~1_sumout\,
	combout => \z~62_combout\);

-- Location: LABCELL_X66_Y14_N9
\z~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~63_combout\ = ( \Add8~5_sumout\ & ( (\value[33]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~5_sumout\ & ( (!\state_reg~q\ & \value[33]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_value[33]~input_o\,
	dataf => \ALT_INV_Add8~5_sumout\,
	combout => \z~63_combout\);

-- Location: LABCELL_X66_Y14_N27
\z~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~64_combout\ = (!\state_reg~q\ & ((\value[34]~input_o\))) # (\state_reg~q\ & (\Add8~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~9_sumout\,
	datad => \ALT_INV_value[34]~input_o\,
	combout => \z~64_combout\);

-- Location: LABCELL_X66_Y14_N24
\z~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~65_combout\ = ( \Add8~13_sumout\ & ( (\value[35]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~13_sumout\ & ( (!\state_reg~q\ & \value[35]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[35]~input_o\,
	dataf => \ALT_INV_Add8~13_sumout\,
	combout => \z~65_combout\);

-- Location: LABCELL_X66_Y14_N15
\z~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~66_combout\ = ( \value[36]~input_o\ & ( (!\state_reg~q\) # (\Add8~17_sumout\) ) ) # ( !\value[36]~input_o\ & ( (\state_reg~q\ & \Add8~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~17_sumout\,
	dataf => \ALT_INV_value[36]~input_o\,
	combout => \z~66_combout\);

-- Location: LABCELL_X66_Y14_N18
\z~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~67_combout\ = ( \value[37]~input_o\ & ( (!\state_reg~q\) # (\Add8~21_sumout\) ) ) # ( !\value[37]~input_o\ & ( (\state_reg~q\ & \Add8~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add8~21_sumout\,
	dataf => \ALT_INV_value[37]~input_o\,
	combout => \z~67_combout\);

-- Location: MLABCELL_X65_Y14_N33
\z~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~68_combout\ = ( \value[38]~input_o\ & ( (!\state_reg~q\) # (\Add8~25_sumout\) ) ) # ( !\value[38]~input_o\ & ( (\state_reg~q\ & \Add8~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~25_sumout\,
	dataf => \ALT_INV_value[38]~input_o\,
	combout => \z~68_combout\);

-- Location: LABCELL_X66_Y14_N3
\z~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~69_combout\ = ( \Add8~29_sumout\ & ( (\state_reg~q\) # (\value[39]~input_o\) ) ) # ( !\Add8~29_sumout\ & ( (\value[39]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_value[39]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add8~29_sumout\,
	combout => \z~69_combout\);

-- Location: MLABCELL_X65_Y14_N39
\z~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~70_combout\ = ( \value[40]~input_o\ & ( (!\state_reg~q\) # (\Add8~33_sumout\) ) ) # ( !\value[40]~input_o\ & ( (\state_reg~q\ & \Add8~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~33_sumout\,
	dataf => \ALT_INV_value[40]~input_o\,
	combout => \z~70_combout\);

-- Location: LABCELL_X66_Y14_N6
\z~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~71_combout\ = ( \value[41]~input_o\ & ( (!\state_reg~q\) # (\Add8~37_sumout\) ) ) # ( !\value[41]~input_o\ & ( (\state_reg~q\ & \Add8~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add8~37_sumout\,
	dataf => \ALT_INV_value[41]~input_o\,
	combout => \z~71_combout\);

-- Location: MLABCELL_X65_Y13_N54
\z~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~72_combout\ = ( \Add8~41_sumout\ & ( (\state_reg~q\) # (\value[42]~input_o\) ) ) # ( !\Add8~41_sumout\ & ( (\value[42]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[42]~input_o\,
	datad => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add8~41_sumout\,
	combout => \z~72_combout\);

-- Location: LABCELL_X66_Y13_N12
\z~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~73_combout\ = ( \state_reg~q\ & ( \Add8~45_sumout\ ) ) # ( !\state_reg~q\ & ( \value[43]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~45_sumout\,
	datac => \ALT_INV_value[43]~input_o\,
	datae => \ALT_INV_state_reg~q\,
	combout => \z~73_combout\);

-- Location: LABCELL_X66_Y13_N18
\z~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~74_combout\ = (!\state_reg~q\ & (\value[44]~input_o\)) # (\state_reg~q\ & ((\Add8~49_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[44]~input_o\,
	datad => \ALT_INV_Add8~49_sumout\,
	combout => \z~74_combout\);

-- Location: MLABCELL_X65_Y13_N39
\z~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~75_combout\ = ( \Add8~53_sumout\ & ( (\state_reg~q\) # (\value[45]~input_o\) ) ) # ( !\Add8~53_sumout\ & ( (\value[45]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[45]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add8~53_sumout\,
	combout => \z~75_combout\);

-- Location: MLABCELL_X65_Y13_N42
\z~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~76_combout\ = ( \state_reg~q\ & ( \Add8~57_sumout\ ) ) # ( !\state_reg~q\ & ( \value[46]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~57_sumout\,
	datac => \ALT_INV_value[46]~input_o\,
	dataf => \ALT_INV_state_reg~q\,
	combout => \z~76_combout\);

-- Location: LABCELL_X66_Y13_N3
\z~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~77_combout\ = (!\state_reg~q\ & (\value[47]~input_o\)) # (\state_reg~q\ & ((\Add8~61_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_value[47]~input_o\,
	datac => \ALT_INV_Add8~61_sumout\,
	combout => \z~77_combout\);

-- Location: LABCELL_X66_Y13_N6
\z~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~78_combout\ = ( \value[48]~input_o\ & ( (!\state_reg~q\) # (\Add8~65_sumout\) ) ) # ( !\value[48]~input_o\ & ( (\state_reg~q\ & \Add8~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~65_sumout\,
	dataf => \ALT_INV_value[48]~input_o\,
	combout => \z~78_combout\);

-- Location: LABCELL_X66_Y13_N24
\z~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~79_combout\ = (!\state_reg~q\ & ((\value[49]~input_o\))) # (\state_reg~q\ & (\Add8~69_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datab => \ALT_INV_Add8~69_sumout\,
	datac => \ALT_INV_value[49]~input_o\,
	combout => \z~79_combout\);

-- Location: LABCELL_X66_Y13_N21
\z~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~80_combout\ = ( \value[50]~input_o\ & ( (!\state_reg~q\) # (\Add8~73_sumout\) ) ) # ( !\value[50]~input_o\ & ( (\state_reg~q\ & \Add8~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add8~73_sumout\,
	dataf => \ALT_INV_value[50]~input_o\,
	combout => \z~80_combout\);

-- Location: LABCELL_X66_Y13_N9
\z~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~81_combout\ = (!\state_reg~q\ & ((\value[51]~input_o\))) # (\state_reg~q\ & (\Add8~77_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~77_sumout\,
	datad => \ALT_INV_value[51]~input_o\,
	combout => \z~81_combout\);

-- Location: MLABCELL_X65_Y12_N51
\z~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~82_combout\ = ( \value[52]~input_o\ & ( \state_reg~q\ & ( \Add8~81_sumout\ ) ) ) # ( !\value[52]~input_o\ & ( \state_reg~q\ & ( \Add8~81_sumout\ ) ) ) # ( \value[52]~input_o\ & ( !\state_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~81_sumout\,
	datae => \ALT_INV_value[52]~input_o\,
	dataf => \ALT_INV_state_reg~q\,
	combout => \z~82_combout\);

-- Location: LABCELL_X66_Y12_N39
\z~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~83_combout\ = ( \value[53]~input_o\ & ( (!\state_reg~q\) # (\Add8~85_sumout\) ) ) # ( !\value[53]~input_o\ & ( (\state_reg~q\ & \Add8~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add8~85_sumout\,
	dataf => \ALT_INV_value[53]~input_o\,
	combout => \z~83_combout\);

-- Location: LABCELL_X66_Y12_N57
\z~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~84_combout\ = ( \value[54]~input_o\ & ( (!\state_reg~q\) # (\Add8~89_sumout\) ) ) # ( !\value[54]~input_o\ & ( (\state_reg~q\ & \Add8~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datad => \ALT_INV_Add8~89_sumout\,
	dataf => \ALT_INV_value[54]~input_o\,
	combout => \z~84_combout\);

-- Location: MLABCELL_X65_Y12_N42
\z~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~85_combout\ = ( \value[55]~input_o\ & ( (!\state_reg~q\) # (\Add8~93_sumout\) ) ) # ( !\value[55]~input_o\ & ( (\Add8~93_sumout\ & \state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add8~93_sumout\,
	datac => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_value[55]~input_o\,
	combout => \z~85_combout\);

-- Location: LABCELL_X66_Y12_N48
\z~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~86_combout\ = ( \Add8~97_sumout\ & ( (\value[56]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~97_sumout\ & ( (!\state_reg~q\ & \value[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[56]~input_o\,
	dataf => \ALT_INV_Add8~97_sumout\,
	combout => \z~86_combout\);

-- Location: LABCELL_X66_Y12_N36
\z~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~87_combout\ = ( \Add8~101_sumout\ & ( (\value[57]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~101_sumout\ & ( (!\state_reg~q\ & \value[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[57]~input_o\,
	dataf => \ALT_INV_Add8~101_sumout\,
	combout => \z~87_combout\);

-- Location: MLABCELL_X65_Y12_N36
\z~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~88_combout\ = ( \Add8~105_sumout\ & ( (\state_reg~q\) # (\value[58]~input_o\) ) ) # ( !\Add8~105_sumout\ & ( (\value[58]~input_o\ & !\state_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[58]~input_o\,
	datac => \ALT_INV_state_reg~q\,
	dataf => \ALT_INV_Add8~105_sumout\,
	combout => \z~88_combout\);

-- Location: LABCELL_X64_Y12_N27
\z~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~89_combout\ = (!\state_reg~q\ & (\value[59]~input_o\)) # (\state_reg~q\ & ((\Add8~109_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[59]~input_o\,
	datad => \ALT_INV_Add8~109_sumout\,
	combout => \z~89_combout\);

-- Location: LABCELL_X66_Y12_N54
\z~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~90_combout\ = ( \Add8~113_sumout\ & ( (\value[60]~input_o\) # (\state_reg~q\) ) ) # ( !\Add8~113_sumout\ & ( (!\state_reg~q\ & \value[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_value[60]~input_o\,
	dataf => \ALT_INV_Add8~113_sumout\,
	combout => \z~90_combout\);

-- Location: LABCELL_X66_Y12_N42
\z~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~91_combout\ = ( \value[61]~input_o\ & ( (!\state_reg~q\) # (\Add8~117_sumout\) ) ) # ( !\value[61]~input_o\ & ( (\state_reg~q\ & \Add8~117_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~117_sumout\,
	dataf => \ALT_INV_value[61]~input_o\,
	combout => \z~91_combout\);

-- Location: LABCELL_X66_Y12_N45
\z~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~92_combout\ = ( \value[62]~input_o\ & ( (!\state_reg~q\) # (\Add8~121_sumout\) ) ) # ( !\value[62]~input_o\ & ( (\state_reg~q\ & \Add8~121_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg~q\,
	datac => \ALT_INV_Add8~121_sumout\,
	dataf => \ALT_INV_value[62]~input_o\,
	combout => \z~92_combout\);

-- Location: LABCELL_X85_Y20_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



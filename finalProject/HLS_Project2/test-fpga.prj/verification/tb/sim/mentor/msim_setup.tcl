
# (C) 2001-2021 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 19.1 670 win32 2021.06.27.12:20:30

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "D:/intelfpga_lite/19.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" $VSIM_VERSION_STR ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          tb/sim/mentor/libraries/     
ensure_lib          tb/sim/mentor/libraries/work/
vmap       work     tb/sim/mentor/libraries/work/
vmap       work_lib tb/sim/mentor/libraries/work/
if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
  ensure_lib                   tb/sim/mentor/libraries/altera_ver/       
  vmap       altera_ver        tb/sim/mentor/libraries/altera_ver/       
  ensure_lib                   tb/sim/mentor/libraries/lpm_ver/          
  vmap       lpm_ver           tb/sim/mentor/libraries/lpm_ver/          
  ensure_lib                   tb/sim/mentor/libraries/sgate_ver/        
  vmap       sgate_ver         tb/sim/mentor/libraries/sgate_ver/        
  ensure_lib                   tb/sim/mentor/libraries/altera_mf_ver/    
  vmap       altera_mf_ver     tb/sim/mentor/libraries/altera_mf_ver/    
  ensure_lib                   tb/sim/mentor/libraries/altera_lnsim_ver/ 
  vmap       altera_lnsim_ver  tb/sim/mentor/libraries/altera_lnsim_ver/ 
  ensure_lib                   tb/sim/mentor/libraries/twentynm_ver/     
  vmap       twentynm_ver      tb/sim/mentor/libraries/twentynm_ver/     
  ensure_lib                   tb/sim/mentor/libraries/twentynm_hssi_ver/
  vmap       twentynm_hssi_ver tb/sim/mentor/libraries/twentynm_hssi_ver/
  ensure_lib                   tb/sim/mentor/libraries/twentynm_hip_ver/ 
  vmap       twentynm_hip_ver  tb/sim/mentor/libraries/twentynm_hip_ver/ 
  ensure_lib                   tb/sim/mentor/libraries/altera/           
  vmap       altera            tb/sim/mentor/libraries/altera/           
  ensure_lib                   tb/sim/mentor/libraries/lpm/              
  vmap       lpm               tb/sim/mentor/libraries/lpm/              
  ensure_lib                   tb/sim/mentor/libraries/sgate/            
  vmap       sgate             tb/sim/mentor/libraries/sgate/            
  ensure_lib                   tb/sim/mentor/libraries/altera_mf/        
  vmap       altera_mf         tb/sim/mentor/libraries/altera_mf/        
  ensure_lib                   tb/sim/mentor/libraries/altera_lnsim/     
  vmap       altera_lnsim      tb/sim/mentor/libraries/altera_lnsim/     
  ensure_lib                   tb/sim/mentor/libraries/twentynm/         
  vmap       twentynm          tb/sim/mentor/libraries/twentynm/         
  ensure_lib                   tb/sim/mentor/libraries/twentynm_hssi/    
  vmap       twentynm_hssi     tb/sim/mentor/libraries/twentynm_hssi/    
  ensure_lib                   tb/sim/mentor/libraries/twentynm_hip/     
  vmap       twentynm_hip      tb/sim/mentor/libraries/twentynm_hip/     
}
ensure_lib                                             tb/sim/mentor/libraries/altera_common_sv_packages/                  
vmap       altera_common_sv_packages                   tb/sim/mentor/libraries/altera_common_sv_packages/                  
ensure_lib                                             tb/sim/mentor/libraries/tb_count_internal_10/                       
vmap       tb_count_internal_10                        tb/sim/mentor/libraries/tb_count_internal_10/                       
ensure_lib                                             tb/sim/mentor/libraries/tb_altera_irq_mapper_191/                   
vmap       tb_altera_irq_mapper_191                    tb/sim/mentor/libraries/tb_altera_irq_mapper_191/                   
ensure_lib                                             tb/sim/mentor/libraries/tb_hls_sim_stream_source_dpi_bfm_10/        
vmap       tb_hls_sim_stream_source_dpi_bfm_10         tb/sim/mentor/libraries/tb_hls_sim_stream_source_dpi_bfm_10/        
ensure_lib                                             tb/sim/mentor/libraries/tb_avalon_split_multibit_conduit_10/        
vmap       tb_avalon_split_multibit_conduit_10         tb/sim/mentor/libraries/tb_avalon_split_multibit_conduit_10/        
ensure_lib                                             tb/sim/mentor/libraries/tb_hls_sim_mm_slave_dpi_bfm_10/             
vmap       tb_hls_sim_mm_slave_dpi_bfm_10              tb/sim/mentor/libraries/tb_hls_sim_mm_slave_dpi_bfm_10/             
ensure_lib                                             tb/sim/mentor/libraries/tb_hls_sim_main_dpi_controller_10/          
vmap       tb_hls_sim_main_dpi_controller_10           tb/sim/mentor/libraries/tb_hls_sim_main_dpi_controller_10/          
ensure_lib                                             tb/sim/mentor/libraries/tb_count_10/                                
vmap       tb_count_10                                 tb/sim/mentor/libraries/tb_count_10/                                
ensure_lib                                             tb/sim/mentor/libraries/tb_avalon_conduit_fanout_10/                
vmap       tb_avalon_conduit_fanout_10                 tb/sim/mentor/libraries/tb_avalon_conduit_fanout_10/                
ensure_lib                                             tb/sim/mentor/libraries/tb_avalon_concatenate_singlebit_conduits_10/
vmap       tb_avalon_concatenate_singlebit_conduits_10 tb/sim/mentor/libraries/tb_avalon_concatenate_singlebit_conduits_10/
ensure_lib                                             tb/sim/mentor/libraries/tb_hls_sim_component_dpi_controller_10/     
vmap       tb_hls_sim_component_dpi_controller_10      tb/sim/mentor/libraries/tb_hls_sim_component_dpi_controller_10/     
ensure_lib                                             tb/sim/mentor/libraries/tb_hls_sim_clock_reset_10/                  
vmap       tb_hls_sim_clock_reset_10                   tb/sim/mentor/libraries/tb_hls_sim_clock_reset_10/                  

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                 -work altera_ver       
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                          -work lpm_ver          
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                             -work sgate_ver        
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                         -work altera_mf_ver    
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                     -work altera_lnsim_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                    -work twentynm_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"               -work twentynm_hssi_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                -work twentynm_hip_ver 
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"           -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"       -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"          -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"       -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"    -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"               -work altera           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                         -work lpm              
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                        -work lpm              
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                      -work sgate            
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                           -work sgate            
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"            -work altera_mf        
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                       -work altera_mf        
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"     -work altera_lnsim     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"         -work altera_lnsim     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_atoms_ncrypt.v"      -work twentynm         
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.vhd"                  -work twentynm         
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_components.vhd"             -work twentynm         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi    
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_components.vhd"        -work twentynm_hssi    
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.vhd"             -work twentynm_hssi    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_components.vhd"         -work twentynm_hip     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.vhd"              -work twentynm_hip     
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/verbosity_pkg.sv"                                                                                 -work altera_common_sv_packages                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_mm_pkg.sv"                                                                                 -work altera_common_sv_packages                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_utilities_pkg.sv"                                                                          -work altera_common_sv_packages                  
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/dspba_library_package.vhd"                                                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/dspba_library.vhd"                                                                                          -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_data_fifo.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_fifo.v"                                                                    -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ll_fifo.v"                                                                 -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ll_ram_fifo.v"                                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_valid_fifo_counter.v"                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_dspba_valid_fifo_counter.v"                                                -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_staging_reg.v"                                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/hld_fifo.sv"                                                                   -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/hld_fifo_zero_width.sv"                                                        -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_high_speed_fifo.sv"                                                        -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_low_latency_fifo.sv"                                                       -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_zero_latency_fifo.sv"                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_fanout_pipeline.sv"                                                        -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_std_synchronizer_nocut.v"                                                  -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"                                        -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_tessellated_incr_lookahead.sv"                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_reset_handler.sv"                                                          -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_lfsr.sv"                                                                   -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_pop.v"                                                                     -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_push.v"                                                                    -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_token_fifo_counter.v"                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_pipeline.v"                                                                -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_dspba_buffer.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_enable_sink.v"                                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/st_top.v"                                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_top.v"                                                                     -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_permute_address.v"                                                         -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_pipelined.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_enabled.v"                                                                 -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_basic_coalescer.v"                                                         -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_simple.v"                                                                  -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_streaming.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_master.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_bursting_load_stores.v"                                                    -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_non_aligned_write.v"                                                       -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_read_cache.v"                                                              -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_atomic.v"                                                                  -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_prefetch_block.v"                                                          -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_wide_wrapper.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_streaming_prefetch.v"                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_toggle_detect.v"                                                           -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_debug_mem.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"                                        -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"                                         -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"                                             -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ffwdsrc.v"                                                                 -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_full_detector.v"                                                           -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_loop_limiter.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_reset_wire.v"                                                              -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_function_wrapper.vhd"                                                                                 -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_function.vhd"                                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B2_sr_1.vhd"                                                                                       -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B3_sr_0.vhd"                                                                                       -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B0_runOnce.vhd"                                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B0_runOnce_stall_region.vhd"                                                                       -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_merge_reg.vhd"                                                                             -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_wt_limpop_count0.vhd"                                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_wt_limpop_count_reg.vhd"                                                                       -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_wt_limpush_count2.vhd"                                                                        -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_wt_limpush_count_reg.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_branch.vhd"                                                                                -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_merge.vhd"                                                                                 -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B1_start.vhd"                                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B1_start_stall_region.vhd"                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_iord_bl_do_unnamed_count1_count14.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_sfc_c0_wt_entry_count_c0_enter_count.vhd"                                                                 -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_sfc_exit_c0_wt_entry_count_c0_exit_count10.vhd"                                                       -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_sfc_logic_c0_wt_entry_count_c0_enter_count4.vhd"                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going9_count6.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_notexitcond10_count8.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_merge_reg.vhd"                                                                               -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_throttle_pop_count12.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_throttle_pop_count_reg.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count12_count39.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count13_count41.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count14_count43.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count15_count45.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count3_count18.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count5_count25.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count7_count29.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count8_count31.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count10_count35.vhd"                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count10_count4.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count11_count37.vhd"                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count11_count5.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count2_count15.vhd"                                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count2_count0.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count4_count20.vhd"                                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count4_count1.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count6_count27.vhd"                                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count6_count2.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count9_count33.vhd"                                                                          -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count9_count3.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_branch.vhd"                                                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_merge.vhd"                                                                                   -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B2.vhd"                                                                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B2_stall_region.vhd"                                                                               -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B2_merge_reg.vhd"                                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_sfc_c0_while_body_count_c0_enter12_count.vhd"                                                             -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_sfc_exit_c0_while_body_count_c0_exit14_count106.vhd"                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_sfc_exit_c0_while_body_count_c0_exA0Zunt122_data_fifo.vhd"                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_sfc_exit_c0_while_body_count_c0_exA0Znt_full_detector.vhd"                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_sfc_logic_c0_while_body_count_c0_enter12_count47.vhd"                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count53.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_sum_03_pop7_count72.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_y_02_pop8_count70.vhd"                                                                        -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_z_01_pop9_count66.vhd"                                                                        -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i4_cleanups_pop11_count49.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i4_initerations_pop10_count55.vhd"                                                                -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i6_fpgaindvars_iv_pop6_count92.vhd"                                                               -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_lastiniteration_count62.vhd"                                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_notexitcond_count95.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_sum_03_push7_count74.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_y_02_push8_count82.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_z_01_push9_count90.vhd"                                                                      -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i4_cleanups_push11_count98.vhd"                                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i4_initerations_push10_count58.vhd"                                                              -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i6_fpgaindvars_iv_push6_count100.vhd"                                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count16_count64.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count17_count68.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count18_count77.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count19_count80.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count20_count85.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_unnamed_count21_count88.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count22_count102.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_src_unnamed_count23_count104.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B2_branch.vhd"                                                                                        -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B2_merge.vhd"                                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B3.vhd"                                                                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B3_stall_region.vhd"                                                                               -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_throttle_push_count120.vhd"                                                                   -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_throttle_push_count_reg.vhd"                                                                  -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_add185_count115.vhd"                                                                             -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_add84_count109.vhd"                                                                              -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_arrayidx13_count113.vhd"                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_ffwd_dst_v52_count107.vhd"                                                                                -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_iowr_bl_return_unnamed_count24_count119.vhd"                                                              -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_store_memdep_1_count117.vhd"                                                                              -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_store_memdep_count111.vhd"                                                                                -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B3_branch.vhd"                                                                                        -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/count_B3_merge.vhd"                                                                                         -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going9_count_sr.vhd"                                                                    -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going9_count_valid_fifo.vhd"                                                            -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count_sr.vhd"                                                                     -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count_valid_fifo.vhd"                                                             -work tb_count_internal_10                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/../count_internal_10/sim/loop_limiter_count0.vhd"                                                                                    -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_avm_to_ic.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_master_endpoint.v"                                                      -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_arb_intf.v"                                                                -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_intf.v"                                                                 -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_endpoint.v"                                                       -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_rrp.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_wrp.v"                                                            -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_arb2.v"                                                                    -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_to_avm.v"                                                               -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_internal_10/sim/count_internal.v"                                                              -L altera_common_sv_packages -work tb_count_internal_10                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_irq_mapper_191/sim/tb_altera_irq_mapper_191_elrdrwq.sv"                                       -L altera_common_sv_packages -work tb_altera_irq_mapper_191                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_stream_source_dpi_bfm_10/sim/hls_sim_stream_source_dpi_bfm.sv"                               -L altera_common_sv_packages -work tb_hls_sim_stream_source_dpi_bfm_10        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../avalon_split_multibit_conduit_10/sim/tb_avalon_split_multibit_conduit_10_dlmo3na.sv"                 -L altera_common_sv_packages -work tb_avalon_split_multibit_conduit_10        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/altera_avalon_mm_slave_bfm.sv"                                       -L altera_common_sv_packages -work tb_hls_sim_mm_slave_dpi_bfm_10             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/hls_sim_mm_slave_dpi_bfm.sv"                                         -L altera_common_sv_packages -work tb_hls_sim_mm_slave_dpi_bfm_10             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_main_dpi_controller_10/sim/hls_sim_main_dpi_controller.sv"                                   -L altera_common_sv_packages -work tb_hls_sim_main_dpi_controller_10          
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../count_10/sim/tb_count_10_gbu7t7a.v"                                                                                               -work tb_count_10                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../avalon_conduit_fanout_10/sim/tb_avalon_conduit_fanout_10_kcgql6q.sv"                                 -L altera_common_sv_packages -work tb_avalon_conduit_fanout_10                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../avalon_conduit_fanout_10/sim/tb_avalon_conduit_fanout_10_ak2cvai.sv"                                 -L altera_common_sv_packages -work tb_avalon_conduit_fanout_10                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../avalon_concatenate_singlebit_conduits_10/sim/tb_avalon_concatenate_singlebit_conduits_10_bjzeuhq.sv" -L altera_common_sv_packages -work tb_avalon_concatenate_singlebit_conduits_10
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_sink_dpi_bfm.sv"                              -L altera_common_sv_packages -work tb_hls_sim_component_dpi_controller_10     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_source_dpi_bfm.sv"                            -L altera_common_sv_packages -work tb_hls_sim_component_dpi_controller_10     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_component_dpi_controller.sv"                         -L altera_common_sv_packages -work tb_hls_sim_component_dpi_controller_10     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../hls_sim_clock_reset_10/sim/hls_sim_clock_reset.sv"                                                   -L altera_common_sv_packages -work tb_hls_sim_clock_reset_10                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                 
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L tb_count_internal_10 -L tb_altera_irq_mapper_191 -L tb_hls_sim_stream_source_dpi_bfm_10 -L tb_avalon_split_multibit_conduit_10 -L tb_hls_sim_mm_slave_dpi_bfm_10 -L tb_hls_sim_main_dpi_controller_10 -L tb_count_10 -L tb_avalon_conduit_fanout_10 -L tb_avalon_concatenate_singlebit_conduits_10 -L tb_hls_sim_component_dpi_controller_10 -L tb_hls_sim_clock_reset_10 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L twentynm -L twentynm_hssi -L twentynm_hip $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L tb_count_internal_10 -L tb_altera_irq_mapper_191 -L tb_hls_sim_stream_source_dpi_bfm_10 -L tb_avalon_split_multibit_conduit_10 -L tb_hls_sim_mm_slave_dpi_bfm_10 -L tb_hls_sim_main_dpi_controller_10 -L tb_count_10 -L tb_avalon_conduit_fanout_10 -L tb_avalon_concatenate_singlebit_conduits_10 -L tb_hls_sim_component_dpi_controller_10 -L tb_hls_sim_clock_reset_10 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L twentynm -L twentynm_hssi -L twentynm_hip $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h


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

# ACDS 19.1 670 win32 2021.06.28.18:44:45

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# ACDS 19.1 670 win32 2021.06.28.18:44:45
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="D:/intelfpga_lite/19.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/tb_count_internal_10/
mkdir -p ./libraries/tb_altera_irq_mapper_191/
mkdir -p ./libraries/tb_hls_sim_stream_source_dpi_bfm_10/
mkdir -p ./libraries/tb_avalon_split_multibit_conduit_10/
mkdir -p ./libraries/tb_hls_sim_mm_slave_dpi_bfm_10/
mkdir -p ./libraries/tb_hls_sim_main_dpi_controller_10/
mkdir -p ./libraries/tb_count_10/
mkdir -p ./libraries/tb_avalon_conduit_fanout_10/
mkdir -p ./libraries/tb_avalon_concatenate_singlebit_conduits_10/
mkdir -p ./libraries/tb_hls_sim_component_dpi_controller_10/
mkdir -p ./libraries/tb_hls_sim_clock_reset_10/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/twentynm_ver/
mkdir -p ./libraries/twentynm_hssi_ver/
mkdir -p ./libraries/twentynm_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/twentynm/
mkdir -p ./libraries/twentynm_hssi/
mkdir -p ./libraries/twentynm_hip/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                  -work altera_ver       
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                           -work lpm_ver          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                              -work sgate_ver        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                          -work altera_mf_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                     -work twentynm_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"                -work twentynm_hssi_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                 -work twentynm_hip_ver 
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"            -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"        -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"           -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"        -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"     -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                -work altera           
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                          -work lpm              
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                         -work lpm              
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                       -work sgate            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                            -work sgate            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"             -work altera_mf        
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                        -work altera_mf        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                      -work altera_lnsim     
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"          -work altera_lnsim     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_atoms_ncrypt.v"      -work twentynm         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.vhd"                   -work twentynm         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_components.vhd"              -work twentynm         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi    
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_components.vhd"         -work twentynm_hssi    
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.vhd"              -work twentynm_hssi    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip     
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_components.vhd"          -work twentynm_hip     
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.vhd"               -work twentynm_hip     
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/verbosity_pkg.sv"                                                    -work altera_common_sv_packages                   -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_mm_pkg.sv"                                                    -work altera_common_sv_packages                   -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_utilities_pkg.sv"                                             -work altera_common_sv_packages                   -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                  
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/dspba_library_package.vhd"                                                     -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/dspba_library.vhd"                                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_data_fifo.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_fifo.v"                                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ll_fifo.v"                                                                 -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ll_ram_fifo.v"                                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_valid_fifo_counter.v"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_dspba_valid_fifo_counter.v"                                                -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_staging_reg.v"                                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/hld_fifo.sv"                                                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/hld_fifo_zero_width.sv"                                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_high_speed_fifo.sv"                                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_low_latency_fifo.sv"                                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_zero_latency_fifo.sv"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_fanout_pipeline.sv"                                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_std_synchronizer_nocut.v"                                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_tessellated_incr_decr_threshold.sv"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_tessellated_incr_lookahead.sv"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_reset_handler.sv"                                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_lfsr.sv"                                                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_pop.v"                                                                     -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_push.v"                                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_token_fifo_counter.v"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_pipeline.v"                                                                -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_dspba_buffer.v"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/st_top.v"                                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_top.v"                                                                     -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_permute_address.v"                                                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_pipelined.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_enabled.v"                                                                 -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_basic_coalescer.v"                                                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_simple.v"                                                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_streaming.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_master.v"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_bursting_load_stores.v"                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_non_aligned_write.v"                                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_read_cache.v"                                                              -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_atomic.v"                                                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_prefetch_block.v"                                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_wide_wrapper.v"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_streaming_prefetch.v"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_aligned_burst_coalesced_lsu.v"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_toggle_detect.v"                                                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_debug_mem.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_coalesced_pipelined_write.sv"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/lsu_burst_coalesced_pipelined_read.sv"                                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_fifo_stall_valid_lookahead.sv"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_reset_wire.v"                                                              -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_function_wrapper.vhd"                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_function.vhd"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B1_start_sr_1.vhd"                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B0_runOnce.vhd"                                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B0_runOnce_stall_region.vhd"                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_merge_reg.vhd"                                                -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_wt_limpop_count0.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_wt_limpop_count_reg.vhd"                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_wt_limpush_count2.vhd"                                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_wt_limpush_count_reg.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_branch.vhd"                                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B0_runOnce_merge.vhd"                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B1_start.vhd"                                                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/bb_count_B1_start_stall_region.vhd"                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_merge_reg.vhd"                                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_iord_bl_do_unnamed_count0_count8.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count4.vhd"                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count_reg.vhd"                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_memdep_phi3_pop7_count16.vhd"                                     -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_memdep_phi3_pop7_count_reg.vhd"                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_memdep_phi_pop6_count12.vhd"                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i1_memdep_phi_pop6_count_reg.vhd"                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count10.vhd"                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_sum_count_4ia_addr_0_pop5_count_reg.vhd"                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_y_count_4ia_addr_0_pop4_count20.vhd"                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_y_count_4ia_addr_0_pop4_count_reg.vhd"                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_z_count_4ia_addr_0_pop3_count22.vhd"                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pop_i32_z_count_4ia_addr_0_pop3_count_reg.vhd"                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_memdep_phi3_push7_count55.vhd"                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_memdep_phi3_push7_count_reg.vhd"                                 -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_memdep_phi_push6_count51.vhd"                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_memdep_phi_push6_count_reg.vhd"                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_notexitcond_count6.vhd"                                          -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i1_notexitcond_count_reg.vhd"                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_sum_count_4ia_addr_0_push5_count24.vhd"                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_sum_count_4ia_addr_0_push5_count_reg.vhd"                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_y_count_4ia_addr_0_push4_count33.vhd"                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_y_count_4ia_addr_0_push4_count_reg.vhd"                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_z_count_4ia_addr_0_push3_count43.vhd"                           -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_push_i32_z_count_4ia_addr_0_push3_count_reg.vhd"                         -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_iowr_bl_return_unnamed_count7_count57.vhd"                                   -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count1_count14.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count1_count0.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count2_count18.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count2_count1.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count3_count27.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count3_count2.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count4_count31.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count4_count3.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count5_count37.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count5_count4.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_load_unnamed_count6_count41.vhd"                                             -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/readdata_reg_unnamed_count6_count5.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_store_memdep_2_count53.vhd"                                                  -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_store_memdep_count49.vhd"                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_branch.vhd"                                                     -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/count_B1_start_merge.vhd"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS         "$QSYS_SIMDIR/../count_internal_10/sim/i_acl_pipeline_keep_going_count_sr.vhd"                                        -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_avm_to_ic.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_master_endpoint.v"                                                      -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_arb_intf.v"                                                                -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_intf.v"                                                                 -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_endpoint.v"                                                       -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_rrp.v"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_slave_wrp.v"                                                            -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_arb2.v"                                                                    -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/acl_ic_to_avm.v"                                                               -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../count_internal_10/sim/count_internal.v"                                                              -work tb_count_internal_10                        -cdslib ./cds_libs/tb_count_internal_10.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_irq_mapper_191/sim/tb_altera_irq_mapper_191_elrdrwq.sv"                                       -work tb_altera_irq_mapper_191                    -cdslib ./cds_libs/tb_altera_irq_mapper_191.cds.lib                   
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_stream_source_dpi_bfm_10/sim/hls_sim_stream_source_dpi_bfm.sv"                               -work tb_hls_sim_stream_source_dpi_bfm_10         -cdslib ./cds_libs/tb_hls_sim_stream_source_dpi_bfm_10.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../avalon_split_multibit_conduit_10/sim/tb_avalon_split_multibit_conduit_10_dlmo3na.sv"                 -work tb_avalon_split_multibit_conduit_10         -cdslib ./cds_libs/tb_avalon_split_multibit_conduit_10.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/altera_avalon_mm_slave_bfm.sv"                                       -work tb_hls_sim_mm_slave_dpi_bfm_10              -cdslib ./cds_libs/tb_hls_sim_mm_slave_dpi_bfm_10.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/hls_sim_mm_slave_dpi_bfm.sv"                                         -work tb_hls_sim_mm_slave_dpi_bfm_10              -cdslib ./cds_libs/tb_hls_sim_mm_slave_dpi_bfm_10.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_main_dpi_controller_10/sim/hls_sim_main_dpi_controller.sv"                                   -work tb_hls_sim_main_dpi_controller_10           -cdslib ./cds_libs/tb_hls_sim_main_dpi_controller_10.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../count_10/sim/tb_count_10_gbu7t7a.v"                                                                  -work tb_count_10                                                                                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../avalon_conduit_fanout_10/sim/tb_avalon_conduit_fanout_10_kcgql6q.sv"                                 -work tb_avalon_conduit_fanout_10                 -cdslib ./cds_libs/tb_avalon_conduit_fanout_10.cds.lib                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../avalon_conduit_fanout_10/sim/tb_avalon_conduit_fanout_10_ak2cvai.sv"                                 -work tb_avalon_conduit_fanout_10                 -cdslib ./cds_libs/tb_avalon_conduit_fanout_10.cds.lib                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../avalon_concatenate_singlebit_conduits_10/sim/tb_avalon_concatenate_singlebit_conduits_10_bjzeuhq.sv" -work tb_avalon_concatenate_singlebit_conduits_10 -cdslib ./cds_libs/tb_avalon_concatenate_singlebit_conduits_10.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_sink_dpi_bfm.sv"                              -work tb_hls_sim_component_dpi_controller_10      -cdslib ./cds_libs/tb_hls_sim_component_dpi_controller_10.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_source_dpi_bfm.sv"                            -work tb_hls_sim_component_dpi_controller_10      -cdslib ./cds_libs/tb_hls_sim_component_dpi_controller_10.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_component_dpi_controller.sv"                         -work tb_hls_sim_component_dpi_controller_10      -cdslib ./cds_libs/tb_hls_sim_component_dpi_controller_10.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../hls_sim_clock_reset_10/sim/hls_sim_clock_reset.sv"                                                   -work tb_hls_sim_clock_reset_10                   -cdslib ./cds_libs/tb_hls_sim_clock_reset_10.cds.lib                  
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                                                           
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi

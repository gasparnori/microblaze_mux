
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a15tcpg236-1
   set_property BOARD_PART digilentinc.com:cmod_a7-15t:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /microblaze_0_local_memory] -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port LMB_Clk -pg 1 -y 60 -defaultsOSRD
preplace port ILMB -pg 1 -y 190 -defaultsOSRD
preplace port DLMB -pg 1 -y 40 -defaultsOSRD
preplace port SYS_Rst -pg 1 -y 80 -defaultsOSRD
preplace inst ilmb_bram_if_cntlr -pg 1 -lvl 2 -y 200 -defaultsOSRD
preplace inst dlmb_bram_if_cntlr -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst lmb_bram -pg 1 -lvl 3 -y 90 -defaultsOSRD
preplace inst ilmb_v10 -pg 1 -lvl 1 -y 210 -defaultsOSRD
preplace inst dlmb_v10 -pg 1 -lvl 1 -y 60 -defaultsOSRD
preplace netloc microblaze_0_dlmb 1 0 1 NJ
preplace netloc SYS_Rst_1 1 0 2 20 130 240
preplace netloc microblaze_0_ilmb_bus 1 1 1 250
preplace netloc microblaze_0_Clk 1 0 2 30 140 230
preplace netloc microblaze_0_dlmb_cntlr 1 2 1 N
preplace netloc microblaze_0_ilmb 1 0 1 NJ
preplace netloc microblaze_0_ilmb_cntlr 1 2 1 450
preplace netloc microblaze_0_dlmb_bus 1 1 1 N
levelinfo -pg 1 0 130 350 550 650 -top 0 -bot 280
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set cellular_ram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 cellular_ram ]
  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]
  set rgb_led [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 rgb_led ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set gpio_io_o [ create_bd_port -dir O -from 7 -to 0 gpio_io_o ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {12000000} \
CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vauxn12 [ create_bd_port -dir I vauxn12 ]
  set vauxp12 [ create_bd_port -dir I vauxp12 ]

  # Create instance: axi_emc_0, and set properties
  set axi_emc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 axi_emc_0 ]
  set_property -dict [ list \
CONFIG.EMC_BOARD_INTERFACE {cellular_ram} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_emc_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.GPIO_BOARD_INTERFACE {rgb_led} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio_1

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
CONFIG.C_SPI_MODE {2} \
CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_SPI_MODE.VALUE_SRC {DEFAULT} \
 ] $axi_quad_spi_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {833.33} \
CONFIG.CLKOUT1_JITTER {479.872} \
CONFIG.CLKOUT1_PHASE_ERROR {668.310} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
CONFIG.MMCM_CLKFBOUT_MULT_F {62.500} \
CONFIG.MMCM_CLKIN1_PERIOD {83.333} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.500} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_CACHE_BYTE_SIZE {16384} \
CONFIG.C_DCACHE_BYTE_SIZE {16384} \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_DCACHE {1} \
CONFIG.C_USE_ICACHE {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {5} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_100M ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_0_100M

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
CONFIG.ADC_CONVERSION_RATE {1000} \
CONFIG.CHANNEL_ENABLE_VP_VN {false} \
CONFIG.DCLK_FREQUENCY {100} \
CONFIG.ENABLE_RESET {false} \
CONFIG.INTERFACE_SELECTION {Enable_AXI} \
CONFIG.SINGLE_CHANNEL_SELECTION {VAUXP12_VAUXN12} \
 ] $xadc_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.ADC_CONVERSION_RATE.VALUE_SRC {DEFAULT} \
CONFIG.CHANNEL_ENABLE_VP_VN.VALUE_SRC {DEFAULT} \
CONFIG.DCLK_FREQUENCY.VALUE_SRC {DEFAULT} \
CONFIG.ENABLE_RESET.VALUE_SRC {DEFAULT} \
CONFIG.INTERFACE_SELECTION.VALUE_SRC {DEFAULT} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_emc_0_EMC_INTF [get_bd_intf_ports cellular_ram] [get_bd_intf_pins axi_emc_0/EMC_INTF]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports rgb_led] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_emc_0/S_AXI_MEM] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_ports gpio_io_o] [get_bd_pins axi_gpio_1/gpio_io_o]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_100M/dcm_locked]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_emc_0/rdclk] [get_bd_pins axi_emc_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_peripheral_aresetn [get_bd_pins axi_emc_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net vauxn12_1 [get_bd_ports vauxn12] [get_bd_pins xadc_wiz_0/vauxn12]
  connect_bd_net -net vauxp12_1 [get_bd_ports vauxp12] [get_bd_pins xadc_wiz_0/vauxp12]

  # Create address segments
  create_bd_addr_seg -range 0x02000000 -offset 0x60000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/MEM0] SEG_axi_emc_0_MEM0
  create_bd_addr_seg -range 0x02000000 -offset 0x60000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/MEM0] SEG_axi_emc_0_MEM0
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port qspi_flash -pg 1 -y 320 -defaultsOSRD
preplace port vauxp12 -pg 1 -y 40 -defaultsOSRD
preplace port sys_clock -pg 1 -y 540 -defaultsOSRD
preplace port usb_uart -pg 1 -y 580 -defaultsOSRD
preplace port vauxn12 -pg 1 -y 20 -defaultsOSRD
preplace port rgb_led -pg 1 -y 470 -defaultsOSRD
preplace port cellular_ram -pg 1 -y 170 -defaultsOSRD
preplace port reset -pg 1 -y 470 -defaultsOSRD
preplace portBus gpio_io_o -pg 1 -y 40 -defaultsOSRD
preplace inst rst_clk_wiz_0_100M -pg 1 -lvl 4 -y 490 -defaultsOSRD
preplace inst xadc_wiz_0 -pg 1 -lvl 1 -y 0 -defaultsOSRD
preplace inst axi_emc_0 -pg 1 -lvl 7 -y 170 -defaultsOSRD
preplace inst microblaze_0_axi_periph -pg 1 -lvl 6 -y 480 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 7 -y 470 -defaultsOSRD
preplace inst axi_gpio_1 -pg 1 -lvl 2 -y 30 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 4 -y 330 -defaultsOSRD
preplace inst axi_uartlite_0 -pg 1 -lvl 7 -y 590 -defaultsOSRD
preplace inst microblaze_0 -pg 1 -lvl 5 -y 330 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 3 -y 530 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 6 -y 120 -defaultsOSRD
preplace inst microblaze_0_local_memory -pg 1 -lvl 6 -y 760 -defaultsOSRD
preplace inst axi_quad_spi_0 -pg 1 -lvl 7 -y 340 -defaultsOSRD
preplace netloc axi_quad_spi_0_SPI_0 1 7 1 NJ
preplace netloc microblaze_0_axi_periph_M04_AXI 1 0 7 -70 -170 NJ -170 NJ -170 NJ -170 NJ -170 NJ -170 1800
preplace netloc rst_clk_wiz_0_100M_bus_struct_reset 1 4 2 NJ 470 1460
preplace netloc clk_wiz_0_locked 1 3 1 680
preplace netloc microblaze_0_Clk 1 0 7 -50 -150 240J -150 NJ -150 670 -150 1020 -150 1510 -150 1840
preplace netloc microblaze_0_axi_periph_M03_AXI 1 1 6 250J -50 NJ -50 NJ -50 NJ -50 NJ -50 1790
preplace netloc microblaze_0_axi_periph_M00_AXI 1 6 1 1810
preplace netloc microblaze_0_M_AXI_DP 1 5 1 1490
preplace netloc axi_mem_intercon_M00_AXI 1 6 1 1830
preplace netloc microblaze_0_M_AXI_DC 1 5 1 1460
preplace netloc microblaze_0_ilmb_1 1 5 1 1470
preplace netloc sys_clock_1 1 0 3 NJ 540 NJ 540 N
preplace netloc axi_gpio_1_gpio_io_o 1 2 6 500J -30 NJ -30 NJ -30 NJ -30 NJ -30 2090J
preplace netloc axi_emc_0_EMC_INTF 1 7 1 NJ
preplace netloc vauxp12_1 1 0 1 -60
preplace netloc microblaze_0_axi_periph_M01_AXI 1 6 1 1830
preplace netloc microblaze_0_M_AXI_IC 1 5 1 1480
preplace netloc rst_clk_wiz_0_100M_mb_reset 1 4 1 1020
preplace netloc axi_gpio_0_GPIO 1 7 1 NJ
preplace netloc axi_uartlite_0_UART 1 7 1 NJ
preplace netloc microblaze_0_axi_periph_M02_AXI 1 6 1 1850
preplace netloc microblaze_0_dlmb_1 1 5 1 1500
preplace netloc microblaze_0_debug 1 4 1 N
preplace netloc rst_clk_wiz_0_100M_interconnect_aresetn 1 4 2 NJ 510 1520
preplace netloc rst_clk_wiz_0_100M_peripheral_aresetn 1 0 7 -40 -140 230J -140 NJ -140 NJ -140 1010J -140 1530 -140 1820
preplace netloc reset_1 1 0 4 NJ 470 NJ 470 500J 470 NJ
preplace netloc mdm_1_debug_sys_rst 1 3 2 680 390 1000
preplace netloc vauxn12_1 1 0 1 -70
levelinfo -pg 1 -90 100 380 590 840 1240 1660 1970 2110 -top -190 -bot 840
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



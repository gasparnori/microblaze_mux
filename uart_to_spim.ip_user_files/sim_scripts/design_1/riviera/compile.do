vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_12
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/emc_common_v3_0_5
vlib riviera/axi_emc_v3_0_15
vlib riviera/axi_uartlite_v2_0_19
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/xlconstant_v1_1_3
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_15
vlib riviera/fifo_generator_v13_2_1
vlib riviera/axi_data_fifo_v2_1_14
vlib riviera/axi_crossbar_v2_1_16
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_14
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/dist_mem_gen_v8_0_12
vlib riviera/lib_fifo_v1_0_10
vlib riviera/axi_quad_spi_v3_2_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_5 riviera/microblaze_v10_0_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_12 riviera/mdm_v3_2_12
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap emc_common_v3_0_5 riviera/emc_common_v3_0_5
vmap axi_emc_v3_0_15 riviera/axi_emc_v3_0_15
vmap axi_uartlite_v2_0_19 riviera/axi_uartlite_v2_0_19
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_17 riviera/axi_gpio_v2_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 riviera/axi_register_slice_v2_1_15
vmap fifo_generator_v13_2_1 riviera/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 riviera/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 riviera/axi_crossbar_v2_1_16
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 riviera/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap dist_mem_gen_v8_0_12 riviera/dist_mem_gen_v8_0_12
vmap lib_fifo_v1_0_10 riviera/lib_fifo_v1_0_10
vmap axi_quad_spi_v3_2_14 riviera/axi_quad_spi_v3_2_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_5 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_12 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work emc_common_v3_0_5 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/d806/hdl/emc_common_v3_0_vh_rfs.vhd" \

vcom -work axi_emc_v3_0_15 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/187c/hdl/axi_emc_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_emc_0_0/sim/design_1_axi_emc_0_0.vhd" \

vcom -work axi_uartlite_v2_0_19 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_17 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_srn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s01tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_SPI_counter_0_1/sim/design_1_SPI_counter_0_1.vhd" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_10 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_14 -93 \
"../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/9db7/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_20M_0/sim/design_1_rst_clk_wiz_0_20M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/4868" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+../../../../uart_to_spim.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_spi_divider_0_1/sim/design_1_spi_divider_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_debug2gpio_0_0/sim/design_1_debug2gpio_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


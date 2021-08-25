vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_10
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_10 activehdl/axi_protocol_checker_v2_0_10
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_10  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl/verilog" "+incdir+/media/adg/inland_sata6/ubuntu_installs/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/ip/axi_protocol_checker_0/sim/axi_protocol_checker_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"


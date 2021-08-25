// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Aug 22 20:45:19 2021
// Host        : adg-MS-7693 running 64-bit Ubuntu 21.04
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_protocol_checker_0_stub.v
// Design      : axi_protocol_checker_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_protocol_checker_v2_0_10_top,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pc_status, pc_asserted, aclk, aresetn, 
  pc_axi_awaddr, pc_axi_awprot, pc_axi_awvalid, pc_axi_awready, pc_axi_wdata, pc_axi_wstrb, 
  pc_axi_wvalid, pc_axi_wready, pc_axi_bresp, pc_axi_bvalid, pc_axi_bready, pc_axi_araddr, 
  pc_axi_arprot, pc_axi_arvalid, pc_axi_arready, pc_axi_rdata, pc_axi_rresp, pc_axi_rvalid, 
  pc_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="pc_status[159:0],pc_asserted,aclk,aresetn,pc_axi_awaddr[31:0],pc_axi_awprot[2:0],pc_axi_awvalid,pc_axi_awready,pc_axi_wdata[31:0],pc_axi_wstrb[3:0],pc_axi_wvalid,pc_axi_wready,pc_axi_bresp[1:0],pc_axi_bvalid,pc_axi_bready,pc_axi_araddr[31:0],pc_axi_arprot[2:0],pc_axi_arvalid,pc_axi_arready,pc_axi_rdata[31:0],pc_axi_rresp[1:0],pc_axi_rvalid,pc_axi_rready" */;
  output [159:0]pc_status;
  output pc_asserted;
  input aclk;
  input aresetn;
  input [31:0]pc_axi_awaddr;
  input [2:0]pc_axi_awprot;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input [31:0]pc_axi_wdata;
  input [3:0]pc_axi_wstrb;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [1:0]pc_axi_bresp;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [31:0]pc_axi_araddr;
  input [2:0]pc_axi_arprot;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input [31:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input pc_axi_rvalid;
  input pc_axi_rready;
endmodule

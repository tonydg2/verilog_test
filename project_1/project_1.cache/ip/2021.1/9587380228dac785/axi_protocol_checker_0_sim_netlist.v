// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Aug 22 20:45:19 2021
// Host        : adg-MS-7693 running 64-bit Ubuntu 21.04
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_protocol_checker_0_sim_netlist.v
// Design      : axi_protocol_checker_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_protocol_checker_0,axi_protocol_checker_v2_0_10_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_checker_v2_0_10_top,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pc_status,
    pc_asserted,
    aclk,
    aresetn,
    pc_axi_awaddr,
    pc_axi_awprot,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bresp,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_araddr,
    pc_axi_arprot,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_rvalid,
    pc_axi_rready);
  output [159:0]pc_status;
  output pc_asserted;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF PC_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWADDR" *) input [31:0]pc_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWPROT" *) input [2:0]pc_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWVALID" *) input pc_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWREADY" *) input pc_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WDATA" *) input [31:0]pc_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WSTRB" *) input [3:0]pc_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WVALID" *) input pc_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WREADY" *) input pc_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BRESP" *) input [1:0]pc_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BVALID" *) input pc_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BREADY" *) input pc_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARADDR" *) input [31:0]pc_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARPROT" *) input [2:0]pc_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARVALID" *) input pc_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARREADY" *) input pc_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RDATA" *) input [31:0]pc_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RRESP" *) input [1:0]pc_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RVALID" *) input pc_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PC_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input pc_axi_rready;

  wire aclk;
  wire aresetn;
  wire pc_asserted;
  wire [31:0]pc_axi_araddr;
  wire [2:0]pc_axi_arprot;
  wire pc_axi_arready;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [2:0]pc_axi_awprot;
  wire pc_axi_awready;
  wire pc_axi_awvalid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire pc_axi_bvalid;
  wire [31:0]pc_axi_rdata;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire pc_axi_rvalid;
  wire [31:0]pc_axi_wdata;
  wire pc_axi_wready;
  wire [3:0]pc_axi_wstrb;
  wire pc_axi_wvalid;
  wire [159:0]pc_status;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CHK_ERR_RESP = "0" *) 
  (* C_ENABLE_CONTROL = "0" *) 
  (* C_ENABLE_MARK_DEBUG = "1" *) 
  (* C_HAS_WSTRB = "1" *) 
  (* C_PC_AR_MAXWAITS = "0" *) 
  (* C_PC_AW_MAXWAITS = "0" *) 
  (* C_PC_B_MAXWAITS = "0" *) 
  (* C_PC_EXMON_WIDTH = "0" *) 
  (* C_PC_HAS_SYSTEM_RESET = "0" *) 
  (* C_PC_LIGHT_WEIGHT = "0" *) 
  (* C_PC_MASTER_SIDE = "0" *) 
  (* C_PC_MAXRBURSTS = "8" *) 
  (* C_PC_MAXWBURSTS = "8" *) 
  (* C_PC_MAX_BURST_LENGTH = "1" *) 
  (* C_PC_MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) 
  (* C_PC_MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) 
  (* C_PC_MAX_WLAST_TO_AWVALID_WAITS = "0" *) 
  (* C_PC_MAX_WRITE_TO_BVALID_WAITS = "0" *) 
  (* C_PC_MESSAGE_LEVEL = "2" *) 
  (* C_PC_R_MAXWAITS = "0" *) 
  (* C_PC_STATUS_WIDTH = "160" *) 
  (* C_PC_SUPPORTS_NARROW_BURST = "0" *) 
  (* C_PC_W_MAXWAITS = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* LP_AXI_SIZE = "3'b010" *) 
  (* P_INDEX_WIDTH = "1" *) 
  (* P_NUM_REPORTED_CHECKS = "108" *) 
  (* P_NUM_RTHREADS = "2" *) 
  (* P_NUM_WTHREADS = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .pc_asserted(pc_asserted),
        .pc_axi_araddr(pc_axi_araddr),
        .pc_axi_arburst({1'b0,1'b0}),
        .pc_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_arid(1'b0),
        .pc_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_arlock(1'b0),
        .pc_axi_arprot(pc_axi_arprot),
        .pc_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_arready(pc_axi_arready),
        .pc_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_arsize({1'b0,1'b0,1'b0}),
        .pc_axi_aruser(1'b0),
        .pc_axi_arvalid(pc_axi_arvalid),
        .pc_axi_awaddr(pc_axi_awaddr),
        .pc_axi_awburst({1'b0,1'b0}),
        .pc_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_awid(1'b0),
        .pc_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_awlock(1'b0),
        .pc_axi_awprot(pc_axi_awprot),
        .pc_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_awready(pc_axi_awready),
        .pc_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .pc_axi_awsize({1'b0,1'b0,1'b0}),
        .pc_axi_awuser(1'b0),
        .pc_axi_awvalid(pc_axi_awvalid),
        .pc_axi_bid(1'b0),
        .pc_axi_bready(pc_axi_bready),
        .pc_axi_bresp(pc_axi_bresp),
        .pc_axi_buser(1'b0),
        .pc_axi_bvalid(pc_axi_bvalid),
        .pc_axi_rdata(pc_axi_rdata),
        .pc_axi_rid(1'b0),
        .pc_axi_rlast(1'b1),
        .pc_axi_rready(pc_axi_rready),
        .pc_axi_rresp(pc_axi_rresp),
        .pc_axi_ruser(1'b0),
        .pc_axi_rvalid(pc_axi_rvalid),
        .pc_axi_wdata(pc_axi_wdata),
        .pc_axi_wid(1'b0),
        .pc_axi_wlast(1'b1),
        .pc_axi_wready(pc_axi_wready),
        .pc_axi_wstrb(pc_axi_wstrb),
        .pc_axi_wuser(1'b0),
        .pc_axi_wvalid(pc_axi_wvalid),
        .pc_status(pc_status),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .system_resetn(1'b1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_axi4litepc_asr_inline
   (D,
    SR,
    ACLK,
    BRESP,
    BVALID,
    RRESP,
    RVALID,
    pc_status);
  output [1:0]D;
  input [0:0]SR;
  input ACLK;
  input [1:0]BRESP;
  input BVALID;
  input [1:0]RRESP;
  input RVALID;
  input [1:0]pc_status;

  wire ACLK;
  wire ASR_10;
  wire ASR_20;
  wire [2:1]Axi4LitePC_asr_inline_out;
  wire [1:0]BRESP;
  wire BVALID;
  wire [1:0]D;
  wire [1:0]RRESP;
  wire RVALID;
  wire [0:0]SR;
  wire [1:0]pc_status;

  LUT3 #(
    .INIT(8'h40)) 
    ASR_1_i_1
       (.I0(BRESP[1]),
        .I1(BVALID),
        .I2(BRESP[0]),
        .O(ASR_10));
  FDRE ASR_1_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(ASR_10),
        .Q(Axi4LitePC_asr_inline_out[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    ASR_2_i_1
       (.I0(RRESP[1]),
        .I1(RVALID),
        .I2(RRESP[0]),
        .O(ASR_20));
  FDRE ASR_2_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(ASR_20),
        .Q(Axi4LitePC_asr_inline_out[2]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[83]_i_1 
       (.I0(Axi4LitePC_asr_inline_out[1]),
        .I1(pc_status[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[84]_i_2 
       (.I0(Axi4LitePC_asr_inline_out[2]),
        .I1(pc_status[1]),
        .O(D[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_axi4pc_asr_inline
   (SR,
    D,
    ACLK,
    BStrbError,
    BrespErrorLead,
    AWADDR,
    ARADDR,
    AWPROT,
    ARST_N,
    ARPROT,
    WSTRB,
    pc_status,
    AWVALID,
    WVALID,
    BRESP,
    BVALID,
    ARVALID,
    RVALID,
    rid_mismatch,
    RRESP,
    WREADY,
    RREADY,
    BREADY,
    AWREADY,
    ARREADY,
    WDATA,
    RDATA);
  output [0:0]SR;
  output [16:0]D;
  input ACLK;
  input BStrbError;
  input BrespErrorLead;
  input [31:0]AWADDR;
  input [31:0]ARADDR;
  input [2:0]AWPROT;
  input ARST_N;
  input [2:0]ARPROT;
  input [3:0]WSTRB;
  input [16:0]pc_status;
  input AWVALID;
  input WVALID;
  input [1:0]BRESP;
  input BVALID;
  input ARVALID;
  input RVALID;
  input rid_mismatch;
  input [1:0]RRESP;
  input WREADY;
  input RREADY;
  input BREADY;
  input AWREADY;
  input ARREADY;
  input [31:0]WDATA;
  input [31:0]RDATA;

  wire ACLK;
  wire [31:0]ARADDR;
  wire [2:0]ARPROT;
  wire ARREADY;
  wire ARST_N;
  wire ARVALID;
  wire ASR_600;
  wire [31:0]AWADDR;
  wire [2:0]AWPROT;
  wire AWREADY;
  wire AWVALID;
  wire [66:9]Axi4PC_asr_inline_out;
  wire BREADY;
  wire [1:0]BRESP;
  wire BStrbError;
  wire BVALID;
  wire BrespErrorLead;
  wire [16:0]D;
  wire [31:0]RDATA;
  wire RREADY;
  wire [1:0]RRESP;
  wire RVALID;
  wire [0:0]SR;
  wire [31:0]WDATA;
  wire WREADY;
  wire [3:0]WSTRB;
  wire WVALID;
  wire [19:0]\gen_deflt_chks.ArAddrIncr_q1 ;
  wire [19:0]\gen_deflt_chks.AwAddrIncr_q1 ;
  wire [3:0]\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq011_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq014_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq017_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_2_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_2_n_0 ;
  wire [3:0]\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq033_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq036_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq039_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_2_eq ;
  wire [3:0]\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq00_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq03_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq06_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_2_eq ;
  wire [3:0]\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq022_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq025_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq028_out ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_2_eq ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_eq0 ;
  wire [3:0]\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_2_eq ;
  wire [4:0]\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s ;
  wire [2:1]\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s__0 ;
  wire [4:0]\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s ;
  wire [2:1]\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s__0 ;
  wire [4:4]\gen_deflt_chks.gen_ltwt_slave_side.s_BUSER_s ;
  wire [4:0]\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s ;
  wire [2:1]\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s__0 ;
  wire [4:0]\gen_deflt_chks.gen_ltwt_slave_side.s_WDATA_s ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_s0 ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[2] ;
  wire \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[3] ;
  wire p_0_in0_in;
  wire p_0_in103_in;
  wire p_0_in1_in;
  wire p_0_in28_in;
  wire [3:0]p_0_in31_in;
  wire p_0_in41_in;
  wire p_0_in59_in;
  wire p_0_in80_in;
  wire p_0_in94_in;
  wire [3:0]p_0_in9_in;
  wire [7:0]p_1_in;
  wire [7:0]p_1_in21_in;
  wire [7:0]p_1_in24_in;
  wire [7:0]p_1_in27_in;
  wire [7:0]p_1_in2_in;
  wire [7:0]p_1_in5_in;
  wire [16:0]pc_status;
  wire rid_mismatch;
  wire s100s0;
  wire s101s0;
  wire [2:0]s20;
  wire s22s0;
  wire s32s0;
  wire s44s0;
  wire [1:0]s50;
  wire s52s0;
  wire s53s0;
  wire [2:0]s74;
  wire s75__4;
  wire s76s0;
  wire s86s0;
  wire [1:1]s86sq;
  wire [1:0]s98;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_20_i_1
       (.I0(p_0_in1_in),
        .I1(AWVALID),
        .O(s32s0));
  FDRE ASR_20_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(s32s0),
        .Q(Axi4PC_asr_inline_out[19]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h4)) 
    ASR_28_i_1
       (.I0(WVALID),
        .I1(p_0_in0_in),
        .O(s44s0));
  FDRE ASR_28_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(s44s0),
        .Q(Axi4PC_asr_inline_out[27]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h4)) 
    ASR_57_i_1
       (.I0(ARVALID),
        .I1(s86sq),
        .O(s86s0));
  FDRE ASR_57_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(s86s0),
        .Q(Axi4PC_asr_inline_out[56]),
        .R(SR));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[12]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[22]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[23]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [11]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[24]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[25]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[26]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[27]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[28]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[17] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[29]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[18] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[30]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[31]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [19]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[13]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[14]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[15]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[16]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[17]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[18]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[19]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[20]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[21]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [9]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[12]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[22]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[23]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [11]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[24]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[25]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[26]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[27]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[28]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[17] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[29]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[18] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[30]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[31]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [19]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[13]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[14]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[15]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[16]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[17]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[18]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[19]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[20]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[21]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_1 
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [3]),
        .I1(ARADDR[15]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [2]),
        .I3(ARADDR[14]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq011_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_2 
       (.I0(ARADDR[11]),
        .I1(p_0_in9_in[3]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [1]),
        .I3(ARADDR[13]),
        .I4(\gen_deflt_chks.ArAddrIncr_q1 [0]),
        .I5(ARADDR[12]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_3 
       (.I0(ARADDR[8]),
        .I1(p_0_in9_in[0]),
        .I2(p_0_in9_in[2]),
        .I3(ARADDR[10]),
        .I4(p_0_in9_in[1]),
        .I5(ARADDR[9]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_1 
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [11]),
        .I1(ARADDR[23]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [10]),
        .I3(ARADDR[22]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq014_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_2 
       (.I0(ARADDR[19]),
        .I1(\gen_deflt_chks.ArAddrIncr_q1 [7]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [9]),
        .I3(ARADDR[21]),
        .I4(\gen_deflt_chks.ArAddrIncr_q1 [8]),
        .I5(ARADDR[20]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_3 
       (.I0(ARADDR[16]),
        .I1(\gen_deflt_chks.ArAddrIncr_q1 [4]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [6]),
        .I3(ARADDR[18]),
        .I4(\gen_deflt_chks.ArAddrIncr_q1 [5]),
        .I5(ARADDR[17]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_1 
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [19]),
        .I1(ARADDR[31]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [18]),
        .I3(ARADDR[30]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq017_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_2 
       (.I0(ARADDR[27]),
        .I1(\gen_deflt_chks.ArAddrIncr_q1 [15]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [17]),
        .I3(ARADDR[29]),
        .I4(\gen_deflt_chks.ArAddrIncr_q1 [16]),
        .I5(ARADDR[28]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_3 
       (.I0(ARADDR[24]),
        .I1(\gen_deflt_chks.ArAddrIncr_q1 [12]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [14]),
        .I3(ARADDR[26]),
        .I4(\gen_deflt_chks.ArAddrIncr_q1 [13]),
        .I5(ARADDR[25]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[7] ),
        .I1(ARADDR[7]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[6] ),
        .I3(ARADDR[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_2 
       (.I0(ARADDR[3]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[3] ),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[5] ),
        .I3(ARADDR[5]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[4] ),
        .I5(ARADDR[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_3 
       (.I0(ARADDR[0]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[0] ),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[2] ),
        .I3(ARADDR[2]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[1] ),
        .I5(ARADDR[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq011_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq014_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq017_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[0]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[10]),
        .Q(p_0_in9_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[11]),
        .Q(p_0_in9_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[1]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[3]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[4]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[5]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[6]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[7]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[8]),
        .Q(p_0_in9_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_q_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARADDR[9]),
        .Q(p_0_in9_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [1]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [0]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [3]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_eq [2]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_2_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_1_eq ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_2_eq ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_10_i_1 
       (.I0(p_0_in80_in),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_2_eq ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [0]));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_10_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [0]),
        .Q(Axi4PC_asr_inline_out[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBEAAFFAAFFAABEAA)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_2_n_0 ),
        .I1(AWPROT[1]),
        .I2(s20[1]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [3]),
        .I4(AWPROT[0]),
        .I5(s20[0]),
        .O(s22s0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_2 
       (.I0(p_0_in1_in),
        .I1(ARST_N),
        .I2(AWPROT[2]),
        .I3(s20[2]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_16_i_3 
       (.I0(p_0_in1_in),
        .I1(ARST_N),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [3]));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_16_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s22s0),
        .Q(Axi4PC_asr_inline_out[15]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_23_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(BStrbError),
        .Q(Axi4PC_asr_inline_out[22]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_25_i_1 
       (.I0(p_0_in59_in),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_2_eq ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_WDATA_s [0]));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_25_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_WDATA_s [0]),
        .Q(Axi4PC_asr_inline_out[24]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_27_i_1 
       (.I0(p_0_in59_in),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_2_eq ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_s0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_27_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_s0 ),
        .Q(Axi4PC_asr_inline_out[26]),
        .R(SR));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_35_i_1 
       (.I0(p_0_in103_in),
        .I1(BRESP[1]),
        .I2(s50[1]),
        .I3(s50[0]),
        .I4(BRESP[0]),
        .O(s52s0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_35_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s52s0),
        .Q(Axi4PC_asr_inline_out[34]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_47_i_1 
       (.I0(p_0_in41_in),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.ARADDR_stage_2_eq ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s [0]));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_47_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s [0]),
        .Q(Axi4PC_asr_inline_out[46]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_53_i_1 
       (.I0(s86sq),
        .I1(s75__4),
        .O(s76s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_53_i_2 
       (.I0(ARPROT[1]),
        .I1(s74[1]),
        .I2(ARPROT[0]),
        .I3(s74[0]),
        .I4(s74[2]),
        .I5(ARPROT[2]),
        .O(s75__4));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_53_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s76s0),
        .Q(Axi4PC_asr_inline_out[52]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_63_i_1 
       (.I0(p_0_in28_in),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_2_eq ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s [0]));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_63_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s [0]),
        .Q(Axi4PC_asr_inline_out[62]),
        .R(SR));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.gen_ltwt_slave_side.ASR_66_i_1 
       (.I0(p_0_in94_in),
        .I1(RRESP[1]),
        .I2(s98[1]),
        .I3(s98[0]),
        .I4(RRESP[0]),
        .O(s100s0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.ASR_66_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s100s0),
        .Q(Axi4PC_asr_inline_out[65]),
        .R(SR));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_1 
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [3]),
        .I1(AWADDR[15]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [2]),
        .I3(AWADDR[14]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq033_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_2 
       (.I0(AWADDR[11]),
        .I1(p_0_in31_in[3]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [1]),
        .I3(AWADDR[13]),
        .I4(\gen_deflt_chks.AwAddrIncr_q1 [0]),
        .I5(AWADDR[12]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_3 
       (.I0(AWADDR[8]),
        .I1(p_0_in31_in[0]),
        .I2(p_0_in31_in[2]),
        .I3(AWADDR[10]),
        .I4(p_0_in31_in[1]),
        .I5(AWADDR[9]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_1 
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [11]),
        .I1(AWADDR[23]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [10]),
        .I3(AWADDR[22]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq036_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_2 
       (.I0(AWADDR[19]),
        .I1(\gen_deflt_chks.AwAddrIncr_q1 [7]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [9]),
        .I3(AWADDR[21]),
        .I4(\gen_deflt_chks.AwAddrIncr_q1 [8]),
        .I5(AWADDR[20]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_3 
       (.I0(AWADDR[16]),
        .I1(\gen_deflt_chks.AwAddrIncr_q1 [4]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [6]),
        .I3(AWADDR[18]),
        .I4(\gen_deflt_chks.AwAddrIncr_q1 [5]),
        .I5(AWADDR[17]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_1 
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [19]),
        .I1(AWADDR[31]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [18]),
        .I3(AWADDR[30]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq039_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_2 
       (.I0(AWADDR[27]),
        .I1(\gen_deflt_chks.AwAddrIncr_q1 [15]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [17]),
        .I3(AWADDR[29]),
        .I4(\gen_deflt_chks.AwAddrIncr_q1 [16]),
        .I5(AWADDR[28]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_3 
       (.I0(AWADDR[24]),
        .I1(\gen_deflt_chks.AwAddrIncr_q1 [12]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [14]),
        .I3(AWADDR[26]),
        .I4(\gen_deflt_chks.AwAddrIncr_q1 [13]),
        .I5(AWADDR[25]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[7] ),
        .I1(AWADDR[7]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[6] ),
        .I3(AWADDR[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_2 
       (.I0(AWADDR[3]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[3] ),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[5] ),
        .I3(AWADDR[5]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[4] ),
        .I5(AWADDR[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_3 
       (.I0(AWADDR[0]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[0] ),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[2] ),
        .I3(AWADDR[2]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[1] ),
        .I5(AWADDR[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq033_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq036_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq039_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[0]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[10]),
        .Q(p_0_in31_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[11]),
        .Q(p_0_in31_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[1]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[3]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[4]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[5]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[6]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[7]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[8]),
        .Q(p_0_in31_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_q_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWADDR[9]),
        .Q(p_0_in31_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [1]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [0]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [3]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_eq [2]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_2_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_1_eq ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.AWADDR_stage_2_eq ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_1 
       (.I0(RDATA[15]),
        .I1(p_1_in[7]),
        .I2(RDATA[14]),
        .I3(p_1_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq00_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_2 
       (.I0(p_1_in[3]),
        .I1(RDATA[11]),
        .I2(RDATA[13]),
        .I3(p_1_in[5]),
        .I4(RDATA[12]),
        .I5(p_1_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_3 
       (.I0(p_1_in[0]),
        .I1(RDATA[8]),
        .I2(RDATA[10]),
        .I3(p_1_in[2]),
        .I4(RDATA[9]),
        .I5(p_1_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_1 
       (.I0(RDATA[23]),
        .I1(p_1_in2_in[7]),
        .I2(RDATA[22]),
        .I3(p_1_in2_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq03_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_2 
       (.I0(p_1_in2_in[3]),
        .I1(RDATA[19]),
        .I2(RDATA[21]),
        .I3(p_1_in2_in[5]),
        .I4(RDATA[20]),
        .I5(p_1_in2_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_3 
       (.I0(p_1_in2_in[0]),
        .I1(RDATA[16]),
        .I2(RDATA[18]),
        .I3(p_1_in2_in[2]),
        .I4(RDATA[17]),
        .I5(p_1_in2_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_1 
       (.I0(RDATA[31]),
        .I1(p_1_in5_in[7]),
        .I2(RDATA[30]),
        .I3(p_1_in5_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq06_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_2 
       (.I0(p_1_in5_in[3]),
        .I1(RDATA[27]),
        .I2(RDATA[29]),
        .I3(p_1_in5_in[5]),
        .I4(RDATA[28]),
        .I5(p_1_in5_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_3 
       (.I0(p_1_in5_in[0]),
        .I1(RDATA[24]),
        .I2(RDATA[26]),
        .I3(p_1_in5_in[2]),
        .I4(RDATA[25]),
        .I5(p_1_in5_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_1 
       (.I0(RDATA[7]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[7] ),
        .I2(RDATA[6]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[6] ),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_2 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[3] ),
        .I1(RDATA[3]),
        .I2(RDATA[5]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[5] ),
        .I4(RDATA[4]),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[4] ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_3 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[0] ),
        .I1(RDATA[0]),
        .I2(RDATA[2]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[2] ),
        .I4(RDATA[1]),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq00_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq03_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq06_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[0]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[10]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[11]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[12]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[13]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[14]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[15]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[16]),
        .Q(p_1_in2_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[17] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[17]),
        .Q(p_1_in2_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[18] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[18]),
        .Q(p_1_in2_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[19]),
        .Q(p_1_in2_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[1]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[20] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[20]),
        .Q(p_1_in2_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[21] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[21]),
        .Q(p_1_in2_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[22] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[22]),
        .Q(p_1_in2_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[23] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[23]),
        .Q(p_1_in2_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[24] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[24]),
        .Q(p_1_in5_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[25] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[25]),
        .Q(p_1_in5_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[26] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[26]),
        .Q(p_1_in5_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[27] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[27]),
        .Q(p_1_in5_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[28] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[28]),
        .Q(p_1_in5_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[29] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[29]),
        .Q(p_1_in5_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[30] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[30]),
        .Q(p_1_in5_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[31] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[31]),
        .Q(p_1_in5_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[3]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[4]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[5]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[6]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[7]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[8]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_q_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RDATA[9]),
        .Q(p_1_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [1]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [0]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [3]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_eq [2]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_2_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_1_eq ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.RDATA_stage_2_eq ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_1 
       (.I0(WDATA[15]),
        .I1(p_1_in21_in[7]),
        .I2(WDATA[14]),
        .I3(p_1_in21_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq022_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_2 
       (.I0(p_1_in21_in[3]),
        .I1(WDATA[11]),
        .I2(WDATA[13]),
        .I3(p_1_in21_in[5]),
        .I4(WDATA[12]),
        .I5(p_1_in21_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_3 
       (.I0(p_1_in21_in[0]),
        .I1(WDATA[8]),
        .I2(WDATA[10]),
        .I3(p_1_in21_in[2]),
        .I4(WDATA[9]),
        .I5(p_1_in21_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__0/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_1 
       (.I0(WDATA[23]),
        .I1(p_1_in24_in[7]),
        .I2(WDATA[22]),
        .I3(p_1_in24_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq025_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_2 
       (.I0(p_1_in24_in[3]),
        .I1(WDATA[19]),
        .I2(WDATA[21]),
        .I3(p_1_in24_in[5]),
        .I4(WDATA[20]),
        .I5(p_1_in24_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_3 
       (.I0(p_1_in24_in[0]),
        .I1(WDATA[16]),
        .I2(WDATA[18]),
        .I3(p_1_in24_in[2]),
        .I4(WDATA[17]),
        .I5(p_1_in24_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__1/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_1 
       (.I0(WDATA[31]),
        .I1(p_1_in27_in[7]),
        .I2(WDATA[30]),
        .I3(p_1_in27_in[6]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq028_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_2 
       (.I0(p_1_in27_in[3]),
        .I1(WDATA[27]),
        .I2(WDATA[29]),
        .I3(p_1_in27_in[5]),
        .I4(WDATA[28]),
        .I5(p_1_in27_in[4]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_3 
       (.I0(p_1_in27_in[0]),
        .I1(WDATA[24]),
        .I2(WDATA[26]),
        .I3(p_1_in27_in[2]),
        .I4(WDATA[25]),
        .I5(p_1_in27_in[1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0_inferred__2/gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_1 
       (.I0(WDATA[7]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[7] ),
        .I2(WDATA[6]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[6] ),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_2 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[3] ),
        .I1(WDATA[3]),
        .I2(WDATA[5]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[5] ),
        .I4(WDATA[4]),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[4] ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_3 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[0] ),
        .I1(WDATA[0]),
        .I2(WDATA[2]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[2] ),
        .I4(WDATA[1]),
        .I5(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq022_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq025_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq028_out ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[0]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[10]),
        .Q(p_1_in21_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[11]),
        .Q(p_1_in21_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[12]),
        .Q(p_1_in21_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[13]),
        .Q(p_1_in21_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[14]),
        .Q(p_1_in21_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[15]),
        .Q(p_1_in21_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[16]),
        .Q(p_1_in24_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[17] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[17]),
        .Q(p_1_in24_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[18] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[18]),
        .Q(p_1_in24_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[19]),
        .Q(p_1_in24_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[1]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[20] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[20]),
        .Q(p_1_in24_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[21] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[21]),
        .Q(p_1_in24_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[22] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[22]),
        .Q(p_1_in24_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[23] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[23]),
        .Q(p_1_in24_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[24] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[24]),
        .Q(p_1_in27_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[25] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[25]),
        .Q(p_1_in27_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[26] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[26]),
        .Q(p_1_in27_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[27] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[27]),
        .Q(p_1_in27_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[28] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[28]),
        .Q(p_1_in27_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[29] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[29]),
        .Q(p_1_in27_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[30] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[30]),
        .Q(p_1_in27_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[31] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[31]),
        .Q(p_1_in27_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[3]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[4]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[5]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[6]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[7]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[8]),
        .Q(p_1_in21_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_q_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WDATA[9]),
        .Q(p_1_in21_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [1]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [0]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [3]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_eq [2]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_2_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_1_eq ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WDATA_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WSTRB[0]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WSTRB[1]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WSTRB[2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WSTRB[3]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [3]),
        .R(1'b0));
  (* srl_bus_name = "inst/CORE/\i_Axi4PC_asr_inline/gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg " *) 
  (* srl_name = "inst/CORE/\i_Axi4PC_asr_inline/gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_eq0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [3]),
        .I1(WSTRB[3]),
        .I2(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [2]),
        .I3(WSTRB[2]),
        .I4(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_eq0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_i_2 
       (.I0(WSTRB[0]),
        .I1(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [0]),
        .I2(WSTRB[1]),
        .I3(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_q [1]),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_2_eq_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.WSTRB_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s20_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWPROT[0]),
        .Q(s20[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s20_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWPROT[1]),
        .Q(s20[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s20_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWPROT[2]),
        .Q(s20[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s50_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(BRESP[0]),
        .Q(s50[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s50_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(BRESP[1]),
        .Q(s50[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s74_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARPROT[0]),
        .Q(s74[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s74_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARPROT[1]),
        .Q(s74[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s74_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(ARPROT[2]),
        .Q(s74[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s98_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RRESP[0]),
        .Q(s98[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s98_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(RRESP[1]),
        .Q(s98[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s__0 [1]),
        .Q(p_0_in41_in),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_sq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s__0 [2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s__0 [1]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_sq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(s86sq),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s__0 [2]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s__0 [1]),
        .Q(p_0_in80_in),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_sq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s__0 [2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s__0 [1]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_sq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s__0 [2]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s__0 [1]),
        .Q(p_0_in28_in),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_sq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s__0 [2]),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s__0 [1]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_sq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(p_0_in94_in),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s__0 [2]),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[2] ),
        .Q(p_0_in59_in),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[3] ),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[2] ),
        .R(SR));
  FDRE \gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(p_0_in0_in),
        .Q(\gen_deflt_chks.gen_ltwt_slave_side.s_WSTRB_sq_reg_n_0_[3] ),
        .R(SR));
  FDRE \gen_ltwt_slave_side.ASR_33_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(BrespErrorLead),
        .Q(Axi4PC_asr_inline_out[32]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \gen_ltwt_slave_side.ASR_36_i_1 
       (.I0(BVALID),
        .I1(p_0_in103_in),
        .O(s53s0));
  FDRE \gen_ltwt_slave_side.ASR_36_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s53s0),
        .Q(Axi4PC_asr_inline_out[35]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_ltwt_slave_side.ASR_60_i_1 
       (.I0(RVALID),
        .I1(rid_mismatch),
        .O(ASR_600));
  FDRE \gen_ltwt_slave_side.ASR_60_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(ASR_600),
        .Q(Axi4PC_asr_inline_out[59]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \gen_ltwt_slave_side.ASR_67_i_1 
       (.I0(RVALID),
        .I1(p_0_in94_in),
        .O(s101s0));
  FDRE \gen_ltwt_slave_side.ASR_67_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(s101s0),
        .Q(Axi4PC_asr_inline_out[66]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_ltwt_slave_side.s101sq[1]_i_1 
       (.I0(RVALID),
        .I1(RREADY),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s [4]));
  FDRE \gen_ltwt_slave_side.s101sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_RDATA_s [4]),
        .Q(p_0_in94_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_ltwt_slave_side.s53sq[1]_i_1 
       (.I0(BVALID),
        .I1(BREADY),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_BUSER_s ));
  FDRE \gen_ltwt_slave_side.s53sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_BUSER_s ),
        .Q(p_0_in103_in),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[15]_i_1 
       (.I0(Axi4PC_asr_inline_out[15]),
        .I1(pc_status[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[19]_i_1 
       (.I0(Axi4PC_asr_inline_out[19]),
        .I1(pc_status[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[22]_i_1 
       (.I0(Axi4PC_asr_inline_out[22]),
        .I1(pc_status[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[24]_i_1 
       (.I0(Axi4PC_asr_inline_out[24]),
        .I1(pc_status[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[26]_i_1 
       (.I0(Axi4PC_asr_inline_out[26]),
        .I1(pc_status[5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[27]_i_1 
       (.I0(Axi4PC_asr_inline_out[27]),
        .I1(pc_status[6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[32]_i_1 
       (.I0(Axi4PC_asr_inline_out[32]),
        .I1(pc_status[7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[34]_i_1 
       (.I0(Axi4PC_asr_inline_out[34]),
        .I1(pc_status[8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[35]_i_1 
       (.I0(Axi4PC_asr_inline_out[35]),
        .I1(pc_status[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[46]_i_1 
       (.I0(Axi4PC_asr_inline_out[46]),
        .I1(pc_status[10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[52]_i_1 
       (.I0(Axi4PC_asr_inline_out[52]),
        .I1(pc_status[11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[56]_i_1 
       (.I0(Axi4PC_asr_inline_out[56]),
        .I1(pc_status[12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[59]_i_1 
       (.I0(Axi4PC_asr_inline_out[59]),
        .I1(pc_status[13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[62]_i_1 
       (.I0(Axi4PC_asr_inline_out[62]),
        .I1(pc_status[14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[65]_i_1 
       (.I0(Axi4PC_asr_inline_out[65]),
        .I1(pc_status[15]),
        .O(D[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[66]_i_1 
       (.I0(Axi4PC_asr_inline_out[66]),
        .I1(pc_status[16]),
        .O(D[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_status_i[84]_i_1 
       (.I0(ARST_N),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[9]_i_1 
       (.I0(Axi4PC_asr_inline_out[9]),
        .I1(pc_status[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s32sq[1]_i_1 
       (.I0(AWVALID),
        .I1(AWREADY),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [4]));
  FDRE \s32sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_AWADDR_s [4]),
        .Q(p_0_in1_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s44sq[1]_i_1 
       (.I0(WVALID),
        .I1(WREADY),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_WDATA_s [4]));
  FDRE \s44sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_WDATA_s [4]),
        .Q(p_0_in0_in),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \s86sq[1]_i_1 
       (.I0(ARVALID),
        .I1(ARREADY),
        .O(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s [4]));
  FDRE \s86sq_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_deflt_chks.gen_ltwt_slave_side.s_ARADDR_s [4]),
        .Q(s86sq),
        .R(SR));
endmodule

(* ADDRHI = "6" *) (* ADDRLO = "0" *) (* ALENHI = "15" *) 
(* ALENLO = "8" *) (* ASIZEHI = "18" *) (* ASIZELO = "16" *) 
(* BURSTHI = "20" *) (* BURSTLO = "19" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_CHK_ERR_RESP = "0" *) 
(* C_ERROR_COUNT = "160" *) (* C_HAS_WSTRB = "1" *) (* C_INDEX_WIDTH = "1" *) 
(* C_NUM_RTHREADS = "2" *) (* C_NUM_WTHREADS = "2" *) (* C_PC_HAS_SYSTEM_RESET = "0" *) 
(* C_PC_MASTER_SIDE = "0" *) (* C_PC_MAX_BURST_LENGTH = "1" *) (* C_PC_SUPPORTS_NARROW_BURST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXCL = "7" *) (* EXMON_WIDTH = "0" *) 
(* ID_MAX = "0" *) (* LIGHT_WEIGHT = "0" *) (* LOG2_STRB_WIDTH = "2" *) 
(* LP_ADDR_WIDTH = "32" *) (* LP_EXMON_WIDTH = "1" *) (* MAXRBURSTS = "8" *) 
(* MAXWBURSTS = "8" *) (* MAX_AR_WAITS = "0" *) (* MAX_AW_WAITS = "0" *) 
(* MAX_B_WAITS = "0" *) (* MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) (* MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) 
(* MAX_R_WAITS = "0" *) (* MAX_WLAST_TO_AWVALID_WAITS = "0" *) (* MAX_WRITE_TO_BVALID_WAITS = "0" *) 
(* MAX_W_WAITS = "0" *) (* P_MAXRBURSTS_LOG = "3" *) (* P_MAXWBURSTS_LOG = "3" *) 
(* P_RTHREAD_SIZE = "1" *) (* P_WTHREAD_SIZE = "1" *) (* RecommendOn = "1" *) 
(* RecommendWaitOn = "1" *) (* STRB_WIDTH = "4" *) (* WADDRHI = "6" *) 
(* WADDRLO = "0" *) (* WALENHI = "8" *) (* WALENLO = "1" *) 
(* WASIZEHI = "9" *) (* WASIZELO = "7" *) (* WEXCL = "0" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_core
   (pc_status,
    resetn,
    arid_index,
    rid_index,
    rid_mismatch,
    rcam_overflow,
    awid_index,
    bid_index,
    bid_mismatch,
    wcam_overflow,
    ACLK,
    ARST_N,
    AWID,
    AWADDR,
    AWLEN,
    AWSIZE,
    AWBURST,
    AWLOCK,
    AWCACHE,
    AWPROT,
    AWQOS,
    AWREGION,
    AWUSER,
    AWVALID,
    AWREADY,
    WLAST,
    WDATA,
    WSTRB,
    WUSER,
    WVALID,
    WREADY,
    BID,
    BRESP,
    BUSER,
    BVALID,
    BREADY,
    ARID,
    ARADDR,
    ARLEN,
    ARSIZE,
    ARBURST,
    ARLOCK,
    ARCACHE,
    ARPROT,
    ARQOS,
    ARREGION,
    ARUSER,
    ARVALID,
    ARREADY,
    RID,
    RLAST,
    RDATA,
    RRESP,
    RUSER,
    RVALID,
    RREADY);
  output [159:0]pc_status;
  input resetn;
  input [0:0]arid_index;
  input [0:0]rid_index;
  input rid_mismatch;
  input rcam_overflow;
  input [0:0]awid_index;
  input [0:0]bid_index;
  input bid_mismatch;
  input wcam_overflow;
  input ACLK;
  input ARST_N;
  input [0:0]AWID;
  input [31:0]AWADDR;
  input [7:0]AWLEN;
  input [2:0]AWSIZE;
  input [1:0]AWBURST;
  input [0:0]AWLOCK;
  input [3:0]AWCACHE;
  input [2:0]AWPROT;
  input [3:0]AWQOS;
  input [3:0]AWREGION;
  input [0:0]AWUSER;
  input AWVALID;
  input AWREADY;
  input WLAST;
  input [31:0]WDATA;
  input [3:0]WSTRB;
  input [0:0]WUSER;
  input WVALID;
  input WREADY;
  input [0:0]BID;
  input [1:0]BRESP;
  input [0:0]BUSER;
  input BVALID;
  input BREADY;
  input [0:0]ARID;
  input [31:0]ARADDR;
  input [7:0]ARLEN;
  input [2:0]ARSIZE;
  input [1:0]ARBURST;
  input [0:0]ARLOCK;
  input [3:0]ARCACHE;
  input [2:0]ARPROT;
  input [3:0]ARQOS;
  input [3:0]ARREGION;
  input [0:0]ARUSER;
  input ARVALID;
  input ARREADY;
  input [0:0]RID;
  input RLAST;
  input [31:0]RDATA;
  input [1:0]RRESP;
  input [0:0]RUSER;
  input RVALID;
  input RREADY;

  wire \<const0> ;
  wire ACLK;
  wire [31:0]ARADDR;
  wire [2:0]ARPROT;
  wire ARREADY;
  wire ARST_N;
  wire ARVALID;
  wire [31:0]AWADDR;
  wire AWCMD_n_10;
  wire AWCMD_n_11;
  wire AWCMD_n_12;
  wire AWCMD_n_13;
  wire AWCMD_n_14;
  wire AWCMD_n_15;
  wire AWCMD_n_16;
  wire AWCMD_n_17;
  wire AWCMD_n_19;
  wire AWCMD_n_2;
  wire AWCMD_n_20;
  wire AWCMD_n_21;
  wire AWCMD_n_22;
  wire AWCMD_n_23;
  wire AWCMD_n_24;
  wire AWCMD_n_25;
  wire AWCMD_n_26;
  wire AWCMD_n_27;
  wire AWCMD_n_3;
  wire AWCMD_n_4;
  wire AWCMD_n_9;
  wire AWIDOut;
  wire [2:0]AWPROT;
  wire AWREADY;
  wire AWVALID;
  wire AWXferCountOverflow;
  wire \AWXferCount[1][1]_i_3_n_0 ;
  wire \AWXferCount[1][2]_i_3_n_0 ;
  wire \AWXferCount[1][3]_i_5_n_0 ;
  wire [3:0]\AWXferCount_reg[0] ;
  wire [3:0]\AWXferCount_reg[1] ;
  wire BREADY;
  wire [1:0]BRESP;
  wire BStrbError;
  wire BStrbError0;
  wire BVALID;
  wire BrespErrorLead;
  wire BrespErrorLead_i_2_n_0;
  wire BrespErrorLead_i_3_n_0;
  wire \LITE.i_Axi4LitePC_asr_inline_n_0 ;
  wire \LITE.i_Axi4LitePC_asr_inline_n_1 ;
  wire [31:0]RDATA;
  wire RREADY;
  wire [1:0]RRESP;
  wire RVALID;
  wire WCHECK_n_0;
  wire WCHECK_n_1;
  wire WCHECK_n_2;
  wire WCHECK_n_3;
  wire WCHECK_n_4;
  wire WCHECK_n_7;
  wire WCheckEmpty;
  wire [31:0]WDATA;
  wire WREADY;
  wire [3:0]WSTRB;
  wire [3:0]WSTRBq;
  wire WSTRBq00_in;
  wire WVALID;
  wire [0:0]arid_index;
  wire [0:0]awid_index;
  wire [0:0]bid_index;
  wire bid_mismatch;
  wire cmd_pop_0;
  wire [3:3]cnt_reg;
  wire first_strb;
  wire \gen_cams.gen_rthread_loop[0].RDCAM_n_0 ;
  wire \gen_cams.gen_rthread_loop[0].RDCAM_n_1 ;
  wire \gen_cams.gen_rthread_loop[1].RDCAM_n_0 ;
  wire \gen_cams.gen_rthread_loop[1].RDCAM_n_1 ;
  wire \gen_wstrb.CHKSTRB_stage_2_eq ;
  wire \gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_1_n_0 ;
  wire \gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_2_n_0 ;
  wire \gen_wstrb.CheckStrbAssert ;
  wire [3:0]\gen_wstrb.StrbMask_q1 ;
  wire [0:0]\gen_wstrb.StrbMask_q10 ;
  wire [3:0]\gen_wstrb.StrbMask_q2 ;
  wire [3:0]\gen_wstrb.StrbMask_q20 ;
  wire \gen_wstrb.StrbMask_q2[3]_i_2_n_0 ;
  wire \gen_wstrb.StrbMask_q2[3]_i_3_n_0 ;
  wire [3:0]\gen_wstrb.StrbMask_q3_n ;
  wire \gen_wstrb.StrbMask_q3_n[0]_i_1_n_0 ;
  wire \gen_wstrb.StrbMask_q3_n[1]_i_1_n_0 ;
  wire \gen_wstrb.StrbMask_q3_n[2]_i_1_n_0 ;
  wire \gen_wstrb.StrbMask_q3_n[3]_i_1_n_0 ;
  wire \gen_wstrb.Strb_q2_reg[0]_srl2_n_0 ;
  wire \gen_wstrb.Strb_q2_reg[1]_srl2_n_0 ;
  wire \gen_wstrb.Strb_q2_reg[2]_srl2_n_0 ;
  wire \gen_wstrb.Strb_q2_reg[3]_srl2_n_0 ;
  wire [3:0]\gen_wstrb.Strb_q3 ;
  wire \gen_wstrb.first_strb_i_1_n_0 ;
  wire [6:0]\gen_wstrb.mask_shift_stage_1 ;
  wire [1:0]\gen_wstrb.mask_shift_stage_2 ;
  wire [1:0]\gen_wstrb.mask_shift_stage_2_q1 ;
  wire [6:0]\gen_wstrb.wchechPop_shift ;
  wire i_Axi4PC_asr_inline_n_1;
  wire i_Axi4PC_asr_inline_n_10;
  wire i_Axi4PC_asr_inline_n_11;
  wire i_Axi4PC_asr_inline_n_12;
  wire i_Axi4PC_asr_inline_n_13;
  wire i_Axi4PC_asr_inline_n_14;
  wire i_Axi4PC_asr_inline_n_15;
  wire i_Axi4PC_asr_inline_n_16;
  wire i_Axi4PC_asr_inline_n_17;
  wire i_Axi4PC_asr_inline_n_2;
  wire i_Axi4PC_asr_inline_n_3;
  wire i_Axi4PC_asr_inline_n_4;
  wire i_Axi4PC_asr_inline_n_5;
  wire i_Axi4PC_asr_inline_n_6;
  wire i_Axi4PC_asr_inline_n_7;
  wire i_Axi4PC_asr_inline_n_8;
  wire i_Axi4PC_asr_inline_n_9;
  wire p_0_in__0;
  wire [3:0]p_2_in;
  wire p_38_in;
  wire [84:9]\^pc_status ;
  wire rcam_overflow;
  wire [0:0]rid_index;
  wire rid_mismatch;
  wire wcam_overflow;

  assign pc_status[159] = \<const0> ;
  assign pc_status[158] = \<const0> ;
  assign pc_status[157] = \<const0> ;
  assign pc_status[156] = \<const0> ;
  assign pc_status[155] = \<const0> ;
  assign pc_status[154] = \<const0> ;
  assign pc_status[153] = \<const0> ;
  assign pc_status[152] = \<const0> ;
  assign pc_status[151] = \<const0> ;
  assign pc_status[150] = \<const0> ;
  assign pc_status[149] = \<const0> ;
  assign pc_status[148] = \<const0> ;
  assign pc_status[147] = \<const0> ;
  assign pc_status[146] = \<const0> ;
  assign pc_status[145] = \<const0> ;
  assign pc_status[144] = \<const0> ;
  assign pc_status[143] = \<const0> ;
  assign pc_status[142] = \<const0> ;
  assign pc_status[141] = \<const0> ;
  assign pc_status[140] = \<const0> ;
  assign pc_status[139] = \<const0> ;
  assign pc_status[138] = \<const0> ;
  assign pc_status[137] = \<const0> ;
  assign pc_status[136] = \<const0> ;
  assign pc_status[135] = \<const0> ;
  assign pc_status[134] = \<const0> ;
  assign pc_status[133] = \<const0> ;
  assign pc_status[132] = \<const0> ;
  assign pc_status[131] = \<const0> ;
  assign pc_status[130] = \<const0> ;
  assign pc_status[129] = \<const0> ;
  assign pc_status[128] = \<const0> ;
  assign pc_status[127] = \<const0> ;
  assign pc_status[126] = \<const0> ;
  assign pc_status[125] = \<const0> ;
  assign pc_status[124] = \<const0> ;
  assign pc_status[123] = \<const0> ;
  assign pc_status[122] = \<const0> ;
  assign pc_status[121] = \<const0> ;
  assign pc_status[120] = \<const0> ;
  assign pc_status[119] = \<const0> ;
  assign pc_status[118] = \<const0> ;
  assign pc_status[117] = \<const0> ;
  assign pc_status[116] = \<const0> ;
  assign pc_status[115] = \<const0> ;
  assign pc_status[114] = \<const0> ;
  assign pc_status[113] = \<const0> ;
  assign pc_status[112] = \<const0> ;
  assign pc_status[111] = \<const0> ;
  assign pc_status[110] = \<const0> ;
  assign pc_status[109] = \<const0> ;
  assign pc_status[108] = \<const0> ;
  assign pc_status[107] = \<const0> ;
  assign pc_status[106] = \<const0> ;
  assign pc_status[105] = \<const0> ;
  assign pc_status[104] = \<const0> ;
  assign pc_status[103] = \<const0> ;
  assign pc_status[102] = \<const0> ;
  assign pc_status[101] = \<const0> ;
  assign pc_status[100] = \<const0> ;
  assign pc_status[99] = \<const0> ;
  assign pc_status[98] = \<const0> ;
  assign pc_status[97] = \<const0> ;
  assign pc_status[96] = \<const0> ;
  assign pc_status[95] = \<const0> ;
  assign pc_status[94] = \<const0> ;
  assign pc_status[93] = \<const0> ;
  assign pc_status[92] = \<const0> ;
  assign pc_status[91] = \<const0> ;
  assign pc_status[90] = \<const0> ;
  assign pc_status[89] = \<const0> ;
  assign pc_status[88] = \<const0> ;
  assign pc_status[87] = \<const0> ;
  assign pc_status[86] = \<const0> ;
  assign pc_status[85] = \<const0> ;
  assign pc_status[84:83] = \^pc_status [84:83];
  assign pc_status[82] = \<const0> ;
  assign pc_status[81:78] = \^pc_status [81:78];
  assign pc_status[77] = \<const0> ;
  assign pc_status[76] = \<const0> ;
  assign pc_status[75] = \<const0> ;
  assign pc_status[74] = \<const0> ;
  assign pc_status[73] = \<const0> ;
  assign pc_status[72] = \<const0> ;
  assign pc_status[71] = \<const0> ;
  assign pc_status[70] = \<const0> ;
  assign pc_status[69] = \<const0> ;
  assign pc_status[68] = \<const0> ;
  assign pc_status[67] = \<const0> ;
  assign pc_status[66:65] = \^pc_status [66:65];
  assign pc_status[64] = \<const0> ;
  assign pc_status[63] = \<const0> ;
  assign pc_status[62] = \^pc_status [62];
  assign pc_status[61] = \<const0> ;
  assign pc_status[60] = \<const0> ;
  assign pc_status[59] = \^pc_status [59];
  assign pc_status[58] = \<const0> ;
  assign pc_status[57] = \<const0> ;
  assign pc_status[56] = \^pc_status [56];
  assign pc_status[55] = \<const0> ;
  assign pc_status[54] = \<const0> ;
  assign pc_status[53] = \<const0> ;
  assign pc_status[52] = \^pc_status [52];
  assign pc_status[51] = \<const0> ;
  assign pc_status[50] = \<const0> ;
  assign pc_status[49] = \<const0> ;
  assign pc_status[48] = \<const0> ;
  assign pc_status[47] = \<const0> ;
  assign pc_status[46] = \^pc_status [46];
  assign pc_status[45] = \<const0> ;
  assign pc_status[44] = \<const0> ;
  assign pc_status[43] = \<const0> ;
  assign pc_status[42] = \<const0> ;
  assign pc_status[41] = \<const0> ;
  assign pc_status[40] = \<const0> ;
  assign pc_status[39] = \<const0> ;
  assign pc_status[38] = \<const0> ;
  assign pc_status[37] = \<const0> ;
  assign pc_status[36] = \<const0> ;
  assign pc_status[35:34] = \^pc_status [35:34];
  assign pc_status[33] = \<const0> ;
  assign pc_status[32] = \^pc_status [32];
  assign pc_status[31] = \<const0> ;
  assign pc_status[30] = \<const0> ;
  assign pc_status[29] = \<const0> ;
  assign pc_status[28] = \<const0> ;
  assign pc_status[27:26] = \^pc_status [27:26];
  assign pc_status[25] = \<const0> ;
  assign pc_status[24] = \^pc_status [24];
  assign pc_status[23] = \<const0> ;
  assign pc_status[22] = \^pc_status [22];
  assign pc_status[21] = \<const0> ;
  assign pc_status[20] = \<const0> ;
  assign pc_status[19] = \^pc_status [19];
  assign pc_status[18] = \<const0> ;
  assign pc_status[17] = \<const0> ;
  assign pc_status[16] = \<const0> ;
  assign pc_status[15] = \^pc_status [15];
  assign pc_status[14] = \<const0> ;
  assign pc_status[13] = \<const0> ;
  assign pc_status[12] = \<const0> ;
  assign pc_status[11] = \<const0> ;
  assign pc_status[10] = \<const0> ;
  assign pc_status[9] = \^pc_status [9];
  assign pc_status[8] = \<const0> ;
  assign pc_status[7] = \<const0> ;
  assign pc_status[6] = \<const0> ;
  assign pc_status[5] = \<const0> ;
  assign pc_status[4] = \<const0> ;
  assign pc_status[3] = \<const0> ;
  assign pc_status[2] = \<const0> ;
  assign pc_status[1] = \<const0> ;
  assign pc_status[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo__parameterized0 AWCMD
       (.ACLK(ACLK),
        .ARST_N(ARST_N),
        .AWADDR(AWADDR[6:0]),
        .AWREADY(AWREADY),
        .AWVALID(AWVALID),
        .AWXferCountOverflow(AWXferCountOverflow),
        .AWXferCountOverflow_reg(AWCMD_n_14),
        .\AWXferCount_reg[0][3] (\AWXferCount_reg[0] ),
        .\AWXferCount_reg[0][3]_0 (\AWXferCount_reg[1] ),
        .\AWXferCount_reg[1][1] (\AWXferCount[1][1]_i_3_n_0 ),
        .\AWXferCount_reg[1][2] ({AWCMD_n_9,AWCMD_n_10,AWCMD_n_11,AWCMD_n_12}),
        .\AWXferCount_reg[1][2]_0 (\AWXferCount[1][2]_i_3_n_0 ),
        .\AWXferCount_reg[1][3] (\AWXferCount[1][3]_i_5_n_0 ),
        .BREADY(BREADY),
        .BVALID(BVALID),
        .D(p_2_in),
        .DOC(AWIDOut),
        .E(AWCMD_n_2),
        .Q(cnt_reg),
        .SR(p_0_in__0),
        .WCheckEmpty(WCheckEmpty),
        .aclk({AWCMD_n_15,AWCMD_n_16,AWCMD_n_17,\gen_wstrb.StrbMask_q10 }),
        .aclk_0({AWCMD_n_19,AWCMD_n_20,AWCMD_n_21,AWCMD_n_22,AWCMD_n_23,AWCMD_n_24,AWCMD_n_25}),
        .aclk_1({AWCMD_n_26,AWCMD_n_27}),
        .awid_index(awid_index),
        .bid_index(bid_index),
        .bvalid_qq_reg(AWCMD_n_3),
        .bvalid_qq_reg_0(AWCMD_n_4),
        .\cnt_reg[2]_0 (AWCMD_n_13),
        .p_38_in(p_38_in),
        .pc_status(\^pc_status [80]),
        .wcam_overflow(wcam_overflow));
  FDRE AWXferCountOverflow_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_4),
        .Q(AWXferCountOverflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8748B47)) 
    \AWXferCount[1][1]_i_3 
       (.I0(\AWXferCount_reg[1] [0]),
        .I1(bid_index),
        .I2(\AWXferCount_reg[0] [0]),
        .I3(\AWXferCount_reg[1] [1]),
        .I4(\AWXferCount_reg[0] [1]),
        .O(\AWXferCount[1][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \AWXferCount[1][2]_i_3 
       (.I0(\AWXferCount_reg[0] [1]),
        .I1(\AWXferCount_reg[1] [1]),
        .I2(\AWXferCount_reg[0] [0]),
        .I3(bid_index),
        .I4(\AWXferCount_reg[1] [0]),
        .O(\AWXferCount[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \AWXferCount[1][3]_i_5 
       (.I0(\AWXferCount_reg[1] [2]),
        .I1(\AWXferCount_reg[0] [2]),
        .I2(\AWXferCount[1][2]_i_3_n_0 ),
        .I3(\AWXferCount_reg[0] [3]),
        .I4(bid_index),
        .I5(\AWXferCount_reg[1] [3]),
        .O(\AWXferCount[1][3]_i_5_n_0 ));
  FDRE \AWXferCount_reg[0][0] 
       (.C(ACLK),
        .CE(AWCMD_n_3),
        .D(AWCMD_n_12),
        .Q(\AWXferCount_reg[0] [0]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[0][1] 
       (.C(ACLK),
        .CE(AWCMD_n_3),
        .D(AWCMD_n_11),
        .Q(\AWXferCount_reg[0] [1]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[0][2] 
       (.C(ACLK),
        .CE(AWCMD_n_3),
        .D(AWCMD_n_10),
        .Q(\AWXferCount_reg[0] [2]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[0][3] 
       (.C(ACLK),
        .CE(AWCMD_n_3),
        .D(AWCMD_n_9),
        .Q(\AWXferCount_reg[0] [3]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[1][0] 
       (.C(ACLK),
        .CE(AWCMD_n_2),
        .D(p_2_in[0]),
        .Q(\AWXferCount_reg[1] [0]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[1][1] 
       (.C(ACLK),
        .CE(AWCMD_n_2),
        .D(p_2_in[1]),
        .Q(\AWXferCount_reg[1] [1]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[1][2] 
       (.C(ACLK),
        .CE(AWCMD_n_2),
        .D(p_2_in[2]),
        .Q(\AWXferCount_reg[1] [2]),
        .R(p_0_in__0));
  FDRE \AWXferCount_reg[1][3] 
       (.C(ACLK),
        .CE(AWCMD_n_2),
        .D(p_2_in[3]),
        .Q(\AWXferCount_reg[1] [3]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    BrespErrorLead_i_2
       (.I0(\AWXferCount_reg[1] [3]),
        .I1(bid_index),
        .I2(\AWXferCount_reg[0] [3]),
        .I3(\AWXferCount_reg[1] [2]),
        .I4(\AWXferCount_reg[0] [2]),
        .I5(\AWXferCount[1][2]_i_3_n_0 ),
        .O(BrespErrorLead_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BrespErrorLead_i_3
       (.I0(BVALID),
        .I1(ARST_N),
        .O(BrespErrorLead_i_3_n_0));
  FDRE BrespErrorLead_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(WCHECK_n_4),
        .Q(BrespErrorLead),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_axi4litepc_asr_inline \LITE.i_Axi4LitePC_asr_inline 
       (.ACLK(ACLK),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .D({\LITE.i_Axi4LitePC_asr_inline_n_0 ,\LITE.i_Axi4LitePC_asr_inline_n_1 }),
        .RRESP(RRESP),
        .RVALID(RVALID),
        .SR(p_0_in__0),
        .pc_status(\^pc_status [84:83]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo__parameterized1 WCHECK
       (.ACLK(ACLK),
        .BrespErrorLead_reg(BrespErrorLead_i_2_n_0),
        .BrespErrorLead_reg_0(BrespErrorLead_i_3_n_0),
        .D(WCHECK_n_7),
        .DOA({WCHECK_n_0,WCHECK_n_1}),
        .DOB({WCHECK_n_2,WCHECK_n_3}),
        .DOC(AWIDOut),
        .Q(cnt_reg),
        .SR(p_0_in__0),
        .WCheckEmpty(WCheckEmpty),
        .WREADY(WREADY),
        .WSTRB(WSTRB),
        .WVALID(WVALID),
        .bid_index(bid_index),
        .bid_mismatch(bid_mismatch),
        .bid_mismatch_q_reg(WCHECK_n_4),
        .data_ram_reg_0_7_0_12_0(WSTRBq),
        .first_strb(first_strb),
        .p_38_in(p_38_in),
        .pc_status(\^pc_status [81]),
        .\rd_ptr_reg[2]_0 (AWCMD_n_13));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo \gen_cams.gen_rthread_loop[0].RDCAM 
       (.ACLK(ACLK),
        .ARREADY(ARREADY),
        .ARVALID(ARVALID),
        .D(\gen_cams.gen_rthread_loop[0].RDCAM_n_1 ),
        .RREADY(RREADY),
        .RVALID(RVALID),
        .SR(p_0_in__0),
        .arid_index(arid_index),
        .cmd_pop_0(cmd_pop_0),
        .\cnt_reg[3]_0 (\gen_cams.gen_rthread_loop[0].RDCAM_n_0 ),
        .pc_status(\^pc_status [79]),
        .\pc_status_i_reg[79] (\gen_cams.gen_rthread_loop[1].RDCAM_n_0 ),
        .rcam_overflow(rcam_overflow),
        .rid_index(rid_index));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo_4 \gen_cams.gen_rthread_loop[1].RDCAM 
       (.ACLK(ACLK),
        .ARREADY(ARREADY),
        .ARST_N(ARST_N),
        .ARVALID(ARVALID),
        .D(\gen_cams.gen_rthread_loop[1].RDCAM_n_1 ),
        .RREADY(RREADY),
        .RVALID(RVALID),
        .SR(p_0_in__0),
        .arid_index(arid_index),
        .pc_status(\^pc_status [78]),
        .\pc_status_i_reg[78] (\gen_cams.gen_rthread_loop[0].RDCAM_n_0 ),
        .rid_index(rid_index),
        .rvalid_qq_reg(\gen_cams.gen_rthread_loop[1].RDCAM_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wstrb.BStrbError_i_1 
       (.I0(\gen_wstrb.wchechPop_shift [6]),
        .I1(\gen_wstrb.CheckStrbAssert ),
        .O(BStrbError0));
  FDRE \gen_wstrb.BStrbError_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(BStrbError0),
        .Q(BStrbError),
        .R(p_0_in__0));
  (* srl_bus_name = "inst/CORE/\gen_wstrb.CHKSTRB_stage_2_eq_reg " *) 
  (* srl_name = "inst/CORE/\gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3 " *) 
  SRL16E \gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(\gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_1_n_0 ),
        .Q(\gen_wstrb.CHKSTRB_stage_2_eq ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_1 
       (.I0(\gen_wstrb.Strb_q3 [1]),
        .I1(\gen_wstrb.StrbMask_q3_n [1]),
        .I2(\gen_wstrb.Strb_q3 [0]),
        .I3(\gen_wstrb.StrbMask_q3_n [0]),
        .I4(\gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_2_n_0 ),
        .O(\gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_2 
       (.I0(\gen_wstrb.StrbMask_q3_n [2]),
        .I1(\gen_wstrb.Strb_q3 [2]),
        .I2(\gen_wstrb.StrbMask_q3_n [3]),
        .I3(\gen_wstrb.Strb_q3 [3]),
        .O(\gen_wstrb.CHKSTRB_stage_2_eq_reg[0]_srl3_i_2_n_0 ));
  FDRE \gen_wstrb.CheckStrbAssert_reg 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.CHKSTRB_stage_2_eq ),
        .Q(\gen_wstrb.CheckStrbAssert ),
        .R(p_0_in__0));
  FDRE \gen_wstrb.StrbMask_q1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q10 ),
        .Q(\gen_wstrb.StrbMask_q1 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_17),
        .Q(\gen_wstrb.StrbMask_q1 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_16),
        .Q(\gen_wstrb.StrbMask_q1 [2]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_15),
        .Q(\gen_wstrb.StrbMask_q1 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \gen_wstrb.StrbMask_q2[0]_i_1 
       (.I0(\gen_wstrb.mask_shift_stage_1 [1]),
        .I1(\gen_wstrb.StrbMask_q1 [0]),
        .I2(\gen_wstrb.mask_shift_stage_1 [0]),
        .I3(\gen_wstrb.StrbMask_q2[3]_i_3_n_0 ),
        .O(\gen_wstrb.StrbMask_q20 [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00B00000)) 
    \gen_wstrb.StrbMask_q2[1]_i_1 
       (.I0(\gen_wstrb.StrbMask_q1 [0]),
        .I1(\gen_wstrb.mask_shift_stage_1 [0]),
        .I2(\gen_wstrb.StrbMask_q1 [1]),
        .I3(\gen_wstrb.mask_shift_stage_1 [1]),
        .I4(\gen_wstrb.StrbMask_q2[3]_i_3_n_0 ),
        .O(\gen_wstrb.StrbMask_q20 [1]));
  LUT6 #(
    .INIT(64'h30BB000000000000)) 
    \gen_wstrb.StrbMask_q2[2]_i_1 
       (.I0(\gen_wstrb.StrbMask_q1 [1]),
        .I1(\gen_wstrb.mask_shift_stage_1 [0]),
        .I2(\gen_wstrb.StrbMask_q1 [0]),
        .I3(\gen_wstrb.mask_shift_stage_1 [1]),
        .I4(\gen_wstrb.StrbMask_q1 [2]),
        .I5(\gen_wstrb.StrbMask_q2[3]_i_3_n_0 ),
        .O(\gen_wstrb.StrbMask_q20 [2]));
  LUT6 #(
    .INIT(64'hB8BB000000000000)) 
    \gen_wstrb.StrbMask_q2[3]_i_1 
       (.I0(\gen_wstrb.StrbMask_q2[3]_i_2_n_0 ),
        .I1(\gen_wstrb.mask_shift_stage_1 [0]),
        .I2(\gen_wstrb.StrbMask_q1 [1]),
        .I3(\gen_wstrb.mask_shift_stage_1 [1]),
        .I4(\gen_wstrb.StrbMask_q1 [3]),
        .I5(\gen_wstrb.StrbMask_q2[3]_i_3_n_0 ),
        .O(\gen_wstrb.StrbMask_q20 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_wstrb.StrbMask_q2[3]_i_2 
       (.I0(\gen_wstrb.StrbMask_q1 [0]),
        .I1(\gen_wstrb.mask_shift_stage_1 [1]),
        .I2(\gen_wstrb.StrbMask_q1 [2]),
        .O(\gen_wstrb.StrbMask_q2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_wstrb.StrbMask_q2[3]_i_3 
       (.I0(\gen_wstrb.mask_shift_stage_1 [6]),
        .I1(\gen_wstrb.mask_shift_stage_1 [3]),
        .I2(\gen_wstrb.mask_shift_stage_1 [2]),
        .I3(\gen_wstrb.mask_shift_stage_1 [5]),
        .I4(\gen_wstrb.mask_shift_stage_1 [4]),
        .O(\gen_wstrb.StrbMask_q2[3]_i_3_n_0 ));
  FDRE \gen_wstrb.StrbMask_q2_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q20 [0]),
        .Q(\gen_wstrb.StrbMask_q2 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q2_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q20 [1]),
        .Q(\gen_wstrb.StrbMask_q2 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q2_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q20 [2]),
        .Q(\gen_wstrb.StrbMask_q2 [2]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q2_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q20 [3]),
        .Q(\gen_wstrb.StrbMask_q2 [3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_wstrb.StrbMask_q3_n[0]_i_1 
       (.I0(\gen_wstrb.mask_shift_stage_2_q1 [0]),
        .I1(\gen_wstrb.mask_shift_stage_2_q1 [1]),
        .I2(\gen_wstrb.StrbMask_q2 [0]),
        .O(\gen_wstrb.StrbMask_q3_n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \gen_wstrb.StrbMask_q3_n[1]_i_1 
       (.I0(\gen_wstrb.mask_shift_stage_2_q1 [1]),
        .I1(\gen_wstrb.StrbMask_q2 [1]),
        .I2(\gen_wstrb.mask_shift_stage_2_q1 [0]),
        .I3(\gen_wstrb.StrbMask_q2 [0]),
        .O(\gen_wstrb.StrbMask_q3_n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hCC1DFF1D)) 
    \gen_wstrb.StrbMask_q3_n[2]_i_1 
       (.I0(\gen_wstrb.StrbMask_q2 [2]),
        .I1(\gen_wstrb.mask_shift_stage_2_q1 [1]),
        .I2(\gen_wstrb.StrbMask_q2 [0]),
        .I3(\gen_wstrb.mask_shift_stage_2_q1 [0]),
        .I4(\gen_wstrb.StrbMask_q2 [1]),
        .O(\gen_wstrb.StrbMask_q3_n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \gen_wstrb.StrbMask_q3_n[3]_i_1 
       (.I0(\gen_wstrb.StrbMask_q2 [3]),
        .I1(\gen_wstrb.mask_shift_stage_2_q1 [1]),
        .I2(\gen_wstrb.StrbMask_q2 [1]),
        .I3(\gen_wstrb.mask_shift_stage_2_q1 [0]),
        .I4(\gen_wstrb.StrbMask_q2 [2]),
        .I5(\gen_wstrb.StrbMask_q2 [0]),
        .O(\gen_wstrb.StrbMask_q3_n[3]_i_1_n_0 ));
  FDRE \gen_wstrb.StrbMask_q3_n_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q3_n[0]_i_1_n_0 ),
        .Q(\gen_wstrb.StrbMask_q3_n [0]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q3_n_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q3_n[1]_i_1_n_0 ),
        .Q(\gen_wstrb.StrbMask_q3_n [1]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q3_n_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q3_n[2]_i_1_n_0 ),
        .Q(\gen_wstrb.StrbMask_q3_n [2]),
        .R(1'b0));
  FDRE \gen_wstrb.StrbMask_q3_n_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.StrbMask_q3_n[3]_i_1_n_0 ),
        .Q(\gen_wstrb.StrbMask_q3_n [3]),
        .R(1'b0));
  (* srl_bus_name = "inst/CORE/\gen_wstrb.Strb_q2_reg " *) 
  (* srl_name = "inst/CORE/\gen_wstrb.Strb_q2_reg[0]_srl2 " *) 
  SRL16E \gen_wstrb.Strb_q2_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(WCHECK_n_1),
        .Q(\gen_wstrb.Strb_q2_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/CORE/\gen_wstrb.Strb_q2_reg " *) 
  (* srl_name = "inst/CORE/\gen_wstrb.Strb_q2_reg[1]_srl2 " *) 
  SRL16E \gen_wstrb.Strb_q2_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(WCHECK_n_0),
        .Q(\gen_wstrb.Strb_q2_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "inst/CORE/\gen_wstrb.Strb_q2_reg " *) 
  (* srl_name = "inst/CORE/\gen_wstrb.Strb_q2_reg[2]_srl2 " *) 
  SRL16E \gen_wstrb.Strb_q2_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(WCHECK_n_3),
        .Q(\gen_wstrb.Strb_q2_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "inst/CORE/\gen_wstrb.Strb_q2_reg " *) 
  (* srl_name = "inst/CORE/\gen_wstrb.Strb_q2_reg[3]_srl2 " *) 
  SRL16E \gen_wstrb.Strb_q2_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ACLK),
        .D(WCHECK_n_2),
        .Q(\gen_wstrb.Strb_q2_reg[3]_srl2_n_0 ));
  FDRE \gen_wstrb.Strb_q3_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.Strb_q2_reg[0]_srl2_n_0 ),
        .Q(\gen_wstrb.Strb_q3 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.Strb_q3_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.Strb_q2_reg[1]_srl2_n_0 ),
        .Q(\gen_wstrb.Strb_q3 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.Strb_q3_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.Strb_q2_reg[2]_srl2_n_0 ),
        .Q(\gen_wstrb.Strb_q3 [2]),
        .R(1'b0));
  FDRE \gen_wstrb.Strb_q3_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.Strb_q2_reg[3]_srl2_n_0 ),
        .Q(\gen_wstrb.Strb_q3 [3]),
        .R(1'b0));
  FDRE \gen_wstrb.WSTRBq_reg[0] 
       (.C(ACLK),
        .CE(WSTRBq00_in),
        .D(WSTRB[0]),
        .Q(WSTRBq[0]),
        .R(\gen_wstrb.first_strb_i_1_n_0 ));
  FDRE \gen_wstrb.WSTRBq_reg[1] 
       (.C(ACLK),
        .CE(WSTRBq00_in),
        .D(WSTRB[1]),
        .Q(WSTRBq[1]),
        .R(\gen_wstrb.first_strb_i_1_n_0 ));
  FDRE \gen_wstrb.WSTRBq_reg[2] 
       (.C(ACLK),
        .CE(WSTRBq00_in),
        .D(WSTRB[2]),
        .Q(WSTRBq[2]),
        .R(\gen_wstrb.first_strb_i_1_n_0 ));
  FDRE \gen_wstrb.WSTRBq_reg[3] 
       (.C(ACLK),
        .CE(WSTRBq00_in),
        .D(WSTRB[3]),
        .Q(WSTRBq[3]),
        .R(\gen_wstrb.first_strb_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_wstrb.first_strb_i_1 
       (.I0(WREADY),
        .I1(WVALID),
        .I2(ARST_N),
        .O(\gen_wstrb.first_strb_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_wstrb.first_strb_i_2 
       (.I0(WREADY),
        .I1(WVALID),
        .I2(first_strb),
        .O(WSTRBq00_in));
  FDSE \gen_wstrb.first_strb_reg 
       (.C(ACLK),
        .CE(WSTRBq00_in),
        .D(1'b0),
        .Q(first_strb),
        .S(\gen_wstrb.first_strb_i_1_n_0 ));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_25),
        .Q(\gen_wstrb.mask_shift_stage_1 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_24),
        .Q(\gen_wstrb.mask_shift_stage_1 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_23),
        .Q(\gen_wstrb.mask_shift_stage_1 [2]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_22),
        .Q(\gen_wstrb.mask_shift_stage_1 [3]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_21),
        .Q(\gen_wstrb.mask_shift_stage_1 [4]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_20),
        .Q(\gen_wstrb.mask_shift_stage_1 [5]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_1_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_19),
        .Q(\gen_wstrb.mask_shift_stage_1 [6]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_2_q1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.mask_shift_stage_2 [0]),
        .Q(\gen_wstrb.mask_shift_stage_2_q1 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_2_q1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.mask_shift_stage_2 [1]),
        .Q(\gen_wstrb.mask_shift_stage_2_q1 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_2_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_27),
        .Q(\gen_wstrb.mask_shift_stage_2 [0]),
        .R(1'b0));
  FDRE \gen_wstrb.mask_shift_stage_2_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_26),
        .Q(\gen_wstrb.mask_shift_stage_2 [1]),
        .R(1'b0));
  FDRE \gen_wstrb.wchechPop_shift_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(p_38_in),
        .Q(\gen_wstrb.wchechPop_shift [0]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [0]),
        .Q(\gen_wstrb.wchechPop_shift [1]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [1]),
        .Q(\gen_wstrb.wchechPop_shift [2]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [2]),
        .Q(\gen_wstrb.wchechPop_shift [3]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [3]),
        .Q(\gen_wstrb.wchechPop_shift [4]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [4]),
        .Q(\gen_wstrb.wchechPop_shift [5]),
        .R(p_0_in__0));
  FDRE \gen_wstrb.wchechPop_shift_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_wstrb.wchechPop_shift [5]),
        .Q(\gen_wstrb.wchechPop_shift [6]),
        .R(p_0_in__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_axi4pc_asr_inline i_Axi4PC_asr_inline
       (.ACLK(ACLK),
        .ARADDR(ARADDR),
        .ARPROT(ARPROT),
        .ARREADY(ARREADY),
        .ARST_N(ARST_N),
        .ARVALID(ARVALID),
        .AWADDR(AWADDR),
        .AWPROT(AWPROT),
        .AWREADY(AWREADY),
        .AWVALID(AWVALID),
        .BREADY(BREADY),
        .BRESP(BRESP),
        .BStrbError(BStrbError),
        .BVALID(BVALID),
        .BrespErrorLead(BrespErrorLead),
        .D({i_Axi4PC_asr_inline_n_1,i_Axi4PC_asr_inline_n_2,i_Axi4PC_asr_inline_n_3,i_Axi4PC_asr_inline_n_4,i_Axi4PC_asr_inline_n_5,i_Axi4PC_asr_inline_n_6,i_Axi4PC_asr_inline_n_7,i_Axi4PC_asr_inline_n_8,i_Axi4PC_asr_inline_n_9,i_Axi4PC_asr_inline_n_10,i_Axi4PC_asr_inline_n_11,i_Axi4PC_asr_inline_n_12,i_Axi4PC_asr_inline_n_13,i_Axi4PC_asr_inline_n_14,i_Axi4PC_asr_inline_n_15,i_Axi4PC_asr_inline_n_16,i_Axi4PC_asr_inline_n_17}),
        .RDATA(RDATA),
        .RREADY(RREADY),
        .RRESP(RRESP),
        .RVALID(RVALID),
        .SR(p_0_in__0),
        .WDATA(WDATA),
        .WREADY(WREADY),
        .WSTRB(WSTRB),
        .WVALID(WVALID),
        .pc_status({\^pc_status [66:65],\^pc_status [62],\^pc_status [59],\^pc_status [56],\^pc_status [52],\^pc_status [46],\^pc_status [35:34],\^pc_status [32],\^pc_status [27:26],\^pc_status [24],\^pc_status [22],\^pc_status [19],\^pc_status [15],\^pc_status [9]}),
        .rid_mismatch(rid_mismatch));
  LUT3 #(
    .INIT(8'h08)) 
    \pc_status_i[79]_i_2 
       (.I0(RVALID),
        .I1(RREADY),
        .I2(rid_index),
        .O(cmd_pop_0));
  FDRE \pc_status_i_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_16),
        .Q(\^pc_status [15]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[19] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_15),
        .Q(\^pc_status [19]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[22] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_14),
        .Q(\^pc_status [22]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[24] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_13),
        .Q(\^pc_status [24]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[26] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_12),
        .Q(\^pc_status [26]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[27] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_11),
        .Q(\^pc_status [27]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[32] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_10),
        .Q(\^pc_status [32]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[34] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_9),
        .Q(\^pc_status [34]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[35] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_8),
        .Q(\^pc_status [35]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[46] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_7),
        .Q(\^pc_status [46]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[52] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_6),
        .Q(\^pc_status [52]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[56] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_5),
        .Q(\^pc_status [56]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[59] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_4),
        .Q(\^pc_status [59]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[62] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_3),
        .Q(\^pc_status [62]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[65] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_2),
        .Q(\^pc_status [65]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[66] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_1),
        .Q(\^pc_status [66]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[78] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_cams.gen_rthread_loop[1].RDCAM_n_1 ),
        .Q(\^pc_status [78]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[79] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\gen_cams.gen_rthread_loop[0].RDCAM_n_1 ),
        .Q(\^pc_status [79]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[80] 
       (.C(ACLK),
        .CE(1'b1),
        .D(AWCMD_n_14),
        .Q(\^pc_status [80]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[81] 
       (.C(ACLK),
        .CE(1'b1),
        .D(WCHECK_n_7),
        .Q(\^pc_status [81]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[83] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\LITE.i_Axi4LitePC_asr_inline_n_1 ),
        .Q(\^pc_status [83]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[84] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\LITE.i_Axi4LitePC_asr_inline_n_0 ),
        .Q(\^pc_status [84]),
        .R(p_0_in__0));
  FDRE \pc_status_i_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_17),
        .Q(\^pc_status [9]),
        .R(p_0_in__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo
   (\cnt_reg[3]_0 ,
    D,
    rid_index,
    RREADY,
    RVALID,
    rcam_overflow,
    ARVALID,
    ARREADY,
    arid_index,
    pc_status,
    cmd_pop_0,
    \pc_status_i_reg[79] ,
    SR,
    ACLK);
  output \cnt_reg[3]_0 ;
  output [0:0]D;
  input [0:0]rid_index;
  input RREADY;
  input RVALID;
  input rcam_overflow;
  input ARVALID;
  input ARREADY;
  input [0:0]arid_index;
  input [0:0]pc_status;
  input cmd_pop_0;
  input \pc_status_i_reg[79] ;
  input [0:0]SR;
  input ACLK;

  wire ACLK;
  wire ARREADY;
  wire ARVALID;
  wire [0:0]D;
  wire RREADY;
  wire RVALID;
  wire [0:0]SR;
  wire [0:0]arid_index;
  wire cmd_pop_0;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire [3:0]cnt_reg;
  wire \cnt_reg[3]_0 ;
  wire p_52_in;
  wire [0:0]pc_status;
  wire \pc_status_i[79]_i_3_n_0 ;
  wire \pc_status_i_reg[79] ;
  wire rcam_overflow;
  wire [0:0]rid_index;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[1]_i_1__1 
       (.I0(cnt_reg[0]),
        .I1(\cnt[3]_i_4_n_0 ),
        .I2(cnt_reg[1]),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \cnt[2]_i_1__1 
       (.I0(\cnt[3]_i_4_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .O(\cnt[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB0BBBBBB0E000000)) 
    \cnt[3]_i_1__1 
       (.I0(\pc_status_i[79]_i_3_n_0 ),
        .I1(cnt_reg[3]),
        .I2(rid_index),
        .I3(RREADY),
        .I4(RVALID),
        .I5(p_52_in),
        .O(\cnt[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hDF20FB04)) 
    \cnt[3]_i_2__1 
       (.I0(cnt_reg[1]),
        .I1(\cnt[3]_i_4_n_0 ),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .O(\cnt[3]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cnt[3]_i_3 
       (.I0(ARVALID),
        .I1(ARREADY),
        .I2(arid_index),
        .O(p_52_in));
  LUT6 #(
    .INIT(64'h0040004000400000)) 
    \cnt[3]_i_4 
       (.I0(p_52_in),
        .I1(RVALID),
        .I2(RREADY),
        .I3(rid_index),
        .I4(cnt_reg[3]),
        .I5(\pc_status_i[79]_i_3_n_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__1_n_0 ),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE \cnt_reg[1] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__1_n_0 ),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__1_n_0 ),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__1_n_0 ),
        .D(\cnt[3]_i_2__1_n_0 ),
        .Q(cnt_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \pc_status_i[78]_i_2 
       (.I0(p_52_in),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[2]),
        .I5(rcam_overflow),
        .O(\cnt_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAAE)) 
    \pc_status_i[79]_i_1 
       (.I0(pc_status),
        .I1(cmd_pop_0),
        .I2(cnt_reg[3]),
        .I3(\pc_status_i[79]_i_3_n_0 ),
        .I4(\pc_status_i_reg[79] ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pc_status_i[79]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(\pc_status_i[79]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_10_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo_4
   (rvalid_qq_reg,
    D,
    rid_index,
    RREADY,
    RVALID,
    ARST_N,
    ARVALID,
    ARREADY,
    arid_index,
    \pc_status_i_reg[78] ,
    pc_status,
    SR,
    ACLK);
  output rvalid_qq_reg;
  output [0:0]D;
  input [0:0]rid_index;
  input RREADY;
  input RVALID;
  input ARST_N;
  input ARVALID;
  input ARREADY;
  input [0:0]arid_index;
  input \pc_status_i_reg[78] ;
  input [0:0]pc_status;
  input [0:0]SR;
  input ACLK;

  wire ACLK;
  wire ARREADY;
  wire ARST_N;
  wire ARVALID;
  wire [0:0]D;
  wire RREADY;
  wire RVALID;
  wire [0:0]SR;
  wire [0:0]arid_index;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[1]_i_1__2_n_0 ;
  wire \cnt[2]_i_1__2_n_0 ;
  wire \cnt[3]_i_1__2_n_0 ;
  wire \cnt[3]_i_2__2_n_0 ;
  wire \cnt[3]_i_3__0_n_0 ;
  wire [3:0]cnt_reg;
  wire p_45_in;
  wire [0:0]pc_status;
  wire \pc_status_i[78]_i_4_n_0 ;
  wire \pc_status_i_reg[78] ;
  wire [0:0]rid_index;
  wire rvalid_qq_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[1]_i_1__2 
       (.I0(cnt_reg[0]),
        .I1(\cnt[3]_i_3__0_n_0 ),
        .I2(cnt_reg[1]),
        .O(\cnt[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \cnt[2]_i_1__2 
       (.I0(\cnt[3]_i_3__0_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .O(\cnt[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0BBBBBBBE0000000)) 
    \cnt[3]_i_1__2 
       (.I0(\pc_status_i[78]_i_4_n_0 ),
        .I1(cnt_reg[3]),
        .I2(rid_index),
        .I3(RREADY),
        .I4(RVALID),
        .I5(p_45_in),
        .O(\cnt[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hDF20FB04)) 
    \cnt[3]_i_2__2 
       (.I0(cnt_reg[1]),
        .I1(\cnt[3]_i_3__0_n_0 ),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[2]),
        .O(\cnt[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040000000)) 
    \cnt[3]_i_3__0 
       (.I0(p_45_in),
        .I1(RVALID),
        .I2(RREADY),
        .I3(rid_index),
        .I4(cnt_reg[3]),
        .I5(\pc_status_i[78]_i_4_n_0 ),
        .O(\cnt[3]_i_3__0_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__2_n_0 ),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE \cnt_reg[1] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__2_n_0 ),
        .D(\cnt[1]_i_1__2_n_0 ),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__2_n_0 ),
        .D(\cnt[2]_i_1__2_n_0 ),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__2_n_0 ),
        .D(\cnt[3]_i_2__2_n_0 ),
        .Q(cnt_reg[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \pc_status_i[78]_i_1 
       (.I0(\pc_status_i_reg[78] ),
        .I1(p_45_in),
        .I2(cnt_reg[3]),
        .I3(\pc_status_i[78]_i_4_n_0 ),
        .I4(pc_status),
        .O(D));
  LUT3 #(
    .INIT(8'h80)) 
    \pc_status_i[78]_i_3 
       (.I0(ARVALID),
        .I1(ARREADY),
        .I2(arid_index),
        .O(p_45_in));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pc_status_i[78]_i_4 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(\pc_status_i[78]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \pc_status_i[79]_i_4 
       (.I0(RVALID),
        .I1(RREADY),
        .I2(rid_index),
        .I3(ARST_N),
        .I4(cnt_reg[3]),
        .I5(\pc_status_i[78]_i_4_n_0 ),
        .O(rvalid_qq_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_10_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo__parameterized0
   (DOC,
    Q,
    E,
    bvalid_qq_reg,
    bvalid_qq_reg_0,
    D,
    \AWXferCount_reg[1][2] ,
    \cnt_reg[2]_0 ,
    AWXferCountOverflow_reg,
    aclk,
    aclk_0,
    aclk_1,
    ACLK,
    awid_index,
    p_38_in,
    AWREADY,
    AWVALID,
    bid_index,
    BVALID,
    BREADY,
    \AWXferCount_reg[0][3] ,
    \AWXferCount_reg[0][3]_0 ,
    \AWXferCount_reg[1][1] ,
    \AWXferCount_reg[1][2]_0 ,
    \AWXferCount_reg[1][3] ,
    WCheckEmpty,
    ARST_N,
    AWXferCountOverflow,
    wcam_overflow,
    pc_status,
    SR,
    AWADDR);
  output [0:0]DOC;
  output [0:0]Q;
  output [0:0]E;
  output [0:0]bvalid_qq_reg;
  output bvalid_qq_reg_0;
  output [3:0]D;
  output [3:0]\AWXferCount_reg[1][2] ;
  output \cnt_reg[2]_0 ;
  output [0:0]AWXferCountOverflow_reg;
  output [3:0]aclk;
  output [6:0]aclk_0;
  output [1:0]aclk_1;
  input ACLK;
  input [0:0]awid_index;
  input p_38_in;
  input AWREADY;
  input AWVALID;
  input [0:0]bid_index;
  input BVALID;
  input BREADY;
  input [3:0]\AWXferCount_reg[0][3] ;
  input [3:0]\AWXferCount_reg[0][3]_0 ;
  input \AWXferCount_reg[1][1] ;
  input \AWXferCount_reg[1][2]_0 ;
  input \AWXferCount_reg[1][3] ;
  input WCheckEmpty;
  input ARST_N;
  input AWXferCountOverflow;
  input wcam_overflow;
  input [0:0]pc_status;
  input [0:0]SR;
  input [6:0]AWADDR;

  wire ACLK;
  wire ARST_N;
  wire [6:0]AWADDR;
  wire AWEmpty;
  wire AWPush;
  wire AWREADY;
  wire [2:0]AWStrbsizeOut;
  wire AWVALID;
  wire AWXferCountOverflow;
  wire AWXferCountOverflow_i_2_n_0;
  wire AWXferCountOverflow_i_3_n_0;
  wire [0:0]AWXferCountOverflow_reg;
  wire \AWXferCount[0][3]_i_3_n_0 ;
  wire \AWXferCount[1][1]_i_2_n_0 ;
  wire \AWXferCount[1][2]_i_2_n_0 ;
  wire \AWXferCount[1][3]_i_3_n_0 ;
  wire \AWXferCount[1][3]_i_4_n_0 ;
  wire \AWXferCount[1][3]_i_6_n_0 ;
  wire [3:0]\AWXferCount_reg[0][3] ;
  wire [3:0]\AWXferCount_reg[0][3]_0 ;
  wire \AWXferCount_reg[1][1] ;
  wire [3:0]\AWXferCount_reg[1][2] ;
  wire \AWXferCount_reg[1][2]_0 ;
  wire \AWXferCount_reg[1][3] ;
  wire BREADY;
  wire BVALID;
  wire [3:0]D;
  wire [0:0]DOC;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire WCheckEmpty;
  wire [3:0]aclk;
  wire [6:0]aclk_0;
  wire [1:0]aclk_1;
  wire [0:0]awid_index;
  wire [0:0]bid_index;
  wire [0:0]bvalid_qq_reg;
  wire bvalid_qq_reg_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire [2:0]cnt_reg;
  wire \cnt_reg[2]_0 ;
  wire data_ram_reg_0_7_0_13_n_0;
  wire data_ram_reg_0_7_0_13_n_1;
  wire data_ram_reg_0_7_0_13_n_2;
  wire data_ram_reg_0_7_0_13_n_3;
  wire data_ram_reg_0_7_0_13_n_4;
  wire data_ram_reg_0_7_0_13_n_5;
  wire data_ram_reg_0_7_0_13_n_7;
  wire p_38_in;
  wire [0:0]pc_status;
  wire \pc_status_i[80]_i_2_n_0 ;
  wire [2:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_2_n_0 ;
  wire wcam_overflow;
  wire [2:0]wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire \wr_ptr[1]_i_1_n_0 ;
  wire \wr_ptr[2]_i_2_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_7_0_13_DOF_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_0_13_DOG_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_14_18_DOA_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_14_18_DOB_UNCONNECTED;
  wire [1:1]NLW_data_ram_reg_0_7_14_18_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_14_18_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2AAAAA2A00000000)) 
    AWXferCountOverflow_i_1
       (.I0(AWXferCountOverflow_i_2_n_0),
        .I1(BVALID),
        .I2(BREADY),
        .I3(bid_index),
        .I4(DOC),
        .I5(p_38_in),
        .O(bvalid_qq_reg_0));
  LUT6 #(
    .INIT(64'h0400044400000000)) 
    AWXferCountOverflow_i_2
       (.I0(\AWXferCount[1][1]_i_2_n_0 ),
        .I1(AWXferCountOverflow_i_3_n_0),
        .I2(\AWXferCount_reg[0][3]_0 [2]),
        .I3(DOC),
        .I4(\AWXferCount_reg[0][3] [2]),
        .I5(ARST_N),
        .O(AWXferCountOverflow_i_2_n_0));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    AWXferCountOverflow_i_3
       (.I0(\AWXferCount_reg[0][3] [3]),
        .I1(\AWXferCount_reg[0][3]_0 [3]),
        .I2(\AWXferCount_reg[0][3] [1]),
        .I3(DOC),
        .I4(\AWXferCount_reg[0][3]_0 [1]),
        .O(AWXferCountOverflow_i_3_n_0));
  LUT5 #(
    .INIT(32'h0407BF8F)) 
    \AWXferCount[0][0]_i_1 
       (.I0(DOC),
        .I1(\AWXferCount[0][3]_i_3_n_0 ),
        .I2(\AWXferCount_reg[0][3] [0]),
        .I3(bid_index),
        .I4(\AWXferCount_reg[0][3]_0 [0]),
        .O(\AWXferCount_reg[1][2] [0]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \AWXferCount[0][1]_i_1 
       (.I0(\AWXferCount[1][1]_i_2_n_0 ),
        .I1(\AWXferCount_reg[0][3] [1]),
        .I2(DOC),
        .I3(\AWXferCount_reg[0][3]_0 [1]),
        .I4(\AWXferCount[0][3]_i_3_n_0 ),
        .I5(\AWXferCount_reg[1][1] ),
        .O(\AWXferCount_reg[1][2] [1]));
  LUT6 #(
    .INIT(64'hB8B8B88B8B8BB88B)) 
    \AWXferCount[0][2]_i_1 
       (.I0(\AWXferCount[1][2]_i_2_n_0 ),
        .I1(\AWXferCount[0][3]_i_3_n_0 ),
        .I2(\AWXferCount_reg[1][2]_0 ),
        .I3(\AWXferCount_reg[0][3] [2]),
        .I4(bid_index),
        .I5(\AWXferCount_reg[0][3]_0 [2]),
        .O(\AWXferCount_reg[1][2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F870088)) 
    \AWXferCount[0][3]_i_1 
       (.I0(BVALID),
        .I1(BREADY),
        .I2(DOC),
        .I3(bid_index),
        .I4(p_38_in),
        .O(bvalid_qq_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AWXferCount[0][3]_i_2 
       (.I0(\AWXferCount[1][3]_i_3_n_0 ),
        .I1(\AWXferCount[0][3]_i_3_n_0 ),
        .I2(\AWXferCount_reg[1][3] ),
        .O(\AWXferCount_reg[1][2] [3]));
  LUT6 #(
    .INIT(64'hF0F1FFFFFFFFFFFF)) 
    \AWXferCount[0][3]_i_3 
       (.I0(AWEmpty),
        .I1(WCheckEmpty),
        .I2(bid_index),
        .I3(DOC),
        .I4(BREADY),
        .I5(BVALID),
        .O(\AWXferCount[0][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0407BF8F)) 
    \AWXferCount[1][0]_i_1 
       (.I0(DOC),
        .I1(\AWXferCount[1][3]_i_4_n_0 ),
        .I2(\AWXferCount_reg[0][3] [0]),
        .I3(bid_index),
        .I4(\AWXferCount_reg[0][3]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \AWXferCount[1][1]_i_1 
       (.I0(\AWXferCount[1][1]_i_2_n_0 ),
        .I1(\AWXferCount_reg[0][3] [1]),
        .I2(DOC),
        .I3(\AWXferCount_reg[0][3]_0 [1]),
        .I4(\AWXferCount[1][3]_i_4_n_0 ),
        .I5(\AWXferCount_reg[1][1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AWXferCount[1][1]_i_2 
       (.I0(\AWXferCount_reg[0][3]_0 [0]),
        .I1(DOC),
        .I2(\AWXferCount_reg[0][3] [0]),
        .O(\AWXferCount[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88B8B8BB88B)) 
    \AWXferCount[1][2]_i_1 
       (.I0(\AWXferCount[1][2]_i_2_n_0 ),
        .I1(\AWXferCount[1][3]_i_4_n_0 ),
        .I2(\AWXferCount_reg[1][2]_0 ),
        .I3(\AWXferCount_reg[0][3] [2]),
        .I4(bid_index),
        .I5(\AWXferCount_reg[0][3]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \AWXferCount[1][2]_i_2 
       (.I0(\AWXferCount[1][1]_i_2_n_0 ),
        .I1(\AWXferCount_reg[0][3]_0 [1]),
        .I2(\AWXferCount_reg[0][3] [1]),
        .I3(\AWXferCount_reg[0][3] [2]),
        .I4(DOC),
        .I5(\AWXferCount_reg[0][3]_0 [2]),
        .O(\AWXferCount[1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F808080)) 
    \AWXferCount[1][3]_i_1 
       (.I0(bid_index),
        .I1(BVALID),
        .I2(BREADY),
        .I3(DOC),
        .I4(p_38_in),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AWXferCount[1][3]_i_2 
       (.I0(\AWXferCount[1][3]_i_3_n_0 ),
        .I1(\AWXferCount[1][3]_i_4_n_0 ),
        .I2(\AWXferCount_reg[1][3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \AWXferCount[1][3]_i_3 
       (.I0(\AWXferCount[1][3]_i_6_n_0 ),
        .I1(\AWXferCount_reg[0][3]_0 [2]),
        .I2(\AWXferCount_reg[0][3] [2]),
        .I3(\AWXferCount_reg[0][3] [3]),
        .I4(DOC),
        .I5(\AWXferCount_reg[0][3]_0 [3]),
        .O(\AWXferCount[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10FFFFFFFFFFFFFF)) 
    \AWXferCount[1][3]_i_4 
       (.I0(AWEmpty),
        .I1(WCheckEmpty),
        .I2(DOC),
        .I3(BREADY),
        .I4(BVALID),
        .I5(bid_index),
        .O(\AWXferCount[1][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \AWXferCount[1][3]_i_6 
       (.I0(\AWXferCount_reg[0][3] [1]),
        .I1(\AWXferCount_reg[0][3]_0 [1]),
        .I2(\AWXferCount_reg[0][3] [0]),
        .I3(DOC),
        .I4(\AWXferCount_reg[0][3]_0 [0]),
        .O(\AWXferCount[1][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \AWXferCount[1][3]_i_7 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(Q),
        .O(AWEmpty));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFAA55FF0055A8)) 
    \cnt[1]_i_1 
       (.I0(p_38_in),
        .I1(Q),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(AWPush),
        .I5(cnt_reg[1]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h50FFFFAFAF000040)) 
    \cnt[2]_i_1 
       (.I0(AWPush),
        .I1(Q),
        .I2(p_38_in),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[2]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555551AAAAAAA8)) 
    \cnt[3]_i_1 
       (.I0(p_38_in),
        .I1(Q),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(AWPush),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h75FF8A00FFEF0000)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg[1]),
        .I1(AWPush),
        .I2(p_38_in),
        .I3(cnt_reg[0]),
        .I4(Q),
        .I5(cnt_reg[2]),
        .O(\cnt[3]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE \cnt_reg[1] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1_n_0 ),
        .D(\cnt[3]_i_2_n_0 ),
        .Q(Q),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "152" *) 
  (* RTL_RAM_NAME = "AWCMD/data_ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 data_ram_reg_0_7_0_13
       (.ADDRA({1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,wr_ptr}),
        .DIA(AWADDR[1:0]),
        .DIB(AWADDR[3:2]),
        .DIC(AWADDR[5:4]),
        .DID({1'b0,AWADDR[6]}),
        .DIE({1'b0,1'b1}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({data_ram_reg_0_7_0_13_n_0,data_ram_reg_0_7_0_13_n_1}),
        .DOB({data_ram_reg_0_7_0_13_n_2,data_ram_reg_0_7_0_13_n_3}),
        .DOC({data_ram_reg_0_7_0_13_n_4,data_ram_reg_0_7_0_13_n_5}),
        .DOD({AWStrbsizeOut[0],data_ram_reg_0_7_0_13_n_7}),
        .DOE(AWStrbsizeOut[2:1]),
        .DOF(NLW_data_ram_reg_0_7_0_13_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_data_ram_reg_0_7_0_13_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_data_ram_reg_0_7_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(ACLK),
        .WE(AWPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "152" *) 
  (* RTL_RAM_NAME = "AWCMD/data_ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "18" *) 
  RAM32M data_ram_reg_0_7_14_18
       (.ADDRA({1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,wr_ptr}),
        .DIA({1'b0,1'b0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,awid_index}),
        .DID({1'b0,1'b0}),
        .DOA(NLW_data_ram_reg_0_7_14_18_DOA_UNCONNECTED[1:0]),
        .DOB(NLW_data_ram_reg_0_7_14_18_DOB_UNCONNECTED[1:0]),
        .DOC({NLW_data_ram_reg_0_7_14_18_DOC_UNCONNECTED[1],DOC}),
        .DOD(NLW_data_ram_reg_0_7_14_18_DOD_UNCONNECTED[1:0]),
        .WCLK(ACLK),
        .WE(AWPush));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_wstrb.StrbMask_q1[0]_i_1 
       (.I0(AWStrbsizeOut[2]),
        .O(aclk[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_wstrb.StrbMask_q1[1]_i_1 
       (.I0(AWStrbsizeOut[0]),
        .I1(AWStrbsizeOut[1]),
        .I2(AWStrbsizeOut[2]),
        .O(aclk[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \gen_wstrb.StrbMask_q1[2]_i_1 
       (.I0(AWStrbsizeOut[2]),
        .I1(AWStrbsizeOut[1]),
        .O(aclk[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wstrb.StrbMask_q1[3]_i_1 
       (.I0(AWStrbsizeOut[1]),
        .I1(AWStrbsizeOut[2]),
        .O(aclk[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \gen_wstrb.mask_shift_stage_1[0]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_1),
        .I1(AWStrbsizeOut[1]),
        .I2(AWStrbsizeOut[0]),
        .I3(AWStrbsizeOut[2]),
        .O(aclk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gen_wstrb.mask_shift_stage_1[1]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_0),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(aclk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \gen_wstrb.mask_shift_stage_1[2]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_3),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(aclk_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wstrb.mask_shift_stage_1[3]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_2),
        .I1(AWStrbsizeOut[2]),
        .O(aclk_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \gen_wstrb.mask_shift_stage_1[4]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_5),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[0]),
        .I3(AWStrbsizeOut[1]),
        .O(aclk_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_wstrb.mask_shift_stage_1[5]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_4),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(aclk_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_wstrb.mask_shift_stage_1[6]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_7),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(aclk_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_wstrb.mask_shift_stage_2[0]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_1),
        .I1(AWStrbsizeOut[0]),
        .I2(AWStrbsizeOut[2]),
        .I3(AWStrbsizeOut[1]),
        .O(aclk_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_wstrb.mask_shift_stage_2[1]_i_1 
       (.I0(data_ram_reg_0_7_0_13_n_0),
        .I1(AWStrbsizeOut[1]),
        .I2(AWStrbsizeOut[2]),
        .O(aclk_1[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pc_status_i[80]_i_1 
       (.I0(AWXferCountOverflow),
        .I1(wcam_overflow),
        .I2(\pc_status_i[80]_i_2_n_0 ),
        .I3(pc_status),
        .O(AWXferCountOverflow_reg));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \pc_status_i[80]_i_2 
       (.I0(Q),
        .I1(AWREADY),
        .I2(AWVALID),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[2]),
        .O(\pc_status_i[80]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rd_ptr[2]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(\cnt_reg[2]_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(SR));
  FDRE \rd_ptr_reg[1] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(SR));
  FDRE \rd_ptr_reg[2] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[2]_i_2_n_0 ),
        .Q(rd_ptr[2]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\wr_ptr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_ptr[2]_i_1 
       (.I0(AWREADY),
        .I1(AWVALID),
        .O(AWPush));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_2 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .I2(wr_ptr[2]),
        .O(\wr_ptr[2]_i_2_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(ACLK),
        .CE(AWPush),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr[0]),
        .R(SR));
  FDRE \wr_ptr_reg[1] 
       (.C(ACLK),
        .CE(AWPush),
        .D(\wr_ptr[1]_i_1_n_0 ),
        .Q(wr_ptr[1]),
        .R(SR));
  FDRE \wr_ptr_reg[2] 
       (.C(ACLK),
        .CE(AWPush),
        .D(\wr_ptr[2]_i_2_n_0 ),
        .Q(wr_ptr[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_10_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_syn_fifo__parameterized1
   (DOA,
    DOB,
    bid_mismatch_q_reg,
    p_38_in,
    WCheckEmpty,
    D,
    ACLK,
    BrespErrorLead_reg,
    bid_mismatch,
    bid_index,
    DOC,
    BrespErrorLead_reg_0,
    Q,
    \rd_ptr_reg[2]_0 ,
    WVALID,
    WREADY,
    WSTRB,
    first_strb,
    data_ram_reg_0_7_0_12_0,
    pc_status,
    SR);
  output [1:0]DOA;
  output [1:0]DOB;
  output bid_mismatch_q_reg;
  output p_38_in;
  output WCheckEmpty;
  output [0:0]D;
  input ACLK;
  input BrespErrorLead_reg;
  input bid_mismatch;
  input [0:0]bid_index;
  input [0:0]DOC;
  input BrespErrorLead_reg_0;
  input [0:0]Q;
  input \rd_ptr_reg[2]_0 ;
  input WVALID;
  input WREADY;
  input [3:0]WSTRB;
  input first_strb;
  input [3:0]data_ram_reg_0_7_0_12_0;
  input [0:0]pc_status;
  input [0:0]SR;

  wire ACLK;
  wire BrespErrorLead_reg;
  wire BrespErrorLead_reg_0;
  wire [0:0]D;
  wire [1:0]DOA;
  wire [1:0]DOB;
  wire [0:0]DOC;
  wire [0:0]Q;
  wire [0:0]SR;
  wire WCheckEmpty;
  wire WREADY;
  wire [3:0]WSTRB;
  wire WVALID;
  wire [0:0]bid_index;
  wire bid_mismatch;
  wire bid_mismatch_q_reg;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire [3:0]cnt_reg;
  wire [3:0]data_ram_reg_0_7_0_12_0;
  wire first_strb;
  wire [3:0]p_0_out;
  wire p_36_in;
  wire p_38_in;
  wire [0:0]pc_status;
  wire \pc_status_i[81]_i_2_n_0 ;
  wire [2:0]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_1__0_n_0 ;
  wire \rd_ptr_reg[2]_0 ;
  wire [2:0]wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire \wr_ptr[1]_i_1_n_0 ;
  wire \wr_ptr[2]_i_2_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_7_0_12_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_7_0_12_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \AWXferCount[1][3]_i_8 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(WCheckEmpty));
  LUT6 #(
    .INIT(64'hCEEEEECE00000000)) 
    BrespErrorLead_i_1
       (.I0(BrespErrorLead_reg),
        .I1(bid_mismatch),
        .I2(p_38_in),
        .I3(bid_index),
        .I4(DOC),
        .I5(BrespErrorLead_reg_0),
        .O(bid_mismatch_q_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FFAA55FF0055A8)) 
    \cnt[1]_i_1__0 
       (.I0(p_38_in),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(p_36_in),
        .I5(cnt_reg[1]),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h50FFFFAFAF000040)) 
    \cnt[2]_i_1__0 
       (.I0(p_36_in),
        .I1(cnt_reg[3]),
        .I2(p_38_in),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[2]),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555551AAAAAAA8)) 
    \cnt[3]_i_1__0 
       (.I0(p_38_in),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(p_36_in),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h75FF8A00FFEF0000)) 
    \cnt[3]_i_2__0 
       (.I0(cnt_reg[1]),
        .I1(p_36_in),
        .I2(p_38_in),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[2]),
        .O(\cnt[3]_i_2__0_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__0_n_0 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt_reg[0]),
        .R(SR));
  FDRE \cnt_reg[1] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__0_n_0 ),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt_reg[1]),
        .R(SR));
  FDRE \cnt_reg[2] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__0_n_0 ),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt_reg[2]),
        .R(SR));
  FDRE \cnt_reg[3] 
       (.C(ACLK),
        .CE(\cnt[3]_i_1__0_n_0 ),
        .D(\cnt[3]_i_2__0_n_0 ),
        .Q(cnt_reg[3]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "WCHECK/data_ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "12" *) 
  RAM32M data_ram_reg_0_7_0_12
       (.ADDRA({1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,wr_ptr}),
        .DIA(p_0_out[1:0]),
        .DIB(p_0_out[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(DOA),
        .DOB(DOB),
        .DOC(NLW_data_ram_reg_0_7_0_12_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_7_0_12_DOD_UNCONNECTED[1:0]),
        .WCLK(ACLK),
        .WE(p_36_in));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_7_0_12_i_1
       (.I0(WSTRB[1]),
        .I1(first_strb),
        .I2(data_ram_reg_0_7_0_12_0[1]),
        .O(p_0_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_7_0_12_i_2
       (.I0(WSTRB[0]),
        .I1(first_strb),
        .I2(data_ram_reg_0_7_0_12_0[0]),
        .O(p_0_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_7_0_12_i_3
       (.I0(WSTRB[3]),
        .I1(first_strb),
        .I2(data_ram_reg_0_7_0_12_0[3]),
        .O(p_0_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_7_0_12_i_4
       (.I0(WSTRB[2]),
        .I1(first_strb),
        .I2(data_ram_reg_0_7_0_12_0[2]),
        .O(p_0_out[2]));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \pc_status_i[81]_i_1 
       (.I0(\pc_status_i[81]_i_2_n_0 ),
        .I1(cnt_reg[3]),
        .I2(WREADY),
        .I3(WVALID),
        .I4(pc_status),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pc_status_i[81]_i_2 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(\pc_status_i[81]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \rd_ptr[2]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(Q),
        .I5(\rd_ptr_reg[2]_0 ),
        .O(p_38_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_1__0 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[2]),
        .O(\rd_ptr[2]_i_1__0_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr[0]),
        .R(SR));
  FDRE \rd_ptr_reg[1] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(rd_ptr[1]),
        .R(SR));
  FDRE \rd_ptr_reg[2] 
       (.C(ACLK),
        .CE(p_38_in),
        .D(\rd_ptr[2]_i_1__0_n_0 ),
        .Q(rd_ptr[2]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\wr_ptr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_ptr[2]_i_1__0 
       (.I0(WVALID),
        .I1(WREADY),
        .O(p_36_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_2 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .I2(wr_ptr[2]),
        .O(\wr_ptr[2]_i_2_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(ACLK),
        .CE(p_36_in),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr[0]),
        .R(SR));
  FDRE \wr_ptr_reg[1] 
       (.C(ACLK),
        .CE(p_36_in),
        .D(\wr_ptr[1]_i_1_n_0 ),
        .Q(wr_ptr[1]),
        .R(SR));
  FDRE \wr_ptr_reg[2] 
       (.C(ACLK),
        .CE(p_36_in),
        .D(\wr_ptr[2]_i_2_n_0 ),
        .Q(wr_ptr[2]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_threadcam
   (dout,
    \gen_cam.thread_valid_reg[1]_0 ,
    SS,
    SR,
    rid_mismatch,
    \gen_cam.cam_overflow_i ,
    aclk,
    resetn_q,
    arready_q,
    rready_q,
    rvalid_q,
    arvalid_q);
  output [0:0]dout;
  output [0:0]\gen_cam.thread_valid_reg[1]_0 ;
  output [0:0]SS;
  output [0:0]SR;
  output rid_mismatch;
  output \gen_cam.cam_overflow_i ;
  input aclk;
  input resetn_q;
  input arready_q;
  input rready_q;
  input rvalid_q;
  input arvalid_q;

  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire arready_q;
  wire arvalid_q;
  wire [0:0]dout;
  wire \gen_cam.active_cnt[0][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][1]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][2]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_3_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_4_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_5_n_0 ;
  wire \gen_cam.active_cnt[1][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][1]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][2]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][3]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][3]_i_3_n_0 ;
  wire \gen_cam.active_cnt_reg_n_0_[0][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][2] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][3] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][2] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][3] ;
  wire \gen_cam.aid_encode_i_2_n_0 ;
  wire [1:1]\gen_cam.aid_index_hot ;
  wire \gen_cam.aid_match_d_reg_n_0_[0] ;
  wire \gen_cam.allocate_available ;
  wire \gen_cam.allocate_cntr ;
  wire \gen_cam.allocate_cntr_reg_n_0_[0] ;
  wire [1:0]\gen_cam.allocate_next ;
  wire \gen_cam.any_push__1 ;
  wire \gen_cam.cam_overflow_i ;
  wire \gen_cam.cam_overflow_i_i_1_n_0 ;
  wire \gen_cam.cam_overflow_i_i_2_n_0 ;
  wire [1:0]\gen_cam.expire_thread ;
  wire \gen_cam.expire_thread[0]_i_3_n_0 ;
  wire \gen_cam.expire_thread_reg0 ;
  wire \gen_cam.expire_thread_reg043_out ;
  wire \gen_cam.free_push ;
  wire \gen_cam.free_ready ;
  wire [1:0]\gen_cam.free_thread ;
  wire \gen_cam.init_push ;
  wire \gen_cam.init_push_i_1_n_0 ;
  wire \gen_cam.match_thread ;
  wire \gen_cam.max_count_i_1_n_0 ;
  wire \gen_cam.max_count_i_4_n_0 ;
  wire \gen_cam.max_count_reg_n_0 ;
  wire \gen_cam.next ;
  wire [1:0]\gen_cam.next__0 ;
  wire \gen_cam.push_new_thread ;
  wire \gen_cam.push_saved_thread ;
  wire \gen_cam.push_si_thread1__0 ;
  wire [1:0]\gen_cam.state__0 ;
  wire \gen_cam.thread_init_0 ;
  wire \gen_cam.thread_init_1 ;
  wire \gen_cam.thread_last0 ;
  wire \gen_cam.thread_last056_out ;
  wire \gen_cam.thread_last10_in ;
  wire \gen_cam.thread_last152_out__0 ;
  wire \gen_cam.thread_last162_out__0 ;
  wire \gen_cam.thread_last6_in ;
  wire \gen_cam.thread_last[0]_i_1_n_0 ;
  wire \gen_cam.thread_last[0]_i_2_n_0 ;
  wire \gen_cam.thread_last[0]_i_3_n_0 ;
  wire \gen_cam.thread_last[1]_i_1_n_0 ;
  wire \gen_cam.thread_last[1]_i_2_n_0 ;
  wire \gen_cam.thread_last[1]_i_3_n_0 ;
  wire \gen_cam.thread_last_reg_n_0_[0] ;
  wire \gen_cam.thread_push_0__2 ;
  wire \gen_cam.thread_push_1__2 ;
  wire \gen_cam.thread_valid[0]_i_1_n_0 ;
  wire \gen_cam.thread_valid[1]_i_1_n_0 ;
  wire [0:0]\gen_cam.thread_valid_reg[1]_0 ;
  wire \gen_cam.thread_valid_reg_n_0_[0] ;
  wire \gen_cam.trans_count0__1 ;
  wire \gen_cam.trans_count130_out ;
  wire \gen_cam.trans_count[0]_i_1_n_0 ;
  wire \gen_cam.trans_count[1]_i_1_n_0 ;
  wire \gen_cam.trans_count[2]_i_1_n_0 ;
  wire \gen_cam.trans_count[3]_i_1_n_0 ;
  wire \gen_cam.trans_count[3]_i_2_n_0 ;
  wire \gen_cam.trans_count[3]_i_5_n_0 ;
  wire [3:0]\gen_cam.trans_count_reg ;
  wire \gen_threadcam.w_threadcam/gen_cam.areset_d ;
  wire p_0_in31_in;
  wire p_0_in64_in;
  wire p_1_in;
  wire p_1_in35_in;
  wire p_1_in_0;
  wire p_58_in;
  wire resetn_q;
  wire rid_mismatch;
  wire rready_q;
  wire rvalid_q;
  wire \NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFF70007)) 
    \FSM_sequential_gen_cam.state[0]_i_1 
       (.I0(arready_q),
        .I1(\gen_cam.allocate_available ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.next__0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_gen_cam.state[1]_i_1 
       (.I0(resetn_q),
        .O(SR));
  LUT4 #(
    .INIT(16'h88B8)) 
    \FSM_sequential_gen_cam.state[1]_i_2__0 
       (.I0(arready_q),
        .I1(\gen_cam.state__0 [1]),
        .I2(arvalid_q),
        .I3(\gen_cam.state__0 [0]),
        .O(\gen_cam.next ));
  LUT6 #(
    .INIT(64'h0000000000045554)) 
    \FSM_sequential_gen_cam.state[1]_i_3 
       (.I0(arready_q),
        .I1(\gen_cam.allocate_available ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.next__0 [1]));
  (* FSM_ENCODED_STATES = "PENDING:10,OVERFLOW:01,ALLOCATE:11,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_cam.state_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.next ),
        .D(\gen_cam.next__0 [0]),
        .Q(\gen_cam.state__0 [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "PENDING:10,OVERFLOW:01,ALLOCATE:11,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_cam.state_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.next ),
        .D(\gen_cam.next__0 [1]),
        .Q(\gen_cam.state__0 [1]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000020)) 
    \__15/i_ 
       (.I0(\gen_cam.init_push ),
        .I1(p_1_in_0),
        .I2(\gen_cam.free_ready ),
        .I3(\gen_cam.expire_thread [1]),
        .I4(\gen_cam.expire_thread [0]),
        .O(\gen_cam.allocate_cntr ));
  LUT4 #(
    .INIT(16'hD5EA)) 
    \gen_cam.active_cnt[0][0]_i_1 
       (.I0(\gen_cam.thread_last10_in ),
        .I1(\gen_cam.push_new_thread ),
        .I2(\gen_cam.allocate_next [0]),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.active_cnt[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.active_cnt[0][1]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.active_cnt[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.active_cnt[0][2]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.active_cnt[0][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_cam.active_cnt[0][3]_i_1 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.allocate_next [0]),
        .I2(resetn_q),
        .O(\gen_cam.active_cnt[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F707070FF808080)) 
    \gen_cam.active_cnt[0][3]_i_2 
       (.I0(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I1(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I2(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.push_saved_thread ),
        .I5(p_58_in),
        .O(\gen_cam.thread_last10_in ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.active_cnt[0][3]_i_3 
       (.I0(\gen_cam.thread_last162_out__0 ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I4(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .O(\gen_cam.active_cnt[0][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00A80000)) 
    \gen_cam.active_cnt[0][3]_i_4 
       (.I0(arvalid_q),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.max_count_reg_n_0 ),
        .I4(arready_q),
        .O(\gen_cam.active_cnt[0][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.active_cnt[0][3]_i_5 
       (.I0(\gen_cam.state__0 [1]),
        .I1(\gen_cam.state__0 [0]),
        .O(\gen_cam.active_cnt[0][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_cam.active_cnt[0][3]_i_6 
       (.I0(\gen_cam.state__0 [0]),
        .I1(arready_q),
        .I2(\gen_cam.state__0 [1]),
        .O(\gen_cam.push_saved_thread ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_cam.active_cnt[0][3]_i_7 
       (.I0(rvalid_q),
        .I1(rready_q),
        .O(p_58_in));
  LUT6 #(
    .INIT(64'h00008888F8888888)) 
    \gen_cam.active_cnt[0][3]_i_8 
       (.I0(\gen_cam.push_saved_thread ),
        .I1(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I2(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I3(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I5(p_58_in),
        .O(\gen_cam.thread_last162_out__0 ));
  LUT4 #(
    .INIT(16'hD5EA)) 
    \gen_cam.active_cnt[1][0]_i_1 
       (.I0(\gen_cam.thread_last6_in ),
        .I1(\gen_cam.push_new_thread ),
        .I2(\gen_cam.allocate_next [1]),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.active_cnt[1][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.active_cnt[1][1]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.active_cnt[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.active_cnt[1][2]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.active_cnt[1][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_cam.active_cnt[1][3]_i_1 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.allocate_next [1]),
        .I2(resetn_q),
        .O(\gen_cam.active_cnt[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F707070FF808080)) 
    \gen_cam.active_cnt[1][3]_i_2 
       (.I0(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I1(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.push_saved_thread ),
        .I4(p_0_in31_in),
        .I5(p_58_in),
        .O(\gen_cam.thread_last6_in ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.active_cnt[1][3]_i_3 
       (.I0(\gen_cam.thread_last152_out__0 ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I4(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .O(\gen_cam.active_cnt[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008888F8888888)) 
    \gen_cam.active_cnt[1][3]_i_4 
       (.I0(p_0_in31_in),
        .I1(\gen_cam.push_saved_thread ),
        .I2(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I3(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I4(p_0_in64_in),
        .I5(p_58_in),
        .O(\gen_cam.thread_last152_out__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][1] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][1]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .R(\gen_cam.active_cnt[0][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][2] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][2]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .R(\gen_cam.active_cnt[0][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][3] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][3]_i_3_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .R(\gen_cam.active_cnt[0][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][1] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][1]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .R(\gen_cam.active_cnt[1][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][2] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][2]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .R(\gen_cam.active_cnt[1][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][3] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][3]_i_3_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .R(\gen_cam.active_cnt[1][3]_i_1_n_0 ));
  (* C_BIN_WIDTH = "1" *) 
  (* C_OH_WIDTH = "2" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LP_DOUT_DEF = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_onehot_to_binary__3 \gen_cam.aid_encode 
       (.din({\gen_cam.aid_index_hot ,1'b0}),
        .dout(dout));
  LUT6 #(
    .INIT(64'hBBEF88EFBB208820)) 
    \gen_cam.aid_encode_i_1 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state__0 [0]),
        .I2(\gen_cam.aid_encode_i_2_n_0 ),
        .I3(\gen_cam.state__0 [1]),
        .I4(p_0_in31_in),
        .I5(p_0_in64_in),
        .O(\gen_cam.aid_index_hot ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \gen_cam.aid_encode_i_2 
       (.I0(\gen_cam.allocate_available ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(arvalid_q),
        .O(\gen_cam.aid_encode_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000A8)) 
    \gen_cam.aid_match_d[1]_i_1 
       (.I0(arvalid_q),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.state__0 [0]),
        .I4(\gen_cam.state__0 [1]),
        .O(\gen_cam.match_thread ));
  FDRE \gen_cam.aid_match_d_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.thread_valid_reg_n_0_[0] ),
        .Q(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.aid_match_d_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(p_0_in64_in),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.allocate_cntr_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(1'b0),
        .Q(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.allocate_cntr_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .Q(p_1_in_0),
        .R(SS));
  (* C_FIFO_SIZE = "2" *) 
  (* C_FIFO_WIDTH = "2" *) 
  (* C_REG_CONFIG = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_axic_reg_srl_fifo__1 \gen_cam.allocate_queue 
       (.aclk(aclk),
        .aclken(1'b1),
        .areset(SS),
        .m_mesg(\gen_cam.allocate_next ),
        .m_ready(\gen_cam.push_new_thread ),
        .m_valid(\gen_cam.allocate_available ),
        .s_afull(\NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ),
        .s_mesg(\gen_cam.free_thread ),
        .s_ready(\gen_cam.free_ready ),
        .s_valid(\gen_cam.free_push ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.allocate_queue_i_1 
       (.I0(resetn_q),
        .I1(\gen_threadcam.w_threadcam/gen_cam.areset_d ),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_cam.allocate_queue_i_2 
       (.I0(\gen_cam.expire_thread [0]),
        .I1(\gen_cam.expire_thread [1]),
        .I2(p_1_in_0),
        .O(\gen_cam.free_thread [1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_cam.allocate_queue_i_3 
       (.I0(\gen_cam.expire_thread [0]),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .O(\gen_cam.free_thread [0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_cam.allocate_queue_i_4__0 
       (.I0(\gen_cam.init_push ),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.expire_thread [0]),
        .O(\gen_cam.free_push ));
  LUT6 #(
    .INIT(64'h8888888800400000)) 
    \gen_cam.allocate_queue_i_5 
       (.I0(\gen_cam.state__0 [0]),
        .I1(arready_q),
        .I2(\gen_cam.allocate_available ),
        .I3(\gen_cam.push_si_thread1__0 ),
        .I4(arvalid_q),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.push_new_thread ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_cam.allocate_queue_i_6 
       (.I0(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I1(p_0_in64_in),
        .O(\gen_cam.push_si_thread1__0 ));
  FDRE \gen_cam.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(\gen_threadcam.w_threadcam/gen_cam.areset_d ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \gen_cam.cam_overflow_i_i_1 
       (.I0(\gen_cam.cam_overflow_i_i_2_n_0 ),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.cam_overflow_i ),
        .O(\gen_cam.cam_overflow_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515155515151511)) 
    \gen_cam.cam_overflow_i_i_2 
       (.I0(\gen_cam.state__0 [0]),
        .I1(arvalid_q),
        .I2(\gen_cam.max_count_reg_n_0 ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(p_0_in64_in),
        .I5(\gen_cam.allocate_available ),
        .O(\gen_cam.cam_overflow_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.cam_overflow_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i_i_1_n_0 ),
        .Q(\gen_cam.cam_overflow_i ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000088808880888)) 
    \gen_cam.expire_thread[0]_i_1 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last056_out ),
        .I2(\gen_cam.expire_thread[0]_i_3_n_0 ),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I5(\gen_cam.match_thread ),
        .O(\gen_cam.expire_thread_reg043_out ));
  LUT6 #(
    .INIT(64'h00002A002A002A00)) 
    \gen_cam.expire_thread[0]_i_2 
       (.I0(p_58_in),
        .I1(\gen_cam.push_saved_thread ),
        .I2(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I5(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .O(\gen_cam.thread_last056_out ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_cam.expire_thread[0]_i_3 
       (.I0(\gen_cam.state__0 [1]),
        .I1(\gen_cam.state__0 [0]),
        .O(\gen_cam.expire_thread[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A00000000)) 
    \gen_cam.expire_thread[1]_i_1 
       (.I0(p_1_in35_in),
        .I1(\gen_cam.match_thread ),
        .I2(p_0_in64_in),
        .I3(p_0_in31_in),
        .I4(\gen_cam.expire_thread[0]_i_3_n_0 ),
        .I5(\gen_cam.thread_last0 ),
        .O(\gen_cam.expire_thread_reg0 ));
  LUT6 #(
    .INIT(64'h00002A002A002A00)) 
    \gen_cam.expire_thread[1]_i_2 
       (.I0(p_58_in),
        .I1(p_0_in31_in),
        .I2(\gen_cam.push_saved_thread ),
        .I3(p_0_in64_in),
        .I4(\gen_cam.active_cnt[0][3]_i_5_n_0 ),
        .I5(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .O(\gen_cam.thread_last0 ));
  FDRE \gen_cam.expire_thread_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.expire_thread_reg043_out ),
        .Q(\gen_cam.expire_thread [0]),
        .R(SR));
  FDRE \gen_cam.expire_thread_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.expire_thread_reg0 ),
        .Q(\gen_cam.expire_thread [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFDFF0000)) 
    \gen_cam.init_push_i_1 
       (.I0(p_1_in_0),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.expire_thread [1]),
        .I3(\gen_cam.free_ready ),
        .I4(\gen_cam.init_push ),
        .O(\gen_cam.init_push_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.init_push_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.init_push_i_1_n_0 ),
        .Q(\gen_cam.init_push ),
        .S(SS));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    \gen_cam.max_count_i_1 
       (.I0(\gen_cam.max_count_reg_n_0 ),
        .I1(p_1_in),
        .I2(resetn_q),
        .I3(\gen_cam.trans_count0__1 ),
        .I4(\gen_cam.trans_count130_out ),
        .O(\gen_cam.max_count_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_cam.max_count_i_2 
       (.I0(\gen_cam.trans_count_reg [3]),
        .I1(\gen_cam.trans_count_reg [2]),
        .I2(\gen_cam.trans_count_reg [1]),
        .I3(\gen_cam.trans_count_reg [0]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h2A202A222A202A2A)) 
    \gen_cam.max_count_i_3 
       (.I0(\gen_cam.max_count_i_4_n_0 ),
        .I1(arready_q),
        .I2(\gen_cam.state__0 [1]),
        .I3(\gen_cam.state__0 [0]),
        .I4(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I5(\gen_cam.aid_encode_i_2_n_0 ),
        .O(\gen_cam.trans_count0__1 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \gen_cam.max_count_i_4 
       (.I0(rready_q),
        .I1(rvalid_q),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [0]),
        .I5(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.max_count_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.max_count_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.max_count_i_1_n_0 ),
        .Q(\gen_cam.max_count_reg_n_0 ),
        .R(1'b0));
  (* C_BIN_WIDTH = "1" *) 
  (* C_OH_WIDTH = "2" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LP_DOUT_DEF = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_onehot_to_binary__1 \gen_cam.rid_encode 
       (.din({p_0_in64_in,1'b0}),
        .dout(\gen_cam.thread_valid_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFE2FFFFFFE200)) 
    \gen_cam.thread_last[0]_i_1 
       (.I0(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.thread_last[0]_i_3_n_0 ),
        .I3(\gen_cam.thread_last10_in ),
        .I4(\gen_cam.thread_init_0 ),
        .I5(\gen_cam.thread_last_reg_n_0_[0] ),
        .O(\gen_cam.thread_last[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_cam.thread_last[0]_i_2 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.thread_last[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_cam.thread_last[0]_i_3 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.thread_last[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h88002000)) 
    \gen_cam.thread_last[0]_i_4 
       (.I0(\gen_cam.allocate_next [0]),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.aid_encode_i_2_n_0 ),
        .I3(arready_q),
        .I4(\gen_cam.state__0 [0]),
        .O(\gen_cam.thread_init_0 ));
  LUT6 #(
    .INIT(64'hFFFFE2FFFFFFE200)) 
    \gen_cam.thread_last[1]_i_1 
       (.I0(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.thread_last[1]_i_3_n_0 ),
        .I3(\gen_cam.thread_last6_in ),
        .I4(\gen_cam.thread_init_1 ),
        .I5(p_1_in35_in),
        .O(\gen_cam.thread_last[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_cam.thread_last[1]_i_2 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.thread_last[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_cam.thread_last[1]_i_3 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.thread_last[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h88002000)) 
    \gen_cam.thread_last[1]_i_4 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.aid_encode_i_2_n_0 ),
        .I3(arready_q),
        .I4(\gen_cam.state__0 [0]),
        .O(\gen_cam.thread_init_1 ));
  FDRE \gen_cam.thread_last_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_last_reg_n_0_[0] ),
        .R(SR));
  FDRE \gen_cam.thread_last_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[1]_i_1_n_0 ),
        .Q(p_1_in35_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCFCFCFC)) 
    \gen_cam.thread_valid[0]_i_1 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_push_0__2 ),
        .I2(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I3(rvalid_q),
        .I4(rready_q),
        .I5(\gen_cam.thread_init_0 ),
        .O(\gen_cam.thread_valid[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000880088)) 
    \gen_cam.thread_valid[0]_i_2 
       (.I0(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I3(\gen_cam.state__0 [0]),
        .I4(arready_q),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.thread_push_0__2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCFCFCFC)) 
    \gen_cam.thread_valid[1]_i_1 
       (.I0(p_1_in35_in),
        .I1(\gen_cam.thread_push_1__2 ),
        .I2(p_0_in64_in),
        .I3(rvalid_q),
        .I4(rready_q),
        .I5(\gen_cam.thread_init_1 ),
        .O(\gen_cam.thread_valid[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00080800000808)) 
    \gen_cam.thread_valid[1]_i_2 
       (.I0(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I1(p_0_in64_in),
        .I2(\gen_cam.state__0 [0]),
        .I3(arready_q),
        .I4(\gen_cam.state__0 [1]),
        .I5(p_0_in31_in),
        .O(\gen_cam.thread_push_1__2 ));
  FDRE \gen_cam.thread_valid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_valid_reg_n_0_[0] ),
        .R(SR));
  FDRE \gen_cam.thread_valid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[1]_i_1_n_0 ),
        .Q(p_0_in64_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cam.trans_count[0]_i_1 
       (.I0(\gen_cam.trans_count_reg [0]),
        .O(\gen_cam.trans_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.trans_count[1]_i_1 
       (.I0(\gen_cam.trans_count_reg [0]),
        .I1(\gen_cam.trans_count130_out ),
        .I2(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.trans_count[2]_i_1 
       (.I0(\gen_cam.trans_count_reg [0]),
        .I1(\gen_cam.trans_count130_out ),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666662)) 
    \gen_cam.trans_count[3]_i_1 
       (.I0(\gen_cam.any_push__1 ),
        .I1(p_58_in),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [0]),
        .I5(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.trans_count[3]_i_2 
       (.I0(\gen_cam.trans_count130_out ),
        .I1(\gen_cam.trans_count_reg [0]),
        .I2(\gen_cam.trans_count_reg [1]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [2]),
        .O(\gen_cam.trans_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC00008C88)) 
    \gen_cam.trans_count[3]_i_3 
       (.I0(\gen_cam.aid_encode_i_2_n_0 ),
        .I1(arready_q),
        .I2(\gen_cam.max_count_reg_n_0 ),
        .I3(\gen_cam.trans_count[3]_i_5_n_0 ),
        .I4(\gen_cam.state__0 [0]),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.any_push__1 ));
  LUT6 #(
    .INIT(64'h000000008B8A8B88)) 
    \gen_cam.trans_count[3]_i_4 
       (.I0(arready_q),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.state__0 [0]),
        .I3(\gen_cam.active_cnt[0][3]_i_4_n_0 ),
        .I4(\gen_cam.aid_encode_i_2_n_0 ),
        .I5(p_58_in),
        .O(\gen_cam.trans_count130_out ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \gen_cam.trans_count[3]_i_5 
       (.I0(p_0_in64_in),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(arvalid_q),
        .O(\gen_cam.trans_count[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1_n_0 ),
        .D(\gen_cam.trans_count[0]_i_1_n_0 ),
        .Q(\gen_cam.trans_count_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1_n_0 ),
        .D(\gen_cam.trans_count[1]_i_1_n_0 ),
        .Q(\gen_cam.trans_count_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[2] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1_n_0 ),
        .D(\gen_cam.trans_count[2]_i_1_n_0 ),
        .Q(\gen_cam.trans_count_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[3] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1_n_0 ),
        .D(\gen_cam.trans_count[3]_i_2_n_0 ),
        .Q(\gen_cam.trans_count_reg [3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    rid_mismatch_q_i_1
       (.I0(p_0_in64_in),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .O(rid_mismatch));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_10_threadcam" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_threadcam_0
   (dout,
    \gen_cam.thread_valid_reg[1]_0 ,
    bid_mismatch,
    \gen_cam.cam_overflow_i_reg_0 ,
    aclk,
    SR,
    \FSM_sequential_gen_cam.state_reg[1]_0 ,
    resetn_q,
    awready_q,
    bready_q,
    bvalid_q,
    awvalid_q);
  output [0:0]dout;
  output [0:0]\gen_cam.thread_valid_reg[1]_0 ;
  output bid_mismatch;
  output \gen_cam.cam_overflow_i_reg_0 ;
  input aclk;
  input [0:0]SR;
  input [0:0]\FSM_sequential_gen_cam.state_reg[1]_0 ;
  input resetn_q;
  input awready_q;
  input bready_q;
  input bvalid_q;
  input awvalid_q;

  wire [0:0]\FSM_sequential_gen_cam.state_reg[1]_0 ;
  wire [0:0]SR;
  wire aclk;
  wire awready_q;
  wire awvalid_q;
  wire bid_mismatch;
  wire bready_q;
  wire bvalid_q;
  wire [0:0]dout;
  wire \gen_cam.active_cnt[0][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][1]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[0][2]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_3__0_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_4__0_n_0 ;
  wire \gen_cam.active_cnt[0][3]_i_5__0_n_0 ;
  wire \gen_cam.active_cnt[1][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][1]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[1][2]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[1][3]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[1][3]_i_3__0_n_0 ;
  wire \gen_cam.active_cnt_reg_n_0_[0][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][2] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][3] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][2] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][3] ;
  wire \gen_cam.aid_encode_i_2__0_n_0 ;
  wire [1:1]\gen_cam.aid_index_hot ;
  wire \gen_cam.aid_match_d_reg_n_0_[0] ;
  wire \gen_cam.allocate_available ;
  wire \gen_cam.allocate_cntr ;
  wire \gen_cam.allocate_cntr_reg_n_0_[0] ;
  wire [1:0]\gen_cam.allocate_next ;
  wire \gen_cam.any_push__1 ;
  wire \gen_cam.cam_overflow_i_i_1_n_0 ;
  wire \gen_cam.cam_overflow_i_i_2__0_n_0 ;
  wire \gen_cam.cam_overflow_i_reg_0 ;
  wire [1:0]\gen_cam.expire_thread ;
  wire \gen_cam.expire_thread[0]_i_3__0_n_0 ;
  wire \gen_cam.expire_thread_reg0 ;
  wire \gen_cam.expire_thread_reg043_out ;
  wire \gen_cam.free_push ;
  wire \gen_cam.free_ready ;
  wire [1:0]\gen_cam.free_thread ;
  wire \gen_cam.init_push ;
  wire \gen_cam.init_push_i_1__0_n_0 ;
  wire \gen_cam.match_thread ;
  wire \gen_cam.max_count_i_1__0_n_0 ;
  wire \gen_cam.max_count_i_2__0_n_0 ;
  wire \gen_cam.max_count_i_4__0_n_0 ;
  wire \gen_cam.max_count_reg_n_0 ;
  wire \gen_cam.next ;
  wire [1:0]\gen_cam.next__0 ;
  wire \gen_cam.push_new_thread ;
  wire \gen_cam.push_saved_thread ;
  wire \gen_cam.push_si_thread1__0 ;
  wire [1:0]\gen_cam.state__0 ;
  wire \gen_cam.thread_init_0 ;
  wire \gen_cam.thread_init_1 ;
  wire \gen_cam.thread_last0 ;
  wire \gen_cam.thread_last056_out ;
  wire \gen_cam.thread_last10_in ;
  wire \gen_cam.thread_last152_out__0 ;
  wire \gen_cam.thread_last162_out__0 ;
  wire \gen_cam.thread_last6_in ;
  wire \gen_cam.thread_last[0]_i_1_n_0 ;
  wire \gen_cam.thread_last[0]_i_2__0_n_0 ;
  wire \gen_cam.thread_last[0]_i_3__0_n_0 ;
  wire \gen_cam.thread_last[1]_i_1_n_0 ;
  wire \gen_cam.thread_last[1]_i_2__0_n_0 ;
  wire \gen_cam.thread_last[1]_i_3__0_n_0 ;
  wire \gen_cam.thread_last_reg_n_0_[0] ;
  wire \gen_cam.thread_push_0__2 ;
  wire \gen_cam.thread_push_1__2 ;
  wire \gen_cam.thread_valid[0]_i_1_n_0 ;
  wire \gen_cam.thread_valid[1]_i_1_n_0 ;
  wire [0:0]\gen_cam.thread_valid_reg[1]_0 ;
  wire \gen_cam.thread_valid_reg_n_0_[0] ;
  wire \gen_cam.trans_count0__1 ;
  wire \gen_cam.trans_count130_out ;
  wire \gen_cam.trans_count[0]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[1]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[2]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[3]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[3]_i_2__0_n_0 ;
  wire \gen_cam.trans_count[3]_i_5__0_n_0 ;
  wire [3:0]\gen_cam.trans_count_reg ;
  wire p_0_in31_in;
  wire p_0_in64_in;
  wire p_1_in;
  wire p_1_in35_in;
  wire p_58_in;
  wire resetn_q;
  wire \NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFF70007)) 
    \FSM_sequential_gen_cam.state[0]_i_1__0 
       (.I0(awready_q),
        .I1(\gen_cam.allocate_available ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.next__0 [0]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \FSM_sequential_gen_cam.state[1]_i_1__0 
       (.I0(awready_q),
        .I1(\gen_cam.state__0 [1]),
        .I2(awvalid_q),
        .I3(\gen_cam.state__0 [0]),
        .O(\gen_cam.next ));
  LUT6 #(
    .INIT(64'h0000000000045554)) 
    \FSM_sequential_gen_cam.state[1]_i_2 
       (.I0(awready_q),
        .I1(\gen_cam.allocate_available ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.next__0 [1]));
  (* FSM_ENCODED_STATES = "PENDING:10,OVERFLOW:01,ALLOCATE:11,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_cam.state_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.next ),
        .D(\gen_cam.next__0 [0]),
        .Q(\gen_cam.state__0 [0]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "PENDING:10,OVERFLOW:01,ALLOCATE:11,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_cam.state_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.next ),
        .D(\gen_cam.next__0 [1]),
        .Q(\gen_cam.state__0 [1]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \__15/i_ 
       (.I0(\gen_cam.init_push ),
        .I1(p_1_in),
        .I2(\gen_cam.free_ready ),
        .I3(\gen_cam.expire_thread [1]),
        .I4(\gen_cam.expire_thread [0]),
        .O(\gen_cam.allocate_cntr ));
  LUT2 #(
    .INIT(4'h1)) 
    bid_mismatch_q_i_1
       (.I0(p_0_in64_in),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .O(bid_mismatch));
  LUT4 #(
    .INIT(16'hD5EA)) 
    \gen_cam.active_cnt[0][0]_i_1 
       (.I0(\gen_cam.thread_last10_in ),
        .I1(\gen_cam.push_new_thread ),
        .I2(\gen_cam.allocate_next [0]),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.active_cnt[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.active_cnt[0][1]_i_1__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.active_cnt[0][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.active_cnt[0][2]_i_1__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.active_cnt[0][2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_cam.active_cnt[0][3]_i_1__0 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.allocate_next [0]),
        .I2(resetn_q),
        .O(\gen_cam.active_cnt[0][3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F707070FF808080)) 
    \gen_cam.active_cnt[0][3]_i_2__0 
       (.I0(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I1(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I2(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.push_saved_thread ),
        .I5(p_58_in),
        .O(\gen_cam.thread_last10_in ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.active_cnt[0][3]_i_3__0 
       (.I0(\gen_cam.thread_last162_out__0 ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I4(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .O(\gen_cam.active_cnt[0][3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00A80000)) 
    \gen_cam.active_cnt[0][3]_i_4__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.max_count_reg_n_0 ),
        .I4(awready_q),
        .O(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.active_cnt[0][3]_i_5__0 
       (.I0(\gen_cam.state__0 [1]),
        .I1(\gen_cam.state__0 [0]),
        .O(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_cam.active_cnt[0][3]_i_6__0 
       (.I0(\gen_cam.state__0 [0]),
        .I1(awready_q),
        .I2(\gen_cam.state__0 [1]),
        .O(\gen_cam.push_saved_thread ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_cam.active_cnt[0][3]_i_7__0 
       (.I0(bvalid_q),
        .I1(bready_q),
        .O(p_58_in));
  LUT6 #(
    .INIT(64'h00008888F8888888)) 
    \gen_cam.active_cnt[0][3]_i_8__0 
       (.I0(\gen_cam.push_saved_thread ),
        .I1(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I2(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I3(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I5(p_58_in),
        .O(\gen_cam.thread_last162_out__0 ));
  LUT4 #(
    .INIT(16'hD5EA)) 
    \gen_cam.active_cnt[1][0]_i_1 
       (.I0(\gen_cam.thread_last6_in ),
        .I1(\gen_cam.push_new_thread ),
        .I2(\gen_cam.allocate_next [1]),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.active_cnt[1][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.active_cnt[1][1]_i_1__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.active_cnt[1][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.active_cnt[1][2]_i_1__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.active_cnt[1][2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_cam.active_cnt[1][3]_i_1__0 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.allocate_next [1]),
        .I2(resetn_q),
        .O(\gen_cam.active_cnt[1][3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F707070FF808080)) 
    \gen_cam.active_cnt[1][3]_i_2__0 
       (.I0(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I1(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.push_saved_thread ),
        .I4(p_0_in31_in),
        .I5(p_58_in),
        .O(\gen_cam.thread_last6_in ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.active_cnt[1][3]_i_3__0 
       (.I0(\gen_cam.thread_last152_out__0 ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I4(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .O(\gen_cam.active_cnt[1][3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00008888F8888888)) 
    \gen_cam.active_cnt[1][3]_i_4__0 
       (.I0(p_0_in31_in),
        .I1(\gen_cam.push_saved_thread ),
        .I2(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I3(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I4(p_0_in64_in),
        .I5(p_58_in),
        .O(\gen_cam.thread_last152_out__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][1] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][1]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .R(\gen_cam.active_cnt[0][3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][2] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][2]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .R(\gen_cam.active_cnt[0][3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][3] 
       (.C(aclk),
        .CE(\gen_cam.thread_last10_in ),
        .D(\gen_cam.active_cnt[0][3]_i_3__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .R(\gen_cam.active_cnt[0][3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][1] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][1]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .R(\gen_cam.active_cnt[1][3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][2] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][2]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .R(\gen_cam.active_cnt[1][3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][3] 
       (.C(aclk),
        .CE(\gen_cam.thread_last6_in ),
        .D(\gen_cam.active_cnt[1][3]_i_3__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .R(\gen_cam.active_cnt[1][3]_i_1__0_n_0 ));
  (* C_BIN_WIDTH = "1" *) 
  (* C_OH_WIDTH = "2" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LP_DOUT_DEF = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_onehot_to_binary__2 \gen_cam.aid_encode 
       (.din({\gen_cam.aid_index_hot ,1'b0}),
        .dout(dout));
  LUT6 #(
    .INIT(64'hBBEF88EFBB208820)) 
    \gen_cam.aid_encode_i_1__0 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state__0 [0]),
        .I2(\gen_cam.aid_encode_i_2__0_n_0 ),
        .I3(\gen_cam.state__0 [1]),
        .I4(p_0_in31_in),
        .I5(p_0_in64_in),
        .O(\gen_cam.aid_index_hot ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \gen_cam.aid_encode_i_2__0 
       (.I0(\gen_cam.allocate_available ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(awvalid_q),
        .O(\gen_cam.aid_encode_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h000000A8)) 
    \gen_cam.aid_match_d[1]_i_1__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(p_0_in64_in),
        .I3(\gen_cam.state__0 [0]),
        .I4(\gen_cam.state__0 [1]),
        .O(\gen_cam.match_thread ));
  FDRE \gen_cam.aid_match_d_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.thread_valid_reg_n_0_[0] ),
        .Q(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.aid_match_d_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(p_0_in64_in),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.allocate_cntr_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(1'b0),
        .Q(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.allocate_cntr_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(SR));
  (* C_FIFO_SIZE = "2" *) 
  (* C_FIFO_WIDTH = "2" *) 
  (* C_REG_CONFIG = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_axic_reg_srl_fifo \gen_cam.allocate_queue 
       (.aclk(aclk),
        .aclken(1'b1),
        .areset(SR),
        .m_mesg(\gen_cam.allocate_next ),
        .m_ready(\gen_cam.push_new_thread ),
        .m_valid(\gen_cam.allocate_available ),
        .s_afull(\NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ),
        .s_mesg(\gen_cam.free_thread ),
        .s_ready(\gen_cam.free_ready ),
        .s_valid(\gen_cam.free_push ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_cam.allocate_queue_i_1 
       (.I0(\gen_cam.expire_thread [0]),
        .I1(\gen_cam.expire_thread [1]),
        .I2(p_1_in),
        .O(\gen_cam.free_thread [1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_cam.allocate_queue_i_2 
       (.I0(\gen_cam.expire_thread [0]),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .O(\gen_cam.free_thread [0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_cam.allocate_queue_i_3 
       (.I0(\gen_cam.init_push ),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.expire_thread [0]),
        .O(\gen_cam.free_push ));
  LUT6 #(
    .INIT(64'h8888888800400000)) 
    \gen_cam.allocate_queue_i_4 
       (.I0(\gen_cam.state__0 [0]),
        .I1(awready_q),
        .I2(\gen_cam.allocate_available ),
        .I3(\gen_cam.push_si_thread1__0 ),
        .I4(awvalid_q),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.push_new_thread ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_cam.allocate_queue_i_5__0 
       (.I0(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I1(p_0_in64_in),
        .O(\gen_cam.push_si_thread1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \gen_cam.cam_overflow_i_i_1 
       (.I0(\gen_cam.cam_overflow_i_i_2__0_n_0 ),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.cam_overflow_i_reg_0 ),
        .O(\gen_cam.cam_overflow_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515155515151511)) 
    \gen_cam.cam_overflow_i_i_2__0 
       (.I0(\gen_cam.state__0 [0]),
        .I1(awvalid_q),
        .I2(\gen_cam.max_count_reg_n_0 ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(p_0_in64_in),
        .I5(\gen_cam.allocate_available ),
        .O(\gen_cam.cam_overflow_i_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.cam_overflow_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i_i_1_n_0 ),
        .Q(\gen_cam.cam_overflow_i_reg_0 ),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000088808880888)) 
    \gen_cam.expire_thread[0]_i_1__0 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last056_out ),
        .I2(\gen_cam.expire_thread[0]_i_3__0_n_0 ),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I5(\gen_cam.match_thread ),
        .O(\gen_cam.expire_thread_reg043_out ));
  LUT6 #(
    .INIT(64'h00002A002A002A00)) 
    \gen_cam.expire_thread[0]_i_2__0 
       (.I0(p_58_in),
        .I1(\gen_cam.push_saved_thread ),
        .I2(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I5(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .O(\gen_cam.thread_last056_out ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_cam.expire_thread[0]_i_3__0 
       (.I0(\gen_cam.state__0 [1]),
        .I1(\gen_cam.state__0 [0]),
        .O(\gen_cam.expire_thread[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A00000000)) 
    \gen_cam.expire_thread[1]_i_1__0 
       (.I0(p_1_in35_in),
        .I1(\gen_cam.match_thread ),
        .I2(p_0_in64_in),
        .I3(p_0_in31_in),
        .I4(\gen_cam.expire_thread[0]_i_3__0_n_0 ),
        .I5(\gen_cam.thread_last0 ),
        .O(\gen_cam.expire_thread_reg0 ));
  LUT6 #(
    .INIT(64'h00002A002A002A00)) 
    \gen_cam.expire_thread[1]_i_2__0 
       (.I0(p_58_in),
        .I1(p_0_in31_in),
        .I2(\gen_cam.push_saved_thread ),
        .I3(p_0_in64_in),
        .I4(\gen_cam.active_cnt[0][3]_i_5__0_n_0 ),
        .I5(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .O(\gen_cam.thread_last0 ));
  FDRE \gen_cam.expire_thread_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.expire_thread_reg043_out ),
        .Q(\gen_cam.expire_thread [0]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE \gen_cam.expire_thread_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.expire_thread_reg0 ),
        .Q(\gen_cam.expire_thread [1]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFDFF0000)) 
    \gen_cam.init_push_i_1__0 
       (.I0(p_1_in),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.expire_thread [1]),
        .I3(\gen_cam.free_ready ),
        .I4(\gen_cam.init_push ),
        .O(\gen_cam.init_push_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.init_push_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.init_push_i_1__0_n_0 ),
        .Q(\gen_cam.init_push ),
        .S(SR));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    \gen_cam.max_count_i_1__0 
       (.I0(\gen_cam.max_count_reg_n_0 ),
        .I1(\gen_cam.max_count_i_2__0_n_0 ),
        .I2(resetn_q),
        .I3(\gen_cam.trans_count0__1 ),
        .I4(\gen_cam.trans_count130_out ),
        .O(\gen_cam.max_count_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_cam.max_count_i_2__0 
       (.I0(\gen_cam.trans_count_reg [3]),
        .I1(\gen_cam.trans_count_reg [2]),
        .I2(\gen_cam.trans_count_reg [1]),
        .I3(\gen_cam.trans_count_reg [0]),
        .O(\gen_cam.max_count_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2A202A222A202A2A)) 
    \gen_cam.max_count_i_3__0 
       (.I0(\gen_cam.max_count_i_4__0_n_0 ),
        .I1(awready_q),
        .I2(\gen_cam.state__0 [1]),
        .I3(\gen_cam.state__0 [0]),
        .I4(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I5(\gen_cam.aid_encode_i_2__0_n_0 ),
        .O(\gen_cam.trans_count0__1 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \gen_cam.max_count_i_4__0 
       (.I0(bready_q),
        .I1(bvalid_q),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [0]),
        .I5(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.max_count_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.max_count_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.max_count_i_1__0_n_0 ),
        .Q(\gen_cam.max_count_reg_n_0 ),
        .R(1'b0));
  (* C_BIN_WIDTH = "1" *) 
  (* C_OH_WIDTH = "2" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LP_DOUT_DEF = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_4_onehot_to_binary \gen_cam.rid_encode 
       (.din({p_0_in64_in,1'b0}),
        .dout(\gen_cam.thread_valid_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFE2FFFFFFE200)) 
    \gen_cam.thread_last[0]_i_1 
       (.I0(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I1(\gen_cam.thread_last162_out__0 ),
        .I2(\gen_cam.thread_last[0]_i_3__0_n_0 ),
        .I3(\gen_cam.thread_last10_in ),
        .I4(\gen_cam.thread_init_0 ),
        .I5(\gen_cam.thread_last_reg_n_0_[0] ),
        .O(\gen_cam.thread_last[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_cam.thread_last[0]_i_2__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.thread_last[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_cam.thread_last[0]_i_3__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .O(\gen_cam.thread_last[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h88002000)) 
    \gen_cam.thread_last[0]_i_4__0 
       (.I0(\gen_cam.allocate_next [0]),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.aid_encode_i_2__0_n_0 ),
        .I3(awready_q),
        .I4(\gen_cam.state__0 [0]),
        .O(\gen_cam.thread_init_0 ));
  LUT6 #(
    .INIT(64'hFFFFE2FFFFFFE200)) 
    \gen_cam.thread_last[1]_i_1 
       (.I0(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I1(\gen_cam.thread_last152_out__0 ),
        .I2(\gen_cam.thread_last[1]_i_3__0_n_0 ),
        .I3(\gen_cam.thread_last6_in ),
        .I4(\gen_cam.thread_init_1 ),
        .I5(p_1_in35_in),
        .O(\gen_cam.thread_last[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_cam.thread_last[1]_i_2__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.thread_last[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_cam.thread_last[1]_i_3__0 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][3] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][2] ),
        .I2(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .O(\gen_cam.thread_last[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h88002000)) 
    \gen_cam.thread_last[1]_i_4__0 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.aid_encode_i_2__0_n_0 ),
        .I3(awready_q),
        .I4(\gen_cam.state__0 [0]),
        .O(\gen_cam.thread_init_1 ));
  FDRE \gen_cam.thread_last_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_last_reg_n_0_[0] ),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE \gen_cam.thread_last_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[1]_i_1_n_0 ),
        .Q(p_1_in35_in),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCFCFCFC)) 
    \gen_cam.thread_valid[0]_i_1 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_push_0__2 ),
        .I2(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I3(bvalid_q),
        .I4(bready_q),
        .I5(\gen_cam.thread_init_0 ),
        .O(\gen_cam.thread_valid[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000880088)) 
    \gen_cam.thread_valid[0]_i_2__0 
       (.I0(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I3(\gen_cam.state__0 [0]),
        .I4(awready_q),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.thread_push_0__2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCFCFCFC)) 
    \gen_cam.thread_valid[1]_i_1 
       (.I0(p_1_in35_in),
        .I1(\gen_cam.thread_push_1__2 ),
        .I2(p_0_in64_in),
        .I3(bvalid_q),
        .I4(bready_q),
        .I5(\gen_cam.thread_init_1 ),
        .O(\gen_cam.thread_valid[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00080800000808)) 
    \gen_cam.thread_valid[1]_i_2__0 
       (.I0(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I1(p_0_in64_in),
        .I2(\gen_cam.state__0 [0]),
        .I3(awready_q),
        .I4(\gen_cam.state__0 [1]),
        .I5(p_0_in31_in),
        .O(\gen_cam.thread_push_1__2 ));
  FDRE \gen_cam.thread_valid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_valid_reg_n_0_[0] ),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE \gen_cam.thread_valid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[1]_i_1_n_0 ),
        .Q(p_0_in64_in),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cam.trans_count[0]_i_1__0 
       (.I0(\gen_cam.trans_count_reg [0]),
        .O(\gen_cam.trans_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_cam.trans_count[1]_i_1__0 
       (.I0(\gen_cam.trans_count_reg [0]),
        .I1(\gen_cam.trans_count130_out ),
        .I2(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_cam.trans_count[2]_i_1__0 
       (.I0(\gen_cam.trans_count_reg [0]),
        .I1(\gen_cam.trans_count130_out ),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666662)) 
    \gen_cam.trans_count[3]_i_1__0 
       (.I0(\gen_cam.any_push__1 ),
        .I1(p_58_in),
        .I2(\gen_cam.trans_count_reg [2]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [0]),
        .I5(\gen_cam.trans_count_reg [1]),
        .O(\gen_cam.trans_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_cam.trans_count[3]_i_2__0 
       (.I0(\gen_cam.trans_count130_out ),
        .I1(\gen_cam.trans_count_reg [0]),
        .I2(\gen_cam.trans_count_reg [1]),
        .I3(\gen_cam.trans_count_reg [3]),
        .I4(\gen_cam.trans_count_reg [2]),
        .O(\gen_cam.trans_count[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC00008C88)) 
    \gen_cam.trans_count[3]_i_3__0 
       (.I0(\gen_cam.aid_encode_i_2__0_n_0 ),
        .I1(awready_q),
        .I2(\gen_cam.max_count_reg_n_0 ),
        .I3(\gen_cam.trans_count[3]_i_5__0_n_0 ),
        .I4(\gen_cam.state__0 [0]),
        .I5(\gen_cam.state__0 [1]),
        .O(\gen_cam.any_push__1 ));
  LUT6 #(
    .INIT(64'h000000008B8A8B88)) 
    \gen_cam.trans_count[3]_i_4__0 
       (.I0(awready_q),
        .I1(\gen_cam.state__0 [1]),
        .I2(\gen_cam.state__0 [0]),
        .I3(\gen_cam.active_cnt[0][3]_i_4__0_n_0 ),
        .I4(\gen_cam.aid_encode_i_2__0_n_0 ),
        .I5(p_58_in),
        .O(\gen_cam.trans_count130_out ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \gen_cam.trans_count[3]_i_5__0 
       (.I0(p_0_in64_in),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(awvalid_q),
        .O(\gen_cam.trans_count[3]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[0]_i_1__0_n_0 ),
        .Q(\gen_cam.trans_count_reg [0]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[1]_i_1__0_n_0 ),
        .Q(\gen_cam.trans_count_reg [1]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[2] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[2]_i_1__0_n_0 ),
        .Q(\gen_cam.trans_count_reg [2]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[3] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[3]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[3]_i_2__0_n_0 ),
        .Q(\gen_cam.trans_count_reg [3]),
        .R(\FSM_sequential_gen_cam.state_reg[1]_0 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_CHK_ERR_RESP = "0" *) (* C_ENABLE_CONTROL = "0" *) (* C_ENABLE_MARK_DEBUG = "1" *) 
(* C_HAS_WSTRB = "1" *) (* C_PC_AR_MAXWAITS = "0" *) (* C_PC_AW_MAXWAITS = "0" *) 
(* C_PC_B_MAXWAITS = "0" *) (* C_PC_EXMON_WIDTH = "0" *) (* C_PC_HAS_SYSTEM_RESET = "0" *) 
(* C_PC_LIGHT_WEIGHT = "0" *) (* C_PC_MASTER_SIDE = "0" *) (* C_PC_MAXRBURSTS = "8" *) 
(* C_PC_MAXWBURSTS = "8" *) (* C_PC_MAX_BURST_LENGTH = "1" *) (* C_PC_MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) 
(* C_PC_MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) (* C_PC_MAX_WLAST_TO_AWVALID_WAITS = "0" *) (* C_PC_MAX_WRITE_TO_BVALID_WAITS = "0" *) 
(* C_PC_MESSAGE_LEVEL = "2" *) (* C_PC_R_MAXWAITS = "0" *) (* C_PC_STATUS_WIDTH = "160" *) 
(* C_PC_SUPPORTS_NARROW_BURST = "0" *) (* C_PC_W_MAXWAITS = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* LP_AXI_SIZE = "3'b010" *) (* P_INDEX_WIDTH = "1" *) (* P_NUM_REPORTED_CHECKS = "108" *) 
(* P_NUM_RTHREADS = "2" *) (* P_NUM_WTHREADS = "2" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_top
   (pc_status,
    pc_asserted,
    system_resetn,
    aclk,
    aresetn,
    pc_axi_awid,
    pc_axi_awaddr,
    pc_axi_awlen,
    pc_axi_awsize,
    pc_axi_awburst,
    pc_axi_awlock,
    pc_axi_awcache,
    pc_axi_awprot,
    pc_axi_awqos,
    pc_axi_awregion,
    pc_axi_awuser,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wid,
    pc_axi_wlast,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wuser,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bid,
    pc_axi_bresp,
    pc_axi_buser,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_arid,
    pc_axi_araddr,
    pc_axi_arlen,
    pc_axi_arsize,
    pc_axi_arburst,
    pc_axi_arlock,
    pc_axi_arcache,
    pc_axi_arprot,
    pc_axi_arqos,
    pc_axi_arregion,
    pc_axi_aruser,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rid,
    pc_axi_rlast,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_ruser,
    pc_axi_rvalid,
    pc_axi_rready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  (* mark_debug = "yes" *) output [159:0]pc_status;
  output pc_asserted;
  input system_resetn;
  input aclk;
  input aresetn;
  input [0:0]pc_axi_awid;
  input [31:0]pc_axi_awaddr;
  input [7:0]pc_axi_awlen;
  input [2:0]pc_axi_awsize;
  input [1:0]pc_axi_awburst;
  input [0:0]pc_axi_awlock;
  input [3:0]pc_axi_awcache;
  input [2:0]pc_axi_awprot;
  input [3:0]pc_axi_awqos;
  input [3:0]pc_axi_awregion;
  input [0:0]pc_axi_awuser;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input [0:0]pc_axi_wid;
  input pc_axi_wlast;
  input [31:0]pc_axi_wdata;
  input [3:0]pc_axi_wstrb;
  input [0:0]pc_axi_wuser;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [0:0]pc_axi_bid;
  input [1:0]pc_axi_bresp;
  input [0:0]pc_axi_buser;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [0:0]pc_axi_arid;
  input [31:0]pc_axi_araddr;
  input [7:0]pc_axi_arlen;
  input [2:0]pc_axi_arsize;
  input [1:0]pc_axi_arburst;
  input [0:0]pc_axi_arlock;
  input [3:0]pc_axi_arcache;
  input [2:0]pc_axi_arprot;
  input [3:0]pc_axi_arqos;
  input [3:0]pc_axi_arregion;
  input [0:0]pc_axi_aruser;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input [0:0]pc_axi_rid;
  input pc_axi_rlast;
  input [31:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input [0:0]pc_axi_ruser;
  input pc_axi_rvalid;
  input pc_axi_rready;
  input [9:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire [31:0]araddr_q;
  wire [31:0]araddr_qq;
  wire aresetn;
  wire arid_index;
  wire arid_index_q;
  wire [2:0]arprot_q;
  wire [2:0]arprot_qq;
  wire arready_q;
  wire arready_qq;
  wire arvalid_q;
  wire arvalid_qq;
  wire [31:0]awaddr_q;
  wire [31:0]awaddr_qq;
  wire awid_index;
  wire awid_index_q;
  wire [2:0]awprot_q;
  wire [2:0]awprot_qq;
  wire awready_q;
  wire awready_qq;
  wire awvalid_q;
  wire awvalid_qq;
  wire bid_index;
  wire bid_index_q;
  wire bid_mismatch;
  wire bid_mismatch_q;
  wire bready_q;
  wire bready_qq;
  wire [1:0]bresp_q;
  wire [1:0]bresp_qq;
  wire bvalid_q;
  wire bvalid_qq;
  wire \gen_cam.cam_overflow_i ;
  wire \gen_threadcam.r_threadcam_n_2 ;
  wire \gen_threadcam.w_threadcam_n_3 ;
  wire pc_asserted;
  wire pc_asserted_i_i_10_n_0;
  wire pc_asserted_i_i_11_n_0;
  wire pc_asserted_i_i_12_n_0;
  wire pc_asserted_i_i_13_n_0;
  wire pc_asserted_i_i_14_n_0;
  wire pc_asserted_i_i_15_n_0;
  wire pc_asserted_i_i_16_n_0;
  wire pc_asserted_i_i_17_n_0;
  wire pc_asserted_i_i_18_n_0;
  wire pc_asserted_i_i_19_n_0;
  wire pc_asserted_i_i_1_n_0;
  wire pc_asserted_i_i_20_n_0;
  wire pc_asserted_i_i_21_n_0;
  wire pc_asserted_i_i_22_n_0;
  wire pc_asserted_i_i_23_n_0;
  wire pc_asserted_i_i_24_n_0;
  wire pc_asserted_i_i_25_n_0;
  wire pc_asserted_i_i_26_n_0;
  wire pc_asserted_i_i_27_n_0;
  wire pc_asserted_i_i_28_n_0;
  wire pc_asserted_i_i_29_n_0;
  wire pc_asserted_i_i_2_n_0;
  wire pc_asserted_i_i_30_n_0;
  wire pc_asserted_i_i_31_n_0;
  wire pc_asserted_i_i_32_n_0;
  wire pc_asserted_i_i_3_n_0;
  wire pc_asserted_i_i_4_n_0;
  wire pc_asserted_i_i_5_n_0;
  wire pc_asserted_i_i_6_n_0;
  wire pc_asserted_i_i_7_n_0;
  wire pc_asserted_i_i_8_n_0;
  wire pc_asserted_i_i_9_n_0;
  wire [31:0]pc_axi_araddr;
  wire [2:0]pc_axi_arprot;
  wire pc_axi_arready;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [2:0]pc_axi_awprot;
  wire pc_axi_awready;
  wire pc_axi_awvalid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire pc_axi_bvalid;
  wire [31:0]pc_axi_rdata;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire pc_axi_rvalid;
  wire [31:0]pc_axi_wdata;
  wire pc_axi_wready;
  wire [3:0]pc_axi_wstrb;
  wire pc_axi_wvalid;
  (* MARK_DEBUG *) wire [159:0]pc_status;
  wire rcam_overflow_q;
  wire [31:0]rdata_q;
  wire [31:0]rdata_qq;
  wire resetn_q;
  wire resetn_qq;
  wire rid_index;
  wire rid_index_q;
  wire rid_mismatch;
  wire rid_mismatch_q;
  wire rready_q;
  wire rready_qq;
  wire [1:0]rresp_q;
  wire [1:0]rresp_qq;
  wire rvalid_q;
  wire rvalid_qq;
  wire thread_cam_reset;
  wire wcam_overflow_q;
  wire [31:0]wdata_q;
  wire [31:0]wdata_qq;
  wire wready_q;
  wire wready_qq;
  wire [3:0]wstrb_q;
  wire [3:0]wstrb_qq;
  wire wvalid_q;
  wire wvalid_qq;
  wire [159:0]NLW_CORE_pc_status_UNCONNECTED;

  assign s_axi_arready = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  (* ADDRHI = "6" *) 
  (* ADDRLO = "0" *) 
  (* ALENHI = "15" *) 
  (* ALENLO = "8" *) 
  (* ASIZEHI = "18" *) 
  (* ASIZELO = "16" *) 
  (* BURSTHI = "20" *) 
  (* BURSTLO = "19" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CHK_ERR_RESP = "0" *) 
  (* C_ERROR_COUNT = "160" *) 
  (* C_HAS_WSTRB = "1" *) 
  (* C_INDEX_WIDTH = "1" *) 
  (* C_NUM_RTHREADS = "2" *) 
  (* C_NUM_WTHREADS = "2" *) 
  (* C_PC_HAS_SYSTEM_RESET = "0" *) 
  (* C_PC_MASTER_SIDE = "0" *) 
  (* C_PC_MAX_BURST_LENGTH = "1" *) 
  (* C_PC_SUPPORTS_NARROW_BURST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* EXCL = "7" *) 
  (* EXMON_WIDTH = "0" *) 
  (* ID_MAX = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LIGHT_WEIGHT = "0" *) 
  (* LOG2_STRB_WIDTH = "2" *) 
  (* LP_ADDR_WIDTH = "32" *) 
  (* LP_EXMON_WIDTH = "1" *) 
  (* MAXRBURSTS = "8" *) 
  (* MAXWBURSTS = "8" *) 
  (* MAX_AR_WAITS = "0" *) 
  (* MAX_AW_WAITS = "0" *) 
  (* MAX_B_WAITS = "0" *) 
  (* MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) 
  (* MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) 
  (* MAX_R_WAITS = "0" *) 
  (* MAX_WLAST_TO_AWVALID_WAITS = "0" *) 
  (* MAX_WRITE_TO_BVALID_WAITS = "0" *) 
  (* MAX_W_WAITS = "0" *) 
  (* P_MAXRBURSTS_LOG = "3" *) 
  (* P_MAXWBURSTS_LOG = "3" *) 
  (* P_RTHREAD_SIZE = "1" *) 
  (* P_WTHREAD_SIZE = "1" *) 
  (* RecommendOn = "1" *) 
  (* RecommendWaitOn = "1" *) 
  (* STRB_WIDTH = "4" *) 
  (* WADDRHI = "6" *) 
  (* WADDRLO = "0" *) 
  (* WALENHI = "8" *) 
  (* WALENLO = "1" *) 
  (* WASIZEHI = "9" *) 
  (* WASIZELO = "7" *) 
  (* WEXCL = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_core CORE
       (.ACLK(aclk),
        .ARADDR(araddr_qq),
        .ARBURST({1'b0,1'b1}),
        .ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .ARID(1'b0),
        .ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ARLOCK(1'b0),
        .ARPROT(arprot_qq),
        .ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .ARREADY(arready_qq),
        .ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .ARSIZE({1'b0,1'b1,1'b0}),
        .ARST_N(resetn_qq),
        .ARUSER(1'b0),
        .ARVALID(arvalid_qq),
        .AWADDR(awaddr_qq),
        .AWBURST({1'b0,1'b1}),
        .AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .AWID(1'b0),
        .AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AWLOCK(1'b0),
        .AWPROT(awprot_qq),
        .AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .AWREADY(awready_qq),
        .AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .AWSIZE({1'b0,1'b1,1'b0}),
        .AWUSER(1'b0),
        .AWVALID(awvalid_qq),
        .BID(1'b0),
        .BREADY(bready_qq),
        .BRESP(bresp_qq),
        .BUSER(1'b0),
        .BVALID(bvalid_qq),
        .RDATA(rdata_qq),
        .RID(1'b0),
        .RLAST(1'b1),
        .RREADY(rready_qq),
        .RRESP(rresp_qq),
        .RUSER(1'b0),
        .RVALID(rvalid_qq),
        .WDATA(wdata_qq),
        .WLAST(1'b1),
        .WREADY(wready_qq),
        .WSTRB(wstrb_qq),
        .WUSER(1'b0),
        .WVALID(wvalid_qq),
        .arid_index(arid_index_q),
        .awid_index(awid_index_q),
        .bid_index(bid_index_q),
        .bid_mismatch(bid_mismatch_q),
        .pc_status({NLW_CORE_pc_status_UNCONNECTED[159:85],pc_status[84:83],NLW_CORE_pc_status_UNCONNECTED[82],pc_status[81:78],NLW_CORE_pc_status_UNCONNECTED[77:67],pc_status[66:65],NLW_CORE_pc_status_UNCONNECTED[64:63],pc_status[62],NLW_CORE_pc_status_UNCONNECTED[61:60],pc_status[59],NLW_CORE_pc_status_UNCONNECTED[58:57],pc_status[56],NLW_CORE_pc_status_UNCONNECTED[55:53],pc_status[52],NLW_CORE_pc_status_UNCONNECTED[51:47],pc_status[46],NLW_CORE_pc_status_UNCONNECTED[45:36],pc_status[35:34],NLW_CORE_pc_status_UNCONNECTED[33],pc_status[32],NLW_CORE_pc_status_UNCONNECTED[31:28],pc_status[27:26],NLW_CORE_pc_status_UNCONNECTED[25],pc_status[24],NLW_CORE_pc_status_UNCONNECTED[23],pc_status[22],NLW_CORE_pc_status_UNCONNECTED[21:20],pc_status[19],NLW_CORE_pc_status_UNCONNECTED[18:16],pc_status[15],NLW_CORE_pc_status_UNCONNECTED[14:10],pc_status[9],NLW_CORE_pc_status_UNCONNECTED[8:0]}),
        .rcam_overflow(rcam_overflow_q),
        .resetn(1'b0),
        .rid_index(rid_index_q),
        .rid_mismatch(rid_mismatch_q),
        .wcam_overflow(wcam_overflow_q));
  GND GND
       (.G(\<const0> ));
  FDRE \araddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[0]),
        .Q(araddr_q[0]),
        .R(1'b0));
  FDRE \araddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[10]),
        .Q(araddr_q[10]),
        .R(1'b0));
  FDRE \araddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[11]),
        .Q(araddr_q[11]),
        .R(1'b0));
  FDRE \araddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[12]),
        .Q(araddr_q[12]),
        .R(1'b0));
  FDRE \araddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[13]),
        .Q(araddr_q[13]),
        .R(1'b0));
  FDRE \araddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[14]),
        .Q(araddr_q[14]),
        .R(1'b0));
  FDRE \araddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[15]),
        .Q(araddr_q[15]),
        .R(1'b0));
  FDRE \araddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[16]),
        .Q(araddr_q[16]),
        .R(1'b0));
  FDRE \araddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[17]),
        .Q(araddr_q[17]),
        .R(1'b0));
  FDRE \araddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[18]),
        .Q(araddr_q[18]),
        .R(1'b0));
  FDRE \araddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[19]),
        .Q(araddr_q[19]),
        .R(1'b0));
  FDRE \araddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[1]),
        .Q(araddr_q[1]),
        .R(1'b0));
  FDRE \araddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[20]),
        .Q(araddr_q[20]),
        .R(1'b0));
  FDRE \araddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[21]),
        .Q(araddr_q[21]),
        .R(1'b0));
  FDRE \araddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[22]),
        .Q(araddr_q[22]),
        .R(1'b0));
  FDRE \araddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[23]),
        .Q(araddr_q[23]),
        .R(1'b0));
  FDRE \araddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[24]),
        .Q(araddr_q[24]),
        .R(1'b0));
  FDRE \araddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[25]),
        .Q(araddr_q[25]),
        .R(1'b0));
  FDRE \araddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[26]),
        .Q(araddr_q[26]),
        .R(1'b0));
  FDRE \araddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[27]),
        .Q(araddr_q[27]),
        .R(1'b0));
  FDRE \araddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[28]),
        .Q(araddr_q[28]),
        .R(1'b0));
  FDRE \araddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[29]),
        .Q(araddr_q[29]),
        .R(1'b0));
  FDRE \araddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[2]),
        .Q(araddr_q[2]),
        .R(1'b0));
  FDRE \araddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[30]),
        .Q(araddr_q[30]),
        .R(1'b0));
  FDRE \araddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[31]),
        .Q(araddr_q[31]),
        .R(1'b0));
  FDRE \araddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[3]),
        .Q(araddr_q[3]),
        .R(1'b0));
  FDRE \araddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[4]),
        .Q(araddr_q[4]),
        .R(1'b0));
  FDRE \araddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[5]),
        .Q(araddr_q[5]),
        .R(1'b0));
  FDRE \araddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[6]),
        .Q(araddr_q[6]),
        .R(1'b0));
  FDRE \araddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[7]),
        .Q(araddr_q[7]),
        .R(1'b0));
  FDRE \araddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[8]),
        .Q(araddr_q[8]),
        .R(1'b0));
  FDRE \araddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[9]),
        .Q(araddr_q[9]),
        .R(1'b0));
  FDRE \araddr_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[0]),
        .Q(araddr_qq[0]),
        .R(1'b0));
  FDRE \araddr_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[10]),
        .Q(araddr_qq[10]),
        .R(1'b0));
  FDRE \araddr_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[11]),
        .Q(araddr_qq[11]),
        .R(1'b0));
  FDRE \araddr_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[12]),
        .Q(araddr_qq[12]),
        .R(1'b0));
  FDRE \araddr_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[13]),
        .Q(araddr_qq[13]),
        .R(1'b0));
  FDRE \araddr_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[14]),
        .Q(araddr_qq[14]),
        .R(1'b0));
  FDRE \araddr_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[15]),
        .Q(araddr_qq[15]),
        .R(1'b0));
  FDRE \araddr_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[16]),
        .Q(araddr_qq[16]),
        .R(1'b0));
  FDRE \araddr_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[17]),
        .Q(araddr_qq[17]),
        .R(1'b0));
  FDRE \araddr_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[18]),
        .Q(araddr_qq[18]),
        .R(1'b0));
  FDRE \araddr_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[19]),
        .Q(araddr_qq[19]),
        .R(1'b0));
  FDRE \araddr_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[1]),
        .Q(araddr_qq[1]),
        .R(1'b0));
  FDRE \araddr_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[20]),
        .Q(araddr_qq[20]),
        .R(1'b0));
  FDRE \araddr_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[21]),
        .Q(araddr_qq[21]),
        .R(1'b0));
  FDRE \araddr_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[22]),
        .Q(araddr_qq[22]),
        .R(1'b0));
  FDRE \araddr_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[23]),
        .Q(araddr_qq[23]),
        .R(1'b0));
  FDRE \araddr_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[24]),
        .Q(araddr_qq[24]),
        .R(1'b0));
  FDRE \araddr_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[25]),
        .Q(araddr_qq[25]),
        .R(1'b0));
  FDRE \araddr_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[26]),
        .Q(araddr_qq[26]),
        .R(1'b0));
  FDRE \araddr_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[27]),
        .Q(araddr_qq[27]),
        .R(1'b0));
  FDRE \araddr_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[28]),
        .Q(araddr_qq[28]),
        .R(1'b0));
  FDRE \araddr_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[29]),
        .Q(araddr_qq[29]),
        .R(1'b0));
  FDRE \araddr_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[2]),
        .Q(araddr_qq[2]),
        .R(1'b0));
  FDRE \araddr_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[30]),
        .Q(araddr_qq[30]),
        .R(1'b0));
  FDRE \araddr_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[31]),
        .Q(araddr_qq[31]),
        .R(1'b0));
  FDRE \araddr_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[3]),
        .Q(araddr_qq[3]),
        .R(1'b0));
  FDRE \araddr_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[4]),
        .Q(araddr_qq[4]),
        .R(1'b0));
  FDRE \araddr_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[5]),
        .Q(araddr_qq[5]),
        .R(1'b0));
  FDRE \araddr_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[6]),
        .Q(araddr_qq[6]),
        .R(1'b0));
  FDRE \araddr_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[7]),
        .Q(araddr_qq[7]),
        .R(1'b0));
  FDRE \araddr_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[8]),
        .Q(araddr_qq[8]),
        .R(1'b0));
  FDRE \araddr_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[9]),
        .Q(araddr_qq[9]),
        .R(1'b0));
  FDRE \arid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arid_index),
        .Q(arid_index_q),
        .R(1'b0));
  FDRE \arprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[0]),
        .Q(arprot_q[0]),
        .R(1'b0));
  FDRE \arprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[1]),
        .Q(arprot_q[1]),
        .R(1'b0));
  FDRE \arprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[2]),
        .Q(arprot_q[2]),
        .R(1'b0));
  FDRE \arprot_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[0]),
        .Q(arprot_qq[0]),
        .R(1'b0));
  FDRE \arprot_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[1]),
        .Q(arprot_qq[1]),
        .R(1'b0));
  FDRE \arprot_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[2]),
        .Q(arprot_qq[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arready),
        .Q(arready_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arready_q),
        .Q(arready_qq),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arvalid),
        .Q(arvalid_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arvalid_q),
        .Q(arvalid_qq),
        .R(1'b0));
  FDRE \awaddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[0]),
        .Q(awaddr_q[0]),
        .R(1'b0));
  FDRE \awaddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[10]),
        .Q(awaddr_q[10]),
        .R(1'b0));
  FDRE \awaddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[11]),
        .Q(awaddr_q[11]),
        .R(1'b0));
  FDRE \awaddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[12]),
        .Q(awaddr_q[12]),
        .R(1'b0));
  FDRE \awaddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[13]),
        .Q(awaddr_q[13]),
        .R(1'b0));
  FDRE \awaddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[14]),
        .Q(awaddr_q[14]),
        .R(1'b0));
  FDRE \awaddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[15]),
        .Q(awaddr_q[15]),
        .R(1'b0));
  FDRE \awaddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[16]),
        .Q(awaddr_q[16]),
        .R(1'b0));
  FDRE \awaddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[17]),
        .Q(awaddr_q[17]),
        .R(1'b0));
  FDRE \awaddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[18]),
        .Q(awaddr_q[18]),
        .R(1'b0));
  FDRE \awaddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[19]),
        .Q(awaddr_q[19]),
        .R(1'b0));
  FDRE \awaddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[1]),
        .Q(awaddr_q[1]),
        .R(1'b0));
  FDRE \awaddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[20]),
        .Q(awaddr_q[20]),
        .R(1'b0));
  FDRE \awaddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[21]),
        .Q(awaddr_q[21]),
        .R(1'b0));
  FDRE \awaddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[22]),
        .Q(awaddr_q[22]),
        .R(1'b0));
  FDRE \awaddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[23]),
        .Q(awaddr_q[23]),
        .R(1'b0));
  FDRE \awaddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[24]),
        .Q(awaddr_q[24]),
        .R(1'b0));
  FDRE \awaddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[25]),
        .Q(awaddr_q[25]),
        .R(1'b0));
  FDRE \awaddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[26]),
        .Q(awaddr_q[26]),
        .R(1'b0));
  FDRE \awaddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[27]),
        .Q(awaddr_q[27]),
        .R(1'b0));
  FDRE \awaddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[28]),
        .Q(awaddr_q[28]),
        .R(1'b0));
  FDRE \awaddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[29]),
        .Q(awaddr_q[29]),
        .R(1'b0));
  FDRE \awaddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[2]),
        .Q(awaddr_q[2]),
        .R(1'b0));
  FDRE \awaddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[30]),
        .Q(awaddr_q[30]),
        .R(1'b0));
  FDRE \awaddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[31]),
        .Q(awaddr_q[31]),
        .R(1'b0));
  FDRE \awaddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[3]),
        .Q(awaddr_q[3]),
        .R(1'b0));
  FDRE \awaddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[4]),
        .Q(awaddr_q[4]),
        .R(1'b0));
  FDRE \awaddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[5]),
        .Q(awaddr_q[5]),
        .R(1'b0));
  FDRE \awaddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[6]),
        .Q(awaddr_q[6]),
        .R(1'b0));
  FDRE \awaddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[7]),
        .Q(awaddr_q[7]),
        .R(1'b0));
  FDRE \awaddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[8]),
        .Q(awaddr_q[8]),
        .R(1'b0));
  FDRE \awaddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[9]),
        .Q(awaddr_q[9]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[0]),
        .Q(awaddr_qq[0]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[10]),
        .Q(awaddr_qq[10]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[11]),
        .Q(awaddr_qq[11]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[12]),
        .Q(awaddr_qq[12]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[13]),
        .Q(awaddr_qq[13]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[14]),
        .Q(awaddr_qq[14]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[15]),
        .Q(awaddr_qq[15]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[16]),
        .Q(awaddr_qq[16]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[17]),
        .Q(awaddr_qq[17]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[18]),
        .Q(awaddr_qq[18]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[19]),
        .Q(awaddr_qq[19]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[1]),
        .Q(awaddr_qq[1]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[20]),
        .Q(awaddr_qq[20]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[21]),
        .Q(awaddr_qq[21]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[22]),
        .Q(awaddr_qq[22]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[23]),
        .Q(awaddr_qq[23]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[24]),
        .Q(awaddr_qq[24]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[25]),
        .Q(awaddr_qq[25]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[26]),
        .Q(awaddr_qq[26]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[27]),
        .Q(awaddr_qq[27]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[28]),
        .Q(awaddr_qq[28]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[29]),
        .Q(awaddr_qq[29]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[2]),
        .Q(awaddr_qq[2]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[30]),
        .Q(awaddr_qq[30]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[31]),
        .Q(awaddr_qq[31]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[3]),
        .Q(awaddr_qq[3]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[4]),
        .Q(awaddr_qq[4]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[5]),
        .Q(awaddr_qq[5]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[6]),
        .Q(awaddr_qq[6]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[7]),
        .Q(awaddr_qq[7]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[8]),
        .Q(awaddr_qq[8]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[9]),
        .Q(awaddr_qq[9]),
        .R(1'b0));
  FDRE \awid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awid_index),
        .Q(awid_index_q),
        .R(1'b0));
  FDRE \awprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[0]),
        .Q(awprot_q[0]),
        .R(1'b0));
  FDRE \awprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[1]),
        .Q(awprot_q[1]),
        .R(1'b0));
  FDRE \awprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[2]),
        .Q(awprot_q[2]),
        .R(1'b0));
  FDRE \awprot_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[0]),
        .Q(awprot_qq[0]),
        .R(1'b0));
  FDRE \awprot_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[1]),
        .Q(awprot_qq[1]),
        .R(1'b0));
  FDRE \awprot_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[2]),
        .Q(awprot_qq[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awready),
        .Q(awready_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(awready_q),
        .Q(awready_qq),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awvalid),
        .Q(awvalid_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(awvalid_q),
        .Q(awvalid_qq),
        .R(1'b0));
  FDRE \bid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bid_index),
        .Q(bid_index_q),
        .R(1'b0));
  FDRE bid_mismatch_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bid_mismatch),
        .Q(bid_mismatch_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bready),
        .Q(bready_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bready_q),
        .Q(bready_qq),
        .R(1'b0));
  FDRE \bresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[0]),
        .Q(bresp_q[0]),
        .R(1'b0));
  FDRE \bresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[1]),
        .Q(bresp_q[1]),
        .R(1'b0));
  FDRE \bresp_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bresp_q[0]),
        .Q(bresp_qq[0]),
        .R(1'b0));
  FDRE \bresp_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(bresp_q[1]),
        .Q(bresp_qq[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bvalid),
        .Q(bvalid_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_q),
        .Q(bvalid_qq),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_threadcam \gen_threadcam.r_threadcam 
       (.SR(thread_cam_reset),
        .SS(\gen_threadcam.r_threadcam_n_2 ),
        .aclk(aclk),
        .arready_q(arready_q),
        .arvalid_q(arvalid_q),
        .dout(arid_index),
        .\gen_cam.cam_overflow_i (\gen_cam.cam_overflow_i ),
        .\gen_cam.thread_valid_reg[1]_0 (rid_index),
        .resetn_q(resetn_q),
        .rid_mismatch(rid_mismatch),
        .rready_q(rready_q),
        .rvalid_q(rvalid_q));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_10_threadcam_0 \gen_threadcam.w_threadcam 
       (.\FSM_sequential_gen_cam.state_reg[1]_0 (thread_cam_reset),
        .SR(\gen_threadcam.r_threadcam_n_2 ),
        .aclk(aclk),
        .awready_q(awready_q),
        .awvalid_q(awvalid_q),
        .bid_mismatch(bid_mismatch),
        .bready_q(bready_q),
        .bvalid_q(bvalid_q),
        .dout(awid_index),
        .\gen_cam.cam_overflow_i_reg_0 (\gen_threadcam.w_threadcam_n_3 ),
        .\gen_cam.thread_valid_reg[1]_0 (bid_index),
        .resetn_q(resetn_q));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(pc_status[159]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(pc_status[158]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(pc_status[149]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(pc_status[47]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(pc_status[45]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(pc_status[44]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(pc_status[43]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(pc_status[42]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(pc_status[41]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(pc_status[40]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(pc_status[39]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(pc_status[38]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(pc_status[37]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(pc_status[148]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(pc_status[36]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(pc_status[33]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(pc_status[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(pc_status[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(pc_status[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(pc_status[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(pc_status[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(pc_status[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(pc_status[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(pc_status[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(pc_status[147]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(pc_status[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(pc_status[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(pc_status[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(pc_status[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(pc_status[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(pc_status[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(pc_status[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(pc_status[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(pc_status[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(pc_status[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(pc_status[146]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(pc_status[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(pc_status[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(pc_status[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(pc_status[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(pc_status[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(pc_status[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(pc_status[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(pc_status[145]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(pc_status[144]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(pc_status[143]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(pc_status[142]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(pc_status[141]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(pc_status[140]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(pc_status[157]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(pc_status[139]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(pc_status[138]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(pc_status[137]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(pc_status[136]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(pc_status[135]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(pc_status[134]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(pc_status[133]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(pc_status[132]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(pc_status[131]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(pc_status[130]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(pc_status[156]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(pc_status[129]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(pc_status[128]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(pc_status[127]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(pc_status[126]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(pc_status[125]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(pc_status[124]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(pc_status[123]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(pc_status[122]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(pc_status[121]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(pc_status[120]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(pc_status[155]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(pc_status[119]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(pc_status[118]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(pc_status[117]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(pc_status[116]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(pc_status[115]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(pc_status[114]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(pc_status[113]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(pc_status[112]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(pc_status[111]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(pc_status[110]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(pc_status[154]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(pc_status[109]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(pc_status[108]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(pc_status[107]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(pc_status[106]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(pc_status[105]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(pc_status[104]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(pc_status[103]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(pc_status[102]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(pc_status[101]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(pc_status[100]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(pc_status[153]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(pc_status[99]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(pc_status[98]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(pc_status[97]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(pc_status[96]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(pc_status[95]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(pc_status[94]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(pc_status[93]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(pc_status[92]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(pc_status[91]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(pc_status[90]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(pc_status[152]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(pc_status[89]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(pc_status[88]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(pc_status[87]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(pc_status[86]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(pc_status[85]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(pc_status[82]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(pc_status[77]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(pc_status[76]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(pc_status[75]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(pc_status[74]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(pc_status[151]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(pc_status[73]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(pc_status[72]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(pc_status[71]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(pc_status[70]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(pc_status[69]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(pc_status[68]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(pc_status[67]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(pc_status[64]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(pc_status[63]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(pc_status[61]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(pc_status[150]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(pc_status[60]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(pc_status[58]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(pc_status[57]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(pc_status[55]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(pc_status[54]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(pc_status[53]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(pc_status[51]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(pc_status[50]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(pc_status[49]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(pc_status[48]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_1
       (.I0(pc_asserted_i_i_2_n_0),
        .I1(pc_asserted_i_i_3_n_0),
        .I2(pc_asserted_i_i_4_n_0),
        .I3(pc_asserted_i_i_5_n_0),
        .I4(pc_asserted_i_i_6_n_0),
        .O(pc_asserted_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_10
       (.I0(pc_status[26]),
        .I1(pc_status[27]),
        .I2(pc_status[24]),
        .I3(pc_status[25]),
        .I4(pc_status[23]),
        .I5(pc_status[22]),
        .O(pc_asserted_i_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_11
       (.I0(pc_status[14]),
        .I1(pc_status[15]),
        .I2(pc_status[12]),
        .I3(pc_status[13]),
        .I4(pc_status[11]),
        .I5(pc_status[10]),
        .O(pc_asserted_i_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_12
       (.I0(pc_status[8]),
        .I1(pc_status[9]),
        .I2(pc_status[6]),
        .I3(pc_status[7]),
        .I4(pc_status[5]),
        .I5(pc_status[4]),
        .O(pc_asserted_i_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_13
       (.I0(pc_status[140]),
        .I1(pc_status[141]),
        .I2(pc_status[138]),
        .I3(pc_status[139]),
        .I4(pc_status[137]),
        .I5(pc_status[136]),
        .O(pc_asserted_i_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_14
       (.I0(pc_status[146]),
        .I1(pc_status[147]),
        .I2(pc_status[144]),
        .I3(pc_status[145]),
        .I4(pc_status[143]),
        .I5(pc_status[142]),
        .O(pc_asserted_i_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_15
       (.I0(pc_status[128]),
        .I1(pc_status[129]),
        .I2(pc_status[126]),
        .I3(pc_status[127]),
        .I4(pc_status[125]),
        .I5(pc_status[124]),
        .O(pc_asserted_i_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_16
       (.I0(pc_status[134]),
        .I1(pc_status[135]),
        .I2(pc_status[132]),
        .I3(pc_status[133]),
        .I4(pc_status[131]),
        .I5(pc_status[130]),
        .O(pc_asserted_i_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_17
       (.I0(pc_status[122]),
        .I1(pc_status[123]),
        .I2(pc_status[120]),
        .I3(pc_status[121]),
        .I4(pc_status[119]),
        .I5(pc_status[118]),
        .O(pc_asserted_i_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_18
       (.I0(pc_status[116]),
        .I1(pc_status[117]),
        .I2(pc_status[114]),
        .I3(pc_status[115]),
        .I4(pc_status[113]),
        .I5(pc_status[112]),
        .O(pc_asserted_i_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_19
       (.I0(pc_status[158]),
        .I1(pc_status[159]),
        .I2(pc_status[156]),
        .I3(pc_status[157]),
        .I4(pc_status[155]),
        .I5(pc_status[154]),
        .O(pc_asserted_i_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_2
       (.I0(pc_asserted_i_i_7_n_0),
        .I1(pc_asserted_i_i_8_n_0),
        .I2(pc_asserted_i_i_9_n_0),
        .I3(pc_asserted_i_i_10_n_0),
        .I4(pc_asserted_i_i_11_n_0),
        .I5(pc_asserted_i_i_12_n_0),
        .O(pc_asserted_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_20
       (.I0(pc_status[152]),
        .I1(pc_status[153]),
        .I2(pc_status[150]),
        .I3(pc_status[151]),
        .I4(pc_status[149]),
        .I5(pc_status[148]),
        .O(pc_asserted_i_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_21
       (.I0(pc_status[104]),
        .I1(pc_status[105]),
        .I2(pc_status[102]),
        .I3(pc_status[103]),
        .I4(pc_status[101]),
        .I5(pc_status[100]),
        .O(pc_asserted_i_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_22
       (.I0(pc_status[110]),
        .I1(pc_status[111]),
        .I2(pc_status[108]),
        .I3(pc_status[109]),
        .I4(pc_status[107]),
        .I5(pc_status[106]),
        .O(pc_asserted_i_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_23
       (.I0(pc_status[92]),
        .I1(pc_status[93]),
        .I2(pc_status[90]),
        .I3(pc_status[91]),
        .I4(pc_status[89]),
        .I5(pc_status[88]),
        .O(pc_asserted_i_i_23_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_24
       (.I0(pc_status[98]),
        .I1(pc_status[99]),
        .I2(pc_status[96]),
        .I3(pc_status[97]),
        .I4(pc_status[95]),
        .I5(pc_status[94]),
        .O(pc_asserted_i_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_25
       (.I0(pc_status[86]),
        .I1(pc_status[87]),
        .I2(pc_status[84]),
        .I3(pc_status[85]),
        .I4(pc_status[83]),
        .I5(pc_status[82]),
        .O(pc_asserted_i_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_26
       (.I0(pc_status[80]),
        .I1(pc_status[81]),
        .I2(pc_status[78]),
        .I3(pc_status[79]),
        .I4(pc_status[77]),
        .I5(pc_status[76]),
        .O(pc_asserted_i_i_26_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_27
       (.I0(pc_status[68]),
        .I1(pc_status[69]),
        .I2(pc_status[66]),
        .I3(pc_status[67]),
        .I4(pc_status[65]),
        .I5(pc_status[64]),
        .O(pc_asserted_i_i_27_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_28
       (.I0(pc_status[74]),
        .I1(pc_status[75]),
        .I2(pc_status[72]),
        .I3(pc_status[73]),
        .I4(pc_status[71]),
        .I5(pc_status[70]),
        .O(pc_asserted_i_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_29
       (.I0(pc_status[56]),
        .I1(pc_status[57]),
        .I2(pc_status[54]),
        .I3(pc_status[55]),
        .I4(pc_status[53]),
        .I5(pc_status[52]),
        .O(pc_asserted_i_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_3
       (.I0(pc_asserted_i_i_13_n_0),
        .I1(pc_asserted_i_i_14_n_0),
        .I2(pc_asserted_i_i_15_n_0),
        .I3(pc_asserted_i_i_16_n_0),
        .I4(pc_asserted_i_i_17_n_0),
        .I5(pc_asserted_i_i_18_n_0),
        .O(pc_asserted_i_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_30
       (.I0(pc_status[62]),
        .I1(pc_status[63]),
        .I2(pc_status[60]),
        .I3(pc_status[61]),
        .I4(pc_status[59]),
        .I5(pc_status[58]),
        .O(pc_asserted_i_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_31
       (.I0(pc_status[50]),
        .I1(pc_status[51]),
        .I2(pc_status[48]),
        .I3(pc_status[49]),
        .I4(pc_status[47]),
        .I5(pc_status[46]),
        .O(pc_asserted_i_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_32
       (.I0(pc_status[44]),
        .I1(pc_status[45]),
        .I2(pc_status[42]),
        .I3(pc_status[43]),
        .I4(pc_status[41]),
        .I5(pc_status[40]),
        .O(pc_asserted_i_i_32_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_4
       (.I0(pc_status[2]),
        .I1(pc_status[3]),
        .I2(pc_status[0]),
        .I3(pc_status[1]),
        .I4(pc_asserted_i_i_19_n_0),
        .I5(pc_asserted_i_i_20_n_0),
        .O(pc_asserted_i_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_5
       (.I0(pc_asserted_i_i_21_n_0),
        .I1(pc_asserted_i_i_22_n_0),
        .I2(pc_asserted_i_i_23_n_0),
        .I3(pc_asserted_i_i_24_n_0),
        .I4(pc_asserted_i_i_25_n_0),
        .I5(pc_asserted_i_i_26_n_0),
        .O(pc_asserted_i_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_6
       (.I0(pc_asserted_i_i_27_n_0),
        .I1(pc_asserted_i_i_28_n_0),
        .I2(pc_asserted_i_i_29_n_0),
        .I3(pc_asserted_i_i_30_n_0),
        .I4(pc_asserted_i_i_31_n_0),
        .I5(pc_asserted_i_i_32_n_0),
        .O(pc_asserted_i_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_7
       (.I0(pc_status[32]),
        .I1(pc_status[33]),
        .I2(pc_status[30]),
        .I3(pc_status[31]),
        .I4(pc_status[29]),
        .I5(pc_status[28]),
        .O(pc_asserted_i_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_8
       (.I0(pc_status[38]),
        .I1(pc_status[39]),
        .I2(pc_status[36]),
        .I3(pc_status[37]),
        .I4(pc_status[35]),
        .I5(pc_status[34]),
        .O(pc_asserted_i_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_9
       (.I0(pc_status[20]),
        .I1(pc_status[21]),
        .I2(pc_status[18]),
        .I3(pc_status[19]),
        .I4(pc_status[17]),
        .I5(pc_status[16]),
        .O(pc_asserted_i_i_9_n_0));
  FDRE pc_asserted_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_asserted_i_i_1_n_0),
        .Q(pc_asserted),
        .R(1'b0));
  FDRE rcam_overflow_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i ),
        .Q(rcam_overflow_q),
        .R(1'b0));
  FDRE \rdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[0]),
        .Q(rdata_q[0]),
        .R(1'b0));
  FDRE \rdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[10]),
        .Q(rdata_q[10]),
        .R(1'b0));
  FDRE \rdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[11]),
        .Q(rdata_q[11]),
        .R(1'b0));
  FDRE \rdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[12]),
        .Q(rdata_q[12]),
        .R(1'b0));
  FDRE \rdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[13]),
        .Q(rdata_q[13]),
        .R(1'b0));
  FDRE \rdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[14]),
        .Q(rdata_q[14]),
        .R(1'b0));
  FDRE \rdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[15]),
        .Q(rdata_q[15]),
        .R(1'b0));
  FDRE \rdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[16]),
        .Q(rdata_q[16]),
        .R(1'b0));
  FDRE \rdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[17]),
        .Q(rdata_q[17]),
        .R(1'b0));
  FDRE \rdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[18]),
        .Q(rdata_q[18]),
        .R(1'b0));
  FDRE \rdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[19]),
        .Q(rdata_q[19]),
        .R(1'b0));
  FDRE \rdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[1]),
        .Q(rdata_q[1]),
        .R(1'b0));
  FDRE \rdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[20]),
        .Q(rdata_q[20]),
        .R(1'b0));
  FDRE \rdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[21]),
        .Q(rdata_q[21]),
        .R(1'b0));
  FDRE \rdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[22]),
        .Q(rdata_q[22]),
        .R(1'b0));
  FDRE \rdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[23]),
        .Q(rdata_q[23]),
        .R(1'b0));
  FDRE \rdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[24]),
        .Q(rdata_q[24]),
        .R(1'b0));
  FDRE \rdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[25]),
        .Q(rdata_q[25]),
        .R(1'b0));
  FDRE \rdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[26]),
        .Q(rdata_q[26]),
        .R(1'b0));
  FDRE \rdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[27]),
        .Q(rdata_q[27]),
        .R(1'b0));
  FDRE \rdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[28]),
        .Q(rdata_q[28]),
        .R(1'b0));
  FDRE \rdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[29]),
        .Q(rdata_q[29]),
        .R(1'b0));
  FDRE \rdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[2]),
        .Q(rdata_q[2]),
        .R(1'b0));
  FDRE \rdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[30]),
        .Q(rdata_q[30]),
        .R(1'b0));
  FDRE \rdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[31]),
        .Q(rdata_q[31]),
        .R(1'b0));
  FDRE \rdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[3]),
        .Q(rdata_q[3]),
        .R(1'b0));
  FDRE \rdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[4]),
        .Q(rdata_q[4]),
        .R(1'b0));
  FDRE \rdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[5]),
        .Q(rdata_q[5]),
        .R(1'b0));
  FDRE \rdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[6]),
        .Q(rdata_q[6]),
        .R(1'b0));
  FDRE \rdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[7]),
        .Q(rdata_q[7]),
        .R(1'b0));
  FDRE \rdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[8]),
        .Q(rdata_q[8]),
        .R(1'b0));
  FDRE \rdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[9]),
        .Q(rdata_q[9]),
        .R(1'b0));
  FDRE \rdata_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[0]),
        .Q(rdata_qq[0]),
        .R(1'b0));
  FDRE \rdata_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[10]),
        .Q(rdata_qq[10]),
        .R(1'b0));
  FDRE \rdata_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[11]),
        .Q(rdata_qq[11]),
        .R(1'b0));
  FDRE \rdata_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[12]),
        .Q(rdata_qq[12]),
        .R(1'b0));
  FDRE \rdata_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[13]),
        .Q(rdata_qq[13]),
        .R(1'b0));
  FDRE \rdata_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[14]),
        .Q(rdata_qq[14]),
        .R(1'b0));
  FDRE \rdata_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[15]),
        .Q(rdata_qq[15]),
        .R(1'b0));
  FDRE \rdata_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[16]),
        .Q(rdata_qq[16]),
        .R(1'b0));
  FDRE \rdata_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[17]),
        .Q(rdata_qq[17]),
        .R(1'b0));
  FDRE \rdata_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[18]),
        .Q(rdata_qq[18]),
        .R(1'b0));
  FDRE \rdata_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[19]),
        .Q(rdata_qq[19]),
        .R(1'b0));
  FDRE \rdata_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[1]),
        .Q(rdata_qq[1]),
        .R(1'b0));
  FDRE \rdata_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[20]),
        .Q(rdata_qq[20]),
        .R(1'b0));
  FDRE \rdata_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[21]),
        .Q(rdata_qq[21]),
        .R(1'b0));
  FDRE \rdata_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[22]),
        .Q(rdata_qq[22]),
        .R(1'b0));
  FDRE \rdata_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[23]),
        .Q(rdata_qq[23]),
        .R(1'b0));
  FDRE \rdata_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[24]),
        .Q(rdata_qq[24]),
        .R(1'b0));
  FDRE \rdata_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[25]),
        .Q(rdata_qq[25]),
        .R(1'b0));
  FDRE \rdata_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[26]),
        .Q(rdata_qq[26]),
        .R(1'b0));
  FDRE \rdata_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[27]),
        .Q(rdata_qq[27]),
        .R(1'b0));
  FDRE \rdata_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[28]),
        .Q(rdata_qq[28]),
        .R(1'b0));
  FDRE \rdata_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[29]),
        .Q(rdata_qq[29]),
        .R(1'b0));
  FDRE \rdata_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[2]),
        .Q(rdata_qq[2]),
        .R(1'b0));
  FDRE \rdata_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[30]),
        .Q(rdata_qq[30]),
        .R(1'b0));
  FDRE \rdata_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[31]),
        .Q(rdata_qq[31]),
        .R(1'b0));
  FDRE \rdata_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[3]),
        .Q(rdata_qq[3]),
        .R(1'b0));
  FDRE \rdata_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[4]),
        .Q(rdata_qq[4]),
        .R(1'b0));
  FDRE \rdata_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[5]),
        .Q(rdata_qq[5]),
        .R(1'b0));
  FDRE \rdata_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[6]),
        .Q(rdata_qq[6]),
        .R(1'b0));
  FDRE \rdata_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[7]),
        .Q(rdata_qq[7]),
        .R(1'b0));
  FDRE \rdata_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[8]),
        .Q(rdata_qq[8]),
        .R(1'b0));
  FDRE \rdata_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[9]),
        .Q(rdata_qq[9]),
        .R(1'b0));
  FDRE resetn_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(resetn_q),
        .R(1'b0));
  FDRE resetn_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(resetn_q),
        .Q(resetn_qq),
        .R(1'b0));
  FDRE \rid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rid_index),
        .Q(rid_index_q),
        .R(1'b0));
  FDRE rid_mismatch_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rid_mismatch),
        .Q(rid_mismatch_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rready),
        .Q(rready_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rready_q),
        .Q(rready_qq),
        .R(1'b0));
  FDRE \rresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[0]),
        .Q(rresp_q[0]),
        .R(1'b0));
  FDRE \rresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[1]),
        .Q(rresp_q[1]),
        .R(1'b0));
  FDRE \rresp_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rresp_q[0]),
        .Q(rresp_qq[0]),
        .R(1'b0));
  FDRE \rresp_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(rresp_q[1]),
        .Q(rresp_qq[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rvalid),
        .Q(rvalid_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rvalid_q),
        .Q(rvalid_qq),
        .R(1'b0));
  FDRE wcam_overflow_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_threadcam.w_threadcam_n_3 ),
        .Q(wcam_overflow_q),
        .R(1'b0));
  FDRE \wdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[0]),
        .Q(wdata_q[0]),
        .R(1'b0));
  FDRE \wdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[10]),
        .Q(wdata_q[10]),
        .R(1'b0));
  FDRE \wdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[11]),
        .Q(wdata_q[11]),
        .R(1'b0));
  FDRE \wdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[12]),
        .Q(wdata_q[12]),
        .R(1'b0));
  FDRE \wdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[13]),
        .Q(wdata_q[13]),
        .R(1'b0));
  FDRE \wdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[14]),
        .Q(wdata_q[14]),
        .R(1'b0));
  FDRE \wdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[15]),
        .Q(wdata_q[15]),
        .R(1'b0));
  FDRE \wdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[16]),
        .Q(wdata_q[16]),
        .R(1'b0));
  FDRE \wdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[17]),
        .Q(wdata_q[17]),
        .R(1'b0));
  FDRE \wdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[18]),
        .Q(wdata_q[18]),
        .R(1'b0));
  FDRE \wdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[19]),
        .Q(wdata_q[19]),
        .R(1'b0));
  FDRE \wdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[1]),
        .Q(wdata_q[1]),
        .R(1'b0));
  FDRE \wdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[20]),
        .Q(wdata_q[20]),
        .R(1'b0));
  FDRE \wdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[21]),
        .Q(wdata_q[21]),
        .R(1'b0));
  FDRE \wdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[22]),
        .Q(wdata_q[22]),
        .R(1'b0));
  FDRE \wdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[23]),
        .Q(wdata_q[23]),
        .R(1'b0));
  FDRE \wdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[24]),
        .Q(wdata_q[24]),
        .R(1'b0));
  FDRE \wdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[25]),
        .Q(wdata_q[25]),
        .R(1'b0));
  FDRE \wdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[26]),
        .Q(wdata_q[26]),
        .R(1'b0));
  FDRE \wdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[27]),
        .Q(wdata_q[27]),
        .R(1'b0));
  FDRE \wdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[28]),
        .Q(wdata_q[28]),
        .R(1'b0));
  FDRE \wdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[29]),
        .Q(wdata_q[29]),
        .R(1'b0));
  FDRE \wdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[2]),
        .Q(wdata_q[2]),
        .R(1'b0));
  FDRE \wdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[30]),
        .Q(wdata_q[30]),
        .R(1'b0));
  FDRE \wdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[31]),
        .Q(wdata_q[31]),
        .R(1'b0));
  FDRE \wdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[3]),
        .Q(wdata_q[3]),
        .R(1'b0));
  FDRE \wdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[4]),
        .Q(wdata_q[4]),
        .R(1'b0));
  FDRE \wdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[5]),
        .Q(wdata_q[5]),
        .R(1'b0));
  FDRE \wdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[6]),
        .Q(wdata_q[6]),
        .R(1'b0));
  FDRE \wdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[7]),
        .Q(wdata_q[7]),
        .R(1'b0));
  FDRE \wdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[8]),
        .Q(wdata_q[8]),
        .R(1'b0));
  FDRE \wdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[9]),
        .Q(wdata_q[9]),
        .R(1'b0));
  FDRE \wdata_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[0]),
        .Q(wdata_qq[0]),
        .R(1'b0));
  FDRE \wdata_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[10]),
        .Q(wdata_qq[10]),
        .R(1'b0));
  FDRE \wdata_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[11]),
        .Q(wdata_qq[11]),
        .R(1'b0));
  FDRE \wdata_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[12]),
        .Q(wdata_qq[12]),
        .R(1'b0));
  FDRE \wdata_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[13]),
        .Q(wdata_qq[13]),
        .R(1'b0));
  FDRE \wdata_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[14]),
        .Q(wdata_qq[14]),
        .R(1'b0));
  FDRE \wdata_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[15]),
        .Q(wdata_qq[15]),
        .R(1'b0));
  FDRE \wdata_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[16]),
        .Q(wdata_qq[16]),
        .R(1'b0));
  FDRE \wdata_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[17]),
        .Q(wdata_qq[17]),
        .R(1'b0));
  FDRE \wdata_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[18]),
        .Q(wdata_qq[18]),
        .R(1'b0));
  FDRE \wdata_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[19]),
        .Q(wdata_qq[19]),
        .R(1'b0));
  FDRE \wdata_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[1]),
        .Q(wdata_qq[1]),
        .R(1'b0));
  FDRE \wdata_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[20]),
        .Q(wdata_qq[20]),
        .R(1'b0));
  FDRE \wdata_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[21]),
        .Q(wdata_qq[21]),
        .R(1'b0));
  FDRE \wdata_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[22]),
        .Q(wdata_qq[22]),
        .R(1'b0));
  FDRE \wdata_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[23]),
        .Q(wdata_qq[23]),
        .R(1'b0));
  FDRE \wdata_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[24]),
        .Q(wdata_qq[24]),
        .R(1'b0));
  FDRE \wdata_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[25]),
        .Q(wdata_qq[25]),
        .R(1'b0));
  FDRE \wdata_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[26]),
        .Q(wdata_qq[26]),
        .R(1'b0));
  FDRE \wdata_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[27]),
        .Q(wdata_qq[27]),
        .R(1'b0));
  FDRE \wdata_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[28]),
        .Q(wdata_qq[28]),
        .R(1'b0));
  FDRE \wdata_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[29]),
        .Q(wdata_qq[29]),
        .R(1'b0));
  FDRE \wdata_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[2]),
        .Q(wdata_qq[2]),
        .R(1'b0));
  FDRE \wdata_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[30]),
        .Q(wdata_qq[30]),
        .R(1'b0));
  FDRE \wdata_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[31]),
        .Q(wdata_qq[31]),
        .R(1'b0));
  FDRE \wdata_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[3]),
        .Q(wdata_qq[3]),
        .R(1'b0));
  FDRE \wdata_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[4]),
        .Q(wdata_qq[4]),
        .R(1'b0));
  FDRE \wdata_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[5]),
        .Q(wdata_qq[5]),
        .R(1'b0));
  FDRE \wdata_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[6]),
        .Q(wdata_qq[6]),
        .R(1'b0));
  FDRE \wdata_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[7]),
        .Q(wdata_qq[7]),
        .R(1'b0));
  FDRE \wdata_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[8]),
        .Q(wdata_qq[8]),
        .R(1'b0));
  FDRE \wdata_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[9]),
        .Q(wdata_qq[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wready),
        .Q(wready_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wready_q),
        .Q(wready_qq),
        .R(1'b0));
  FDRE \wstrb_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[0]),
        .Q(wstrb_q[0]),
        .R(1'b0));
  FDRE \wstrb_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[1]),
        .Q(wstrb_q[1]),
        .R(1'b0));
  FDRE \wstrb_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[2]),
        .Q(wstrb_q[2]),
        .R(1'b0));
  FDRE \wstrb_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[3]),
        .Q(wstrb_q[3]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[0]),
        .Q(wstrb_qq[0]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[1]),
        .Q(wstrb_qq[1]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[2]),
        .Q(wstrb_qq[2]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[3]),
        .Q(wstrb_qq[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wvalid),
        .Q(wvalid_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wvalid_q),
        .Q(wvalid_qq),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QhM84C3xbaXn3pEOhvJTfGd+FdOaOJwmx/9m4aIsMOtoaIw3J4QGltD34FYafPyWiBfrmJvCgEpR
q0Pc4NYjcECi7ZPq6mbJUPIloqIPROyXB5/VuJRD45DQy4og+dUvyrBYmotnYKJA+rS7EY5M0fOC
Z7iAAljUtugOifQoyn4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qvnNcF9S1P4dFN5wtCXPlR9NlaEdO2bGcOIPyJV713UsTMro7ICyuWHTysymLByYVZ5QL21YSLnP
NJn9ErkWemZyPV0cqeNPEmpruLESJFNSuXwx5ZgQ+fuwDq1RVtdsUvpYRA+8fdGAOtaHTeVDlq6J
VLp9yBw6FWm7+iDbYCn9Kso5x1R4GtvwspH15Sy3gICZccMceUQP71SwBIReSd7hAre/u07kVj7+
ySUfCswLILbW9vOqMV95RXVCdUEbJj24Oo5wXRFBqJMMHQLSX0AMKc0WP81CJOzgjmJivhUlNj9S
4DyzOlVkKpxHfBCWZo7IXsk2td0g2Ium6U7nxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NB7lgLrNDS1tNusUgcoSmLcjqVzK122O2259vv3/rd/YHO7teYB+7ckVmp4AQ7sWc/muKb85bXGq
1N3vBwWN0KiFgI4vZqtLjCPdE1yK1m8D9+qMVJhN2sGrchbQrq/OuMMYP/pm/Ab+wAo1Ppu/TRsi
bWtNTrhZulQBREnmFZE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RsDqfqnl3XfMt8BXQ6bcHJI+diCfIPcX01SD5G/9zvBtEKqtjO5qRhfekM8ebBcUIwFC9NCMyEoE
LpLVSFfz+LUYptiW2lY/sDaur8Pce5FdyzyY0C1IyyxYB5FtQ92MfI77sNh9jQu0aPxdqcPKlvjs
RpAHDUYGLsFvAulO1fwCu+pB5VvO6Ca/VifnguBNvEloURVgSUUj4cdMMzc9sEOky/wq+Q3kD3wG
ueyx7BTwxbCIJuS0jckmN7laOvCXvJC4hrEo7w6iHg3NNmcfqBdn4kaug9Ow0jRvJsN3WuTTnirB
LFpIakalX7Nbiz6ystwyEsDI+r2L7D+387Snsw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qmF9gwWZknxdstM0/G8fkeuy5bdSm8TLj31p/DugNxL6NR/4F+eWO8ZPIE8+5c5vwYNdu6TXF3b8
bl3yOKocjvGbFHQTf9XrIhznNFQrCrQbmcomrnYpSm8exbSOD3MVfjxSKz3umWUBlTq8ApcNnDLt
biOLsNjoUA0BZxZqkv1XwXXVbh3s/pa33TxJJRBEfR1PX1sJbqyr2s0RXiywjlhFYbCNeXALfobG
YjGA3xsV8T+Amp0fmR2OhRbccdbBdnFaXWp+dIVn4Slj02K618+5NSZ2mzCxK2WZH6d2Zjhzv3It
cDf3ligSxxHZ5AO8h7hm4UunLxYxZsz34WFhrQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YnTiKfiOavTCyVLZMKcN+6v4rTWEK1Va/VAI1igM9Wu0S57OvOUmakzlTRz4MRf3oryZvo1tUuZ3
Dgc1toi0qb/Op/peFhDJSoR4XHcd2867EHqqypv6bmUMXlPomvbXzsaRah1RNB1QCm8s7bnwK6s3
5GEPkMhO2ObIz+t97xb4B+U9pzXKPV2eO5AssJbxl6knVQNovV5zpqClfybumtk6+DLc4mo4h2qd
KYhc1rVmOjW53UvGZsV9YgeO2KHyzRsTBZve2P1tioGDZJexuDiz+VYXLdZSovn0I2+MnYL+DC/e
QzHDlanJBEPCnV0tEGsFf/hwGZlaDHYCpx+BRA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QK0EuiU8L5tByOUVGjpB4jdjhMubMBLADIo0rRb1hX2vy3RffFF4ibgazK4snvp+LHcnBSi2DATm
QOTLIuNGvf6biExR3lcExrmsqHQYahBYcpejPTJxuSeUbbawTsNOWfAjrmxiNomw6MnhSu+LvQpv
/rn7YS/izwh+2wrU6PPmbSYEZEAbVlflv1+HnTWuNrqvDTfc5K4C/6KJ0em2xVdUfoD0sLfIgzqx
O+jMABIem3WrERSHo6ciBzhxhqoN7SwCbO5OCm4ntiVGBzl97olFnmcxZ0+ihNveyKOiuTLPuSvC
s8Ahv4oy0NlF9t5ZpeP4VzKdh5RYBnkMofF7Cw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
rCO5M3gCxc8YZ9QQMRmYlVg9QWxAwe083rFn5Bv/wvQXbrp329P+v6CoZWKErd2VFdxuxfRxBWqV
Xp8MB2Qe8IqlvyAiJjcqIuXzwa5aEJEcszHR8gMShDEMRC/bDK01jC9ypOuby2NiBjyDKCZ1e/FC
+K6q5wi7uvFuxtLtpvqlQocFLNIhIA9x4fvYo96UVYo9ecFRowBJmNe7VrHNd10Jx+a0Cu5e5+0B
tbM4CFgCMTAR9NJ8Vq+3qAS09Dyty3qLDnCi8CMXHX2SaqoD+d5Q8WOfJktb/itzjJbf275bRYFT
cfgnhUbkI6h4OUfMzm/w24Cul6m60euFhXge6Rj5zg4ZHhoJKdaHWSjIXRkkqsc4oEqd5nLqj6tG
qEgJ2W55gl9MAQxSqE5f6N8M1E8t4raZBVpZ/5c795a6CDnOj2ZJ1t2krw4L+YAaaQmwlCO1bZdX
nANJaTtJ56NSTJwUKHgdBr4yALNICmQOocy2Y5p38XiuEEtMNJHmhkIQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
djCYOBdFroOa9vF2CV72Kv5u6mlRNproZBCK9NQiHQo+LA/DScIgTIiIUT9j7SrZ2hgY+zDznZMQ
XtX+/B+n08lvVfsVCmSBiImbToMKXoIeaVd0EqrnsUS+LxtxBG1w1L/U44aYPgScofBhuyisM7X5
EaT6O/f1vMntSPU3gjLJ3KSlNS6O3vJeUoZUnR3CzNTg6otr/vwhIWWSbUwulfPqZwGPVKGjmcHc
7agbXYV1Fz0D4Tj81KGn1EfIJjqK4I5vKsB50TAz+z+/mlztfNOMKJmwZFW+et4ZbU++nFsNpX67
/mbc1ag3JIIDZQLHixnR2SsbbU6bwyzEmHzNBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20512)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Sep  6 17:41:06 2021
//Host        : adg-MS-7693 running 64-bit Ubuntu 21.04
//Command     : generate_target uart_bd_wrapper.bd
//Design      : uart_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_bd_wrapper
   (S_AXI_0_araddr,
    S_AXI_0_arready,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awready,
    S_AXI_0_awvalid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    S_AXI_1_araddr,
    S_AXI_1_arready,
    S_AXI_1_arvalid,
    S_AXI_1_awaddr,
    S_AXI_1_awready,
    S_AXI_1_awvalid,
    S_AXI_1_bready,
    S_AXI_1_bresp,
    S_AXI_1_bvalid,
    S_AXI_1_rdata,
    S_AXI_1_rready,
    S_AXI_1_rresp,
    S_AXI_1_rvalid,
    S_AXI_1_wdata,
    S_AXI_1_wready,
    S_AXI_1_wstrb,
    S_AXI_1_wvalid,
    UART_0_rxd,
    UART_0_txd,
    UART_1_rxd,
    UART_1_txd,
    interrupt_0,
    interrupt_1,
    s_axi_aclk_0,
    s_axi_aclk_1,
    s_axi_aresetn_0,
    s_axi_aresetn_1);
  input [3:0]S_AXI_0_araddr;
  output S_AXI_0_arready;
  input S_AXI_0_arvalid;
  input [3:0]S_AXI_0_awaddr;
  output S_AXI_0_awready;
  input S_AXI_0_awvalid;
  input S_AXI_0_bready;
  output [1:0]S_AXI_0_bresp;
  output S_AXI_0_bvalid;
  output [31:0]S_AXI_0_rdata;
  input S_AXI_0_rready;
  output [1:0]S_AXI_0_rresp;
  output S_AXI_0_rvalid;
  input [31:0]S_AXI_0_wdata;
  output S_AXI_0_wready;
  input [3:0]S_AXI_0_wstrb;
  input S_AXI_0_wvalid;
  input [3:0]S_AXI_1_araddr;
  output S_AXI_1_arready;
  input S_AXI_1_arvalid;
  input [3:0]S_AXI_1_awaddr;
  output S_AXI_1_awready;
  input S_AXI_1_awvalid;
  input S_AXI_1_bready;
  output [1:0]S_AXI_1_bresp;
  output S_AXI_1_bvalid;
  output [31:0]S_AXI_1_rdata;
  input S_AXI_1_rready;
  output [1:0]S_AXI_1_rresp;
  output S_AXI_1_rvalid;
  input [31:0]S_AXI_1_wdata;
  output S_AXI_1_wready;
  input [3:0]S_AXI_1_wstrb;
  input S_AXI_1_wvalid;
  input UART_0_rxd;
  output UART_0_txd;
  input UART_1_rxd;
  output UART_1_txd;
  output interrupt_0;
  output interrupt_1;
  input s_axi_aclk_0;
  input s_axi_aclk_1;
  input s_axi_aresetn_0;
  input s_axi_aresetn_1;

  wire [3:0]S_AXI_0_araddr;
  wire S_AXI_0_arready;
  wire S_AXI_0_arvalid;
  wire [3:0]S_AXI_0_awaddr;
  wire S_AXI_0_awready;
  wire S_AXI_0_awvalid;
  wire S_AXI_0_bready;
  wire [1:0]S_AXI_0_bresp;
  wire S_AXI_0_bvalid;
  wire [31:0]S_AXI_0_rdata;
  wire S_AXI_0_rready;
  wire [1:0]S_AXI_0_rresp;
  wire S_AXI_0_rvalid;
  wire [31:0]S_AXI_0_wdata;
  wire S_AXI_0_wready;
  wire [3:0]S_AXI_0_wstrb;
  wire S_AXI_0_wvalid;
  wire [3:0]S_AXI_1_araddr;
  wire S_AXI_1_arready;
  wire S_AXI_1_arvalid;
  wire [3:0]S_AXI_1_awaddr;
  wire S_AXI_1_awready;
  wire S_AXI_1_awvalid;
  wire S_AXI_1_bready;
  wire [1:0]S_AXI_1_bresp;
  wire S_AXI_1_bvalid;
  wire [31:0]S_AXI_1_rdata;
  wire S_AXI_1_rready;
  wire [1:0]S_AXI_1_rresp;
  wire S_AXI_1_rvalid;
  wire [31:0]S_AXI_1_wdata;
  wire S_AXI_1_wready;
  wire [3:0]S_AXI_1_wstrb;
  wire S_AXI_1_wvalid;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire UART_1_rxd;
  wire UART_1_txd;
  wire interrupt_0;
  wire interrupt_1;
  wire s_axi_aclk_0;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;

  uart_bd uart_bd_i
       (.S_AXI_0_araddr(S_AXI_0_araddr),
        .S_AXI_0_arready(S_AXI_0_arready),
        .S_AXI_0_arvalid(S_AXI_0_arvalid),
        .S_AXI_0_awaddr(S_AXI_0_awaddr),
        .S_AXI_0_awready(S_AXI_0_awready),
        .S_AXI_0_awvalid(S_AXI_0_awvalid),
        .S_AXI_0_bready(S_AXI_0_bready),
        .S_AXI_0_bresp(S_AXI_0_bresp),
        .S_AXI_0_bvalid(S_AXI_0_bvalid),
        .S_AXI_0_rdata(S_AXI_0_rdata),
        .S_AXI_0_rready(S_AXI_0_rready),
        .S_AXI_0_rresp(S_AXI_0_rresp),
        .S_AXI_0_rvalid(S_AXI_0_rvalid),
        .S_AXI_0_wdata(S_AXI_0_wdata),
        .S_AXI_0_wready(S_AXI_0_wready),
        .S_AXI_0_wstrb(S_AXI_0_wstrb),
        .S_AXI_0_wvalid(S_AXI_0_wvalid),
        .S_AXI_1_araddr(S_AXI_1_araddr),
        .S_AXI_1_arready(S_AXI_1_arready),
        .S_AXI_1_arvalid(S_AXI_1_arvalid),
        .S_AXI_1_awaddr(S_AXI_1_awaddr),
        .S_AXI_1_awready(S_AXI_1_awready),
        .S_AXI_1_awvalid(S_AXI_1_awvalid),
        .S_AXI_1_bready(S_AXI_1_bready),
        .S_AXI_1_bresp(S_AXI_1_bresp),
        .S_AXI_1_bvalid(S_AXI_1_bvalid),
        .S_AXI_1_rdata(S_AXI_1_rdata),
        .S_AXI_1_rready(S_AXI_1_rready),
        .S_AXI_1_rresp(S_AXI_1_rresp),
        .S_AXI_1_rvalid(S_AXI_1_rvalid),
        .S_AXI_1_wdata(S_AXI_1_wdata),
        .S_AXI_1_wready(S_AXI_1_wready),
        .S_AXI_1_wstrb(S_AXI_1_wstrb),
        .S_AXI_1_wvalid(S_AXI_1_wvalid),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .UART_1_rxd(UART_1_rxd),
        .UART_1_txd(UART_1_txd),
        .interrupt_0(interrupt_0),
        .interrupt_1(interrupt_1),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aclk_1(s_axi_aclk_1),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_aresetn_1(s_axi_aresetn_1));
endmodule

`timescale 1ns / 1ps  
module uart_top (
  input               clk    ,
  input               rst    ,
  input               in1    ,
  output  reg         out1    ,
  output  reg         out2
);


  // localparam (local constant)

  // wire

  // reg
  

  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------

  uart_bd_wrapper uart_bd_wrapper0 (
    .S_AXI_0_araddr       (S_AXI_0_araddr  )   ,
    .S_AXI_0_arready      (S_AXI_0_arready )    ,
    .S_AXI_0_arvalid      (S_AXI_0_arvalid )    ,
    .S_AXI_0_awaddr       (S_AXI_0_awaddr  )   ,
    .S_AXI_0_awready      (S_AXI_0_awready )    ,
    .S_AXI_0_awvalid      (S_AXI_0_awvalid )    ,
    .S_AXI_0_bready       (S_AXI_0_bready  )   ,
    .S_AXI_0_bresp        (S_AXI_0_bresp   )  ,
    .S_AXI_0_bvalid       (S_AXI_0_bvalid  )   ,
    .S_AXI_0_rdata        (S_AXI_0_rdata   )  ,
    .S_AXI_0_rready       (S_AXI_0_rready  )   ,
    .S_AXI_0_rresp        (S_AXI_0_rresp   )  ,
    .S_AXI_0_rvalid       (S_AXI_0_rvalid  )   ,
    .S_AXI_0_wdata        (S_AXI_0_wdata   )  ,
    .S_AXI_0_wready       (S_AXI_0_wready  )   ,
    .S_AXI_0_wstrb        (S_AXI_0_wstrb   )  ,
    .S_AXI_0_wvalid       (S_AXI_0_wvalid  )   ,
    .S_AXI_1_araddr       (S_AXI_1_araddr  )   ,
    .S_AXI_1_arready      (S_AXI_1_arready )    ,
    .S_AXI_1_arvalid      (S_AXI_1_arvalid )    ,
    .S_AXI_1_awaddr       (S_AXI_1_awaddr  )   ,
    .S_AXI_1_awready      (S_AXI_1_awready )    ,
    .S_AXI_1_awvalid      (S_AXI_1_awvalid )    ,
    .S_AXI_1_bready       (S_AXI_1_bready  )   ,
    .S_AXI_1_bresp        (S_AXI_1_bresp   )  ,
    .S_AXI_1_bvalid       (S_AXI_1_bvalid  )   ,
    .S_AXI_1_rdata        (S_AXI_1_rdata   )  ,
    .S_AXI_1_rready       (S_AXI_1_rready  )   ,
    .S_AXI_1_rresp        (S_AXI_1_rresp   )  ,
    .S_AXI_1_rvalid       (S_AXI_1_rvalid  )   ,
    .S_AXI_1_wdata        (S_AXI_1_wdata   )  ,
    .S_AXI_1_wready       (S_AXI_1_wready  )   ,
    .S_AXI_1_wstrb        (S_AXI_1_wstrb   )  ,
    .S_AXI_1_wvalid       (S_AXI_1_wvalid  )   ,
    .UART_0_rxd           (UART_0_rxd      )  ,
    .UART_0_txd           (UART_0_txd      )  ,
    .UART_1_rxd           (UART_1_rxd      )  ,
    .UART_1_txd           (UART_1_txd      )  ,
    .interrupt_0          (interrupt_0     ),
    .interrupt_1          (interrupt_1     ),
    .s_axi_aclk_0         (s_axi_aclk_0    ) ,
    .s_axi_aclk_1         (s_axi_aclk_1    ) ,
    .s_axi_aresetn_0      (s_axi_aresetn_0 )    ,
    .s_axi_aresetn_1      (s_axi_aresetn_1 )
  );

  //-----------------------------------------------------------------------------
  // logic
  //-----------------------------------------------------------------------------



endmodule
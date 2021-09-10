
`timescale 1ns / 1ps  // <time_unit>/<time_precision>
  // time_unit: measurement of delays / simulation time (#10 = 10<time_unit>)
  // time_precision: how delay values are rounded before being used in simulation (degree of accuracy of the time unit)


module uart_top_tb ;

  //---------------------------------------------------------------------------
  // AXI interface
  //---------------------------------------------------------------------------

  wire                  ACLK;            // AXI clock
  reg                   ARESETN  = 0;    // AXI reset
  
  reg  [31:0]           AWADDR_0   = 0;    // Write Channel : Address
  reg                   AWVALID_0  = 0;    //
  wire                  AWREADY_0;         //
  reg  [31:0]           WDATA_0    = 0;    // Write Channel : Data
  reg                   WVALID_0   = 0;    //
  wire                  WREADY_0;          //
  wire [ 1:0]           BRESP_0;           // Write Channel : Response
  wire                  BVALID_0;          //
  reg                   BREADY_0   = 0;    //
  reg  [31:0]           ARADDR_0   = 0;    // Read Channel  : Address
  reg                   ARVALID_0  = 0;    //
  wire                  ARREADY_0;         //
  wire [31:0]           RDATA_0;           // Read Channel : Data
  wire                  RVALID_0;          //
  reg                   RREADY_0   = 0;    //
  wire [ 1:0]           RRESP_0;           // Read Channel  : Response

  reg  [31:0]           AWADDR_1   = 0;    // Write Channel : Address
  reg                   AWVALID_1  = 0;    //
  wire                  AWREADY_1;         //
  reg  [31:0]           WDATA_1    = 0;    // Write Channel : Data
  reg                   WVALID_1   = 0;    //
  wire                  WREADY_1;          //
  wire [ 1:0]           BRESP_1;           // Write Channel : Response
  wire                  BVALID_1;          //
  reg                   BREADY_1   = 0;    //
  reg  [31:0]           ARADDR_1   = 0;    // Read Channel  : Address
  reg                   ARVALID_1  = 0;    //
  wire                  ARREADY_1;         //
  wire [31:0]           RDATA_1;           // Read Channel : Data
  wire                  RVALID_1;          //
  reg                   RREADY_1   = 0;    //
  wire [ 1:0]           RRESP_1;           // Read Channel  : Response


  reg                   waddr_en_0 = 0;
  reg [31:0]            waddr_0;
  reg                   wdata_en_0 = 0;
  reg [31:0]            wdata_i_0;
  reg                   wresp_en_0 = 0;
  reg [31:0]            raddr_0;
  reg                   raddr_en_0 = 0;
  reg                   rdata_en_0 = 0;
          
  reg                   waddr_en_1 = 0;
  reg [31:0]            waddr_1;
  reg                   wdata_en_1 = 0;
  reg [31:0]            wdata_i_1;
  reg                   wresp_en_1 = 0;
  reg [31:0]            raddr_1;
  reg                   raddr_en_1 = 0;
  reg                   rdata_en_1 = 0;  


  // localparam : 'constant', cannot be modified (state machines?)

  // wire
  wire clk_i;
  wire rsd_i;
  wire cntr3;
  wire [3:0] count4_q;
  wire i2c_int;
 
  wire sda_i;
  wire sda_o;
  wire sda_t;
  wire scl_i;
  wire scl_o;
  wire scl_t;

  wire UART_0_txd;
  wire UART_1_txd;

  // reg

  wire int0;
  wire int1;
  reg int0_clr = 0;
  reg int0_latch;
  reg int1_clr = 0;
  reg int1_latch;  


  reg         clk = 0;
  reg         axi_clk = 0;
  reg         rst;
  reg[3:0]    cntr= 0;
  reg         cnt_up;
  reg[31:0]   reg_val;

  reg [7:0]   adc_p;
  reg [7:0]   adc_n;
  reg         ref_clk300 = 0;
  
  reg         dbg = 0;


  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------

axi_protocol_checker_0 apc0 (
  .pc_status(),                   // output wire [159 : 0] pc_status
  .pc_asserted(),                 // output wire pc_asserted
  .aclk           (ACLK),               // input wire aclk
  .aresetn        (ARESETN),         // input wire aresetn
  .pc_axi_awaddr  (AWADDR_0),  // input wire [31 : 0] pc_axi_awaddr
  .pc_axi_awvalid (AWVALID_0), // input wire pc_axi_awvalid
  .pc_axi_awready (AWREADY_0), // input wire pc_axi_awready
  .pc_axi_wdata   (WDATA_0),   // input wire [31 : 0] pc_axi_wdata
  .pc_axi_wvalid  (WVALID_0),  // input wire pc_axi_wvalid
  .pc_axi_wready  (WREADY_0),  // input wire pc_axi_wready
  .pc_axi_bresp   (BRESP_0),   // input wire [1 : 0] pc_axi_bresp
  .pc_axi_bvalid  (BVALID_0),  // input wire pc_axi_bvalid
  .pc_axi_bready  (BREADY_0),  // input wire pc_axi_bready
  .pc_axi_araddr  (ARADDR_0),  // input wire [31 : 0] pc_axi_araddr
  .pc_axi_arvalid (ARVALID_0), // input wire pc_axi_arvalid
  .pc_axi_arready (ARREADY_0), // input wire pc_axi_arready
  .pc_axi_rdata   (RDATA_0),   // input wire [31 : 0] pc_axi_rdata
  .pc_axi_rresp   (RRESP_0),   // input wire [1 : 0] pc_axi_rresp
  .pc_axi_rvalid  (RVALID_0),  // input wire pc_axi_rvalid
  .pc_axi_rready  (RREADY_0),   // input wire pc_axi_rready
  .pc_axi_awprot  (3'b000),             // input wire [2 : 0] pc_axi_awprot
  .pc_axi_wstrb   (4'b1111),       // input wire [3 : 0] pc_axi_wstrb
  .pc_axi_arprot  (3'b000)             // input wire [2 : 0] pc_axi_arprot
);

axi_protocol_checker_0 apc1 (
  .pc_status(),                   // output wire [159 : 0] pc_status
  .pc_asserted(),                 // output wire pc_asserted
  .aclk           (ACLK),               // input wire aclk
  .aresetn        (ARESETN),         // input wire aresetn
  .pc_axi_awaddr  (AWADDR_1),  // input wire [31 : 0] pc_axi_awaddr
  .pc_axi_awvalid (AWVALID_1), // input wire pc_axi_awvalid
  .pc_axi_awready (AWREADY_1), // input wire pc_axi_awready
  .pc_axi_wdata   (WDATA_1),   // input wire [31 : 0] pc_axi_wdata
  .pc_axi_wvalid  (WVALID_1),  // input wire pc_axi_wvalid
  .pc_axi_wready  (WREADY_1),  // input wire pc_axi_wready
  .pc_axi_bresp   (BRESP_1),   // input wire [1 : 0] pc_axi_bresp
  .pc_axi_bvalid  (BVALID_1),  // input wire pc_axi_bvalid
  .pc_axi_bready  (BREADY_1),  // input wire pc_axi_bready
  .pc_axi_araddr  (ARADDR_1),  // input wire [31 : 0] pc_axi_araddr
  .pc_axi_arvalid (ARVALID_1), // input wire pc_axi_arvalid
  .pc_axi_arready (ARREADY_1), // input wire pc_axi_arready
  .pc_axi_rdata   (RDATA_1),   // input wire [31 : 0] pc_axi_rdata
  .pc_axi_rresp   (RRESP_1),   // input wire [1 : 0] pc_axi_rresp
  .pc_axi_rvalid  (RVALID_1),  // input wire pc_axi_rvalid
  .pc_axi_rready  (RREADY_1),   // input wire pc_axi_rready
  .pc_axi_awprot  (3'b000),             // input wire [2 : 0] pc_axi_awprot
  .pc_axi_wstrb   (4'b1111),       // input wire [3 : 0] pc_axi_wstrb
  .pc_axi_arprot  (3'b000)             // input wire [2 : 0] pc_axi_arprot
);


uart_bd_wrapper uart_bd_wrapper0 (
  .S_AXI_0_araddr       (ARADDR_0[3:0]  )   ,
  .S_AXI_0_arready      (ARREADY_0 )    ,
  .S_AXI_0_arvalid      (ARVALID_0 )    ,
  .S_AXI_0_awaddr       (AWADDR_0[3:0]  )   ,
  .S_AXI_0_awready      (AWREADY_0 )    ,
  .S_AXI_0_awvalid      (AWVALID_0 )    ,
  .S_AXI_0_bready       (BREADY_0  )   ,
  .S_AXI_0_bresp        (BRESP_0   )  ,
  .S_AXI_0_bvalid       (BVALID_0  )   ,
  .S_AXI_0_rdata        (RDATA_0   )  ,
  .S_AXI_0_rready       (RREADY_0  )   ,
  .S_AXI_0_rresp        (RRESP_0   )  ,
  .S_AXI_0_rvalid       (RVALID_0  )   ,
  .S_AXI_0_wdata        (WDATA_0   )  ,
  .S_AXI_0_wready       (WREADY_0  )   ,
  .S_AXI_0_wstrb        (4'b1111   )  ,
  .S_AXI_0_wvalid       (WVALID_0  )   ,
  .S_AXI_1_araddr       (ARADDR_1[3:0]  )   ,
  .S_AXI_1_arready      (ARREADY_1 )    ,
  .S_AXI_1_arvalid      (ARVALID_1 )    ,
  .S_AXI_1_awaddr       (AWADDR_1[3:0]  )   ,
  .S_AXI_1_awready      (AWREADY_1 )    ,
  .S_AXI_1_awvalid      (AWVALID_1 )    ,
  .S_AXI_1_bready       (BREADY_1  )   ,
  .S_AXI_1_bresp        (BRESP_1   )  ,
  .S_AXI_1_bvalid       (BVALID_1  )   ,
  .S_AXI_1_rdata        (RDATA_1   )  ,
  .S_AXI_1_rready       (RREADY_1  )   ,
  .S_AXI_1_rresp        (RRESP_1   )  ,
  .S_AXI_1_rvalid       (RVALID_1  )   ,
  .S_AXI_1_wdata        (WDATA_1   )  ,
  .S_AXI_1_wready       (WREADY_1  )   ,
  .S_AXI_1_wstrb        (4'b1111   )  ,
  .S_AXI_1_wvalid       (WVALID_1  )   ,
  .UART_0_rxd           (UART_1_txd)  ,
  .UART_0_txd           (UART_0_txd)  ,
  .UART_1_rxd           (UART_0_txd)  ,
  .UART_1_txd           (UART_1_txd)  ,
  .interrupt_0          (int0),
  .interrupt_1          (int1),
  .s_axi_aclk_0         (ACLK    ) ,
  .s_axi_aclk_1         (ACLK    ) ,
  .s_axi_aresetn_0      (ARESETN )    ,
  .s_axi_aresetn_1      (ARESETN )
);


  //-----------------------------------------------------------------------------
  // stimulus
  //-----------------------------------------------------------------------------

  assign clk_i = clk;
  assign rst_i = rst;
  assign cntr3 = cntr[3];


  always #2 clk = ~clk; // 250mhz period = 4ns, invert every 2ns
  always #3.3 ref_clk300 = ~ref_clk300;
  always #5 axi_clk = ~axi_clk; // 100mhz 

  //always @ (posedge clk, posedge rst) //async reset
  always @ (posedge clk) // sync reset
  begin : counter_block
    if (rst) begin
      cntr <= 0;
    end else if (cnt_up) begin
      cntr <= cntr + 1;
    end else begin
      cntr <= cntr - 1;
    end
  end


  always @ (posedge ACLK) begin : uart_int_latch
    if (!ARESETN || int0_clr)
      int0_latch <= 0;
    else if (int0)
      int0_latch <= 1;
 
    if (!ARESETN || int1_clr)
      int1_latch <= 0;
    else if (int1)
      int1_latch <= 1;
  end 



  initial
  begin : reset_stimulus                             //                                      
    rst <= 1;                                        //  1010 A                         
    ARESETN <= 0;                                    //  1011 B                             
    cnt_up <= 1;                                     //  1100 C                            
    #200;                                            //  1101 D                     
    rst <= 0;                                        //  1110 E                         
    ARESETN <= 1;                                    //                               
    #4000;                                           //                        
    cnt_up <= 0;                                                                  

  end

  initial begin : axi_stim
    //$display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    #400;dbg1;
    $display("\n\n******START*******\n\n");
    

    axi_rd0(32'h0000_0008);dbg1; //STAT
    axi_rd1(32'h0000_0008);dbg1; //STAT
    axi_rd0(32'h0000_000C);dbg1; //CTRL
    axi_rd1(32'h0000_000C);dbg1; //CTRL
    
    axi_wr0(32'h0000_000C, 32'h0000_0010);dbg1;//CTRL
    axi_wr1(32'h0000_000C, 32'h0000_0010);dbg1;//CTRL

    axi_wr0(32'h0000_0004, 32'h0000_00AB);dbg1;//TX

    while (int0_latch != 1'b1)
      #1000;
    int0_clr = 1;#11;int0_clr = 0;
    axi_rd0(32'h0000_0008);dbg1; //STAT

    while (int1_latch != 1'b1)
      #1000;
    int1_clr = 1;#11;int1_clr = 0;
    axi_rd1(32'h0000_0008);dbg1; //STAT

    axi_rd1(32'h0000_0000);dbg1; //RX
    axi_rd1(32'h0000_0008);dbg1; //STAT



  end

  task dbg1;
    begin
      dbg <= 1;
      #1;
      dbg <= 0;
    end
  endtask

//-----------------------------------------------------------------------------
// axi tasks
//-----------------------------------------------------------------------------

  assign ACLK = axi_clk;


//----READ0--------------------------------------------------------------------
  task axi_rd0;
    input  [31:0] addr;
    reg    [31:0] data;
    begin

      @(negedge ACLK);
      raddr_en_0  = 1;
      raddr_0     = addr;
      
      // data follows address immediately
      rdata_en_0  = 1;

      @(negedge ACLK);
      raddr_en_0  = 0;
      raddr_0     = 0;

      while (RVALID_0 == 1'b0) 
        @(negedge ACLK);

      data = RDATA_0;

      @(negedge ACLK);
      rdata_en_0  = 0;  

      $display("Reg0 %h: %h", addr, data);
      @(negedge ACLK);@(negedge ACLK);//delay
    end
  endtask

  // 
  always @ (posedge ACLK) begin : axi_read_ch0
    // raddr chan
    if (raddr_en_0) begin
      ARADDR_0  <= raddr_0;
      ARVALID_0 <= 1;
    end else if (ARREADY_0) begin
      ARADDR_0  <= 0;
      ARVALID_0 <= 0;
    end
    // rdata chan
    if (!rdata_en_0)
      RREADY_0 <= 0;
    else if (rdata_en_0 && RVALID_0) 
      RREADY_0 <= 1;
    else if (rdata_en_0 && RREADY_0)
      RREADY_0 <= 0;
  end

//----READ1--------------------------------------------------------------------
  task axi_rd1;
    input  [31:0] addr;
    reg    [31:0] data;
    begin

      @(negedge ACLK);
      raddr_en_1  = 1;
      raddr_1     = addr;
      
      // data follows address immediately
      rdata_en_1  = 1;

      @(negedge ACLK);
      raddr_en_1  = 0;
      raddr_1     = 0;

      while (RVALID_1 == 1'b0) 
        @(negedge ACLK);

      data = RDATA_1;

      @(negedge ACLK);
      rdata_en_1  = 0;  

      $display("Reg1 %h: %h", addr, data);
      @(negedge ACLK);@(negedge ACLK);//delay
    end
  endtask

  // 
  always @ (posedge ACLK) begin : axi_read_ch_1
    // raddr chan
    if (raddr_en_1) begin
      ARADDR_1  <= raddr_1;
      ARVALID_1 <= 1;
    end else if (ARREADY_1) begin
      ARADDR_1  <= 0;
      ARVALID_1 <= 0;
    end
    // rdata chan
    if (!rdata_en_1)
      RREADY_1 <= 0;
    else if (rdata_en_1 && RVALID_1) 
      RREADY_1 <= 1;
    else if (rdata_en_1 && RREADY_1)
      RREADY_1 <= 0;
  end

//----WRITE0-------------------------------------------------------------------

  task axi_wr0;
    input [31:0] addr;
    input [31:0] data;
    begin
    // address and data on same cycle 
      @(negedge ACLK);
      waddr_en_0 = 1;
      waddr_0 = addr;
      wdata_en_0 = 1;
      wdata_i_0 = data;
      @(negedge ACLK);
      waddr_en_0 = 0;
      waddr_0 = 0;
      wdata_en_0 = 0;
      wdata_i_0 = 0;
    // response
      wresp_en_0 = 1;
      @(negedge ACLK);
      wresp_en_0 = 0;
      @(negedge ACLK);@(negedge ACLK);//delay
    end 
  endtask

  always @ (posedge ACLK) begin : axi_write_ch_0
    // waddr chan
    if (waddr_en_0) begin
      AWADDR_0  <= waddr_0;
      AWVALID_0 <= 1;
    end else if (AWREADY_0) begin
      AWADDR_0  <= 0;
      AWVALID_0 <= 0;
    end
    // wdata chan
    if (wdata_en_0) begin
      WDATA_0   <= wdata_i_0;
      WVALID_0  <= 1;
    end else if (WREADY_0) begin
      WDATA_0   <= 0;
      WVALID_0  <= 0;
    end 
    // wresp chan
    if (wresp_en_0)
      BREADY_0  <= 1;
    else if (BVALID_0)
      BREADY_0  <= 0;
  end 

//----WRITE1-------------------------------------------------------------------
  task axi_wr1;
    input [31:0] addr;
    input [31:0] data;
    begin
    // address and data on same cycle 
      @(negedge ACLK);
      waddr_en_1 = 1;
      waddr_1 = addr;
      wdata_en_1 = 1;
      wdata_i_1 = data;
      @(negedge ACLK);
      waddr_en_1 = 0;
      waddr_1 = 0;
      wdata_en_1 = 0;
      wdata_i_1 = 0;
    // response
      wresp_en_1 = 1;
      @(negedge ACLK);
      wresp_en_1 = 0;
      @(negedge ACLK);@(negedge ACLK);//delay
    end 
  endtask

  always @ (posedge ACLK) begin : axi_write_ch_1
    // waddr chan
    if (waddr_en_1) begin
      AWADDR_1  <= waddr_1;
      AWVALID_1 <= 1;
    end else if (AWREADY_1) begin
      AWADDR_1  <= 0;
      AWVALID_1 <= 0;
    end
    // wdata chan
    if (wdata_en_1) begin
      WDATA_1   <= wdata_i_1;
      WVALID_1  <= 1;
    end else if (WREADY_1) begin
      WDATA_1   <= 0;
      WVALID_1  <= 0;
    end 
    // wresp chan
    if (wresp_en_1)
      BREADY_1  <= 1;
    else if (BVALID_1)
      BREADY_1  <= 0;
  end 

endmodule


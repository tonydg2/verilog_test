// testbench 


`timescale 1ns / 1ps  // <time_unit>/<time_precision>
  // time_unit: measurement of delays / simulation time (#10 = 10<time_unit>)
  // time_precision: how delay values are rounded before being used in simulation (degree of accuracy of the time unit)


module tb2_top ;

  //---------------------------------------------------------------------------
  // AXI interface
  //---------------------------------------------------------------------------

  wire                  ACLK;            // AXI clock
  reg                   ARESETN  = 0;    // AXI reset
  reg  [31:0]           AWADDR   = 0;    // Write Channel : Address
  reg                   AWVALID  = 0;    //
  wire                  AWREADY;         //
  reg  [31:0]           WDATA    = 0;    // Write Channel : Data
  reg                   WVALID   = 0;    //
  wire                  WREADY;          //
  wire [ 1:0]           BRESP;           // Write Channel : Response
  wire                  BVALID;          //
  reg                   BREADY   = 0;    //
  reg  [31:0]           ARADDR   = 0;    // Read Channel  : Address
  reg                   ARVALID  = 0;    //
  wire                  ARREADY;         //
  wire [31:0]           RDATA;           // Read Channel : Data
  wire                  RVALID;          //
  reg                   RREADY   = 0;    //
  wire [ 1:0]           RRESP;           // Read Channel  : Response



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


  // reg
  reg         waddr_en = 0;
  reg [31:0]  waddr;
  reg         wdata_en = 0;
  reg [31:0]  wdata_i;
  reg         wresp_en = 0;
  reg [31:0]  raddr;
  reg         raddr_en = 0;
  reg         rdata_en = 0;
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

  top2 top2 (
    .clk        (clk_i),
    //.refclk     (ref_clk300),
    .rst        (rst_i),
    .in1        (cntr3),

    .out1       (), // unconnected (open)
    .out2       () 
  );

/*
  axi_slave axi_slave_VERILOG2(
    .ACLK         (ACLK),      // in                
    .ARESETN      (ARESETN),   // in             
    // read addr
    .ARADDR       (ARADDR),    // in            
    .ARPROT       (), // IN                
    .ARREADY      (ARREADY),   // out                
    .ARVALID      (ARVALID),   // in            
    // read data
    .RDATA        (RDATA),     // out                           
    .RREADY       (RREADY),    // in                       
    .RRESP        (RRESP),     // out                           
    .RVALID       (RVALID),    // out                         
    // write addr
    .AWADDR       (AWADDR),    // in                        
    .AWPROT       (), // IN                          
    .AWREADY      (AWREADY),   // out                         
    .AWVALID      (AWVALID),   // in                        
    // write data
    .WDATA        (WDATA),     // in                       
    .WREADY       (WREADY),   // out                          
    .WSTRB        (), // IN                           
    .WVALID       (WVALID),    // in         
    // write resp
    .BREADY       (BREADY),    // in                        
    .BRESP        (BRESP),     // out                           
    .BVALID       (BVALID)     // out                          
  );
*/



axi_protocol_checker_0 apc (
  .pc_status(),                   // output wire [159 : 0] pc_status
  .pc_asserted(),                 // output wire pc_asserted
  .aclk           (ACLK),               // input wire aclk
  .aresetn        (ARESETN),         // input wire aresetn
  .pc_axi_awaddr  (AWADDR),  // input wire [31 : 0] pc_axi_awaddr
  .pc_axi_awprot  (3'b000),             // input wire [2 : 0] pc_axi_awprot
  .pc_axi_awvalid (AWVALID), // input wire pc_axi_awvalid
  .pc_axi_awready (AWREADY), // input wire pc_axi_awready
  .pc_axi_wdata   (WDATA),   // input wire [31 : 0] pc_axi_wdata
  .pc_axi_wstrb   (4'b1111),       // input wire [3 : 0] pc_axi_wstrb
  .pc_axi_wvalid  (WVALID),  // input wire pc_axi_wvalid
  .pc_axi_wready  (WREADY),  // input wire pc_axi_wready
  .pc_axi_bresp   (BRESP),   // input wire [1 : 0] pc_axi_bresp
  .pc_axi_bvalid  (BVALID),  // input wire pc_axi_bvalid
  .pc_axi_bready  (BREADY),  // input wire pc_axi_bready
  .pc_axi_araddr  (ARADDR),  // input wire [31 : 0] pc_axi_araddr
  .pc_axi_arprot  (3'b000),             // input wire [2 : 0] pc_axi_arprot
  .pc_axi_arvalid (ARVALID), // input wire pc_axi_arvalid
  .pc_axi_arready (ARREADY), // input wire pc_axi_arready
  .pc_axi_rdata   (RDATA),   // input wire [31 : 0] pc_axi_rdata
  .pc_axi_rresp   (RRESP),   // input wire [1 : 0] pc_axi_rresp
  .pc_axi_rvalid  (RVALID),  // input wire pc_axi_rvalid
  .pc_axi_rready  (RREADY)   // input wire pc_axi_rready
);




axi_iic_0 i2c (
  .s_axi_aclk   (ACLK),                 // input wire s_axi_aclk
  .s_axi_aresetn(ARESETN),           // input wire s_axi_aresetn
  .s_axi_awaddr (AWADDR[8:0]),             // input wire [8 : 0] s_axi_awaddr
  .s_axi_awvalid(AWVALID),           // input wire s_axi_awvalid
  .s_axi_awready(AWREADY),           // output wire s_axi_awready
  .s_axi_wdata  (WDATA),               // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb  (4'b1111),               // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid (WVALID),             // input wire s_axi_wvalid
  .s_axi_wready (WREADY),             // output wire s_axi_wready
  .s_axi_bresp  (BRESP),               // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid (BVALID),             // output wire s_axi_bvalid
  .s_axi_bready (BREADY),             // input wire s_axi_bready
  .s_axi_araddr (ARADDR[8:0]),             // input wire [8 : 0] s_axi_araddr
  .s_axi_arvalid(ARVALID),           // input wire s_axi_arvalid
  .s_axi_arready(ARREADY),           // output wire s_axi_arready
  .s_axi_rdata  (RDATA),               // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp  (RRESP),               // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid (RVALID),             // output wire s_axi_rvalid
  .s_axi_rready (RREADY),             // input wire s_axi_rready
  .iic2intc_irpt(i2c_int),           // output wire iic2intc_irpt
  .sda_i        (),                  // input wire sda_i
  .sda_o        (),                  // output wire sda_o
  .sda_t        (),                  // output wire sda_t
  .scl_i        (),                  // input wire scl_i
  .scl_o        (),                  // output wire scl_o
  .scl_t        (),                  // output wire scl_t
  .gpo          ()                      // output wire [0 : 0] gpo
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
    
    //axi_write2(32'h43C0_0100, 32'h0000_0001);dbg1; //#100; // CR
    axi_write2(32'h43C0_001C, 32'h8000_0000);dbg1; //#100; // global interrupt enable
    axi_write2(32'h43C0_0028, 32'h0000_000f);dbg1; //#100; // interrupt enable
    axi_write2(32'h43C0_0110, 32'h0000_0018);dbg1; //#100; // ADR
    axi_write2(32'h43C0_0124, 32'h0000_0018);dbg1; //#100; // GPO
    axi_write2(32'h43C0_0108, 32'h0000_0112);dbg1; //#100; // tx fifo IIC device addr
    axi_write2(32'h43C0_0108, 32'h0000_00A3);dbg1; //#100; // tx fifo data
//    axi_write2(32'h43C0_0100, 32'h0000_0008);dbg1; //#100; // CR
//    axi_write2(32'h43C0_0100, 32'h0000_000C);dbg1; //#100; // CR
    axi_write2(32'h43C0_0100, 32'h0000_000D);dbg1; //#100; // CR
    #200;
    axi_write2(32'h43C0_0100, 32'h0000_000C);dbg1;
    axi_write2(32'h43C0_0020, 32'h0000_00ff);dbg1;
    #100;
    axi_write2(32'h43C0_0020, 32'h0000_00ff);dbg1;
    #100;
    axi_read3(32'h43C0_0020);dbg1;

//    while (i2c_int != 1'b1)
//      #10;

//    dbg1;
//    axi_read3(32'h43C0_0020);
//    axi_write2(32'h43C0_0020, 32'h0000_00d0);#100;axi_read3(32'h43C0_0020);dbg1;


//    axi_write2(32'h43C0_0108, 32'hDEAD_BEE2); #100; // tx fifo data
//    axi_write2(32'h43C0_0108, 32'hDEAD_BEE3); #100; // tx fifo data
//    axi_write2(32'h43C0_0100, 32'h0000_0009); #100; // CR
//    axi_write2(32'h43C0_0108, 32'hDEAD_BEE4); #100; // tx fifo data

//    axi_read3(32'h43C0_001C);
//    axi_read3(32'h43C0_0028);
//    axi_read3(32'h43C0_0100);



/*
    axi_read3(32'h43C0_001C);          
    axi_read3(32'h43C0_0020);
    axi_read3(32'h43C0_0028);
    axi_read3(32'h43C0_0100);
    axi_read3(32'h43C0_0104);
    axi_read3(32'h43C0_0110);
    axi_read3(32'h43C0_011C);
    axi_read3(32'h43C0_0124);
    axi_read3(32'h43C0_0128);
    axi_read3(32'h43C0_012C);
    axi_read3(32'h43C0_0130);
    axi_read3(32'h43C0_0134);
    axi_read3(32'h43C0_0138);
    axi_read3(32'h43C0_013C);
    axi_read3(32'h43C0_0140);
    axi_read3(32'h43C0_0144);
*/



/*    
    axi_write2(32'h43C00000, 32'h100fffff);
    axi_write2(32'h43C00004, 32'h200fffff);
    axi_write2(32'h43C00008, 32'h300fffff);
    //#100;
    //axi_write_addr(32'h43C0000c);axi_write_data(32'hdeadbeef);axi_write_resp(0);
    axi_write2(32'h43C0000c, 32'h400fffff);
    
    $display("********************");
    axi_read2(32'h43C00000, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C00004, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C00008, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C0000C, reg_val);
    $display("Reg val hex: %h", reg_val);
*/

  end


  //-----------------------------------------------------------------------------
  // axi tasks
  //-----------------------------------------------------------------------------

  task dbg1;
    begin
      dbg <= 1;
      #1;
      dbg <= 0;
    end
  endtask

  assign ACLK     = axi_clk;

  task axi_read2;
    input  [31:0] addr;
    output [31:0] data;
    reg     [1:0] resp;
    begin

      @(negedge ACLK);
      raddr_en  = 1;
      raddr     = addr;
      
      // data follows address immediately
      rdata_en  = 1;

      @(negedge ACLK);
      raddr_en  = 0;
      raddr     = 0;

      while (RVALID == 1'b0) 
        @(negedge ACLK);

      data = RDATA;

      @(negedge ACLK);
      rdata_en  = 0;  
      @(negedge ACLK);@(negedge ACLK);//delay
    end
  endtask

  task axi_read3;
    input  [31:0] addr;
    reg    [31:0] data;
    begin

      @(negedge ACLK);
      raddr_en  = 1;
      raddr     = addr;
      
      // data follows address immediately
      rdata_en  = 1;

      @(negedge ACLK);
      raddr_en  = 0;
      raddr     = 0;

      while (RVALID == 1'b0) 
        @(negedge ACLK);

      data = RDATA;

      @(negedge ACLK);
      rdata_en  = 0;  

      $display("Reg %h: %h", addr, data);
      @(negedge ACLK);@(negedge ACLK);//delay
    end
  endtask

  // 
  always @ (posedge ACLK) begin : axi_read_ch
    // raddr chan
    if (raddr_en) begin
      ARADDR  <= raddr;
      ARVALID <= 1;
    end else if (ARREADY) begin
      ARADDR  <= 0;
      ARVALID <= 0;
    end
    // rdata chan
    if (!rdata_en)
      RREADY <= 0;
    else if (rdata_en && RVALID) 
      RREADY <= 1;
    else if (rdata_en && RREADY)
      RREADY <= 0;
  end

  task axi_write2;
    input [31:0] addr;
    input [31:0] data;
    begin
    // address and data on same cycle 
      @(negedge ACLK);
      waddr_en = 1;
      waddr = addr;
      wdata_en = 1;
      wdata_i = data;
      @(negedge ACLK);
      waddr_en = 0;
      waddr = 0;
      wdata_en = 0;
      wdata_i = 0;
    // response
      wresp_en = 1;
      @(negedge ACLK);
      wresp_en = 0;
      @(negedge ACLK);@(negedge ACLK);//delay
    end 
  endtask

  always @ (posedge ACLK) begin : axi_write_ch
    // waddr chan
    if (waddr_en) begin
      AWADDR  <= waddr;
      AWVALID <= 1;
    end else if (AWREADY) begin
      AWADDR  <= 0;
      AWVALID <= 0;
    end
    // wdata chan
    if (wdata_en) begin
      WDATA   <= wdata_i;
      WVALID  <= 1;
    end else if (WREADY) begin
      WDATA   <= 0;
      WVALID  <= 0;
    end 
    // wresp chan
    if (wresp_en)
      BREADY  <= 1;
    else if (BVALID)
      BREADY  <= 0;
  end 



endmodule


// testbench 


`timescale 1ns / 1ps  // <time_unit>/<time_precision>
  // time_unit: measurement of delays / simulation time (#10 = 10<time_unit>)
  // time_precision: how delay values are rounded before being used in simulation (degree of accuracy of the time unit)


module adc_ddr_tb ;

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

  wire [15:0] sine_lut64_14bit [63:0];
  assign sine_lut64_14bit[0]  = 16'h2000;
  assign sine_lut64_14bit[1]  = 16'h2322;
  assign sine_lut64_14bit[2]  = 16'h263D;
  assign sine_lut64_14bit[3]  = 16'h2949;
  assign sine_lut64_14bit[4]  = 16'h2C3E;
  assign sine_lut64_14bit[5]  = 16'h2F15;
  assign sine_lut64_14bit[6]  = 16'h31C6;
  assign sine_lut64_14bit[7]  = 16'h344C;
  assign sine_lut64_14bit[8]  = 16'h369F;
  assign sine_lut64_14bit[9]  = 16'h38BB;
  assign sine_lut64_14bit[10] = 16'h3A9A;
  assign sine_lut64_14bit[11] = 16'h3C37;
  assign sine_lut64_14bit[12] = 16'h3D8F;
  assign sine_lut64_14bit[13] = 16'h3E9E;
  assign sine_lut64_14bit[14] = 16'h3F61;
  assign sine_lut64_14bit[15] = 16'h3FD7;
  assign sine_lut64_14bit[16] = 16'h3FFF;
  assign sine_lut64_14bit[17] = 16'h3FD7;
  assign sine_lut64_14bit[18] = 16'h3F61;
  assign sine_lut64_14bit[19] = 16'h3E9E;
  assign sine_lut64_14bit[20] = 16'h3D8F;
  assign sine_lut64_14bit[21] = 16'h3C37;
  assign sine_lut64_14bit[22] = 16'h3A9A;
  assign sine_lut64_14bit[23] = 16'h38BB;
  assign sine_lut64_14bit[24] = 16'h369F;
  assign sine_lut64_14bit[25] = 16'h344C;
  assign sine_lut64_14bit[26] = 16'h31C6;
  assign sine_lut64_14bit[27] = 16'h2F15;
  assign sine_lut64_14bit[28] = 16'h2C3E;
  assign sine_lut64_14bit[29] = 16'h2949;
  assign sine_lut64_14bit[30] = 16'h263D;
  assign sine_lut64_14bit[31] = 16'h2322;
  assign sine_lut64_14bit[32] = 16'h2000;
  assign sine_lut64_14bit[33] = 16'h1CDD;
  assign sine_lut64_14bit[34] = 16'h19C2;
  assign sine_lut64_14bit[35] = 16'h16B6;
  assign sine_lut64_14bit[36] = 16'h13C1;
  assign sine_lut64_14bit[37] = 16'h10EA;
  assign sine_lut64_14bit[38] = 16'hE39;
  assign sine_lut64_14bit[39] = 16'hBB3;
  assign sine_lut64_14bit[40] = 16'h960;
  assign sine_lut64_14bit[41] = 16'h744;
  assign sine_lut64_14bit[42] = 16'h565;
  assign sine_lut64_14bit[43] = 16'h3C8;
  assign sine_lut64_14bit[44] = 16'h270;
  assign sine_lut64_14bit[45] = 16'h161;
  assign sine_lut64_14bit[46] = 16'h9E;
  assign sine_lut64_14bit[47] = 16'h28;
  assign sine_lut64_14bit[48] = 16'h1;
  assign sine_lut64_14bit[49] = 16'h28;
  assign sine_lut64_14bit[50] = 16'h9E;
  assign sine_lut64_14bit[51] = 16'h161;
  assign sine_lut64_14bit[52] = 16'h270;
  assign sine_lut64_14bit[53] = 16'h3C8;
  assign sine_lut64_14bit[54] = 16'h565;
  assign sine_lut64_14bit[55] = 16'h744;
  assign sine_lut64_14bit[56] = 16'h960;
  assign sine_lut64_14bit[57] = 16'hBB3;
  assign sine_lut64_14bit[58] = 16'hE39;
  assign sine_lut64_14bit[59] = 16'h10EA;
  assign sine_lut64_14bit[60] = 16'h13C1;
  assign sine_lut64_14bit[61] = 16'h16B6;
  assign sine_lut64_14bit[62] = 16'h19C2;
  assign sine_lut64_14bit[63] = 16'h1CDD;

  wire clk_i;
  wire rsd_i;
  wire cntr3;
  wire [3:0] count4_q;
  

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
  wire [7:0]   adc_n;
  reg         ref_clk300 = 0;
  
  reg         dbg = 0;

  reg [5:0]   idx = 0;    

  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------

  top #(
    .par1 (1),
    .par2 (2),
    .par3 (3)
  ) top (
    .clk        (clk_i),
    //.refclk     (ref_clk300),
    .rst        (rst_i),
    .in1        (cntr3),
    .adc_clk    (clk_i),
    .adc_p      (adc_p),
    .adc_n      (adc_n),
    .adc_data   (),
    .out1       (), // unconnected (open)
    .out2       () 
  );



axi_protocol_checker_0 axi_protocol_checker2 (
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
  begin : reset_stimulus
    rst <= 1;
    ARESETN <= 0;
    cnt_up <= 1;
    #200;
    rst <= 0;
    ARESETN <= 1;
    #4000;
    cnt_up <= 0;

  end

  //-----------------------------------------------------------------------------
  // ADC data
  //-----------------------------------------------------------------------------
//adc_p
//adc_n

  assign adc_n = ~adc_p;

  initial begin
    idx = 0;
    while(rst == 1'b1) begin
      @(negedge clk);
      adc_p <= 0;
    end

    @(negedge clk);

    while(idx < 64) begin
      @(posedge clk);
      adc_p[7] <= sine_lut64_14bit[idx][15];
      adc_p[6] <= sine_lut64_14bit[idx][13];
      adc_p[5] <= sine_lut64_14bit[idx][11];
      adc_p[4] <= sine_lut64_14bit[idx][ 9];
      adc_p[3] <= sine_lut64_14bit[idx][ 7];
      adc_p[2] <= sine_lut64_14bit[idx][ 5];
      adc_p[1] <= sine_lut64_14bit[idx][ 3];
      adc_p[0] <= sine_lut64_14bit[idx][ 1];

      @(negedge clk);
      adc_p[7] <= sine_lut64_14bit[idx][14];
      adc_p[6] <= sine_lut64_14bit[idx][12];
      adc_p[5] <= sine_lut64_14bit[idx][10];
      adc_p[4] <= sine_lut64_14bit[idx][ 8];
      adc_p[3] <= sine_lut64_14bit[idx][ 6];
      adc_p[2] <= sine_lut64_14bit[idx][ 4];
      adc_p[1] <= sine_lut64_14bit[idx][ 2];
      adc_p[0] <= sine_lut64_14bit[idx][ 0];

      idx = idx + 1;
    end 

  end

  //-----------------------------------------------------------------------------
  // axi reads/writes
  //-----------------------------------------------------------------------------

  initial begin : axi_stim
    //$display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    #400;
    axi_read2(32'h43C00000, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C00004, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C00008, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read2(32'h43C0000C, reg_val);
    $display("Reg val hex: %h", reg_val);

    
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

  end


  //-----------------------------------------------------------------------------
  // axi tasks
  //-----------------------------------------------------------------------------

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

      // data follows address after delay
      //@(negedge ACLK);@(negedge ACLK);@(negedge ACLK);@(negedge ACLK);rdata_en = 1;@(negedge ACLK);

      while (RVALID == 1'b0) 
        @(negedge ACLK);

      data = RDATA;

      @(negedge ACLK);
      rdata_en  = 0;  

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
      
    /*
    // address before data with delay
      @(negedge ACLK);
      waddr_en = 1;
      waddr = addr;
      @(negedge ACLK);
      waddr_en = 0;
      waddr = 0;
      @(negedge ACLK);@(negedge ACLK);@(negedge ACLK);// delay
      wdata_en = 1;
      wdata_i = data;
      @(negedge ACLK);
      wdata_en = 0;
      wdata_i = 0;
    */

    /*
    // data before address with delay
      @(negedge ACLK);
      wdata_en = 1;
      wdata_i = data;
      @(negedge ACLK);
      wdata_en = 0;
      wdata_i = 0;
      @(negedge ACLK);@(negedge ACLK);@(negedge ACLK);// delay
      waddr_en = 1;
      waddr = addr;
      @(negedge ACLK);
      waddr_en = 0;
      waddr = 0;
      */

    // response
      wresp_en = 1;
      @(negedge ACLK);
      wresp_en = 0;

    end 
  endtask

  // 
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


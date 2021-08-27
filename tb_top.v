// testbench 


`timescale 1ns / 1ps  // <time_unit>/<time_precision>
  // time_unit: measurement of delays / simulation time (#10 = 10<time_unit>)
  // time_precision: how delay values are rounded before being used in simulation (degree of accuracy of the time unit)


module tb_top ;

  //---------------------------------------------------------------------------
  // AXI interface
  //---------------------------------------------------------------------------
  wire                  SAXI_aclk;            // AXI clock
  reg                   SAXI_aresetn  = 0;    // AXI reset
  reg  [31:0]           SAXI_awaddr   = 0;    // Write Channel : Address
  reg                   SAXI_awvalid  = 0;    //
  wire                  SAXI_awready;         //
  reg  [31:0]           SAXI_wdata    = 0;    // Write Channel : Data
  reg                   SAXI_wvalid   = 0;    //
  wire                  SAXI_wready;          //
  wire [ 1:0]           SAXI_bresp;           // Write Channel : Response
  wire                  SAXI_bvalid;          //
  reg                   SAXI_bready   = 0;    //
  reg  [31:0]           SAXI_araddr   = 0;    // Read Channel  : Address
  reg                   SAXI_arvalid  = 0;    //
  wire                  SAXI_arready;         //
  wire [31:0]           SAXI_rdata;           // Read Channel : Data
  wire                  SAXI_rvalid;          //
  reg                   SAXI_rready   = 0;    //
  wire [ 1:0]           SAXI_rresp;           // Read Channel  : Response

// -------------------------------------------------------------------------------
  wire                  ACLK;            // AXI clock
  wire                  ARESETN     ;    // AXI reset
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
  
  reg         dbg = 0;

  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------

  top #(
    .par1 (1),
    .par2 (2),
    .par3 (3)
  ) top (
    .clk   (clk_i),
    .rst   (rst_i),
    .in1   (cntr3),
    .out1  (), // unconnected (open)
    .out2  () 
  );

  // instantiation of VHDL component
  count4 counter (
    .clk  (clk_i), 
    .Q    (count4_q)
  );

/*
  axi_intfc axi_slave_VHDL (
    .clk200             (0),     //: in std_logic;
    //.--axi            (),     //: axi_rec
    .ACLK               (SAXI_aclk),     //: in  std_logic;
    .ARESETN            (SAXI_aresetn),     //: in  std_logic_vector ( 0 to 0 );
    //.-- Read address(),     //
    .S_AXI_araddr       (SAXI_araddr),     //: in  std_logic_vector ( 31 downto 0 );
    .S_AXI_arprot       (),               //: in  std_logic_vector ( 2 downto 0 );
    .S_AXI_arready      (SAXI_arready),     //: out std_logic;
    .S_AXI_arvalid      (SAXI_arvalid),     //: in  std_logic;
    //.-- Write address(),      //
    .S_AXI_awaddr       (SAXI_awaddr),     //: in  std_logic_vector ( 31 downto 0 );
    .S_AXI_awprot       (),               //: in  std_logic_vector ( 2 downto 0 );
    .S_AXI_awready      (SAXI_awready),     //: out std_logic;
    .S_AXI_awvalid      (SAXI_awvalid),     //: in  std_logic;
    //.-- Write response(),     //
    .S_AXI_bready       (SAXI_bready),     //: in  std_logic;
    .S_AXI_bresp        (SAXI_bresp),     //: out std_logic_vector ( 1 downto 0 );
    .S_AXI_bvalid       (SAXI_bvalid),     //: out std_logic;
    //.-- Read data(),      //
    .S_AXI_rdata        (SAXI_rdata),     //: out std_logic_vector ( 31 downto 0 );
    .S_AXI_rready       (SAXI_rready),     //: in  std_logic;
    .S_AXI_rresp        (SAXI_rresp),     //: out std_logic_vector ( 1 downto 0 );
    .S_AXI_rvalid       (SAXI_rvalid),     //: out std_logic;
    //.-- Write data(),     //
    .S_AXI_wdata        (SAXI_wdata),     //: in  std_logic_vector ( 31 downto 0 );
    .S_AXI_wready       (SAXI_wready),     //: out std_logic;
    .S_AXI_wstrb        (),     //: in  std_logic_vector ( 3 downto 0 );
    .S_AXI_wvalid       (SAXI_wvalid)      //: in  std_logic
  );
*/

  axi_slave axi_slave_VERILOG(
    .ACLK     (SAXI_aclk),      // in                
    .ARESETN  (SAXI_aresetn),   // in             
      // read addr
    .ARADDR   (SAXI_araddr),    // in            
    .ARPROT   (), // in                
    .ARREADY  (SAXI_arready),   // out                
    .ARVALID  (SAXI_arvalid),   // in            
      // read data
    .RDATA    (SAXI_rdata),     // out                           
    .RREADY   (SAXI_rready),    // in                       
    .RRESP    (SAXI_rresp),     // out                           
    .RVALID   (SAXI_rvalid),    // out                         
      // write addr
    .AWADDR   (SAXI_awaddr),    // in                        
    .AWPROT   (), // in                          
    .AWREADY  (SAXI_awready),   // out                         
    .AWVALID  (SAXI_awvalid),   // in                        
      // write data
    .WDATA    (SAXI_wdata),     // in                       
    .WREADY   (SAXI_wready),   // out                          
    .WSTRB    (), // in                           
    .WVALID   (SAXI_wvalid),    // in         
      // write resp
    .BREADY   (SAXI_bready),    // in                        
    .BRESP    (SAXI_bresp),     // out                           
    .BVALID   (SAXI_bvalid)     // out                          
  );

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


axi_protocol_checker_0 axi_protocol_checker (
  .pc_status(),                   // output wire [159 : 0] pc_status
  .pc_asserted(),                 // output wire pc_asserted
  .aclk(SAXI_aclk),               // input wire aclk
  .aresetn(SAXI_aresetn),         // input wire aresetn
  .pc_axi_awaddr  (SAXI_awaddr),  // input wire [31 : 0] pc_axi_awaddr
  .pc_axi_awprot  (3'b000),             // input wire [2 : 0] pc_axi_awprot
  .pc_axi_awvalid (SAXI_awvalid), // input wire pc_axi_awvalid
  .pc_axi_awready (SAXI_awready), // input wire pc_axi_awready
  .pc_axi_wdata   (SAXI_wdata),   // input wire [31 : 0] pc_axi_wdata
  .pc_axi_wstrb   (4'b1111),       // input wire [3 : 0] pc_axi_wstrb
  .pc_axi_wvalid  (SAXI_wvalid),  // input wire pc_axi_wvalid
  .pc_axi_wready  (SAXI_wready),  // input wire pc_axi_wready
  .pc_axi_bresp   (SAXI_bresp),   // input wire [1 : 0] pc_axi_bresp
  .pc_axi_bvalid  (SAXI_bvalid),  // input wire pc_axi_bvalid
  .pc_axi_bready  (SAXI_bready),  // input wire pc_axi_bready
  .pc_axi_araddr  (SAXI_araddr),  // input wire [31 : 0] pc_axi_araddr
  .pc_axi_arprot  (3'b000),             // input wire [2 : 0] pc_axi_arprot
  .pc_axi_arvalid (SAXI_arvalid), // input wire pc_axi_arvalid
  .pc_axi_arready (SAXI_arready), // input wire pc_axi_arready
  .pc_axi_rdata   (SAXI_rdata),   // input wire [31 : 0] pc_axi_rdata
  .pc_axi_rresp   (SAXI_rresp),   // input wire [1 : 0] pc_axi_rresp
  .pc_axi_rvalid  (SAXI_rvalid),  // input wire pc_axi_rvalid
  .pc_axi_rready  (SAXI_rready)   // input wire pc_axi_rready
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
  assign SAXI_aclk = axi_clk;


  always #2 clk = ~clk; // 250mhz period = 4ns, invert every 2ns
  
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
    SAXI_aresetn <= 0;
    cnt_up <= 1;
    #200;
    rst <= 0;
    SAXI_aresetn <= 1;
    #4000;
    cnt_up <= 0;

  end

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

  //---------------------------------------------------------------------------
  // AXI read write tasks
  //---------------------------------------------------------------------------
  // AXI-Lite Write task
  task axi_write;
    input [31:0] offset;
    input [31:0] data;
    reg   [31:0] addr;
    reg    [1:0] resp;
    begin
      // Use address as in datasheet
      addr = offset;
      // Drive Address & Data valid
      @(posedge SAXI_aclk);
      #1;
      SAXI_awaddr  = addr;
      SAXI_awvalid = 1;
      SAXI_wdata   = data;
      SAXI_wvalid  = 1;
      SAXI_bready  = 0;
      // Address Response Phase
      @(negedge SAXI_aclk);
      while (SAXI_awready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      #1;
      SAXI_awaddr  = 0;
      SAXI_awvalid = 0;
      // Data Response Phase
      @(negedge SAXI_aclk);         
      while (SAXI_wready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      #1;
      SAXI_wdata   = 0;
      SAXI_wvalid  = 0;
      // BRESP phase
      @(negedge SAXI_aclk);
      while (SAXI_bvalid == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      resp = SAXI_bresp;
      if (resp != 0) $display ("Error AXI BRESP not equal 0");
      #1;
      SAXI_bready = 1;
      @(posedge SAXI_aclk);
      #1;
      SAXI_bready = 0;
    end
  endtask // axi_write

  // AXI-Lite Read task
  task axi_read;
    input  [31:0] offset;
    output [31:0] data;
    reg    [31:0] addr;
    reg     [1:0] resp;
    begin
      // Use address as in datasheet
      addr = offset;
      // Drive Address valid
      @(posedge SAXI_aclk);
      #1;
      SAXI_araddr  = addr;
      SAXI_arvalid = 1;
      SAXI_rready  = 0;
      // Address Response Phase
      @(negedge SAXI_aclk);
      while (SAXI_arready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      #1;
      SAXI_araddr  = 0;
      SAXI_arvalid = 0;
      SAXI_rready  = 1;
      // Read Data Phase
      @(negedge SAXI_aclk);
      while (SAXI_rvalid == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      data = SAXI_rdata;
      resp = SAXI_rresp;
      if (resp != 0) $display ("Error AXI RRESP not equal 0");
      #1;
      SAXI_rready  = 0;
    end
  endtask // axi_read

/*************************************************************************************************/
/*
  task axi_write2;
    input [31:0] offset;
    input [31:0] data;
    reg   [31:0] addr;
    begin
      // Use address as in datasheet
      addr = offset;
      // Drive Address & Data valid
      @(posedge SAXI_aclk);
      
      SAXI_awaddr  = addr;
      SAXI_awvalid = 1;
      SAXI_wdata   = data;
      SAXI_wvalid  = 1;
      SAXI_bready  = 1;
      
      // Address Response Phase
      while (SAXI_awready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);

      SAXI_awaddr  = 0;
      SAXI_awvalid = 0;
      
      // Data Response Phase
      while (SAXI_wready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);

      SAXI_wdata   = 0;
      #1;
      SAXI_wvalid  = 0;
      
      // BRESP phase
      while (SAXI_bvalid == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);

      SAXI_bready = 1;
      @(posedge SAXI_aclk);
      SAXI_bready = 0;
    end
  endtask // axi_write



/*************************************************************************************************/


  assign ACLK     = SAXI_aclk;
  assign ARESETN  = SAXI_aresetn;
  
/*
  assign AWREADY  = SAXI_awready;

  task axi_write_addr;
    input [31:0] addr;
    begin
      // Drive Address valid
      @(posedge ACLK);
      
      AWADDR  = addr;
      AWVALID = 1;
      
      // Address Response Phase
      while (AWREADY == 1'b0)
        @(negedge ACLK);
      @(posedge ACLK);

      AWADDR  = 0;
      AWVALID = 0;
    end
  endtask 


  assign WREADY = SAXI_wready;

  task axi_write_data;
    input [31:0] data;
    begin
      // Drive data valid
      @(posedge ACLK);
      
      WDATA   = data;
      WVALID  = 1;
      //WSTRB   = 4'b1111;
      
      // data Response Phase
      while (WREADY == 1'b0)
        @(negedge ACLK);
      @(posedge ACLK);

      WDATA   = 0;
      WVALID  = 0;
      //WSTRB   = 0;
    end
  endtask 


  assign BVALID = SAXI_bvalid;
  assign BRESP  = SAXI_bresp;

  task axi_write_resp;
    input        nada;
    reg    [1:0] resp;
    begin
      // Drive data valid
      @(posedge ACLK);
      
      BREADY = 1;
      
      // BRESP phase
      while (BVALID == 1'b0)
        @(negedge ACLK);
      @(posedge ACLK);

      resp = BRESP;
      if (resp != 0) $display ("Error AXI BRESP not equal 0");

      BREADY = 0;
      @(posedge ACLK);
      @(posedge ACLK);
      BREADY = 1;
    end
  endtask 


//  assign ARREADY  = SAXI_arready;
//  assign RRESP    = SAXI_rresp;
//  assign RDATA    = SAXI_rdata;
/*
  task axi_read2;
    input  [31:0] addr;
    output [31:0] data;
    reg     [1:0] resp;
    begin
      // Drive Address valid
      @(posedge ACLK); dbg=~dbg;
      ARADDR  = addr;
      ARVALID = 1;
      RREADY  = 0;
      
      // Address Response Phase
      while (ARREADY == 1'b0)
        @(negedge ACLK);
      @(posedge ACLK); dbg=~dbg;
      
      ARADDR  = 0;
      ARVALID = 0;
      RREADY  = 1;

      while (RVALID == 1'b0)
        @(negedge ACLK);
      @(posedge ACLK); dbg=~dbg;

      RREADY  = 0;
      resp = RRESP;
      data = RDATA;
      if (resp != 0) $display ("Error AXI RRESP not equal 0");

    end
  endtask // axi_read
*/

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


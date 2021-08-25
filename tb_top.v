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

  // localparam : 'constant', cannot be modified (state machines?)

  // wire
  wire clk_i;
  wire rsd_i;
  wire cntr3;
  wire [3:0] count4_q;

  // reg
  reg       clk = 0;
  reg       axi_clk = 0;
  reg       rst;
  reg[3:0]  cntr= 0;
  reg       cnt_up;
  reg[31:0] reg_val;

  reg       dbg = 0;

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
    #400;
    axi_read(32'h43C00000, reg_val);
    //$display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read(32'h43C00004, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read(32'h43C00008, reg_val);
    $display("Reg val hex: %h", reg_val);
    axi_read(32'h43C0000C, reg_val);
    $display("Reg val hex: %h", reg_val);

    
    axi_write(32'h43C00000, 32'h1000000a);
    axi_write(32'h43C00004, 32'hf200000b);
    axi_write(32'h43C00008, 32'ha300000c);
    axi_write(32'h43C0000c, 32'h3400000d);
    
    $display("********************");
    axi_read(32'h43C00000, reg_val);
    $display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    axi_read(32'h43C00004, reg_val);
    $display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    axi_read(32'h43C00008, reg_val);
    $display("Reg val dec: %d , hex: %h", reg_val,  reg_val);
    axi_read(32'h43C0000C, reg_val);
    $display("Reg val dec: %d , hex: %h", reg_val,  reg_val);

    

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
      SAXI_bready  = 0; // **** WAS 0 !
      // Address Response Phase
      @(negedge SAXI_aclk);
      while (SAXI_awready == 1'b0)
        @(negedge SAXI_aclk);
      @(posedge SAXI_aclk);
      #1;
      SAXI_awaddr  = 0;
      SAXI_awvalid = 0;
      // Data Response Phase
      @(negedge SAXI_aclk);         dbg <= 1;
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

endmodule
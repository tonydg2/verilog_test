
`timescale 1ns / 1ps  

module axi_slave (
  input               ACLK,
  input               ARESETN,
    // Read address
  input       [31:0]  ARADDR,
  input       [ 2:0]  ARPROT,
  output reg          ARREADY = 1'b0,
  input               ARVALID,          
    // Read data    
  output reg  [31:0]  RDATA   = 31'h00000000,            
  input               RREADY,           
  output reg  [ 1:0]  RRESP   = 2'b00,            
  output reg          RVALID  = 1'b0,           
    // Write address
  input       [31:0]  AWADDR,           
  input       [ 2:0]  AWPROT,           
  output reg          AWREADY = 1'b0,          
  input               AWVALID,          
    // Write data   
  input       [31:0]  WDATA,            
  output reg          WREADY  = 1'b0,           
  input       [ 3:0]  WSTRB,            
  input               WVALID,
    // Write response
  input               BREADY,           
  output reg  [ 1:0]  BRESP   = 2'b00,            
  output reg          BVALID  = 1'b0           
);

  // localparam

  // wire

  // reg
  reg [31:0]  reg0 = 32'h1feb000a;
  reg [31:0]  reg1 = 32'h1feb000b;
  reg [31:0]  reg2 = 32'h1feb000c;
  reg [31:0]  reg3 = 32'h1feb000d;
  reg [31:0]  reg4 = 32'h1feb000e;
  reg [31:0]  reg5 = 32'h1feb000f;
  reg [31:0]  reg6 = 32'h1feb0003;
  reg [31:0]  reg7 = 32'h1feb0005;
  reg [ 5:0]  local_raddr;
  reg [31:0]  rdata_i;
  reg [31:0]  waddr;
  reg [31:0]  reg_data_tmp;
  reg [ 5:0]  local_waddr;
  reg         waddr_latched;
  reg         wdata_latched;
  reg         wdata_done = 1'b0;
  
  wire waddr_i;
  wire wdata_i;

  // dbg
  reg [1:0] arvalid_sr;
  wire ARVALID_i;
  
  //-----------------------------------------------------------------------------
  // instantiations
  //-----------------------------------------------------------------------------


  //-----------------------------------------------------------------------------
  // logic
  //-----------------------------------------------------------------------------

  
  // test/dbg -----------------------------------------------------------------------------

  always @ (posedge ACLK) begin
    arvalid_sr <= {arvalid_sr[0], ARVALID};
  end

  assign ARVALID_i = arvalid_sr[1];

  assign waddr_i = waddr_latched;
  assign waddr_i = wdata_latched;


  // READ -----------------------------------------------------------------------------

  always @ (posedge  ACLK) begin
    if (!ARESETN)
      ARREADY <= 1'b0;
    else if (!ARVALID) // idle and ready for addr
      ARREADY <= 1'b1;
    else if (ARVALID && ARREADY)
      ARREADY <= 1'b0;
  end

  always @ (posedge ACLK) begin
    if (!ARESETN) begin
      RDATA   <= 32'h00000000;
      RVALID  <= 1'b0;
      RRESP   <= 2'b10;    
    end else if (ARVALID && ARREADY) begin
      RDATA   <= rdata_i;
      RVALID  <= 1'b1;
      RRESP   <= 2'b00;
    end else if (RREADY) begin
      RDATA   <= 32'h00000000;
      RVALID  <= 1'b0;
      RRESP   <= 2'b10;
    end 
  end

  
  always @ * begin
    local_raddr = ARADDR[7:0] / 4;
    case (local_raddr)
      0: rdata_i = reg0;
      1: rdata_i = reg1;
      2: rdata_i = reg2;
      3: rdata_i = reg3;
      4: rdata_i = reg4;
      5: rdata_i = reg5;
      6: rdata_i = reg6;
      7: rdata_i = reg7;
    endcase
  end


  // WRITE -----------------------------------------------------------------------------
  // Note: Write data can appear before, after, or on same cycle as address. Test for all.


  always @ (posedge  ACLK) begin
    if (!ARESETN)
      AWREADY <= 1'b0;
    else if (!AWVALID) // idle and ready for addr
      AWREADY <= 1'b1;
    else if (AWVALID && AWREADY)
      AWREADY <= 1'b0;
  end

  // address
  always @ (posedge ACLK) begin
    if (!ARESETN) begin
      waddr         <= 32'h00000000;
      waddr_latched <= 1'b0;
    end else if (AWVALID) begin
      waddr         <= AWADDR;
      waddr_latched <= 1'b1;
    end else if (BVALID) begin
      waddr         <= 32'h00000000;
      waddr_latched <= 1'b0;
    end
  end 

  // data
  always @ (posedge ACLK) begin
    if (!ARESETN) begin
      reg_data_tmp  <= 32'h00000000;
      WREADY        <= 1'b0;
      wdata_latched <= 1'b0;
    end else if ((!WVALID && !wdata_latched) || (BVALID)) begin
      reg_data_tmp  <= 32'h00000000;
      WREADY        <= 1'b1;
      wdata_latched <= 1'b0; // BVALID case
    end else if (WVALID) begin
      reg_data_tmp  <= WDATA;
      WREADY        <= 1'b0;
      wdata_latched <= 1'b1;
    end /*else if (BVALID) begin
      reg_data_tmp  <= 32'h00000000;
      WREADY        <= 1'b1;
      wdata_latched <= 1'b0;
    end*/
  end 


  always @ * begin
    if (AWVALID && WVALID)
      local_waddr = AWADDR[7:0] / 4;
    else
      local_waddr = waddr[7:0] / 4;
  end 


  always @ (AWVALID, WVALID) begin
    if (!wdata_done && AWVALID && WVALID) begin // address and data on same cycle
      wdata_done = 1'b1;
      case (local_waddr)
        0: reg0 = WDATA;
        1: reg1 = WDATA;
        2: reg2 = WDATA;
        3: reg3 = WDATA;
        4: reg4 = WDATA;
        5: reg5 = WDATA;
        6: reg6 = WDATA;
        7: reg7 = WDATA;
      endcase
    //end else if (!wdata_done && (AWVALID || WVALID)) begin
    end else if (!wdata_done && waddr_latched && WVALID) begin // case where address came first
      wdata_done = 1'b1;
      case (local_waddr)
        0: reg0 = WDATA;
        1: reg1 = WDATA;
        2: reg2 = WDATA;
        3: reg3 = WDATA;
        4: reg4 = WDATA;
        5: reg5 = WDATA;
        6: reg6 = WDATA;
        7: reg7 = WDATA;
      endcase
    end else if (!wdata_done && waddr_latched && wdata_latched && BVALID) begin // case where data came first
      //wdata_done = 1'b1;
      case (local_waddr)
        0: reg0 = reg_data_tmp;
        1: reg1 = reg_data_tmp;
        2: reg2 = reg_data_tmp;
        3: reg3 = reg_data_tmp;
        4: reg4 = reg_data_tmp;
        5: reg5 = reg_data_tmp;
        6: reg6 = reg_data_tmp;
        7: reg7 = reg_data_tmp;
      endcase
    end else if (!wdata_done && waddr_latched && wdata_latched) begin // case where data came first
      wdata_done = 1'b1;
      case (local_waddr)
        0: reg0 = reg_data_tmp;
        1: reg1 = reg_data_tmp;
        2: reg2 = reg_data_tmp;
        3: reg3 = reg_data_tmp;
        4: reg4 = reg_data_tmp;
        5: reg5 = reg_data_tmp;
        6: reg6 = reg_data_tmp;
        7: reg7 = reg_data_tmp;
      endcase
    end else if (BVALID) begin
      wdata_done = 1'b0;
    end
  end


  always @ (posedge ACLK) begin
    if (!ARESETN) begin
      BRESP   <= 2'b00;  
      BVALID  <= 1'b0;
    end else if ((AWVALID && WVALID) || (waddr_latched && WVALID) || (wdata_latched && AWVALID)) begin
      BVALID  <= 1'b1;
    end else if (BREADY) begin
      BVALID  <= 1'b0;
    end 
  end 



/*    // Write address
  input       [31:0]  AWADDR,           
  input       [ 2:0]  AWPROT,           
  output reg          AWREADY = 1'b0,          
  input               AWVALID,          
    // Write data   
  input       [31:0]  WDATA,            
  output reg          WREADY  = 1'b0,           
  input       [ 3:0]  WSTRB,            
  input               WVALID,
    // Write response
  input               BREADY,           
  output reg  [ 1:0]  BRESP   = 2'b00,            
  output reg          BVALID  = 1'b0           
*/
/*
  always @ (posedge ACLK) begin
    if (!ARVALID)
      ARREADY <= 1;
    else
      ARREADY <= 0;
  end 
*/


endmodule
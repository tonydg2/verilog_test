-- AXI interface protocol: "AMBA AXI and ACE protocol spec. (arm ihi 0022d)
--

library ieee, xil_defaultlib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use xil_defaultlib.axi_pkg.all;

entity axi_intfc is
  port  (
    clk200  : in std_logic;
		--axi     : axi_rec
    ACLK          : in  std_logic;
    ARESETN       : in  std_logic_vector ( 0 to 0 );
    -- Read address
		S_AXI_araddr  : in  std_logic_vector ( 31 downto 0 );
    S_AXI_arprot  : in  std_logic_vector ( 2 downto 0 );
    S_AXI_arready : out std_logic;
    S_AXI_arvalid : in  std_logic;
    -- Write address
		S_AXI_awaddr  : in  std_logic_vector ( 31 downto 0 );
    S_AXI_awprot  : in  std_logic_vector ( 2 downto 0 );
    S_AXI_awready : out std_logic;
    S_AXI_awvalid : in  std_logic;
    -- Write response
		S_AXI_bready  : in  std_logic;
    S_AXI_bresp   : out std_logic_vector ( 1 downto 0 );
    S_AXI_bvalid  : out std_logic;
    -- Read data
		S_AXI_rdata   : out std_logic_vector ( 31 downto 0 );
    S_AXI_rready  : in  std_logic;
    S_AXI_rresp   : out std_logic_vector ( 1 downto 0 );
    S_AXI_rvalid  : out std_logic;
    -- Write data
		S_AXI_wdata   : in  std_logic_vector ( 31 downto 0 );
    S_AXI_wready  : out std_logic;
    S_AXI_wstrb   : in  std_logic_vector ( 3 downto 0 );
    S_AXI_wvalid  : in  std_logic
  );
-- NOTE AR# 54778
 attribute keep_hierarchy : string;
 attribute keep_hierarchy of axi_intfc : entity is "yes";

end axi_intfc;

architecture rtl of axi_intfc is

-- components

-- constants

  constant LOCAL_ADDR_HI : std_logic_vector(15 downto 0) := x"43C0";

-- types
  type rd_addr_type is (WAIT4_ARVALID,WAIT4_RVALID);
  type wr_addr_type is (WAIT4_AWVALID,DONE);
  type wrAddr_type  is (READY,WAIT4RESP);
  type wrData_type  is (READY,WAIT4RESP);
  type wrResp_type  is (WAIT4TRANS,WAIT4BREADY,WAIT4END);
  
  signal rd_addr_sm : rd_addr_type;
  signal wr_addr_sm : wr_addr_type;
  signal wrAddr_sm  : wrAddr_type;
  signal wrData_sm  : wrData_type;
  signal wrResp_sm  : wrResp_type;

-- signals 
  -- NOTE AR# 54778
	--* signal testSig : std_logic;
  --* attribute KEEP : string;
  --* attribute KEEP of testSig : signal is "true";
  

  
  signal rst          : std_logic;  
  signal rd_addr      : std_logic_vector(31 downto 0);                      
  signal addr0        : std_logic_vector(31 downto 0) := x"12345678";
  signal addr1        : std_logic_vector(31 downto 0) := x"002F005C";
  signal addr2        : std_logic_vector(31 downto 0) := x"DEAD0008";
  signal addr3        : std_logic_vector(31 downto 0) := x"DEAD000C";
  signal valid_raddr  : std_logic;
  signal local_raddr  : integer;
  signal valid_waddr  : std_logic;
  signal local_waddr  : integer;
  signal wr_addr      : std_logic_vector(31 downto 0);
  signal wr_data      : std_logic_vector(31 downto 0);
  signal wr_strb      : std_logic_vector(3 downto 0);
  signal wrAddr_rdy   : std_logic;
  signal wrData_rdy   : std_logic;
  signal rvalid_i     : std_logic;
  signal bvalid_i     : std_logic;

---------------------------------------------------------------------------------------------------
begin -- architecture
---------------------------------------------------------------------------------------------------
  rst <= '1' when (ARESETN = "0") else '0';

  S_AXI_rvalid <= rvalid_i;
  S_AXI_bvalid <= bvalid_i;

---------------------------------------------------------------------------------------------------
-- debug
---------------------------------------------------------------------------------------------------

--ila : entity xil_defaultlib.ila_0
--PORT MAP (
--  clk                     => clk200,
--	probe0(255 downto 188)  => (others => '0'),
--  probe0(187)             => wrData_rdy,
--  probe0(186)             => wrAddr_rdy,
--  probe0(185)             => valid_waddr,
--  probe0(184 downto 177)  => addr0(7 downto 0),
--  probe0(176 downto 169)  => addr1(7 downto 0),
--  probe0(168 downto 161)  => addr2(7 downto 0),
--  probe0(160 downto 153)  => addr3(7 downto 0),
--  probe0(152)             => ACLK     ,
--  probe0(151 downto 120)  => S_AXI_araddr   ,
--  probe0(119 downto 117)  => S_AXI_arprot   ,
--  probe0(116)             => S_AXI_arready  ,
--  probe0(115)             => S_AXI_arvalid  ,
--  probe0(114 downto  83)  => S_AXI_awaddr   ,
--  probe0( 82 downto  80)  => S_AXI_awprot   ,
--  probe0( 79)             => S_AXI_awready  ,
--  probe0( 78)             => S_AXI_awvalid  ,
--  probe0( 77)             => S_AXI_bready   ,
--  probe0( 76 downto  75)  => S_AXI_bresp    ,
--  probe0( 74)             => S_AXI_bvalid   ,
--  probe0( 73 downto  42)  => S_AXI_rdata    ,
--  probe0( 41)             => S_AXI_rready   ,
--  probe0( 40 downto  39)  => S_AXI_rresp    ,
--  probe0( 38)             => S_AXI_rvalid   ,
--  probe0( 37 downto   6)  => S_AXI_wdata    ,
--  probe0(  5)             => S_AXI_wready   ,
--  probe0(  4 downto   1)  => S_AXI_wstrb    ,
--  probe0(  0)             => S_AXI_wvalid    
--);

---------------------------------------------------------------------------------------------------
-- read transaction
---------------------------------------------------------------------------------------------------
read_transaction : process(ACLK)
begin
  if rising_edge(ACLK) then
    if rst = '1' then
      S_AXI_arready     <= '0';
      rvalid_i      <= '0';
      rd_addr     <= (others => '0');
      rd_addr_sm  <= WAIT4_ARVALID;
    else
      S_AXI_arready <= '0';
      case rd_addr_sm is
      when WAIT4_ARVALID =>
        if (S_AXI_arvalid = '1') AND (valid_raddr = '1') then -- slave can wait for S_AXI_arvalid before asserting S_AXI_arready, (only this address space)
          rd_addr     <= S_AXI_araddr;                        -- latch address for use next clk cycle
          S_AXI_arready    <= '1';                           -- 1 clk wide
          rvalid_i      <= '1';                           -- slave MUST wait for S_AXI_arvalid AND S_AXI_arready 
          rd_addr_sm  <= WAIT4_RVALID; 
        end if;
      when WAIT4_RVALID =>
        if S_AXI_rready = '1' then                            -- slave MUST NOT wait for S_AXI_rready before asserting S_AXI_rvalid     
          rvalid_i      <= '0';
          rd_addr_sm  <= WAIT4_ARVALID;
        end if;
      end case;
    end if;
  end if;
end process;

  valid_raddr <= '1' when (S_AXI_araddr(31 downto 8) = x"43C000") else '0'; -- this interface memory base address - 64k
  --local_raddr <= to_integer(unsigned(rd_addr(7 downto 0)))/4;
  local_raddr <= to_integer(unsigned(S_AXI_araddr(7 downto 0)))/4;
  
read_data_select : process(rvalid_i)
begin
  if rvalid_i = '1' then
    S_AXI_rresp <= "00";
    case local_raddr is
    when 0 =>                 -- x0
      S_AXI_rdata <= addr0;
    when 1 =>                 -- x4
      S_AXI_rdata <= addr1;
    when 2 =>                 -- x8
      S_AXI_rdata <= addr2;
    when 3 =>                 -- xC
      S_AXI_rdata <= addr3;
    when others =>
      S_AXI_rdata <= x"DEADDEAD";
    end case;
  else
    S_AXI_rdata <= (others => '-');
    S_AXI_rresp <= (others => '-');
  end if;
end process;
 
---------------------------------------------------------------------------------------------------
-- write transaction
---------------------------------------------------------------------------------------------------

  valid_waddr <= '1' when (S_AXI_awaddr(31 downto 16) = LOCAL_ADDR_HI) else '0'; -- this interface memory base address - 64k

-- write transaction address capture
write_addr_capture : process(ACLK)
begin
  if rising_edge(ACLK) then
    if rst = '1' then
      S_AXI_awready     <= '0';
      wrAddr_rdy  <= '0';
      wr_addr     <= (others => '0');
      wrAddr_sm   <= READY;
    else
      case wrAddr_sm is
      -- Slave is ready, wait for valid addr from master
      when READY =>
        S_AXI_awready     <= '1';
        wrAddr_rdy  <= '0';
        if (S_AXI_awvalid = '1') then --AND (valid_waddr = '1') then -- only this address space
          S_AXI_awready     <= '0';
          wrAddr_rdy  <= '1';     -- addr for current write transaction is latched and ready 
          wr_addr     <= S_AXI_awaddr;  -- latch write addr
          wrAddr_sm   <= WAIT4RESP;
        end if;
      -- slave is not ready, wait until this write transaction response is completed
      when WAIT4RESP =>
        if (bvalid_i = '1') AND (S_AXI_bready = '1') then
          wrAddr_sm <= READY;
        end if;
      end case;        
    end if;
  end if;
end process;

-- write transaction data capture
write_data_capture : process(ACLK)
begin
  if rising_edge(ACLK) then
    if rst = '1' then
      S_AXI_wready      <= '0';
      wrData_rdy  <= '0';
      wr_data     <= (others => '0');
      wr_strb     <= (others => '0');
      wrData_sm   <= READY;
    else
      case wrData_sm is
      -- Slave is ready, wait for valid data from master
      when READY =>
        --S_AXI_wready      <= '1';
        S_AXI_wready      <= '0';--mod1
        wrData_rdy  <= '0';
        if (S_AXI_wvalid = '1') then --AND (valid_waddr = '1') then
          --S_AXI_wready      <= '0';
          S_AXI_wready      <= '1';--mod1
          wrData_rdy  <= '1';
          wr_data     <= S_AXI_wdata; -- latch data
          wr_strb     <= S_AXI_wstrb; -- latch write strobe
          wrData_sm   <= WAIT4RESP;
        end if;
      -- slave is not ready, wait until this write transaction response is completed
      when WAIT4RESP =>
        S_AXI_wready      <= '0';--mod1
        if (bvalid_i = '1') AND (S_AXI_bready = '1') then
          wrData_sm <= READY;
        end if;
      end case;
    end if;
  end if;
end process;

-- write transaction response
write_response : process(ACLK)
begin
  if rising_edge(ACLK) then
    if rst = '1' then
      S_AXI_bresp     <= "--";
      bvalid_i    <= '0';
      wrResp_sm <= WAIT4TRANS;
    else
      case wrResp_sm is
      -- Wait for write transaction address/data to complete
      when WAIT4TRANS =>
        S_AXI_bresp     <= "--";
        bvalid_i    <= '0';
        if (wrAddr_rdy = '1') AND (wrData_rdy = '1') then -- addr and data capture complete
          S_AXI_bresp     <= "00";
          bvalid_i    <= '1';
          wrResp_sm <= WAIT4BREADY;
        end if;
      -- Wait for master to complete
      when WAIT4BREADY =>
        if S_AXI_bready = '1' then
          S_AXI_bresp     <= "--";
          bvalid_i    <= '0';
          wrResp_sm <= WAIT4END;
        end if;
      when WAIT4END =>
        if (wrData_rdy = '0') AND (wrAddr_rdy = '0') then
          wrResp_sm <= WAIT4TRANS;
        end if;
      end case;
    end if;
  end if;
end process;


  --local_waddr <= to_integer(unsigned(wr_addr(7 downto 0)))/4;                                                     
  local_waddr <= to_integer(unsigned(S_AXI_awaddr(7 downto 0)))/4;                                                     

write_data_local : process(wrAddr_rdy, wrData_rdy) 
begin
  if (wrAddr_rdy = '1') AND (wrData_rdy = '1') then
    case local_waddr is
    when 0 =>
      addr0 <= wr_data; 
    when 1 =>
      addr1 <= wr_data;
    when 2 =>
      addr2 <= wr_data;
    when 3 =>
      addr3 <= wr_data;
    when others =>
      null;
    end case;
  end if;
end process;


end rtl; 
  
-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_traffic_gen:3.0
-- IP Revision: 10

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT axi_traffic_gen_0
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    m_axi_lite_ch1_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_ch1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_lite_ch1_awvalid : OUT STD_LOGIC;
    m_axi_lite_ch1_awready : IN STD_LOGIC;
    m_axi_lite_ch1_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_ch1_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_lite_ch1_wvalid : OUT STD_LOGIC;
    m_axi_lite_ch1_wready : IN STD_LOGIC;
    m_axi_lite_ch1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_lite_ch1_bvalid : IN STD_LOGIC;
    m_axi_lite_ch1_bready : OUT STD_LOGIC;
    m_axi_lite_ch1_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_ch1_arvalid : OUT STD_LOGIC;
    m_axi_lite_ch1_arready : IN STD_LOGIC;
    m_axi_lite_ch1_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_ch1_rvalid : IN STD_LOGIC;
    m_axi_lite_ch1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_lite_ch1_rready : OUT STD_LOGIC;
    done : OUT STD_LOGIC;
    status : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : axi_traffic_gen_0
  PORT MAP (
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    m_axi_lite_ch1_awaddr => m_axi_lite_ch1_awaddr,
    m_axi_lite_ch1_awprot => m_axi_lite_ch1_awprot,
    m_axi_lite_ch1_awvalid => m_axi_lite_ch1_awvalid,
    m_axi_lite_ch1_awready => m_axi_lite_ch1_awready,
    m_axi_lite_ch1_wdata => m_axi_lite_ch1_wdata,
    m_axi_lite_ch1_wstrb => m_axi_lite_ch1_wstrb,
    m_axi_lite_ch1_wvalid => m_axi_lite_ch1_wvalid,
    m_axi_lite_ch1_wready => m_axi_lite_ch1_wready,
    m_axi_lite_ch1_bresp => m_axi_lite_ch1_bresp,
    m_axi_lite_ch1_bvalid => m_axi_lite_ch1_bvalid,
    m_axi_lite_ch1_bready => m_axi_lite_ch1_bready,
    m_axi_lite_ch1_araddr => m_axi_lite_ch1_araddr,
    m_axi_lite_ch1_arvalid => m_axi_lite_ch1_arvalid,
    m_axi_lite_ch1_arready => m_axi_lite_ch1_arready,
    m_axi_lite_ch1_rdata => m_axi_lite_ch1_rdata,
    m_axi_lite_ch1_rvalid => m_axi_lite_ch1_rvalid,
    m_axi_lite_ch1_rresp => m_axi_lite_ch1_rresp,
    m_axi_lite_ch1_rready => m_axi_lite_ch1_rready,
    done => done,
    status => status
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file axi_traffic_gen_0.vhd when simulating
-- the core, axi_traffic_gen_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.


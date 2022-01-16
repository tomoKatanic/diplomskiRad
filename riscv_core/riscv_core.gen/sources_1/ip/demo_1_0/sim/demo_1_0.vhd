-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:user:demo_1:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY demo_1_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    MNA_0_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_0_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    MNA_0_AWVALID : IN STD_LOGIC;
    MNA_0_AWREADY : OUT STD_LOGIC;
    MNA_0_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_0_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    MNA_0_WVALID : IN STD_LOGIC;
    MNA_0_WREADY : OUT STD_LOGIC;
    MNA_0_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_0_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    MNA_0_ARVALID : IN STD_LOGIC;
    MNA_0_ARREADY : OUT STD_LOGIC;
    MNA_0_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    MNA_0_BVALID : OUT STD_LOGIC;
    MNA_0_BREADY : IN STD_LOGIC;
    MNA_0_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_0_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    MNA_0_RVALID : OUT STD_LOGIC;
    MNA_0_RREADY : IN STD_LOGIC;
    MNA_1_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_1_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    MNA_1_AWVALID : IN STD_LOGIC;
    MNA_1_AWREADY : OUT STD_LOGIC;
    MNA_1_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_1_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    MNA_1_WVALID : IN STD_LOGIC;
    MNA_1_WREADY : OUT STD_LOGIC;
    MNA_1_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_1_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    MNA_1_ARVALID : IN STD_LOGIC;
    MNA_1_ARREADY : OUT STD_LOGIC;
    MNA_1_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    MNA_1_BVALID : OUT STD_LOGIC;
    MNA_1_BREADY : IN STD_LOGIC;
    MNA_1_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    MNA_1_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    MNA_1_RVALID : OUT STD_LOGIC;
    MNA_1_RREADY : IN STD_LOGIC;
    SNA_0_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    SNA_0_AWVALID : OUT STD_LOGIC;
    SNA_0_AWREADY : IN STD_LOGIC;
    SNA_0_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_0_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    SNA_0_WVALID : OUT STD_LOGIC;
    SNA_0_WREADY : IN STD_LOGIC;
    SNA_0_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    SNA_0_ARVALID : OUT STD_LOGIC;
    SNA_0_ARREADY : IN STD_LOGIC;
    SNA_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SNA_0_BVALID : IN STD_LOGIC;
    SNA_0_BREADY : OUT STD_LOGIC;
    SNA_0_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SNA_0_RVALID : IN STD_LOGIC;
    SNA_0_RREADY : OUT STD_LOGIC;
    SNA_1_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    SNA_1_AWVALID : OUT STD_LOGIC;
    SNA_1_AWREADY : IN STD_LOGIC;
    SNA_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    SNA_1_WVALID : OUT STD_LOGIC;
    SNA_1_WREADY : IN STD_LOGIC;
    SNA_1_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    SNA_1_ARVALID : OUT STD_LOGIC;
    SNA_1_ARREADY : IN STD_LOGIC;
    SNA_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SNA_1_BVALID : IN STD_LOGIC;
    SNA_1_BREADY : OUT STD_LOGIC;
    SNA_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SNA_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SNA_1_RVALID : IN STD_LOGIC;
    SNA_1_RREADY : OUT STD_LOGIC
  );
END demo_1_0;

ARCHITECTURE demo_1_0_arch OF demo_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF demo_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT demo_1 IS
    GENERIC (
      vc_num : INTEGER;
      mesh_size_x : INTEGER;
      mesh_size_y : INTEGER;
      address_size : INTEGER;
      payload_size : INTEGER;
      flit_size : INTEGER;
      buffer_size : INTEGER;
      clock_divider : INTEGER;
      MNA_write_threshold : INTEGER;
      MNA_read_threshold : INTEGER;
      SNA_write_threshold : INTEGER;
      SNA_read_threshold : INTEGER;
      node_address_size : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      MNA_0_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_0_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      MNA_0_AWVALID : IN STD_LOGIC;
      MNA_0_AWREADY : OUT STD_LOGIC;
      MNA_0_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_0_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      MNA_0_WVALID : IN STD_LOGIC;
      MNA_0_WREADY : OUT STD_LOGIC;
      MNA_0_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_0_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      MNA_0_ARVALID : IN STD_LOGIC;
      MNA_0_ARREADY : OUT STD_LOGIC;
      MNA_0_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      MNA_0_BVALID : OUT STD_LOGIC;
      MNA_0_BREADY : IN STD_LOGIC;
      MNA_0_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_0_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      MNA_0_RVALID : OUT STD_LOGIC;
      MNA_0_RREADY : IN STD_LOGIC;
      MNA_1_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_1_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      MNA_1_AWVALID : IN STD_LOGIC;
      MNA_1_AWREADY : OUT STD_LOGIC;
      MNA_1_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_1_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      MNA_1_WVALID : IN STD_LOGIC;
      MNA_1_WREADY : OUT STD_LOGIC;
      MNA_1_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_1_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      MNA_1_ARVALID : IN STD_LOGIC;
      MNA_1_ARREADY : OUT STD_LOGIC;
      MNA_1_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      MNA_1_BVALID : OUT STD_LOGIC;
      MNA_1_BREADY : IN STD_LOGIC;
      MNA_1_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      MNA_1_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      MNA_1_RVALID : OUT STD_LOGIC;
      MNA_1_RREADY : IN STD_LOGIC;
      SNA_0_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      SNA_0_AWVALID : OUT STD_LOGIC;
      SNA_0_AWREADY : IN STD_LOGIC;
      SNA_0_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_0_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      SNA_0_WVALID : OUT STD_LOGIC;
      SNA_0_WREADY : IN STD_LOGIC;
      SNA_0_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      SNA_0_ARVALID : OUT STD_LOGIC;
      SNA_0_ARREADY : IN STD_LOGIC;
      SNA_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SNA_0_BVALID : IN STD_LOGIC;
      SNA_0_BREADY : OUT STD_LOGIC;
      SNA_0_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SNA_0_RVALID : IN STD_LOGIC;
      SNA_0_RREADY : OUT STD_LOGIC;
      SNA_1_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      SNA_1_AWVALID : OUT STD_LOGIC;
      SNA_1_AWREADY : IN STD_LOGIC;
      SNA_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      SNA_1_WVALID : OUT STD_LOGIC;
      SNA_1_WREADY : IN STD_LOGIC;
      SNA_1_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      SNA_1_ARVALID : OUT STD_LOGIC;
      SNA_1_ARREADY : IN STD_LOGIC;
      SNA_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SNA_1_BVALID : IN STD_LOGIC;
      SNA_1_BREADY : OUT STD_LOGIC;
      SNA_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SNA_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SNA_1_RVALID : IN STD_LOGIC;
      SNA_1_RREADY : OUT STD_LOGIC
    );
  END COMPONENT demo_1;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF demo_1_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SNA_1_AWADDR: SIGNAL IS "XIL_INTERFACENAME SNA_1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER" & 
"_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_1_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_1 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SNA_0_AWADDR: SIGNAL IS "XIL_INTERFACENAME SNA_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER" & 
"_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SNA_0_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 SNA_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF MNA_1_AWADDR: SIGNAL IS "XIL_INTERFACENAME MNA_1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER" & 
"_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_1_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_1 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF MNA_0_AWADDR: SIGNAL IS "XIL_INTERFACENAME MNA_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER" & 
"_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF MNA_0_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 MNA_0 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF MNA_0:MNA_1:SNA_0:SNA_1, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : demo_1
    GENERIC MAP (
      vc_num => 2,
      mesh_size_x => 4,
      mesh_size_y => 4,
      address_size => 8,
      payload_size => 32,
      flit_size => 44,
      buffer_size => 8,
      clock_divider => 2,
      MNA_write_threshold => 3,
      MNA_read_threshold => 2,
      SNA_write_threshold => 1,
      SNA_read_threshold => 2,
      node_address_size => 4
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      MNA_0_AWADDR => MNA_0_AWADDR,
      MNA_0_AWPROT => MNA_0_AWPROT,
      MNA_0_AWVALID => MNA_0_AWVALID,
      MNA_0_AWREADY => MNA_0_AWREADY,
      MNA_0_WDATA => MNA_0_WDATA,
      MNA_0_WSTRB => MNA_0_WSTRB,
      MNA_0_WVALID => MNA_0_WVALID,
      MNA_0_WREADY => MNA_0_WREADY,
      MNA_0_ARADDR => MNA_0_ARADDR,
      MNA_0_ARPROT => MNA_0_ARPROT,
      MNA_0_ARVALID => MNA_0_ARVALID,
      MNA_0_ARREADY => MNA_0_ARREADY,
      MNA_0_BRESP => MNA_0_BRESP,
      MNA_0_BVALID => MNA_0_BVALID,
      MNA_0_BREADY => MNA_0_BREADY,
      MNA_0_RDATA => MNA_0_RDATA,
      MNA_0_RRESP => MNA_0_RRESP,
      MNA_0_RVALID => MNA_0_RVALID,
      MNA_0_RREADY => MNA_0_RREADY,
      MNA_1_AWADDR => MNA_1_AWADDR,
      MNA_1_AWPROT => MNA_1_AWPROT,
      MNA_1_AWVALID => MNA_1_AWVALID,
      MNA_1_AWREADY => MNA_1_AWREADY,
      MNA_1_WDATA => MNA_1_WDATA,
      MNA_1_WSTRB => MNA_1_WSTRB,
      MNA_1_WVALID => MNA_1_WVALID,
      MNA_1_WREADY => MNA_1_WREADY,
      MNA_1_ARADDR => MNA_1_ARADDR,
      MNA_1_ARPROT => MNA_1_ARPROT,
      MNA_1_ARVALID => MNA_1_ARVALID,
      MNA_1_ARREADY => MNA_1_ARREADY,
      MNA_1_BRESP => MNA_1_BRESP,
      MNA_1_BVALID => MNA_1_BVALID,
      MNA_1_BREADY => MNA_1_BREADY,
      MNA_1_RDATA => MNA_1_RDATA,
      MNA_1_RRESP => MNA_1_RRESP,
      MNA_1_RVALID => MNA_1_RVALID,
      MNA_1_RREADY => MNA_1_RREADY,
      SNA_0_AWADDR => SNA_0_AWADDR,
      SNA_0_AWPROT => SNA_0_AWPROT,
      SNA_0_AWVALID => SNA_0_AWVALID,
      SNA_0_AWREADY => SNA_0_AWREADY,
      SNA_0_WDATA => SNA_0_WDATA,
      SNA_0_WSTRB => SNA_0_WSTRB,
      SNA_0_WVALID => SNA_0_WVALID,
      SNA_0_WREADY => SNA_0_WREADY,
      SNA_0_ARADDR => SNA_0_ARADDR,
      SNA_0_ARPROT => SNA_0_ARPROT,
      SNA_0_ARVALID => SNA_0_ARVALID,
      SNA_0_ARREADY => SNA_0_ARREADY,
      SNA_0_BRESP => SNA_0_BRESP,
      SNA_0_BVALID => SNA_0_BVALID,
      SNA_0_BREADY => SNA_0_BREADY,
      SNA_0_RDATA => SNA_0_RDATA,
      SNA_0_RRESP => SNA_0_RRESP,
      SNA_0_RVALID => SNA_0_RVALID,
      SNA_0_RREADY => SNA_0_RREADY,
      SNA_1_AWADDR => SNA_1_AWADDR,
      SNA_1_AWPROT => SNA_1_AWPROT,
      SNA_1_AWVALID => SNA_1_AWVALID,
      SNA_1_AWREADY => SNA_1_AWREADY,
      SNA_1_WDATA => SNA_1_WDATA,
      SNA_1_WSTRB => SNA_1_WSTRB,
      SNA_1_WVALID => SNA_1_WVALID,
      SNA_1_WREADY => SNA_1_WREADY,
      SNA_1_ARADDR => SNA_1_ARADDR,
      SNA_1_ARPROT => SNA_1_ARPROT,
      SNA_1_ARVALID => SNA_1_ARVALID,
      SNA_1_ARREADY => SNA_1_ARREADY,
      SNA_1_BRESP => SNA_1_BRESP,
      SNA_1_BVALID => SNA_1_BVALID,
      SNA_1_BREADY => SNA_1_BREADY,
      SNA_1_RDATA => SNA_1_RDATA,
      SNA_1_RRESP => SNA_1_RRESP,
      SNA_1_RVALID => SNA_1_RVALID,
      SNA_1_RREADY => SNA_1_RREADY
    );
END demo_1_0_arch;
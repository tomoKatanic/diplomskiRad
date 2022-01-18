// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:noc_lib:demo_1:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
demo_1_0 your_instance_name (
  .clk(clk),                      // input wire clk
  .rst(rst),                      // input wire rst
  .MNA_0_AWADDR(MNA_0_AWADDR),    // input wire [31 : 0] MNA_0_AWADDR
  .MNA_0_AWPROT(MNA_0_AWPROT),    // input wire [2 : 0] MNA_0_AWPROT
  .MNA_0_AWVALID(MNA_0_AWVALID),  // input wire MNA_0_AWVALID
  .MNA_0_AWREADY(MNA_0_AWREADY),  // output wire MNA_0_AWREADY
  .MNA_0_WDATA(MNA_0_WDATA),      // input wire [31 : 0] MNA_0_WDATA
  .MNA_0_WSTRB(MNA_0_WSTRB),      // input wire [3 : 0] MNA_0_WSTRB
  .MNA_0_WVALID(MNA_0_WVALID),    // input wire MNA_0_WVALID
  .MNA_0_WREADY(MNA_0_WREADY),    // output wire MNA_0_WREADY
  .MNA_0_ARADDR(MNA_0_ARADDR),    // input wire [31 : 0] MNA_0_ARADDR
  .MNA_0_ARPROT(MNA_0_ARPROT),    // input wire [2 : 0] MNA_0_ARPROT
  .MNA_0_ARVALID(MNA_0_ARVALID),  // input wire MNA_0_ARVALID
  .MNA_0_ARREADY(MNA_0_ARREADY),  // output wire MNA_0_ARREADY
  .MNA_0_BRESP(MNA_0_BRESP),      // output wire [1 : 0] MNA_0_BRESP
  .MNA_0_BVALID(MNA_0_BVALID),    // output wire MNA_0_BVALID
  .MNA_0_BREADY(MNA_0_BREADY),    // input wire MNA_0_BREADY
  .MNA_0_RDATA(MNA_0_RDATA),      // output wire [31 : 0] MNA_0_RDATA
  .MNA_0_RRESP(MNA_0_RRESP),      // output wire [1 : 0] MNA_0_RRESP
  .MNA_0_RVALID(MNA_0_RVALID),    // output wire MNA_0_RVALID
  .MNA_0_RREADY(MNA_0_RREADY),    // input wire MNA_0_RREADY
  .MNA_1_AWADDR(MNA_1_AWADDR),    // input wire [31 : 0] MNA_1_AWADDR
  .MNA_1_AWPROT(MNA_1_AWPROT),    // input wire [2 : 0] MNA_1_AWPROT
  .MNA_1_AWVALID(MNA_1_AWVALID),  // input wire MNA_1_AWVALID
  .MNA_1_AWREADY(MNA_1_AWREADY),  // output wire MNA_1_AWREADY
  .MNA_1_WDATA(MNA_1_WDATA),      // input wire [31 : 0] MNA_1_WDATA
  .MNA_1_WSTRB(MNA_1_WSTRB),      // input wire [3 : 0] MNA_1_WSTRB
  .MNA_1_WVALID(MNA_1_WVALID),    // input wire MNA_1_WVALID
  .MNA_1_WREADY(MNA_1_WREADY),    // output wire MNA_1_WREADY
  .MNA_1_ARADDR(MNA_1_ARADDR),    // input wire [31 : 0] MNA_1_ARADDR
  .MNA_1_ARPROT(MNA_1_ARPROT),    // input wire [2 : 0] MNA_1_ARPROT
  .MNA_1_ARVALID(MNA_1_ARVALID),  // input wire MNA_1_ARVALID
  .MNA_1_ARREADY(MNA_1_ARREADY),  // output wire MNA_1_ARREADY
  .MNA_1_BRESP(MNA_1_BRESP),      // output wire [1 : 0] MNA_1_BRESP
  .MNA_1_BVALID(MNA_1_BVALID),    // output wire MNA_1_BVALID
  .MNA_1_BREADY(MNA_1_BREADY),    // input wire MNA_1_BREADY
  .MNA_1_RDATA(MNA_1_RDATA),      // output wire [31 : 0] MNA_1_RDATA
  .MNA_1_RRESP(MNA_1_RRESP),      // output wire [1 : 0] MNA_1_RRESP
  .MNA_1_RVALID(MNA_1_RVALID),    // output wire MNA_1_RVALID
  .MNA_1_RREADY(MNA_1_RREADY),    // input wire MNA_1_RREADY
  .SNA_0_AWADDR(SNA_0_AWADDR),    // output wire [31 : 0] SNA_0_AWADDR
  .SNA_0_AWPROT(SNA_0_AWPROT),    // output wire [2 : 0] SNA_0_AWPROT
  .SNA_0_AWVALID(SNA_0_AWVALID),  // output wire SNA_0_AWVALID
  .SNA_0_AWREADY(SNA_0_AWREADY),  // input wire SNA_0_AWREADY
  .SNA_0_WDATA(SNA_0_WDATA),      // output wire [31 : 0] SNA_0_WDATA
  .SNA_0_WSTRB(SNA_0_WSTRB),      // output wire [3 : 0] SNA_0_WSTRB
  .SNA_0_WVALID(SNA_0_WVALID),    // output wire SNA_0_WVALID
  .SNA_0_WREADY(SNA_0_WREADY),    // input wire SNA_0_WREADY
  .SNA_0_ARADDR(SNA_0_ARADDR),    // output wire [31 : 0] SNA_0_ARADDR
  .SNA_0_ARPROT(SNA_0_ARPROT),    // output wire [2 : 0] SNA_0_ARPROT
  .SNA_0_ARVALID(SNA_0_ARVALID),  // output wire SNA_0_ARVALID
  .SNA_0_ARREADY(SNA_0_ARREADY),  // input wire SNA_0_ARREADY
  .SNA_0_BRESP(SNA_0_BRESP),      // input wire [1 : 0] SNA_0_BRESP
  .SNA_0_BVALID(SNA_0_BVALID),    // input wire SNA_0_BVALID
  .SNA_0_BREADY(SNA_0_BREADY),    // output wire SNA_0_BREADY
  .SNA_0_RDATA(SNA_0_RDATA),      // input wire [31 : 0] SNA_0_RDATA
  .SNA_0_RRESP(SNA_0_RRESP),      // input wire [1 : 0] SNA_0_RRESP
  .SNA_0_RVALID(SNA_0_RVALID),    // input wire SNA_0_RVALID
  .SNA_0_RREADY(SNA_0_RREADY),    // output wire SNA_0_RREADY
  .SNA_1_AWADDR(SNA_1_AWADDR),    // output wire [31 : 0] SNA_1_AWADDR
  .SNA_1_AWPROT(SNA_1_AWPROT),    // output wire [2 : 0] SNA_1_AWPROT
  .SNA_1_AWVALID(SNA_1_AWVALID),  // output wire SNA_1_AWVALID
  .SNA_1_AWREADY(SNA_1_AWREADY),  // input wire SNA_1_AWREADY
  .SNA_1_WDATA(SNA_1_WDATA),      // output wire [31 : 0] SNA_1_WDATA
  .SNA_1_WSTRB(SNA_1_WSTRB),      // output wire [3 : 0] SNA_1_WSTRB
  .SNA_1_WVALID(SNA_1_WVALID),    // output wire SNA_1_WVALID
  .SNA_1_WREADY(SNA_1_WREADY),    // input wire SNA_1_WREADY
  .SNA_1_ARADDR(SNA_1_ARADDR),    // output wire [31 : 0] SNA_1_ARADDR
  .SNA_1_ARPROT(SNA_1_ARPROT),    // output wire [2 : 0] SNA_1_ARPROT
  .SNA_1_ARVALID(SNA_1_ARVALID),  // output wire SNA_1_ARVALID
  .SNA_1_ARREADY(SNA_1_ARREADY),  // input wire SNA_1_ARREADY
  .SNA_1_BRESP(SNA_1_BRESP),      // input wire [1 : 0] SNA_1_BRESP
  .SNA_1_BVALID(SNA_1_BVALID),    // input wire SNA_1_BVALID
  .SNA_1_BREADY(SNA_1_BREADY),    // output wire SNA_1_BREADY
  .SNA_1_RDATA(SNA_1_RDATA),      // input wire [31 : 0] SNA_1_RDATA
  .SNA_1_RRESP(SNA_1_RRESP),      // input wire [1 : 0] SNA_1_RRESP
  .SNA_1_RVALID(SNA_1_RVALID),    // input wire SNA_1_RVALID
  .SNA_1_RREADY(SNA_1_RREADY)    // output wire SNA_1_RREADY
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file demo_1_0.v when simulating
// the core, demo_1_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.


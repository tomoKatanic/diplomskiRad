`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2022 12:59:19 PM
// Design Name: 
// Module Name: top_soc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_soc(
    input clk, 
    input reset, 
    
    output reg [32-1:0] xreg_out [31:0],   // use these 2 outputs only for Simulation,    
    
//    output reg [1 : 0]  s_axi_rresp,
 //   output reg [1 : 0] s_axi_bresp,
    output reg [1 : 0] m_axi_rresp,
    output reg [1 : 0] m_axi_bresp

    );
    logic aclk;
       //read address channel for native_to_AXI_adapter
    wire [32-1:0] ar_addr;    //read adress
    wire [2:0] ar_prot;       //xilinx ip ignores, put to 000
    wire ar_valid;            //read adress valid
    wire ar_ready;                 //slave ready to take address
    
    //read data channel for native_to_AXI_adapter
    wire [32-1:0] r_data;
    wire r_valid;                  // S generates when rdata is valid
    wire r_ready;             //when is master ready to accept read
    
    //write address channel for native_to_AXI_adapter
    wire [32-1:0] aw_addr;    //write address
    wire [2:0] aw_prot;       //put to 000
    wire aw_valid;            //M when addres valid  
    wire aw_ready;                  //S when ready to recieve
    
    //write data channel for native_to_AXI_adapter
    wire w_valid;             //write data is valid
    wire [32-1:0] w_data;     //data to write
    wire [3:0] w_strb;        //wich of 4-bytes are write data
    wire w_ready;                  //S ready to write
    
    //write response channel for native_to_AXI_adapter
    wire b_valid;                 //S puts write response valid 
    wire b_ready;              //M puts when ready to recieve
    
    //native risc-v signals for native_to_AXI_adapter
    wire rv_m_valid;
    wire rv_m_rw;                  //is it read 0 od write 1 operation
    wire rv_m_ready;              //maybe not needed
    wire [1:0] mem_done;
    wire [32-1:0] rv_m_rdata; //read data to processor
    wire [32-1:0] rv_m_addr;       //address for reading/writing
    wire [32-1:0] rv_m_wrdata;      // data to write when rv_m_rw is 1
    
    // bram AXI IP wires to connect BRAM to NOC
    
    wire [31 : 0] s_axi_awaddr;
    wire s_axi_awvalid;
    wire s_axi_awready;
    wire [31 : 0] s_axi_wdata;
    wire [3 : 0] s_axi_wstrb;
    wire s_axi_wvalid;
    wire s_axi_wready;
    wire [1 : 0] s_axi_bresp;
    wire s_axi_bvalid;
    wire s_axi_bready;
    wire [31 : 0] s_axi_araddr;
    wire s_axi_arvalid;
    wire s_axi_arready;
    wire [31 : 0] s_axi_rdata;
    wire [1 : 0] s_axi_rresp;
    wire s_axi_rvalid;
    wire s_axi_rready;
    
    
    
    logic resetn;
    logic aresetn;
    logic areset;
    assign areset = reset;
    assign resetn = !reset;
    assign aresetn = !reset;
   
    assign aclk = clk;
    
    core cpu(
        .clk(aclk),
        .reset(areset),
        
        .rv_m_valid(rv_m_valid),
        .rv_m_rw(rv_m_rw),
        .rv_m_ready(rv_m_ready),
        .mem_done(mem_done),
        
        .rv_m_rdata(rv_m_rdata),
        .rv_m_addr(rv_m_addr),
        .rv_m_wrdata(rv_m_wrdata),
        
        .xreg_out(xreg_out)
    );
    
    native_to_axi axi_adapter (
        .aclk(clk),
        .resetn(resetn),
    
    //read address channel
        .ar_addr(ar_addr),    
        .ar_prot(ar_prot),      
        .ar_valid(ar_valid),          
        .ar_ready(ar_ready),                
    
    //read data channel
        .r_data(r_data),
        .r_valid(r_valid),                
        .r_ready(r_ready),            
    
    //write address channel
        .aw_addr(aw_addr),   
        .aw_prot(aw_prot),       
        .aw_valid(aw_valid),         
        .aw_ready(aw_ready),                 
    
    //write data channel
        .w_valid(w_valid),           
        .w_data(w_data), 
        .w_strb(w_strb),      
        .w_ready(w_ready),               
    
    //write response channel
        .b_valid(b_valid),                 
        .b_ready(b_ready),           
    
    //native risc-v signals
        .rv_m_valid(rv_m_valid),
        .rv_m_rw(rv_m_rw),                
        .rv_m_ready(rv_m_ready),       
        .rv_m_rdata(rv_m_rdata),
        .rv_m_addr(rv_m_addr),
        .rv_m_wrdata(rv_m_wrdata),
        .mem_done(mem_done)
    );
    
    
    
    
 blk_mem_gen_0 your_instance_name (
    .s_aclk(clk),                // input wire s_aclk
    .s_aresetn(aresetn),          // input wire s_aresetn
    .s_axi_awaddr(s_axi_awaddr),    // input wire [31 : 0] s_axi_awaddr
    .s_axi_awvalid(s_axi_awvalid),  // input wire s_axi_awvalid
    .s_axi_awready(s_axi_awready),  // output wire s_axi_awready
    .s_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
    .s_axi_wstrb(s_axi_wstrb),      // input wire [3 : 0] s_axi_wstrb
    .s_axi_wvalid(s_axi_wvalid),    // input wire s_axi_wvalid
    .s_axi_wready(s_axi_wready),    // output wire s_axi_wready
    .s_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
    .s_axi_bvalid(s_axi_bvalid),    // output wire s_axi_bvalid
    .s_axi_bready(s_axi_bready),    // input wire s_axi_bready
    .s_axi_araddr(s_axi_araddr),    // input wire [31 : 0] s_axi_araddr
    .s_axi_arvalid(s_axi_arvalid),  // input wire s_axi_arvalid
    .s_axi_arready(s_axi_arready),  // output wire s_axi_arready
    .s_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
    .s_axi_rresp(s_axi_rresp),      // output wire [1 : 0] s_axi_rresp
    .s_axi_rvalid(s_axi_rvalid),    // output wire s_axi_rvalid
    .s_axi_rready(s_axi_rready)    // input wire s_axi_rready
);

demo_1_0 mesh_2_x_2 (
  .clk(clk),                      // input wire clk
  .rst(aresetn),                      // input wire rst
  .MNA_0_AWADDR(aw_addr),    // input wire [31 : 0] MNA_0_AWADDR
  .MNA_0_AWPROT(aw_prot),    // input wire [2 : 0] MNA_0_AWPROT
  .MNA_0_AWVALID(aw_valid),  // input wire MNA_0_AWVALID
  .MNA_0_AWREADY(aw_ready),  // output wire MNA_0_AWREADY
  .MNA_0_WDATA(w_data),      // input wire [31 : 0] MNA_0_WDATA
  .MNA_0_WSTRB(w_strb),      // input wire [3 : 0] MNA_0_WSTRB
  .MNA_0_WVALID(w_valid),    // input wire MNA_0_WVALID
  .MNA_0_WREADY(w_ready),    // output wire MNA_0_WREADY
  .MNA_0_ARADDR(ar_addr),    // input wire [31 : 0] MNA_0_ARADDR
  .MNA_0_ARPROT(ar_prot),    // input wire [2 : 0] MNA_0_ARPROT
  .MNA_0_ARVALID(ar_valid),  // input wire MNA_0_ARVALID
  .MNA_0_ARREADY(ar_ready),  // output wire MNA_0_ARREADY
  .MNA_0_BRESP(m_axi_bresp),      // output wire [1 : 0] MNA_0_BRESP
  .MNA_0_BVALID(b_valid),    // output wire MNA_0_BVALID
  .MNA_0_BREADY(b_ready),    // input wire MNA_0_BREADY
  .MNA_0_RDATA(r_data),      // output wire [31 : 0] MNA_0_RDATA
  .MNA_0_RRESP(m_axi_rresp),      // output wire [1 : 0] MNA_0_RRESP
  .MNA_0_RVALID(r_valid),    // output wire MNA_0_RVALID
  .MNA_0_RREADY(r_ready),    // input wire MNA_0_RREADY
  .MNA_1_AWADDR(),    // input wire [31 : 0] MNA_1_AWADDR
  .MNA_1_AWPROT(),    // input wire [2 : 0] MNA_1_AWPROT
  .MNA_1_AWVALID(),  // input wire MNA_1_AWVALID
  .MNA_1_AWREADY(),  // output wire MNA_1_AWREADY
  .MNA_1_WDATA(),      // input wire [31 : 0] MNA_1_WDATA
  .MNA_1_WSTRB(),      // input wire [3 : 0] MNA_1_WSTRB
  .MNA_1_WVALID(),    // input wire MNA_1_WVALID
  .MNA_1_WREADY(),    // output wire MNA_1_WREADY
  .MNA_1_ARADDR(),    // input wire [31 : 0] MNA_1_ARADDR
  .MNA_1_ARPROT(),    // input wire [2 : 0] MNA_1_ARPROT
  .MNA_1_ARVALID(),  // input wire MNA_1_ARVALID
  .MNA_1_ARREADY(),  // output wire MNA_1_ARREADY
  .MNA_1_BRESP(),      // output wire [1 : 0] MNA_1_BRESP
  .MNA_1_BVALID(),    // output wire MNA_1_BVALID
  .MNA_1_BREADY(),    // input wire MNA_1_BREADY
  .MNA_1_RDATA(),      // output wire [31 : 0] MNA_1_RDATA
  .MNA_1_RRESP(),      // output wire [1 : 0] MNA_1_RRESP
  .MNA_1_RVALID(),    // output wire MNA_1_RVALID
  .MNA_1_RREADY(),    // input wire MNA_1_RREADY
  .SNA_0_AWADDR(s_axi_awaddr),    // output wire [31 : 0] SNA_0_AWADDR
  .SNA_0_AWPROT(),    // output wire [2 : 0] SNA_0_AWPROT
  .SNA_0_AWVALID(s_axi_awvalid),  // output wire SNA_0_AWVALID
  .SNA_0_AWREADY(s_axi_awready),  // input wire SNA_0_AWREADY
  .SNA_0_WDATA(s_axi_wdata),      // output wire [31 : 0] SNA_0_WDATA
  .SNA_0_WSTRB(s_axi_wstrb),      // output wire [3 : 0] SNA_0_WSTRB
  .SNA_0_WVALID(s_axi_wvalid),    // output wire SNA_0_WVALID
  .SNA_0_WREADY(s_axi_wready),    // input wire SNA_0_WREADY
  .SNA_0_ARADDR(s_axi_araddr),    // output wire [31 : 0] SNA_0_ARADDR
  .SNA_0_ARPROT(),    // output wire [2 : 0] SNA_0_ARPROT
  .SNA_0_ARVALID(s_axi_arvalid),  // output wire SNA_0_ARVALID
  .SNA_0_ARREADY(s_axi_arready),  // input wire SNA_0_ARREADY
  .SNA_0_BRESP(s_axi_bresp),      // input wire [1 : 0] SNA_0_BRESP
  .SNA_0_BVALID(s_axi_bvalid),    // input wire SNA_0_BVALID
  .SNA_0_BREADY(s_axi_bready),    // output wire SNA_0_BREADY
  .SNA_0_RDATA(s_axi_rdata),      // input wire [31 : 0] SNA_0_RDATA
  .SNA_0_RRESP(s_axi_rresp),      // input wire [1 : 0] SNA_0_RRESP
  .SNA_0_RVALID(s_axi_rvalid),    // input wire SNA_0_RVALID
  .SNA_0_RREADY(s_axi_rready),    // output wire SNA_0_RREADY
  .SNA_1_AWADDR(),    // output wire [31 : 0] SNA_1_AWADDR
  .SNA_1_AWPROT(),    // output wire [2 : 0] SNA_1_AWPROT
  .SNA_1_AWVALID(),  // output wire SNA_1_AWVALID
  .SNA_1_AWREADY(),  // input wire SNA_1_AWREADY
  .SNA_1_WDATA(),      // output wire [31 : 0] SNA_1_WDATA
  .SNA_1_WSTRB(),      // output wire [3 : 0] SNA_1_WSTRB
  .SNA_1_WVALID(),    // output wire SNA_1_WVALID
  .SNA_1_WREADY(),    // input wire SNA_1_WREADY
  .SNA_1_ARADDR(),    // output wire [31 : 0] SNA_1_ARADDR
  .SNA_1_ARPROT(),    // output wire [2 : 0] SNA_1_ARPROT
  .SNA_1_ARVALID(),  // output wire SNA_1_ARVALID
  .SNA_1_ARREADY(),  // input wire SNA_1_ARREADY
  .SNA_1_BRESP(),      // input wire [1 : 0] SNA_1_BRESP
  .SNA_1_BVALID(),    // input wire SNA_1_BVALID
  .SNA_1_BREADY(),    // output wire SNA_1_BREADY
  .SNA_1_RDATA(),      // input wire [31 : 0] SNA_1_RDATA
  .SNA_1_RRESP(),      // input wire [1 : 0] SNA_1_RRESP
  .SNA_1_RVALID(),    // input wire SNA_1_RVALID
  .SNA_1_RREADY()    // output wire SNA_1_RREADY
);

    
endmodule

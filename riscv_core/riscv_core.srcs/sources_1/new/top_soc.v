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
    
    output reg [32-1:0] xreg_out [31:0]   // use these 2 outputs only for Simulation,       

    );
    
       //read address channel
    wire [32-1:0] ar_addr;    //read adress
    wire [2:0] ar_prot;       //xilinx ip ignores, put to 000
    wire ar_valid;            //read adress valid
    wire ar_ready;                 //slave ready to take address
    
    //read data channel
    wire [32-1:0] r_data;
    wire r_valid;                  // S generates when rdata is valid
    wire r_ready;             //when is master ready to accept read
    
    //write address channel
    wire [32-1:0] aw_addr;    //write address
    wire [2:0] aw_prot;       //put to 000
    wire aw_valid;            //M when addres valid  
    wire aw_ready;                  //S when ready to recieve
    
    //write data channel
    wire w_valid;             //write data is valid
    wire [32-1:0] w_data;     //data to write
    wire [3:0] w_strb;        //wich of 4-bytes are write data
    wire w_ready;                  //S ready to write
    
    //write response channel
    wire b_valid;                 //S puts write response valid 
    wire b_ready;              //M puts when ready to recieve
    
    //native risc-v signals
    wire rv_m_valid;
    wire rv_m_rw;                  //is it read 0 od write 1 operation
    wire rv_m_ready;              //maybe not needed
    wire [32-1:0] rv_m_rdata; //read data to processor
    wire [32-1:0] rv_m_addr;       //address for reading/writing
    wire [32-1:0] rv_m_wrdata;      // data to write when rv_m_rw is 1
    
    logic resetn;
    assign resetn = !reset;
    
    core cpu(
        .clk(clk),
        .reset(reset),
        
        .rv_m_valid(rv_m_valid),
        .rv_m_rw(rv_m_rw),
        .rv_m_ready(rv_m_ready),
        
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
        .rv_m_wrdata(rv_m_wrdata)
    );
    
endmodule

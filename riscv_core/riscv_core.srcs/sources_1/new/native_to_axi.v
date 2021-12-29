`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2021 11:15:45 AM
// Design Name: 
// Module Name: native_to_axi
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


module native_to_axi(
    input aclk,
    input resetn,
    
    //read address channel
    output reg [32-1:0] ar_addr,    //read adress
    output reg [2:0] ar_prot,       //xilinx ip ignores, put to 000
    output reg ar_valid,            //read adress valid
    input ar_ready,                 //slave ready to take address
    
    //read data channel
    input [32-1:0] r_data,
    input r_valid,                  // S generates when rdata is valid
    output reg r_ready,             //when is master ready to accept read
    
    //write address channel
    output reg [32-1:0] aw_addr,    //write address
    output reg [2:0] aw_prot,       //put to 000
    output reg aw_valid,            //M when addres valid  
    input aw_ready,                  //S when ready to recieve
    
    //write data channel
    output reg w_valid,             //write data is valid
    output reg [32-1:0] w_data,     //data to write
    output reg [3:0] w_strb,        //wich of 4-bytes are write data
    input w_ready,                  //S ready to write
    
    //write response channel
    input b_valid,                  //S puts write response valid 
    output reg b_ready,              //M puts when ready to recieve
    
    //native risc-v signals
    input rv_m_valid,
    input rv_m_rw,                  //is it read 0 od write 1 operation
    output rv_m_ready,              //maybe not needed
    output reg [32-1:0] rv_m_rdata, //read data to processor
    input [32-1:0] rv_m_addr,       //address for reading/writing
    input [32-1:0] rv_m_wrdata      // data to write when rv_m_rw is 1
    
    );
endmodule

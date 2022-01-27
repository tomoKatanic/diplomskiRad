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
    output reg rv_m_ready,              //maybe not needed
    output reg [32-1:0] rv_m_rdata, //read data to processor
    input [32-1:0] rv_m_addr,       //address for reading/writing
    input [32-1:0] rv_m_wrdata,      // data to write when rv_m_rw is 1
    output reg[1:0] mem_done,
    
    //response channel
    input reg [1 : 0] m_axi_rresp,
    input reg [1 : 0] m_axi_bresp
    );

logic addr_r_done;
logic addr_wr_done;
logic wr_data_done;


//addres for read data
assign ar_valid = rv_m_valid && !rv_m_rw && !addr_r_done;
assign ar_addr[32-1:0] = rv_m_addr;
assign ar_prot [2:0] = 3'b000;

//for read data
assign r_ready = rv_m_valid && !rv_m_rw;

//addres for write data
assign aw_valid = rv_m_valid && rv_m_rw && !addr_wr_done;
assign aw_addr[32-1:0] = rv_m_addr;
assign aw_prot [2:0] = 3'b000;

//data for write data
assign w_data[32-1:0] = rv_m_wrdata;
assign w_strb[3:0] = 4'b1111;
assign w_valid = rv_m_valid && rv_m_rw && !wr_data_done;

assign b_ready = rv_m_valid && rv_m_rw;

//ready for next if read is valid od write is valid
  
assign rv_m_ready = r_valid || b_valid;
assign mem_done = (r_valid && !rv_m_rw && m_axi_rresp === 2'b00) ? 2'b01 :
                  (b_valid && rv_m_rw &&  m_axi_bresp === 2'b00) ? 2'b10 : 
                  2'b00; 


//read is done, maybe assing X if not r_valid
assign  rv_m_rdata = r_data;


always @(posedge aclk)
begin
    if(!resetn) begin
        addr_r_done <= 1'b0;
        addr_wr_done <= 1'b0;
        wr_data_done <= 1'b0;
    end
    else begin
        if(ar_valid && ar_ready) begin
            addr_r_done <= 1'b1;
        end
        if(aw_valid && aw_ready) begin
            addr_wr_done <= 1'b1;
        end
        if(w_valid && w_ready) begin
            wr_data_done <= 1'b1;
        end
        if ( rv_m_ready && rv_m_valid || !rv_m_valid ) begin
            //all done
             addr_r_done <= 1'b0;
             addr_wr_done <= 1'b0;
             wr_data_done <= 1'b0;
        end
    end
end


endmodule

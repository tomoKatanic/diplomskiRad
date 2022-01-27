`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2021 04:01:50 PM
// Design Name: 
// Module Name: axi_adapter_tb
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


module axi_adapter_tb(
    );
    reg aclk;
    reg resetn;
    
    //read address channel
    wire [32-1:0] ar_addr;    //read adress
    wire [2:0] ar_prot;       //xilinx ip ignores, put to 000
    wire ar_valid;            //read adress valid
    reg ar_ready;                 //slave ready to take address
    
    //read data channel
    reg [32-1:0] r_data;
    reg r_valid;                  // S generates when rdata is valid
    wire r_ready;             //when is master ready to accept read
    
    //write address channel
    wire [32-1:0] aw_addr;    //write address
    wire [2:0] aw_prot;       //put to 000
    wire aw_valid;            //M when addres valid  
    reg aw_ready;                  //S when ready to recieve
    
    //write data channel
    wire w_valid;             //write data is valid
    wire [32-1:0] w_data;     //data to write
    wire [3:0] w_strb;        //wich of 4-bytes are write data
    reg w_ready;                  //S ready to write
    
    //write response channel
    reg b_valid;                 //S puts write response valid 
    wire b_ready;              //M puts when ready to recieve
    
    //native risc-v signals
    reg rv_m_valid;
    reg rv_m_rw;                  //is it read 0 od write 1 operation
    wire rv_m_ready;              //maybe not needed
    wire [32-1:0] rv_m_rdata; //read data to processor
    reg [32-1:0] rv_m_addr;       //address for reading/writing
    reg [32-1:0] rv_m_wrdata;      // data to write when rv_m_rw is 1
    
    native_to_axi dut (
        .aclk(aclk),
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
    integer i;
    
    initial
        begin
            aclk = 0;
            resetn=0;
           for(i=0; i<10; i=i+1)
           begin
            //read transaction
            #6 resetn = 1;
            #8 rv_m_addr = 32'b0 + i;
            rv_m_rw =0;
            rv_m_valid =1;
            #1 ar_ready = 1;
            #5 r_data = 32'b1 + i;
            r_valid =1;
            rv_m_valid = 0;
            #4  r_valid = 0;
            //r_data = 32'bX;
            ar_ready = 0;
            //time 
            #7 rv_m_addr = 32'b0 + i;
            rv_m_wrdata = 32'b1 + i;
            rv_m_rw =1;
            rv_m_valid =1;
            #1 
            aw_ready = 1;
            #1w_ready = 1;
            #4 
            b_valid =1;
            rv_m_valid = 0;
            #3 b_valid = 0;
            aw_ready = 0;
            w_ready=0;
          end
          
        end
        
    
    always
        begin
            #5 aclk <= !aclk;    
        end
    
endmodule

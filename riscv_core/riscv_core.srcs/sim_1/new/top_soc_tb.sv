`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2022 01:51:40 PM
// Design Name: 
// Module Name: top_soc_tb
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


module top_soc_tb(

    );
    
    reg clk;
    reg reset; 
    
    wire [32-1:0] xreg_out [31:0];   // use these 2 outputs only for Simulation,    
    
    wire [1 : 0]  s_axi_rresp;
    wire [1 : 0] s_axi_bresp;
   
   
    top_soc dut(
     .clk(clk), 
     .reset(reset), 
    
    .xreg_out(xreg_out), // use these 2 outputs only for Simulation,    
    
    .s_axi_rresp(s_axi_rresp),
    .s_axi_bresp(s_axi_bresp)

    );
    
    initial
        begin
            clk <= 0;
            reset <= 1;
            #6 reset <= 0;
        end



    always
        begin
            #5 clk <= !clk;    
        end
         




endmodule

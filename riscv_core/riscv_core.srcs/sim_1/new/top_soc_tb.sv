`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Tomislav Katanic
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
    
  //  wire [32-1:0] xreg_out [31:0];   // use these 2 outputs only for Simulation,    
    
    wire [1 : 0]  o_axi_rresp;
    wire [1 : 0] o_axi_rresp1;
    integer i = 1;
    integer j = 1;
   
   
    top_soc dut(
     .clk(clk), 
     .reset(reset), 
    
    .o_axi_rresp(o_axi_rresp), // use these 2 outputs only for Simulation, 
    .o_axi_rresp1(o_axi_rresp1)   
    
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
         
    always @ (posedge clk or posedge dut.cpu.rv_m_ready) begin
            i <= i + 1;
    end
    
    always @ (posedge dut.cpu.rv_m_ready) begin
            $display("num_clk is i:%d", i);
            i <= 1;
    end
    
     always @ (posedge clk or posedge dut.cpu1.rv_m_ready) begin
            j <= j + 1;
    end
    
    always @ (posedge dut.cpu1.rv_m_ready) begin
            $display("num_clk is J: %d", j);
            j <= 1;
    end
    



endmodule

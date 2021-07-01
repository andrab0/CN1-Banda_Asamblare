`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 01:22:07 AM
// Design Name: 
// Module Name: simulare_banda
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


module simulare_banda();
    reg a, b, c, d, e,
        clk, load, clear;
    wire f;
    
    top_BandaAsamblare inst(a, b, c, d, e, clk, load, clear, f);
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 1;  load = 1; clear = 0;
        #20 a = 1; b = 1; c = 1; d = 0; e = 0;
        #20 a = 1; b = 1; c = 1; d = 1; e = 0;
        #20 a = 0; b = 0; c = 0; d = 1; e = 1;
        #200 $finish;
    end
endmodule

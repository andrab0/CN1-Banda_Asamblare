`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 01:02:11 AM
// Design Name: 
// Module Name: regD
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


module regD(input a, clk, load, clear, output rez);
    reg rez;
    wire aux;

    always @(posedge clk)
        begin
            if (clear == 1) begin
                rez <= 0;
            end
            
            if (load == 1) begin
                rez <= a;
            end
        end
endmodule

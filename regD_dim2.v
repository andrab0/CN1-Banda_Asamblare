`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 01:00:35 AM
// Design Name: 
// Module Name: regD_dim2
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


module regD_dim2(input a, b, clk, load, clear, output [1:0]rez);
    reg [1:0] rez;

    always @(posedge clk)
        begin
            if (clear == 1) begin
                rez = 0;
            end
            
            if (load == 1) begin
                rez = {a, b};
            end
        end
endmodule

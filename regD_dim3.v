`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 12:59:25 AM
// Design Name: 
// Module Name: regD_dim3
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


module regD_dim3(input a, b, c, clk, load, clear, output [2:0]rez);
    reg [2:0] rez;

    always @(posedge clk)
        begin
            if (clear == 1) begin
                rez = 0;
            end
            
            if (load == 1) begin
                rez = {a, b, c};
            end
        end
endmodule

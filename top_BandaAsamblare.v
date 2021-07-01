`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 01:04:23 AM
// Design Name: 
// Module Name: top_BandaAsamblare
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


module top_BandaAsamblare(input a, b, c, d, e, clk, load, clear, output f);
    wire [4:0]rez1;
    wire [2:0]rez2;
    wire [1:0]rez3;
    wire rez_inm1,
         rez_inm2,
         rez_sum,
         rez4,
         rez_fin;
    
    //  intorduc toate datele in primul registru:
    regD_dim5 inst1(a, b, c, d, e, clk, load, clear, rez1);
    
    //  calculez cele doua produse a*b si d*e:
    inm inst2(rez1[4], rez1[3], rez_inm1);
    inm inst3(rez1[1], rez1[0], rez_inm2);
    
    //  introduc datele actuale in al doilea registru:
    regD_dim3 inst4(rez_inm1, rez1[3], rez_inm2, clk, load, clear, rez2);
    
    //  calculez adunarea:
    sum inst5(rez2[2], rez2[1], rez_sum);
    
    //  introduc datele actuale in al treilea registru:
    regD_dim2 inst6(rez_sum, rez2[0], clk, load, clear, rez3);
    
    //  calculez diferenta:
    dif inst7(rez3[1], rez3[0], rez4);
    
    //  introduc datele in ultimul registru si scot rezultatul functiei:
    regD inst8(rez4, clk, load, clear, rez_fin);
    assign f = rez_fin;
endmodule

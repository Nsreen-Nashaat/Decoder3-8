`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 06:43:25 PM
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8
(
    input [2:0] w,
    input en,
    output reg [0:7] y
  );
  
  always @(*)
    begin
      y = 'b0;
      if(en)
        y[w] = 1'b1;
      else
        y = 'b0;
    end  
  
endmodule
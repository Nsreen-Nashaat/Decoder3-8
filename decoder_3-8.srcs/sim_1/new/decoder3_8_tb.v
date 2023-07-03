`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 07:16:15 PM
// Design Name: 
// Module Name: decoder3_8_tb
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


module decoder3_8_tb(
    );
    // declaring local parameters
    parameter n = 4;
    reg [n-1:0] w;
    reg en;
    wire [0:2**n -1] y;
    integer k ;
    // inatiating uut
    decoder3_8 #(.n(n)) uut0 
    (
       .w(w),
       .en(en),
       .y(y)
    );
    
    initial #155 $finish;
    
    initial 
    begin
        en = 1'b0;
    end
    
    always
    begin
    #5  en =-en;
    w = 0;
    for (k=0; k<2**n; k =k+1)
    begin
        if (w == k)
            y[k] = 1'b1;
        else
        y = 0;
    end
    end
endmodule

`timescale 1ns / 1ps


module square(
    input clk_i,
    input rst_i,
    
    input [7:0] x_bi,
    input start_i,
    
    output busy_o,
    output [15:0] y_bo
);
    mult mult_1(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .a_bi(x_bi),
        .b_bi(x_bi),
        .start_i(start_i),
        .busy_o(busy_o),
        .y_bo(y_bo)
    );
endmodule

`timescale 1ns / 1ps


module func(
    input clk_i,
    input rst_i,
    
    input [7:0] a_bi,
    input [7:0] b_bi,
    input start_i,
    
    output busy_o,
    output [15:0] y_bo
);
    
    wire        sq_busy_o;
    wire [15:0] sq_y_bo;
    wire  [2:0] cb_busy_o;
    wire  [2:0] cb_y_bo;
    
    assign busy_o = sq_busy_o || cb_busy_o;
    assign y_bo   = sq_y_bo + cb_y_bo;
    
    square square_1(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .x_bi(a_bi),
        .start_i(start_i),
        .busy_o(sq_busy_o),
        .y_bo(sq_y_bo)
    );
    
     cbrt cbrt_1(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .x_bi(b_bi),
        .start_i(start_i),
        .busy_o(cb_busy_o),
        .y_bo(cb_y_bo)
    );
    
endmodule

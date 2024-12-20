`timescale 1ns / 1ps

module t_flipflop (
    input t,
    input clk,
    input rst,
    output reg q,
    output q_bar
);
    
    assign q_bar = ~q;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            q <= 0;  
        end else if (t) begin
            q <= ~q;  
        end
        
    end
endmodule

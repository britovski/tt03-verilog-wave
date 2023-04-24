`default_nettype none
`timescale 1ns/1ps

module tb (
    input clk,
    output [6:0] dataout
    );

    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars (0, tb);
        #1;
    end

    wire [7:0] inputs = {7'b0, clk};
    wire [7:0] outputs;
    assign dataout = outputs[6:0];

    wave wave (
        .io_in (inputs),
        .io_out (outputs)
    );

endmodule

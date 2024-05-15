`timescale 1ns/1ps
module d24_tb;

    reg [1:0] a1;
    reg e1;

    wire [3:0] y1;

    d24 uut(
        .a(a1),
        .e(e1),
        .y(y1)
    );

    initial begin
        a1 = 2'b00;
        e1 = 1;

        #10 a1 = 2'b00;
        #10 a1 = 2'b01;
        #10 a1 = 2'b10;
        #10 a1 = 2'b11;
        #10;

    end

    initial begin
        $monitor("E: %1b | A: %2b | Y: %4b", e1, a1, y1);
    end

endmodule


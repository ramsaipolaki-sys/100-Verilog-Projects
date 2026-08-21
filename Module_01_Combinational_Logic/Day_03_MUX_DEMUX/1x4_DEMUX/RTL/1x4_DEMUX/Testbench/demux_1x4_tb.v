`timescale 1ns/1ps

module demux_1x4_tb;

reg din;
reg [1:0] sel;

wire [3:0] y;

demux_1x4 uut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin

    $monitor("Time=%0t | DIN=%b SEL=%b | Y=%b",
             $time, din, sel, y);

    din = 1;

    sel = 2'b00;
    #10;

    sel = 2'b01;
    #10;

    sel = 2'b10;
    #10;

    sel = 2'b11;
    #10;

    din = 0;

    sel = 2'b00;
    #10;

    $finish;

end

endmodule

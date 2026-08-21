`timescale 1ns/1ps

module mux_4x1_tb;

reg a;
reg b;
reg c;
reg d;
reg [1:0] sel;

wire y;

mux_4x1 uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b C=%b D=%b | SEL=%b | Y=%b",
             $time, a, b, c, d, sel, y);

    a = 0; b = 1; c = 0; d = 1;

    sel = 2'b00;
    #10;

    sel = 2'b01;
    #10;

    sel = 2'b10;
    #10;

    sel = 2'b11;
    #10;

    $finish;

end

endmodule

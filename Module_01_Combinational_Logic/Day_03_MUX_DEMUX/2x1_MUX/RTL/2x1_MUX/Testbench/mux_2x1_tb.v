`timescale 1ns/1ps

module mux_2x1_tb;

reg a;
reg b;
reg sel;

wire y;

mux_2x1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b SEL=%b | Y=%b",
             $time, a, b, sel, y);

    a = 0; b = 1; sel = 0;
    #10;

    a = 0; b = 1; sel = 1;
    #10;

    a = 1; b = 0; sel = 0;
    #10;

    a = 1; b = 0; sel = 1;
    #10;

    $finish;

end

endmodule

module mux_2x1 (
    input  a,
    input  b,
    input  sel,
    output y
);

assign y = sel ? b : a;

endmodule

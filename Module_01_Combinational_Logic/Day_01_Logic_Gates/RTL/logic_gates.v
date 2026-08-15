module logic_gates (
    input  a,
    input  b,

    output and_y,
    output or_y,
    output not_y,
    output nand_y,
    output nor_y,
    output xor_y,
    output xnor_y
);

assign and_y  = a & b;
assign or_y   = a | b;
assign not_y  = ~a;
assign nand_y = ~(a & b);
assign nor_y  = ~(a | b);
assign xor_y  = a ^ b;
assign xnor_y = ~(a ^ b);

endmodule

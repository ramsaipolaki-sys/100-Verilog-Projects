  module full_subtractor (
    input  a,
    input  b,
    input  bin,
    output difference,
    output borrow
);

assign difference = a ^ b ^ bin;

assign borrow = (~a & b) | (~a & bin) | (b & bin);

endmodule

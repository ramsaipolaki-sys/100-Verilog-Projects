`timescale 1ns/1ps

module logic_gates_tb;

reg a;
reg b;

wire and_y;
wire or_y;
wire not_y;
wire nand_y;
wire nor_y;
wire xor_y;
wire xnor_y;

logic_gates uut (
    .a(a),
    .b(b),
    .and_y(and_y),
    .or_y(or_y),
    .not_y(not_y),
    .nand_y(nand_y),
    .nor_y(nor_y),
    .xor_y(xor_y),
    .xnor_y(xnor_y)
);

initial begin

    $monitor(
        "Time=%0t | A=%b B=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
        $time, a, b, and_y, or_y, not_y,
        nand_y, nor_y, xor_y, xnor_y
    );

    // Test Case 1
    a = 0;
    b = 0;
    #10;

    // Test Case 2
    a = 0;
    b = 1;
    #10;

    // Test Case 3
    a = 1;
    b = 0;
    #10;

    // Test Case 4
    a = 1;
    b = 1;
    #10;

    $finish;

end

endmodule

`timescale 1ns/1ps

module half_adder_tb;

reg a;
reg b;

wire sum;
wire carry;

half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b | SUM=%b CARRY=%b",
             $time, a, b, sum, carry);

    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;

end

endmodule

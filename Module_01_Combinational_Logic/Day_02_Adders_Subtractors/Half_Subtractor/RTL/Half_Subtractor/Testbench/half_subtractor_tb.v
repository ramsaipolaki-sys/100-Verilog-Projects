`timescale 1ns/1ps

module half_subtractor_tb;

reg a;
reg b;

wire difference;
wire borrow;

half_subtractor uut (
    .a(a),
    .b(b),
    .difference(difference),
    .borrow(borrow)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b | Difference=%b Borrow=%b",
             $time, a, b, difference, borrow);

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

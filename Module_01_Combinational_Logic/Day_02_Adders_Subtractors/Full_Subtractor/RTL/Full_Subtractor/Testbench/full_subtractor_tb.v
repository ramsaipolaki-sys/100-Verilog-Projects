`timescale 1ns/1ps

module full_subtractor_tb;

reg a;
reg b;
reg bin;

wire difference;
wire borrow;

full_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .difference(difference),
    .borrow(borrow)
);

initial begin

    $monitor(
        "Time=%0t | A=%b B=%b Bin=%b | Difference=%b Borrow=%b",
        $time, a, b, bin, difference, borrow
    );

    a = 0; b = 0; bin = 0;
    #10;

    a = 0; b = 0; bin = 1;
    #10;

    a = 0; b = 1; bin = 0;
    #10;

    a = 0; b = 1; bin = 1;
    #10;

    a = 1; b = 0; bin = 0;
    #10;

    a = 1; b = 0; bin = 1;
    #10;

    a = 1; b = 1; bin = 0;
    #10;

    a = 1; b = 1; bin = 1;
    #10;

    $finish;

end

endmodule

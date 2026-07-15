`timescale 1ns/1ps

module alu32_tb;

reg [31:0] A;
reg [31:0] B;
reg [3:0] sel;

wire [31:0] result;
wire carry;
wire zero;
wire overflow;

alu32 uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero),
    .overflow(overflow)
);

initial begin
     $dumpfile("alu32.vcd");
   $dumpvars(0, alu32_tb);

    A = 32'd25;
    B = 32'd15;

    sel = 4'b0000; #10;   // ADD
    sel = 4'b0001; #10;   // SUB
    sel = 4'b0010; #10;   // AND
    sel = 4'b0011; #10;   // OR
    sel = 4'b0100; #10;   // XOR
    sel = 4'b0101; #10;   // NOT
    sel = 4'b0110; #10;   // Left Shift
    sel = 4'b0111; #10;   // Right Shift
    sel = 4'b1000; #10;   // Increment
    sel = 4'b1001; #10;   // Decrement

    A = 32'hFFFFFFFF;
    B = 32'd1;
    sel = 4'b0000; #10;

    $finish;

end

endmodule
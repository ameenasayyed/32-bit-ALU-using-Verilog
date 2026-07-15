module alu32(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0] sel,
    output reg [31:0] result,
    output reg carry,
    output reg zero,
    output reg overflow
);

reg [32:0] temp;

always @(*) begin
    carry = 0;
    overflow = 0;

    case(sel)

        4'b0000: begin              // Addition
            temp = A + B;
            result = temp[31:0];
            carry = temp[32];
            overflow = (A[31] == B[31]) &&
                       (result[31] != A[31]);
        end

        4'b0001: begin              // Subtraction
            temp = A - B;
            result = temp[31:0];
            carry = temp[32];
            overflow = (A[31] != B[31]) &&
                       (result[31] != A[31]);
        end

        4'b0010: result = A & B;    // AND

        4'b0011: result = A | B;    // OR

        4'b0100: result = A ^ B;    // XOR

        4'b0101: result = ~A;       // NOT

        4'b0110: result = A << 1;   // Left Shift

        4'b0111: result = A >> 1;   // Right Shift

        4'b1000: result = A + 1;    // Increment

        4'b1001: result = A - 1;    // Decrement

        default: result = 32'b0;

    endcase

    if(result == 32'b0)
        zero = 1;
    else
        zero = 0;

end

endmodule
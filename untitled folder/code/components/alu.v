// alu.v - ALU module with carry output
module alu #(parameter WIDTH = 32) (
    input       [WIDTH-1:0] a, b,       // operands
    input       [3:0] alu_ctrl,         // ALU control
    output reg  [WIDTH-1:0] alu_out,    // ALU output
    output      zero,                   // zero flag
    output reg  carry                   // carry/borrow flag for unsigned ops
);

always @(*) begin
    carry = 0;  // default
    case (alu_ctrl)
        4'b0000:  begin                    // ADD
            alu_out = a + b;
        end
        4'b1000:  begin                    // SUB
            alu_out = a - b;
				carry = a < b;
        end
        4'b0111:  alu_out = a & b;         // AND
        4'b0110:  alu_out = a | b;         // OR
        4'b0010:  begin                     // SLT (signed)
            if ($signed(a) < $signed(b))
                alu_out = 1;
            else
                alu_out = 0;
        end
        4'b0100:  alu_out = a ^ b;         // XOR
        4'b0001:  alu_out = a << b[4:0];   // SLL
        4'b0011:  begin                     // SLTU (unsigned)
            alu_out = (a < b) ? 1 : 0;
        end
        4'b0101:  alu_out = a >> b[4:0];   // SRL
        4'b1101:  alu_out = $signed(a) >>> b[4:0];  // SRA
        default: alu_out = 0;
    endcase
end

assign zero = (alu_out == 0) ? 1'b1 : 1'b0;

endmodule
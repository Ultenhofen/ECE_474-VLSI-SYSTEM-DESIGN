// skeleton code file for alu
// version: Sp2021

module alu(
	input [7:0] in_a,	// input a
	input [7:0] in_b,	// input b
	input [3:0] opcode,	// opcode input
	output reg [7:0] alu_out,	// alu output
	output reg		 alu_zero,	// logic '1' when alu_output is all zeros
	output reg 		 alu_carry	// indicates a carry out from ALU
);

// Opcode Parameters
parameter c_add = 4'h1;
parameter c_sub = 4'h2;
parameter c_inc = 4'h3;
parameter c_dec = 4'h4;
parameter c_or  = 4'h5;
parameter c_and = 4'h6;
parameter c_xor = 4'h7;
parameter c_shr = 4'h8;
parameter c_shl = 4'h9;
parameter c_onescomp = 4'ha;
parameter c_twoscomp = 4'hb;

/** Your code here **/
always_ff @(opcode, in_a, in_b) begin

	alu_carry = 0;																// set the carry to zero initially

	case(opcode)
		c_add:
			{alu_carry , alu_out} = in_a + in_b;			// Concatenates alu_carry and alu_out
		c_sub:																			// This allows carry to be done easily
			{alu_carry , alu_out} = in_a - in_b;
		c_inc:
			{alu_carry , alu_out} = in_a + 1;
		c_dec:
			{alu_carry , alu_out} = in_a - 1;
		c_or:
			alu_out = in_a || in_b;
		c_and:
			alu_out = in_a && in_b;
		c_xor:
			alu_out = in_a ^ in_b;
		c_shr:
			{alu_carry , alu_out} = in_a >> 1;
		c_shl:
			{alu_carry , alu_out} = in_a << 1;
		c_onescomp:
			alu_out = !(in_a);
		c_twoscomp:
		begin
			alu_out = !(in_a);
			alu_out[0] = !(in_a[0]) + 1;
		end
		default: alu_out = 0;												// Set default to zero
	endcase																				// In the case a bad opcode comes in
																								// we don't want a bad output
	alu_zero = ~(|alu_out);												// This sets the zero bit to 1 if alu_out is zero
end
endmodule

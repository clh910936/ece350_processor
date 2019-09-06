//This module is a simple one bit adder that takes in two values and a cin
//it returns the sum
module one_bit_adder(a, b, cin, sum);
	input a;
	input b;
	input cin;
	output sum;
	wire OUTxor1;
	
	xor xor1(OUTxor1, a, b);
	xor xor2(sum, OUTxor1, cin);
endmodule

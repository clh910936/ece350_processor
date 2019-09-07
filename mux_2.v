module mux_2(select, in0, in1, out);
	input select;
	input [31:0] in0, in1;
	output out = select ? in1 : in0;
endmodule

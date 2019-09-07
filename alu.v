module alu(data_operandA, data_operandB, ctrl_ALUopcode,
ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
input [31:0] data_operandA, data_operandB;
input [4:0] ctrl_ALUopcode, ctrl_shiftamt;
output [31:0] data_result;
output isNotEqual, isLessThan, overflow;

wire [31:0] adderSum;

full_adder adder(data_operandA, data_operandB, ctrl_ALUopcode[0], adderSum, overflow);

mux_8 opcodeMux(ctrl_ALUopcode[2:0], addersum, addersum, addersum, addersum, addersum, addersum, addersum, addersum, data_result);


endmodule
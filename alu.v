module alu(data_operandA, data_operandB, ctrl_ALUopcode,
ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
input [31:0] data_operandA, data_operandB;
input [4:0] ctrl_ALUopcode, ctrl_shiftamt;
output [31:0] data_result;
output isNotEqual, isLessThan, overflow;

wire [31:0] adderSum;
wire [31:0] andOutput;
wire [31:0] orOutput;

full_adder adder(data_operandA, data_operandB, ctrl_ALUopcode[0], adderSum, overflow);
and32 and32_1(data_operandA, data_operandB, andOutput);
or32 or32_1(data_operandA, data_operandB, orOutput);

mux_8 opcodeMux(ctrl_ALUopcode[2:0], addersum, addersum, andOutput, orOutput, addersum, addersum, addersum, addersum, data_result);


endmodule
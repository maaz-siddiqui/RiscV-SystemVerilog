// `timescale 1ns/1ns
// `include "controlDecode.v"
module typeDecode_tb;
initial begin
 	$dumpfile("dump.vcd");
	$dumpvars;
end 

logic [6:0 ]opcode_tb;
logic R_tb, I_tb, L_tb, Jr_tb, S_tb, Sb_tb, aui_tb, lui_tb, J_tb, rst_tb;

typeDecode typeDecode1(
  .R(R_tb),
  .I(I_tb),
  .L(L_tb),
  .Jr(Jr_tb),
  .S(S_tb),
  .Sb(Sb_tb),
  .aui(aui_tb),
  .lui(lui_tb),
  .J(J_tb),
  .rst(rst_tb),
  .opcode(opcode_tb)
);


initial begin
  	rst_tb=1;
  	#5
  	rst_tb=0;
    opcode_tb = 7'b0001111;       
    #5
    #40
    $finish;
    end
endmodule
// Code your testbench here
// or browse Examples
// `timescale 1ns/1ns
// `include "controlDecode.v"
module controlDecode_tb;
initial begin
  $dumpfile("dump.vcd");
$dumpvars(0,controlDecode_tb);

end 

logic R_tb,I_tb,L_tb,S_tb,B_tb,J_tb,Jr_tb,lui_tb,aui_tb,rst_tb;
logic regWrite_tb, branch_tb, opB_tb, store_tb,memToReg_tb;
logic [1:0] immSel_tb;
logic [1:0] opA_tb;
logic [1:0] nextPc_tb;
logic [2:0] alu_tb;
logic [3:0] aluSel_tb;

controlDecode controlDecode_1(
    .R(R_tb),
    .I(I_tb),
    .L(L_tb),
    .S(S_tb),
    .B(B_tb),
    .J(J_tb),
    .Jr(Jr_tb),
    .lui(lui_tb),
    .aui(aui_tb),
    .regWrite(regWrite_tb),
    .branch(branch_tb),
    .opB(opB_tb),
    .store(store_tb),
    .memToReg(memToReg_tb),
    .immSel(immSel_tb),
    .opA(opA_tb),
    .nextPc(nextPc_tb),
    .alu(alu_tb),
 	.aluSel(aluSel_tb),
  	.rst(rst_tb)
);


initial begin
  		rst_tb = 1;
        R_tb = 1;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 1;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 1;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 0;
        S_tb = 1;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 1;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 1;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 1;
        lui_tb = 0;
        aui_tb = 0;
        #5
        R_tb = 1;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 1;
        aui_tb = 0;
        #5
        R_tb = 0;
        I_tb = 0;
        L_tb = 0;
        S_tb = 0;
        B_tb = 0;
        J_tb = 0;
        Jr_tb = 0;
        lui_tb = 0;
        aui_tb = 0;
        #5
        #40
        $finish;
    end
endmodule
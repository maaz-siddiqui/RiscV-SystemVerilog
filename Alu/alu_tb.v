// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
// `timescale 1ns/1ns
// `include "controlDecode.v"
module alu_tb;
initial begin
 	$dumpfile("dump.vcd");
	$dumpvars;
end 

logic [31:0] opA_tb;
logic [31:0] opB_tb;
logic [31:0] aluOut_tb;
logic [3:0] aluOutSel_tb;


alu alu1(
    .opA(opA_tb),
    .opB(opB_tb),
    .aluOut(aluOut_tb),
 	.aluOutSel(aluOutSel_tb)
);


initial begin
    opA_tb = 32'd5;
    opB_tb = 32'd1;
    aluOutSel_tb = 4'b0000;        
    #5
    opA_tb = 32'd7;
    opB_tb = 32'd4;
    aluOutSel_tb = 4'b0001;  
    #5   
 	opA_tb = 32'd1;
    opB_tb = 32'd0;
    aluOutSel_tb = 4'b0010; 
    #5  
  	opA_tb = 32'd1;
    opB_tb = 32'd1;
    aluOutSel_tb = 4'b0011; 
    #5  
 	opA_tb = 32'd38;
    opB_tb = 32'd33;
    aluOutSel_tb = 4'b0100; 
    #5
  	opA_tb = 32'd38;
    opB_tb = 32'd33;
    aluOutSel_tb = 4'b0101; 
    #5
  	opA_tb = 32'd38;
    opB_tb = 32'd33;
    aluOutSel_tb = 4'b0110; 
    #5
  	opA_tb = 32'd1;
    opB_tb = 32'd3;
    aluOutSel_tb = 4'b0111;
    #5
  	opA_tb = 32'd8;
    opB_tb = 32'd3;
    aluOutSel_tb = 4'b1000;
  	#5
  	opA_tb = 32'd5;
    opB_tb = 32'd1;
    aluOutSel_tb = 4'b0000;
    #5
  	opA_tb = 32'b100000000000000000000000000000100;
    opB_tb = 32'd2;
    aluOutSel_tb = 4'b1001;
    #5
  	opA_tb = 32'b100000000000000000000000000000100;
    opB_tb = 32'd2;
    aluOutSel_tb = 4'b1111;
    #40
    $finish;
    end
endmodule
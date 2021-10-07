// Code your design here
module alu (
  	input logic [31:0] opA, [31:0] opB,
    input logic [3:0 ]aluOutSel,
    output logic [31:0] aluOut
);

always @(*) begin
 	if (aluOutSel == 4'b0000) begin
        assign aluOut = opA+opB;
    end
  	if (aluOutSel == 4'b0001) begin
        assign aluOut = opA-opB;
    end
end    

endmodule
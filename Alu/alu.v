// Code your design here
module alu (
  	input logic [31:0] opA, [31:0] opB,
    input logic [3:0 ]aluOutSel,
    output logic [31:0] aluOut
);
  
  reg [31:0] shifter;
	    	int i = 0;
always @(*) begin
 	if (aluOutSel == 4'b0000) begin
        assign aluOut = opA+opB;
    end
  	if (aluOutSel == 4'b0001) begin
        assign aluOut = opA-opB;
    end
    if (aluOutSel == 4'b0010) begin
        assign aluOut = opA ^ opB; //^ is the xor operator
    end
  	if (aluOutSel == 4'b0011) begin
        assign aluOut = opA | opB; //| is the or operator
    end
  	if (aluOutSel == 4'b0100) begin
        assign aluOut = opA & opB; //&&is the and operator
    end
    if (aluOutSel == 4'b0101) begin
        if (opA < opB) begin  
            assign aluOut = 32'd1; // lesser than logic
        end
      	else assign aluOut = 32'd0;
    end
  	if (aluOutSel == 4'b0110) begin
        if (opA < opB) begin  
            assign aluOut = 32'd1; //lesser than logic
        end
      	else assign aluOut = 32'd0;
    end
  if (aluOutSel == 4'b0111) begin //shift left logic
   		assign aluOut = opA;
      i = 0;
      while(i<opB) begin
            assign aluOut = aluOut << 1;
          	i++;
      end
    end
end    

endmodule
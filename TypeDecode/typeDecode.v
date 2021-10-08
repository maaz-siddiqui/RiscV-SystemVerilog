// Code your design here
module typeDecode (
  	input logic [6:0 ]opcode,
  	input logic rst,
    output logic R, I, L, Jr, S, Sb, aui, lui, J
);
  
always @(*) begin
  if(!rst) begin
  if (opcode == 7'b0000011 | opcode == 7'b0001111 | opcode == 7'b0010011) begin
        assign I = 1;
        assign L = 0;
        assign Jr = 0;
        assign S = 0;
        assign Sb = 0;
        assign aui = 0;
        assign lui = 0;
        assign J = 0;
    end
  else begin
    	R <= 0;
        assign I = 0;
        assign L = 0;
        assign Jr = 0;
        assign S = 0;
        assign Sb = 0;
        assign aui = 0;
        assign lui = 0;
        assign J = 0;
  end
end    
end

endmodule
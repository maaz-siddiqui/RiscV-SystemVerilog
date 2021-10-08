// Code your design here
module typeDecode (
    input logic [6:0 ]opcode,
    output logic R, I, L, Jr, S, Sb, aui, lui, J
);
  
always @(*) begin
 	if (opcode == 0000011 || opcode == 0001111 || opcode == 0010011) begin
        assign I = 1;
    end
end    

endmodule
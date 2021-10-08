// Code your design here
module typeDecode (
  	input logic [6:0 ]opcode,
  	input logic rst,
    output logic R, I, L, Jr, S, Sb, aui, lui, J
);
  
always @(*) begin
    if(!rst) begin
      	if (opcode == 7'h13)begin
            assign R = 0;
            assign I = 1;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
      	else if (opcode == 7'h03 )begin
            assign R = 0;
            assign I = 1;
            assign L = 1;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
      	else if (opcode == 7'h67)begin
            assign R = 0;
            assign I = 1;
            assign L = 0;
            assign Jr = 1;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
        else if (opcode == 7'h33 | opcode == 7'h3b) begin
            assign R = 1;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
      	else if (opcode == 7'h23 ) begin
            assign R = 0;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 1;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
      	else if (opcode == 7'h63) begin
            assign R = 0;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 1;
            assign aui = 0;
            assign lui = 0;
            assign J = 0;
        end
      	else if (opcode == 7'h17) begin
            assign R = 0;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 1;
            assign lui = 0;
            assign J = 0;
        end
     	 else if (opcode == 7'h37) begin
            assign R = 0;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 1;
            assign J = 0;
        end
     	else if (opcode == 7'h6f) begin
            assign R = 0;
            assign I = 0;
            assign L = 0;
            assign Jr = 0;
            assign S = 0;
            assign Sb = 0;
            assign aui = 0;
            assign lui = 0;
            assign J = 1;
        end
        else begin
            assign R = 0;
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
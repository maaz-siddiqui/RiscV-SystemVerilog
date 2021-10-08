// Code your design here
module immGen(
  input reg [31:0] Pc, [31:0] Ins,
  output reg [31:0] I_imm, S_imm, Sb_imm, Uj_imm, U_imm,
  input logic rst
);

  reg [19:0]temp1;
  reg [11:0]temp2;  
  reg [31:0]zeros = 32'd0;

  
always @(*) begin
  if(!rst) begin
    assign {temp2, temp1} = Ins;
    if(Ins[31] == 1) 
      assign temp1 = 20'h11111;
    else 
      assign temp1 = 20'd0;	
    assign I_imm = {temp1 ,temp2};
  end
  else begin 
    assign I_imm = {zeros};    
    assign S_imm = {zeros};
	assign Sb_imm = {zeros};
	assign Uj_imm = {zeros};
	assign U_imm = {zeros};
  end
end    

endmodule
// Code your design here
module immGen(
  input reg [31:0] Pc, [31:0] Ins,
  output reg [31:0] I_imm, S_imm, Sb_imm, Uj_imm, U_imm,
  input logic rst
);

  reg [19:0]temp1;
  reg [11:0]temp2; 
  reg [3:0]temp4;
  reg [5:0]temp6;
  reg [6:0]temp7 ;
  reg [4:0]temp5;
  reg [11:0]temp12;
  reg [31:0]zeros = 32'd0;

  
always @(*) begin
  if(!rst) begin
    //I type
    assign {temp2, temp1} = Ins; //divides inst to two array
    if(Ins[31] == 1)  //if 31st bit 1 then extend all ones
      assign temp1 = 20'hfffff;
    else 
      assign temp1 = 20'd0;	
    assign I_imm = {temp1 ,temp2};
    //S type
    temp7 = Ins[25+:31];
    temp5 = Ins[7+:11];
    assign S_imm = {temp1,temp7 ,temp5 };
    //sb imm
    temp4 = Ins[8+:11];
    temp6 = Ins[25+:30];
    if(Ins[31] == 1'b1) begin
      temp12 = {Ins[7],temp6,temp4,{1{1'b0}}};
      assign Sb_imm = {temp1,temp12};
    end
//     else assign Sb_imm = {Ins[31],Ins[7],temp6,temp4,{1'b0}};    
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
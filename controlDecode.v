// Code your design here
module controlDecode(
  input logic R,I,L,S,B,J,Jr,lui,aui, rst,
  output logic regWrite, branch, opB, store,memToReg,
  output logic [1:0] immSel,
  output logic [1:0] opA,
  output logic [1:0] nextPc,
  output logic [2:0] alu,
  output logic [3:0] aluSel
);

  if (rst) begin
  if(R)begin
      assign regWrite = 1;
      assign opA = 2'b00;
      assign opB = 1;
      assign immSel = 2'b11;
      assign alu = 3'b000;
  end
  if (I) begin
      assign regWrite = 1;
      assign opA = 2'b00;
      assign alu = 3'b001;
      assign immSel = 2'b11;
  end
  if (L) begin
      assign regWrite = 1;
      assign memToReg = 1;
      assign alu = 3'b010;
  end
  if (Jr) begin
      assign regWrite = 1;
      assign opA = 2'b10;
      assign nextPc = 2'b11;
      assign alu = 2'b11;
      assign aluSel = 3'b0111;
  end 
  if (S) begin
      assign store = 1;
      assign opB = 1;
      assign immSel = 2'b01;
      assign alu = 3'b100;
      assign aluSel = 4'b0001;
  end
  if (B) begin
      assign branch = 1;
      assign opB = 1;
      assign immSel = 2'b11;
      assign aluSel = 4'b0001; 
  end
  if (aui) begin
      assign regWrite = 1;
      assign opB = 1;
      assign immSel = 2'b10;
      assign alu = 3'b110;
  end
  if (lui) begin
      assign regWrite = 1;
      assign opA = 2'b11;
      assign opB = 1;
      assign immSel = 2'b10;
  end
  if (J) begin
     assign regWrite = 1;
     assign opA = 2'b10;
     assign immSel = 2'b11;
     assign nextPc = 2'b01;
     assign aluSel = 4'b1111;
  end
 end
endmodule
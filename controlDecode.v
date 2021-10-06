// Code your design here
module controlDecode(
  input logic R,I,L,S,B,J,Jr,lui,aui,
  output logic regWrite, branch, opB, store,memToReg,
  output logic [1:0] immSel,
  output logic [1:0] opA,
  output logic [1:0] nextPc,
  output logic [2:0] alu,
  output logic [3:0] aluSel
);
  
always @( * ) begin
  if(R)begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b00;
    assign opB = 1;
    assign immSel = 2'b11;
    assign nextPc = 2'b00;
    assign alu = 3'b000;
    assign aluSel = 4'b0000;
  end
  if (I) begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b00;
    assign opB = 1;
    assign immSel = 2'b00;
    assign nextPc = 0;
    assign alu = 3'b001;
    assign aluSel = 4'b0000;
  end
  if (L) begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 1;
    assign opA = 2'b00;
    assign opB = 0;
    assign immSel = 2'b11;
    assign nextPc = 0;
    assign alu = 3'b010;
    assign aluSel = 4'b1010;
  end
  if (Jr) begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b00;
    assign opB = 1;
    assign immSel = 2'b11;
    assign nextPc = 2'b10;
    assign alu = 3'b011;
    assign aluSel = 4'b1111;
  end 
  if (S) begin
    assign regWrite = 0;
    assign branch = 0;
    assign store = 1;
    assign memToReg = 0;
    assign opA = 2'b00;
    assign opB = 1;
    assign immSel = 2'b01;
    assign nextPc = 0;
    assign alu = 3'b100;
    assign aluSel = 4'b0000;
  end
  if (B) begin
    assign regWrite = 0;
    assign branch = 1;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b00;
    assign opB = 0;
    assign immSel = 2'b11;
    assign nextPc = 2'b11;
    assign alu = 3'b000;
    assign aluSel = 4'b0000;
  end
  if (aui) begin
   assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b10;
    assign opB = 1;
    assign immSel = 2'b10;
    assign nextPc = 0;
    assign alu = 3'b101;
    assign aluSel = 4'b0000;
  end
  if (lui) begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b11;
    assign opB = 1;
    assign immSel = 2'b10;
    assign nextPc = 0;
    assign alu = 3'b110;
    assign aluSel = 4'b0000;
  end
  if (J) begin
    assign regWrite = 1;
    assign branch = 0;
    assign store = 0;
    assign memToReg = 0;
    assign opA = 2'b10;
    assign opB = 0;
    assign immSel = 2'b11;
    assign nextPc = 2'b01;
    assign alu = 3'b111;
    assign aluSel = 4'b1111;
  end
end
endmodule
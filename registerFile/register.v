// Code your design here
module register( 
  input logic [31:0]data, wd_en, [4:0]wd_sel, [4:0]rs1_add, [0:4]rs2_add, clk, rd_en,
//   output logic [31:0]rs1, [31:0]rs2,
  input logic rst
);
  
  reg [31:0] reg1[31:0];
  reg [31:0] rs1;
  reg [31:0] rs2;
  
  always @(posedge clk && !rst)begin    
    if(wd_en)
      begin
        reg1[wd_sel] <= data;
      end 
    if(rd_en)begin
        assign rs1 =reg1[rs1_add];
        assign rs2 = reg1[rs2_add];
      end
    if(wd_sel == 5'b00000)
      begin
        assign rs1 = 0;
        assign rs2 = 0;
      end
  end
endmodule
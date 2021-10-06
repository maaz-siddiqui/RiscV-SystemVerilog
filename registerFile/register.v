// Code your design here
module register( 
  input logic [31:0]data, [4:0]wd_sel, wd_en, [4:0]rs1_add, [0:4]rs2_add, clk, rd_en,
  output logic [31:0]rs1, [31:0]rs2,
  input logic rst
);
  
  logic [31:0] reg1[31:0];
  
  always @(posedge clk)begin    
    if(wd_en)
      begin
        reg1[wd_sel] <= data;
      end
    if(rd_en)
      begin
        assign rs1 <= [rs1_add]reg1;
        assign rs2 <= [rs2_add]reg1;
      end
    if(wd_sel == 5'b00000)
      begin
        assign rs1 = 0;
        assign rs2 = 0;
      end
  end
endmodule
// Code your testbench here
// or browse Examples
module register_tb;
  initial begin
    $dumpvars(0);
  end
  
  logic clk_tb, wd_en_tb; 
  logic rst_tb, rd_en_tb;
  logic [31:0] data_tb;
  logic [4:0]rs1_add_tb;
  logic [4:0]rs2_add_tb;
  logic [4:0]wd_sel_tb;
  
  register register_tb
  (
    .clk(clk_tb),
    .data(data_tb),
    .wd_sel(wd_sel_tb),
    .wd_en(wd_en_tb),
    .rs1_add(rs1_add_tb),
    .rs2_add(rs2_add_tb),
    .rst(rst_tb),
    .rd_en(rd_en_tb)
  );
  
  initial begin
    rst_tb = 1;
    clk_tb = 1;
    wd_en_tb = 0; 
    rd_en_tb = 0;
    wd_sel_tb = 5'd0; 
    #5
    //no use
    rst_tb = 0;
    data_tb = 32'd00;
    wd_en_tb = 0; 
    rd_en_tb = 0;
    wd_sel_tb = 5'd0; 
    #5
    //writting procedure
    data_tb = 32'd43;
    wd_en_tb = 1'b1; 
    wd_sel_tb = 5'd3;
    #5
    //no use
    rst_tb = 0;
    data_tb = 32'd00;
    wd_en_tb = 0; 
    rd_en_tb = 0;
//     wd_sel_tb = 5'd0; 
    #5
    //reading procedure
    wd_en_tb = 0;
    rd_en_tb = 1;
    rs1_add_tb = 5'd3;
    #40
    $finish;
  end
  
  always #2 clk_tb = ~clk_tb;
endmodule
     
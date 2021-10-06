`timescale 1ns/1ns
//`include "controlDecode.v"
module controlDecode_tb;
initial begin
$dumpfile("test.vcd");
$dumpvars(0,controlDecode_tb);

end 

reg a_tb,b_tb, c_tb;
wire sum1_tb, sum2_tb,c_out_tb, c_out1_tb, c_out2_tb;

controlDecode controlDecode_1(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb),
    .sum(sum1_tb),
    .c_out(c_out1_tb)
);


initial begin
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_tb = 1'b1;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_tb = 1'b1;
        #5
        #40
        $finish;
    end

endmodule
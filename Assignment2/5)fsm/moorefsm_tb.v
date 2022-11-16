module moorefsm_tb;
  reg 		clk, in1,in2, rstn;
  wire 		out;
  
  always #5 clk = ~clk;
  
 moorefsm FS1(.clk(clk), .rst(rstn), .in1(in1),.in2(in2), .out(out));
  
  initial begin
  	clk <= 0;
    rstn <= 1;
    in1<= 0;
    in2<=0;
end
initial begin #5 rstn<=0;end
initial begin
    #5 in1 <= 0;in2<=1;
    #5 in1 <= 1;in2<=1;
    #5 in1 <= 1;in2<=1;
    #5 in1 <= 0;in2<=0;// Pattern is completed
     #5 in1 <= 1;in2<=1;
     #5 in1 <= 1;in2<=0;
     #5 in1 <= 1;in2<=1;
      #5 in1 <= 0;in2<=0;
     #5 in1 <= 0;in2<=0;
     #5 in1 <= 0;in2<=0;
   #5 in1 <= 1;in2<=1;
     #5 in1 <= 1;in2<=1;
    #5 in1 <= 0;in2<=1;
  #150 $finish;
end
endmodule




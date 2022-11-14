module graycode_counter_tb;    
  
  reg clk;  
  reg rst;  
  wire [3:0]out; 
 graycode_counter uut (.clk(clk),.rst(rst),.out(out));  
  initial begin clk=0;rst=1;end
  always #2 clk = ~clk;  
  
  initial begin    
    $monitor ("rst=%b,out=%b",$time, rst, out);  
  
    repeat(2) @ (posedge clk);  
    rst=0;  
    repeat(20) @ (posedge clk);  
    $finish;  
  end  
endmodule  

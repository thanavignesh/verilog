 
module graycode_counter (clk,rst,out);
  input clk,rst;
  reg [3:0]q;
  output reg[3:0]out;
  integer i;
  always @(posedge clk)
  begin
    if(rst==1)begin
      q=0;end
   else begin
     q=q+1;end
  begin
   out[3]=q[3];
   for(i=2;i>=0;i=i-1)
    begin
    out[i]=q[i+1]^q[i];
    end
      end
      end
      
endmodule
module prbs(clk,rst,y);
  input clk,rst;
  output[6:0]y;
  wire o;
  dff x1 (clk,rst,o,y[0]);
  dff x2 (clk,rst,y[0],y[1]);  
  dff x3 (clk,rst,y[1],y[2]);  
  dff x4 (clk,rst,y[2],y[3]);  
  dff x5 (clk,rst,y[3],y[4]);  
  dff x6 (clk,rst,y[4],y[5]);    
  dff x7 (clk,rst,y[5],y[6]);
  assign o=y[0]^y[6];
endmodule

module dff(clk,rst,d,q);
  input clk,rst,d;
  output reg q;
  always @(posedge clk)
  begin
    if(rst==1)
      q=1;
    else
      q = d;
    end
  endmodule

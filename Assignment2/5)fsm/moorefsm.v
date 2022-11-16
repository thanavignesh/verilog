
module moorefsm(input in1,input in2,input clk,input rst,output reg out);
  reg [1:0] cst;//current state
  reg [1:0] nst;//next state
  reg eq;
  parameter [2:0]s0=3'b000;
  parameter [2:0]s1=3'b001;
  parameter [2:0]s2=3'b010;
  parameter [2:0]s3=3'b011;
always@(posedge clk,negedge clk)
begin
  if(in1==in2)
    eq=1;
else
  eq=0;
end
always@(posedge clk,negedge clk)
begin
  if(rst)begin
    out=1'b0;
    cst=s0;
    nst=s0;end
  else
    begin
    cst=nst;
    case(cst)
  s0:begin    
      out=1'b0; 
     if(eq) 
       nst=s1;
     else begin
      nst=s0;end 
    end
  s1:begin
      out=1'b0; 
      if(eq)
       nst=s2;
      else begin
       nst=s0;end
     end
  s2 :begin   
        out=1'b0;
        if(eq)
         nst=s2;
        else begin
         nst=s3;end 
      end
  s3:begin    
        out=1'b1; 
       if(eq) 
         nst=s0;
       else begin
       nst=s0 ;end
     end
    endcase
end
end
endmodule 




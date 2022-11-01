module alarm_tb;
  reg a,b,c,d;
  wire o;
alarm uut(a,b,c,d,o);
  initial begin
    #0 a=0;b=0;c=0;d=0;
    #2 a=0;b=0;c=0;d=1;
    #4 a=0;b=0;c=1;d=0;
    #6 a=0;b=0;c=1;d=1;
    #8 a=0;b=1;c=0;d=0;
    #10 a=0;b=1;c=0;d=1;
    #12 a=0;b=1;c=1;d=0;
    #14 a=0;b=1;c=1;d=1;
    #16 a=1;b=0;c=0;d=0;
    #18 a=1;b=0;c=0;d=1;
    #20 a=1;b=0;c=1;d=0;
    #22 a=1;b=0;c=1;d=1;
    #24 a=1;b=1;c=0;d=0;
    #26 a=1;b=1;c=0;d=1;
    #28 a=1;b=1;c=1;d=0;
    #30 a=1;b=1;c=1;d=1;
  end
  initial $display($time,"a=%b\tb=%b\t,c=%b\td=%b\toutput value:o=%b\t",a,b,c,d,o);
  initial #32 $stop;
endmodule
  
  
  
  
  
  


        


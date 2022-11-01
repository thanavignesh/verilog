module gates(a,b,and_o,or_o,not_o,xor_o,nand_o,nor_o,xnor_o);
   input a,b;
   output reg and_o,or_o,not_o,xor_o,nand_o,nor_o,xnor_o ;
always @(a,b)
     begin
       if(a==1'b0)
         begin
           and_o = 1'b0;
           or_o = b;
           not_o = 1'b1;
           xor_o =b;
           nand_o=1;
           nor_o=(~b);
           xnor_o=(~b);
         end
       else
         begin
            and_o = b;
            or_o = 1'b1;
            not_o = 1'b0;
            xor_o = (~b);
            nand_o=(~b);
            nor_o=1;
            xnor_o=b;
         end
        
  end
endmodule

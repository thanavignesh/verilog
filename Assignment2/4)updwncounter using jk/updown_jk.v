module updown_jk(clk,rst,j,k,q,qb,CU,CD,ORE);
  input clk,rst,j,k,CU,CD;
  output [3:0]q;
  output  [3:0]qb;
  output [2:0]ORE;
  jkff x1(clk,rst,j,k,q[0],qb[0]);
  operate u1(q[0],qb[0],CU,CD,ORE[0]);
  jkff x2(ORE[0],rst,j,k,q[1],qb[1]);
  operate u2(q[1],qb[1],CU,CD,ORE[1]);
  jkff x3(ORE[1],rst,j,k,q[2],qb[2]);
  operate u3(q[2],qb[2],CU,CD,ORE[2]);
  jkff x4(ORE[2],rst,j,k,q[3],qb[3]);
endmodule

module operate(Q,QB,cu,cd,ore);
  input Q,QB,cu,cd;
  wire an1,an2;
  output ore;
  and(an1,Q,cu);
  and(an2,QB,cd);
  or(ore,an1,an2);
endmodule
  
module jkff(clk,rst,j,k,q,qb);
  input clk,rst,j,k;
  output q,qb;
  reg q,qb;
  always@(negedge clk)
  begin
    if(rst==1)
       begin
        q<=0;
        qb<=1;
      end
    else
  begin
    case({j,k})
      2'b00:
      begin
      q<=q;
      qb<=qb;
      end
      2'b01:
      begin
      q<=0;
      qb<=1;
      end
      2'b10:
      begin
      q<=1;
      qb<=0;
      end
      2'b11:
      begin
      q<=~q;
      qb<=~qb;
      end
  endcase
  end
end
endmodule


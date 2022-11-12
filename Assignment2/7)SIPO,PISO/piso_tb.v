
module piso_tb();
    reg SL;
	reg [7:0] D;
	reg reset;
	wire [7:0]Q;
	reg clk=0;
  PISO utt(.clk(clk),.rst(reset),.D(D), .Q(Q),.SL(SL)	);
	always begin
	    #5 clk = ~clk;
	end

    initial begin
	    #1 reset= 1;
	    #2 SL=0;
	     #1 D=8'b00000000;		
		#4 ;reset= 0;
		
		#10 D=8'b01010000;
	end
	always begin #30 SL=~SL; end

    initial begin
        #100 $finish;
    end  
endmodule

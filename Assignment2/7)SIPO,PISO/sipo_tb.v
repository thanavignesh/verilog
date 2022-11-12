
module sipo_tb();

    reg sdi;
	reg clk = 0;
	reg reset_n;
	wire [7:0] q;
    sipo SIPO0(.reset_n(reset_n),.clk(clk),.sdi(sdi ),.q  (q));
	always begin #0.5 clk = ~clk; end
    initial begin
	    #1; 
        reset_n = 0; sdi = 0;		
		#1.3;
		reset_n = 1;		
        repeat(2) @(posedge clk);  

		@(posedge clk); sdi = 1'b1; @(posedge clk); sdi = 1'b0;

        repeat(4) @(posedge clk); 
		@(posedge clk); sdi = 1'b1; 
		repeat(2) @(posedge clk); sdi = 1'b0;

        repeat(3) @(posedge clk); sdi = 1'b1; 
		@(posedge clk); sdi = 1'b0; 
		@(posedge clk); sdi = 1'b1;
	    @(posedge clk); sdi = 1'b0;
	end

    initial begin
        #40 $finish;
    end  
endmodule
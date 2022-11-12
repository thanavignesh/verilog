module sipo(
	input reset_n,
	input clk,
    input sdi,
	output reg [7:0] q
    );
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    q <= 8'b0;
	    else
		    q[7:0] <= {q[6:0], sdi};
	end
endmodule


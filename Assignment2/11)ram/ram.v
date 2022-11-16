module ram(input clk,input [1023:0] data_in,input [4:0] address, input write_en,output [1023:0] data_out);

	reg [1023:0] ram [0:31];
	reg [4:0] addr_buff;

	always @(posedge clk) begin
	    if (write_en) begin
		    ram[address] <= data_in;
	    end
		addr_buff <= address;
	end

	assign data_out = ram[addr_buff];

endmodule

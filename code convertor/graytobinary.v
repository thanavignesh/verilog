
module graytobin(input [3:0] G,output [3:0]b);
   assign b[3] = G[3];
   assign b[2] = G[3] ^ G[2];
   assign b[1] = G[3] ^ G[2] ^ G[1];
   assign b[0] = G[3] ^ G[2] ^ G[1] ^ G[0];
endmodule
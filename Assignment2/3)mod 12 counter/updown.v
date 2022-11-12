module updown(
    Clk,
    reset,
    UpOrDown,
    Count
    );
    input Clk,reset,UpOrDown;
      output [3: 0] Count;
    reg [3 : 0] Count = 0;  
    
     always @(posedge(Clk))
     begin
        if(reset == 1) 
            Count <= 0;
        else  
            if(UpOrDown == 1)   
                if(Count == 11)
                    Count <= 0;
                else
                    Count <= Count + 1; 
            else  
                if(Count == 0)
                    Count <= 11;
                else
                    Count <= Count - 1;      end    
    
endmodule

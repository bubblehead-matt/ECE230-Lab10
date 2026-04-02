module tff (
    input T, Clock,
    output reg Q,
    output notQ
    );
   
   initial begin
          Q <= 0;
   end
    
   always @(posedge Clock) begin
        if (T)
          Q <= ~Q;
        else
          Q <= Q;
   end
   
   assign NotQ = ~Q;
   
endmodule

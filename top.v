module top (
  input [3:0] sw,
  input btnC,
  output [5:0] led
  );
    
  dff dflipflop(
    .D(sw[0]),
    .Clock(btnC),
    .Q(led[0]),
    .NotQ(led[1])
  );
    
  jkff jkflipflop(
    .J(sw[1]),
    .K(sw[2]),
    .Clock(btnC),
    .Q(led[2]),
    .NotQ(led[3])
  );
    
  tff tflipflop(
    .T(sw[3]),
    .Clock(btnC),
    .Q(led[4]),
    .NotQ(led[5])
  );
    
endmodule

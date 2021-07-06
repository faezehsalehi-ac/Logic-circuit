
//module  Binary_to_bcd( SUM , Cout , A);
  //output    [3:0]SUM;  
 // output    Cout; 
  //input    [3:0] A;
 // wire    w1,w2;
 // or    o1 ( w1 ,  A[1] , A[2] ); 
  //and   a1 ( w2 , w1 ,  A[3]);
  //assign B={1'b0,(2{w2}}, 1'b0};
  //fulladder_4bit  FA0 (SUM , Cout , A , B ,1'b0); 
//endmodule
module Binary_to_bcd( SUM , Cout , A, B);
  output [3:0]SUM;  
  output Cout;
  output [3:0]B;
  input [3:0]A;
  wire w1,w2;
  or o1 ( w1 ,  A[1] , A[2] ); 
  and a1 ( w2 , w1 ,  A[3]);
  assign B = {1'b0,w2,w2, 1'b0};
  fulladder_4bit  FA0 (SUM , Cout , A , B ,1'b0); 
endmodule

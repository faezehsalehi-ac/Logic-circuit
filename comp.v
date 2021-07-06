module comp  ( G , E , L , A , B);   
  output G,E,L; 
  input [3:0] A;
  input [3:0]B; 
  wire w11, w22, w33, W2, W3, w4, w5;
  wire [3:0]SUM;
  fulladder_5_3 FA(SUM, Cout, A, B, 1'b1);
  or o1(w11, SUM[0], SUM[1]);
  or o2(w22, w11, SUM[2]);
  or o3(w33, w22, SUM[3]);
  assign L = Cout;
  not U1(w2, Cout);
  and U2(w5, w33, w2);
  assign G = w5;
  not U3(w3, w33);
  and U4(w4, w2, w3);
  assign E = w4;
endmodule
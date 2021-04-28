
module behavioral ( F, G, Cin, S );
  input [7:0] F;
  input [7:0] G;
  output [8:0] S;
  input Cin;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n39, n40;

  OAI21XL U16 ( .A0(n1), .A1(n2), .B0(n16), .Y(S[8]) );
  OAI21XL U17 ( .A0(F[7]), .A1(n17), .B0(G[7]), .Y(n16) );
  MXI2X1 U18 ( .A(F[7]), .B(n1), .S0(n18), .Y(S[7]) );
  AOI2BB2X1 U19 ( .B0(G[7]), .B1(n2), .A0N(n2), .A1N(G[7]), .Y(n18) );
  OAI21XL U20 ( .A0(n3), .A1(n4), .B0(n19), .Y(n17) );
  OAI21XL U21 ( .A0(F[6]), .A1(n20), .B0(G[6]), .Y(n19) );
  MXI2X1 U22 ( .A(F[6]), .B(n3), .S0(n21), .Y(S[6]) );
  AOI2BB2X1 U23 ( .B0(G[6]), .B1(n4), .A0N(n4), .A1N(G[6]), .Y(n21) );
  OAI21XL U24 ( .A0(n5), .A1(n6), .B0(n22), .Y(n20) );
  OAI21XL U25 ( .A0(F[5]), .A1(n23), .B0(G[5]), .Y(n22) );
  MXI2X1 U26 ( .A(F[5]), .B(n5), .S0(n24), .Y(S[5]) );
  AOI2BB2X1 U27 ( .B0(G[5]), .B1(n6), .A0N(n6), .A1N(G[5]), .Y(n24) );
  OAI21XL U28 ( .A0(n7), .A1(n8), .B0(n25), .Y(n23) );
  OAI21XL U29 ( .A0(F[4]), .A1(n26), .B0(G[4]), .Y(n25) );
  MXI2X1 U30 ( .A(F[4]), .B(n7), .S0(n27), .Y(S[4]) );
  AOI2BB2X1 U31 ( .B0(G[4]), .B1(n8), .A0N(n8), .A1N(G[4]), .Y(n27) );
  OAI21XL U32 ( .A0(n9), .A1(n10), .B0(n28), .Y(n26) );
  OAI21XL U33 ( .A0(F[3]), .A1(n29), .B0(G[3]), .Y(n28) );
  MXI2X1 U34 ( .A(F[3]), .B(n9), .S0(n30), .Y(S[3]) );
  AOI2BB2X1 U35 ( .B0(G[3]), .B1(n10), .A0N(n10), .A1N(G[3]), .Y(n30) );
  OAI21XL U36 ( .A0(n11), .A1(n12), .B0(n31), .Y(n29) );
  OAI21XL U37 ( .A0(F[2]), .A1(n32), .B0(G[2]), .Y(n31) );
  MXI2X1 U38 ( .A(F[2]), .B(n11), .S0(n33), .Y(S[2]) );
  AOI2BB2X1 U39 ( .B0(G[2]), .B1(n12), .A0N(n12), .A1N(G[2]), .Y(n33) );
  OAI21XL U40 ( .A0(n13), .A1(n14), .B0(n34), .Y(n32) );
  OAI21XL U41 ( .A0(F[1]), .A1(n35), .B0(G[1]), .Y(n34) );
  MXI2X1 U42 ( .A(F[1]), .B(n13), .S0(n36), .Y(S[1]) );
  AOI2BB2X1 U43 ( .B0(G[1]), .B1(n14), .A0N(n14), .A1N(G[1]), .Y(n36) );
  OAI2BB1X1 U44 ( .A0N(F[0]), .A1N(Cin), .B0(n37), .Y(n35) );
  OAI21XL U45 ( .A0(F[0]), .A1(Cin), .B0(G[0]), .Y(n37) );
  INVX1 U13 ( .A(F[1]), .Y(n13) );
  INVX1 U14 ( .A(n35), .Y(n14) );
  INVX1 U11 ( .A(F[2]), .Y(n11) );
  INVX1 U12 ( .A(n32), .Y(n12) );
  INVX1 U9 ( .A(F[3]), .Y(n9) );
  INVX1 U10 ( .A(n29), .Y(n10) );
  INVX1 U1 ( .A(F[7]), .Y(n1) );
  INVX1 U3 ( .A(F[6]), .Y(n3) );
  INVX1 U5 ( .A(F[5]), .Y(n5) );
  INVX1 U7 ( .A(F[4]), .Y(n7) );
  INVX1 U8 ( .A(n26), .Y(n8) );
  INVX1 U6 ( .A(n23), .Y(n6) );
  INVX1 U4 ( .A(n20), .Y(n4) );
  INVX1 U2 ( .A(n17), .Y(n2) );
  XNOR2X1 U48 ( .A(Cin), .B(G[0]), .Y(n39) );
  NAND2X1 U49 ( .A(n39), .B(F[0]), .Y(n40) );
  OAI21XL U50 ( .A0(n39), .A1(F[0]), .B0(n40), .Y(S[0]) );
endmodule


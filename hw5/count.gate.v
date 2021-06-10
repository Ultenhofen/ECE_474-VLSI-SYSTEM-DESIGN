/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Thu May 13 18:57:30 2021
/////////////////////////////////////////////////////////////


module count_ctrl ( start, rst, clk, d, state, done );
  output [1:0] state;
  input start, rst, clk, d;
  output done;
  wire   N13, n1, n2, n3;
  wire   [1:0] mult_ns;
  assign done = N13;

  DFFARX1 \mult_ps_reg[1]  ( .D(mult_ns[1]), .CLK(clk), .RSTB(rst), .Q(
        state[1]), .QN(n1) );
  DFFARX1 \mult_ps_reg[0]  ( .D(mult_ns[0]), .CLK(clk), .RSTB(rst), .Q(
        state[0]), .QN(n2) );
  MUX21X1 U3 ( .IN1(n3), .IN2(n1), .S(state[0]), .Q(mult_ns[1]) );
  NOR2X0 U4 ( .IN1(d), .IN2(n1), .QN(n3) );
  OA21X1 U5 ( .IN1(start), .IN2(state[1]), .IN3(n2), .Q(mult_ns[0]) );
  NOR2X0 U6 ( .IN1(n2), .IN2(n1), .QN(N13) );
endmodule


module count_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , \carry[6] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60;
  assign DIFF[0] = \B[0] ;
  assign \B[0]  = B[0];

  NAND2X0 U1 ( .IN1(n60), .IN2(n27), .QN(n28) );
  NAND2X0 U2 ( .IN1(B[5]), .IN2(n29), .QN(\carry[6] ) );
  AND2X1 U3 ( .IN1(n31), .IN2(n30), .Q(n1) );
  AND2X1 U4 ( .IN1(n36), .IN2(\carry[6] ), .Q(n2) );
  AND2X1 U5 ( .IN1(n32), .IN2(n1), .Q(n3) );
  AND2X1 U6 ( .IN1(n33), .IN2(n3), .Q(n4) );
  AND2X1 U7 ( .IN1(n37), .IN2(n2), .Q(n5) );
  AND2X1 U8 ( .IN1(n38), .IN2(n5), .Q(n6) );
  AND2X1 U9 ( .IN1(n39), .IN2(n6), .Q(n7) );
  AND2X1 U10 ( .IN1(n40), .IN2(n7), .Q(n8) );
  AND2X1 U11 ( .IN1(n41), .IN2(n8), .Q(n9) );
  AND2X1 U12 ( .IN1(n42), .IN2(n9), .Q(n10) );
  AND2X1 U13 ( .IN1(n43), .IN2(n10), .Q(n11) );
  AND2X1 U14 ( .IN1(n44), .IN2(n11), .Q(n12) );
  AND2X1 U15 ( .IN1(n45), .IN2(n12), .Q(n13) );
  AND2X1 U16 ( .IN1(n46), .IN2(n13), .Q(n14) );
  AND2X1 U17 ( .IN1(n47), .IN2(n14), .Q(n15) );
  AND2X1 U18 ( .IN1(n48), .IN2(n15), .Q(n16) );
  AND2X1 U19 ( .IN1(n49), .IN2(n16), .Q(n17) );
  AND2X1 U20 ( .IN1(n50), .IN2(n17), .Q(n18) );
  AND2X1 U21 ( .IN1(n51), .IN2(n18), .Q(n19) );
  AND2X1 U22 ( .IN1(n52), .IN2(n19), .Q(n20) );
  AND2X1 U23 ( .IN1(n53), .IN2(n20), .Q(n21) );
  AND2X1 U24 ( .IN1(n54), .IN2(n21), .Q(n22) );
  AND2X1 U25 ( .IN1(n55), .IN2(n22), .Q(n23) );
  AND2X1 U26 ( .IN1(n56), .IN2(n23), .Q(n24) );
  AND2X1 U27 ( .IN1(n57), .IN2(n24), .Q(n25) );
  AND2X1 U28 ( .IN1(n58), .IN2(n25), .Q(n26) );
  AND2X1 U29 ( .IN1(n59), .IN2(n26), .Q(n27) );
  NAND2X0 U30 ( .IN1(n34), .IN2(n4), .QN(n29) );
  XOR2X1 U31 ( .IN1(n31), .IN2(n30), .Q(DIFF[1]) );
  XOR2X1 U32 ( .IN1(n32), .IN2(n1), .Q(DIFF[2]) );
  XOR2X1 U33 ( .IN1(n33), .IN2(n3), .Q(DIFF[3]) );
  XOR2X1 U34 ( .IN1(n34), .IN2(n4), .Q(DIFF[4]) );
  XOR2X1 U35 ( .IN1(n29), .IN2(n35), .Q(DIFF[5]) );
  XOR2X1 U36 ( .IN1(n36), .IN2(\carry[6] ), .Q(DIFF[6]) );
  XOR2X1 U37 ( .IN1(n37), .IN2(n2), .Q(DIFF[7]) );
  XOR2X1 U38 ( .IN1(n38), .IN2(n5), .Q(DIFF[8]) );
  XOR2X1 U39 ( .IN1(n39), .IN2(n6), .Q(DIFF[9]) );
  XOR2X1 U40 ( .IN1(n40), .IN2(n7), .Q(DIFF[10]) );
  XOR2X1 U41 ( .IN1(n41), .IN2(n8), .Q(DIFF[11]) );
  XOR2X1 U42 ( .IN1(n42), .IN2(n9), .Q(DIFF[12]) );
  XOR2X1 U43 ( .IN1(n43), .IN2(n10), .Q(DIFF[13]) );
  XOR2X1 U44 ( .IN1(n44), .IN2(n11), .Q(DIFF[14]) );
  XOR2X1 U45 ( .IN1(n45), .IN2(n12), .Q(DIFF[15]) );
  XOR2X1 U46 ( .IN1(n46), .IN2(n13), .Q(DIFF[16]) );
  XOR2X1 U47 ( .IN1(n47), .IN2(n14), .Q(DIFF[17]) );
  XOR2X1 U48 ( .IN1(n48), .IN2(n15), .Q(DIFF[18]) );
  XOR2X1 U49 ( .IN1(n49), .IN2(n16), .Q(DIFF[19]) );
  XOR2X1 U50 ( .IN1(n50), .IN2(n17), .Q(DIFF[20]) );
  XOR2X1 U51 ( .IN1(n51), .IN2(n18), .Q(DIFF[21]) );
  XOR2X1 U52 ( .IN1(n52), .IN2(n19), .Q(DIFF[22]) );
  XOR2X1 U53 ( .IN1(n53), .IN2(n20), .Q(DIFF[23]) );
  XOR2X1 U54 ( .IN1(n54), .IN2(n21), .Q(DIFF[24]) );
  XOR2X1 U55 ( .IN1(n55), .IN2(n22), .Q(DIFF[25]) );
  XOR2X1 U56 ( .IN1(n56), .IN2(n23), .Q(DIFF[26]) );
  XOR2X1 U57 ( .IN1(n57), .IN2(n24), .Q(DIFF[27]) );
  XOR2X1 U58 ( .IN1(n58), .IN2(n25), .Q(DIFF[28]) );
  XOR2X1 U59 ( .IN1(n59), .IN2(n26), .Q(DIFF[29]) );
  XOR2X1 U60 ( .IN1(n60), .IN2(n27), .Q(DIFF[30]) );
  XOR2X1 U61 ( .IN1(B[31]), .IN2(n28), .Q(DIFF[31]) );
  INVX0 U62 ( .IN(\B[0] ), .QN(n30) );
  INVX0 U63 ( .IN(B[5]), .QN(n35) );
  INVX0 U64 ( .IN(B[1]), .QN(n31) );
  INVX0 U65 ( .IN(B[2]), .QN(n32) );
  INVX0 U66 ( .IN(B[3]), .QN(n33) );
  INVX0 U67 ( .IN(B[4]), .QN(n34) );
  INVX0 U68 ( .IN(B[6]), .QN(n36) );
  INVX0 U69 ( .IN(B[7]), .QN(n37) );
  INVX0 U70 ( .IN(B[8]), .QN(n38) );
  INVX0 U71 ( .IN(B[9]), .QN(n39) );
  INVX0 U72 ( .IN(B[10]), .QN(n40) );
  INVX0 U73 ( .IN(B[11]), .QN(n41) );
  INVX0 U74 ( .IN(B[12]), .QN(n42) );
  INVX0 U75 ( .IN(B[13]), .QN(n43) );
  INVX0 U76 ( .IN(B[14]), .QN(n44) );
  INVX0 U77 ( .IN(B[15]), .QN(n45) );
  INVX0 U78 ( .IN(B[16]), .QN(n46) );
  INVX0 U79 ( .IN(B[17]), .QN(n47) );
  INVX0 U80 ( .IN(B[18]), .QN(n48) );
  INVX0 U81 ( .IN(B[19]), .QN(n49) );
  INVX0 U82 ( .IN(B[20]), .QN(n50) );
  INVX0 U83 ( .IN(B[21]), .QN(n51) );
  INVX0 U84 ( .IN(B[22]), .QN(n52) );
  INVX0 U85 ( .IN(B[23]), .QN(n53) );
  INVX0 U86 ( .IN(B[24]), .QN(n54) );
  INVX0 U87 ( .IN(B[25]), .QN(n55) );
  INVX0 U88 ( .IN(B[26]), .QN(n56) );
  INVX0 U89 ( .IN(B[27]), .QN(n57) );
  INVX0 U90 ( .IN(B[28]), .QN(n58) );
  INVX0 U91 ( .IN(B[29]), .QN(n59) );
  INVX0 U92 ( .IN(B[30]), .QN(n60) );
endmodule


module count_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HADDX1 U1_1_30 ( .A0(A[30]), .B0(carry[30]), .C1(carry[31]), .SO(SUM[30]) );
  HADDX1 U1_1_29 ( .A0(A[29]), .B0(carry[29]), .C1(carry[30]), .SO(SUM[29]) );
  HADDX1 U1_1_28 ( .A0(A[28]), .B0(carry[28]), .C1(carry[29]), .SO(SUM[28]) );
  HADDX1 U1_1_27 ( .A0(A[27]), .B0(carry[27]), .C1(carry[28]), .SO(SUM[27]) );
  HADDX1 U1_1_26 ( .A0(A[26]), .B0(carry[26]), .C1(carry[27]), .SO(SUM[26]) );
  HADDX1 U1_1_25 ( .A0(A[25]), .B0(carry[25]), .C1(carry[26]), .SO(SUM[25]) );
  HADDX1 U1_1_24 ( .A0(A[24]), .B0(carry[24]), .C1(carry[25]), .SO(SUM[24]) );
  HADDX1 U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(carry[24]), .SO(SUM[23]) );
  HADDX1 U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .IN(A[0]), .QN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[31]), .IN2(A[31]), .Q(SUM[31]) );
endmodule


module count_DW01_dec_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60;

  INVX0 U1 ( .IN(n51), .QN(n28) );
  INVX0 U2 ( .IN(n40), .QN(n27) );
  INVX0 U3 ( .IN(n37), .QN(n26) );
  INVX0 U4 ( .IN(n36), .QN(n25) );
  INVX0 U5 ( .IN(n35), .QN(n24) );
  INVX0 U6 ( .IN(n34), .QN(n23) );
  INVX0 U7 ( .IN(n33), .QN(n22) );
  INVX0 U8 ( .IN(n32), .QN(n21) );
  INVX0 U9 ( .IN(n31), .QN(n20) );
  INVX0 U10 ( .IN(n60), .QN(n19) );
  INVX0 U11 ( .IN(n59), .QN(n18) );
  INVX0 U12 ( .IN(n58), .QN(n17) );
  INVX0 U13 ( .IN(n57), .QN(n16) );
  INVX0 U14 ( .IN(n56), .QN(n15) );
  INVX0 U15 ( .IN(n55), .QN(n14) );
  INVX0 U16 ( .IN(n54), .QN(n13) );
  INVX0 U17 ( .IN(n53), .QN(n12) );
  INVX0 U18 ( .IN(n52), .QN(n11) );
  INVX0 U19 ( .IN(n50), .QN(n10) );
  INVX0 U20 ( .IN(n49), .QN(n9) );
  INVX0 U21 ( .IN(n48), .QN(n8) );
  INVX0 U22 ( .IN(n47), .QN(n7) );
  INVX0 U23 ( .IN(n46), .QN(n6) );
  INVX0 U24 ( .IN(n45), .QN(n5) );
  INVX0 U25 ( .IN(n44), .QN(n4) );
  INVX0 U26 ( .IN(n43), .QN(n3) );
  INVX0 U27 ( .IN(n42), .QN(n2) );
  INVX0 U28 ( .IN(n41), .QN(n1) );
  INVX0 U29 ( .IN(A[0]), .QN(SUM[0]) );
  INVX0 U30 ( .IN(A[30]), .QN(n30) );
  AO21X1 U31 ( .IN1(A[9]), .IN2(n21), .IN3(n31), .Q(SUM[9]) );
  AO21X1 U32 ( .IN1(A[8]), .IN2(n22), .IN3(n32), .Q(SUM[8]) );
  AO21X1 U33 ( .IN1(A[7]), .IN2(n23), .IN3(n33), .Q(SUM[7]) );
  AO21X1 U34 ( .IN1(A[6]), .IN2(n24), .IN3(n34), .Q(SUM[6]) );
  AO21X1 U35 ( .IN1(A[5]), .IN2(n25), .IN3(n35), .Q(SUM[5]) );
  AO21X1 U36 ( .IN1(A[4]), .IN2(n26), .IN3(n36), .Q(SUM[4]) );
  AO21X1 U37 ( .IN1(A[3]), .IN2(n27), .IN3(n37), .Q(SUM[3]) );
  XNOR2X1 U38 ( .IN1(n38), .IN2(A[31]), .Q(SUM[31]) );
  NAND2X0 U39 ( .IN1(n39), .IN2(n30), .QN(n38) );
  XNOR2X1 U40 ( .IN1(n30), .IN2(n39), .Q(SUM[30]) );
  AO21X1 U41 ( .IN1(A[2]), .IN2(n28), .IN3(n40), .Q(SUM[2]) );
  AO21X1 U42 ( .IN1(A[29]), .IN2(n1), .IN3(n39), .Q(SUM[29]) );
  NOR2X0 U43 ( .IN1(n1), .IN2(A[29]), .QN(n39) );
  AO21X1 U44 ( .IN1(A[28]), .IN2(n2), .IN3(n41), .Q(SUM[28]) );
  NOR2X0 U45 ( .IN1(n2), .IN2(A[28]), .QN(n41) );
  AO21X1 U46 ( .IN1(A[27]), .IN2(n3), .IN3(n42), .Q(SUM[27]) );
  NOR2X0 U47 ( .IN1(n3), .IN2(A[27]), .QN(n42) );
  AO21X1 U48 ( .IN1(A[26]), .IN2(n4), .IN3(n43), .Q(SUM[26]) );
  NOR2X0 U49 ( .IN1(n4), .IN2(A[26]), .QN(n43) );
  AO21X1 U50 ( .IN1(A[25]), .IN2(n5), .IN3(n44), .Q(SUM[25]) );
  NOR2X0 U51 ( .IN1(n5), .IN2(A[25]), .QN(n44) );
  AO21X1 U52 ( .IN1(A[24]), .IN2(n6), .IN3(n45), .Q(SUM[24]) );
  NOR2X0 U53 ( .IN1(n6), .IN2(A[24]), .QN(n45) );
  AO21X1 U54 ( .IN1(A[23]), .IN2(n7), .IN3(n46), .Q(SUM[23]) );
  NOR2X0 U55 ( .IN1(n7), .IN2(A[23]), .QN(n46) );
  AO21X1 U56 ( .IN1(A[22]), .IN2(n8), .IN3(n47), .Q(SUM[22]) );
  NOR2X0 U57 ( .IN1(n8), .IN2(A[22]), .QN(n47) );
  AO21X1 U58 ( .IN1(A[21]), .IN2(n9), .IN3(n48), .Q(SUM[21]) );
  NOR2X0 U59 ( .IN1(n9), .IN2(A[21]), .QN(n48) );
  AO21X1 U60 ( .IN1(A[20]), .IN2(n10), .IN3(n49), .Q(SUM[20]) );
  NOR2X0 U61 ( .IN1(n10), .IN2(A[20]), .QN(n49) );
  AO21X1 U62 ( .IN1(A[1]), .IN2(A[0]), .IN3(n51), .Q(SUM[1]) );
  AO21X1 U63 ( .IN1(A[19]), .IN2(n11), .IN3(n50), .Q(SUM[19]) );
  NOR2X0 U64 ( .IN1(n11), .IN2(A[19]), .QN(n50) );
  AO21X1 U65 ( .IN1(A[18]), .IN2(n12), .IN3(n52), .Q(SUM[18]) );
  NOR2X0 U66 ( .IN1(n12), .IN2(A[18]), .QN(n52) );
  AO21X1 U67 ( .IN1(A[17]), .IN2(n13), .IN3(n53), .Q(SUM[17]) );
  NOR2X0 U68 ( .IN1(n13), .IN2(A[17]), .QN(n53) );
  AO21X1 U69 ( .IN1(A[16]), .IN2(n14), .IN3(n54), .Q(SUM[16]) );
  NOR2X0 U70 ( .IN1(n14), .IN2(A[16]), .QN(n54) );
  AO21X1 U71 ( .IN1(A[15]), .IN2(n15), .IN3(n55), .Q(SUM[15]) );
  NOR2X0 U72 ( .IN1(n15), .IN2(A[15]), .QN(n55) );
  AO21X1 U73 ( .IN1(A[14]), .IN2(n16), .IN3(n56), .Q(SUM[14]) );
  NOR2X0 U74 ( .IN1(n16), .IN2(A[14]), .QN(n56) );
  AO21X1 U75 ( .IN1(A[13]), .IN2(n17), .IN3(n57), .Q(SUM[13]) );
  NOR2X0 U76 ( .IN1(n17), .IN2(A[13]), .QN(n57) );
  AO21X1 U77 ( .IN1(A[12]), .IN2(n18), .IN3(n58), .Q(SUM[12]) );
  NOR2X0 U78 ( .IN1(n18), .IN2(A[12]), .QN(n58) );
  AO21X1 U79 ( .IN1(A[11]), .IN2(n19), .IN3(n59), .Q(SUM[11]) );
  NOR2X0 U80 ( .IN1(n19), .IN2(A[11]), .QN(n59) );
  AO21X1 U81 ( .IN1(A[10]), .IN2(n20), .IN3(n60), .Q(SUM[10]) );
  NOR2X0 U82 ( .IN1(n20), .IN2(A[10]), .QN(n60) );
  NOR2X0 U83 ( .IN1(n21), .IN2(A[9]), .QN(n31) );
  NOR2X0 U84 ( .IN1(n22), .IN2(A[8]), .QN(n32) );
  NOR2X0 U85 ( .IN1(n23), .IN2(A[7]), .QN(n33) );
  NOR2X0 U86 ( .IN1(n24), .IN2(A[6]), .QN(n34) );
  NOR2X0 U87 ( .IN1(n25), .IN2(A[5]), .QN(n35) );
  NOR2X0 U88 ( .IN1(n26), .IN2(A[4]), .QN(n36) );
  NOR2X0 U89 ( .IN1(n27), .IN2(A[3]), .QN(n37) );
  NOR2X0 U90 ( .IN1(n28), .IN2(A[2]), .QN(n40) );
  NOR2X0 U91 ( .IN1(A[1]), .IN2(A[0]), .QN(n51) );
endmodule


module count ( a_in, sel, clk, start, rst, done, cntout );
  input [31:0] a_in;
  input [1:0] sel;
  output [31:0] cntout;
  input clk, start, rst;
  output done;
  wire   d, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160,
         N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292;
  wire   [1:0] state;
  wire   [31:0] a;
  wire   [31:0] b;
  wire   [31:0] cnt;

  count_ctrl ctrl0 ( .start(start), .rst(rst), .clk(clk), .d(d), .state(state), 
        .done(done) );
  count_DW01_sub_0 sub_54_S2 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .B(cnt), .CI(1'b0), .DIFF({N177, N176, N175, N174, N173, N172, 
        N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, 
        N147, N146}) );
  count_DW01_inc_0 add_47_S2 ( .A(cnt), .SUM({N106, N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75}) );
  count_DW01_dec_0 sub_37 ( .A(a), .SUM(b) );
  DFFASRX1 \a_reg[31]  ( .D(N71), .CLK(clk), .RSTB(n229), .SETB(n230), .Q(
        a[31]), .QN(n206) );
  DFFARX1 \cntout_reg[31]  ( .D(n121), .CLK(clk), .RSTB(rst), .Q(cntout[31])
         );
  DFFARX1 \cntout_reg[30]  ( .D(n120), .CLK(clk), .RSTB(rst), .Q(cntout[30])
         );
  DFFARX1 \cntout_reg[29]  ( .D(n119), .CLK(clk), .RSTB(rst), .Q(cntout[29])
         );
  DFFARX1 \cntout_reg[28]  ( .D(n118), .CLK(clk), .RSTB(rst), .Q(cntout[28])
         );
  DFFARX1 \cntout_reg[27]  ( .D(n117), .CLK(clk), .RSTB(rst), .Q(cntout[27])
         );
  DFFARX1 \cntout_reg[26]  ( .D(n116), .CLK(clk), .RSTB(rst), .Q(cntout[26])
         );
  DFFARX1 \cntout_reg[25]  ( .D(n115), .CLK(clk), .RSTB(rst), .Q(cntout[25])
         );
  DFFARX1 \cntout_reg[24]  ( .D(n114), .CLK(clk), .RSTB(rst), .Q(cntout[24])
         );
  DFFARX1 \cntout_reg[23]  ( .D(n113), .CLK(clk), .RSTB(rst), .Q(cntout[23])
         );
  DFFARX1 \cntout_reg[22]  ( .D(n112), .CLK(clk), .RSTB(rst), .Q(cntout[22])
         );
  DFFARX1 \cntout_reg[21]  ( .D(n111), .CLK(clk), .RSTB(rst), .Q(cntout[21])
         );
  DFFARX1 \cntout_reg[20]  ( .D(n110), .CLK(clk), .RSTB(rst), .Q(cntout[20])
         );
  DFFARX1 \cntout_reg[19]  ( .D(n109), .CLK(clk), .RSTB(rst), .Q(cntout[19])
         );
  DFFARX1 \cntout_reg[18]  ( .D(n108), .CLK(clk), .RSTB(rst), .Q(cntout[18])
         );
  DFFARX1 \cntout_reg[17]  ( .D(n107), .CLK(clk), .RSTB(rst), .Q(cntout[17])
         );
  DFFARX1 \cntout_reg[16]  ( .D(n106), .CLK(clk), .RSTB(rst), .Q(cntout[16])
         );
  DFFARX1 \cntout_reg[15]  ( .D(n105), .CLK(clk), .RSTB(rst), .Q(cntout[15])
         );
  DFFARX1 \cntout_reg[14]  ( .D(n104), .CLK(clk), .RSTB(rst), .Q(cntout[14])
         );
  DFFARX1 \cntout_reg[13]  ( .D(n103), .CLK(clk), .RSTB(rst), .Q(cntout[13])
         );
  DFFARX1 \cntout_reg[12]  ( .D(n102), .CLK(clk), .RSTB(rst), .Q(cntout[12])
         );
  DFFARX1 \cntout_reg[11]  ( .D(n101), .CLK(clk), .RSTB(rst), .Q(cntout[11])
         );
  DFFARX1 \cntout_reg[10]  ( .D(n100), .CLK(clk), .RSTB(rst), .Q(cntout[10])
         );
  DFFARX1 \cntout_reg[9]  ( .D(n99), .CLK(clk), .RSTB(rst), .Q(cntout[9]) );
  DFFARX1 \cntout_reg[8]  ( .D(n98), .CLK(clk), .RSTB(rst), .Q(cntout[8]) );
  DFFARX1 \cntout_reg[7]  ( .D(n97), .CLK(clk), .RSTB(rst), .Q(cntout[7]) );
  DFFARX1 \cntout_reg[6]  ( .D(n96), .CLK(clk), .RSTB(rst), .Q(cntout[6]) );
  DFFARX1 \cntout_reg[5]  ( .D(n95), .CLK(clk), .RSTB(rst), .Q(cntout[5]) );
  DFFARX1 \cntout_reg[4]  ( .D(n94), .CLK(clk), .RSTB(rst), .Q(cntout[4]) );
  DFFARX1 \cntout_reg[3]  ( .D(n93), .CLK(clk), .RSTB(rst), .Q(cntout[3]) );
  DFFARX1 \cntout_reg[2]  ( .D(n92), .CLK(clk), .RSTB(rst), .Q(cntout[2]) );
  DFFARX1 \cntout_reg[1]  ( .D(n91), .CLK(clk), .RSTB(rst), .Q(cntout[1]) );
  DFFARX1 \cntout_reg[0]  ( .D(n90), .CLK(clk), .RSTB(rst), .Q(cntout[0]) );
  DFFASRX1 \a_reg[1]  ( .D(N41), .CLK(clk), .RSTB(n289), .SETB(n290), .Q(a[1]), 
        .QN(n228) );
  DFFASRX1 \a_reg[2]  ( .D(N42), .CLK(clk), .RSTB(n287), .SETB(n288), .Q(a[2]), 
        .QN(n227) );
  DFFASRX1 \a_reg[3]  ( .D(N43), .CLK(clk), .RSTB(n285), .SETB(n286), .Q(a[3]), 
        .QN(n226) );
  DFFASRX1 \a_reg[4]  ( .D(N44), .CLK(clk), .RSTB(n283), .SETB(n284), .Q(a[4]), 
        .QN(n225) );
  DFFASRX1 \a_reg[5]  ( .D(N45), .CLK(clk), .RSTB(n281), .SETB(n282), .Q(a[5]), 
        .QN(n224) );
  DFFASRX1 \a_reg[6]  ( .D(N46), .CLK(clk), .RSTB(n279), .SETB(n280), .Q(a[6]), 
        .QN(n223) );
  DFFASRX1 \a_reg[7]  ( .D(N47), .CLK(clk), .RSTB(n277), .SETB(n278), .Q(a[7]), 
        .QN(n222) );
  DFFASRX1 \a_reg[8]  ( .D(N48), .CLK(clk), .RSTB(n275), .SETB(n276), .Q(a[8]), 
        .QN(n221) );
  DFFASRX1 \a_reg[9]  ( .D(N49), .CLK(clk), .RSTB(n273), .SETB(n274), .Q(a[9]), 
        .QN(n220) );
  DFFASRX1 \a_reg[10]  ( .D(N50), .CLK(clk), .RSTB(n271), .SETB(n272), .Q(
        a[10]), .QN(n219) );
  DFFASRX1 \a_reg[11]  ( .D(N51), .CLK(clk), .RSTB(n269), .SETB(n270), .Q(
        a[11]), .QN(n218) );
  DFFASRX1 \a_reg[12]  ( .D(N52), .CLK(clk), .RSTB(n267), .SETB(n268), .Q(
        a[12]), .QN(n217) );
  DFFASRX1 \a_reg[13]  ( .D(N53), .CLK(clk), .RSTB(n265), .SETB(n266), .Q(
        a[13]), .QN(n216) );
  DFFASRX1 \a_reg[14]  ( .D(N54), .CLK(clk), .RSTB(n263), .SETB(n264), .Q(
        a[14]) );
  DFFASRX1 \a_reg[15]  ( .D(N55), .CLK(clk), .RSTB(n261), .SETB(n262), .Q(
        a[15]) );
  DFFASRX1 \a_reg[16]  ( .D(N56), .CLK(clk), .RSTB(n259), .SETB(n260), .Q(
        a[16]) );
  DFFASRX1 \a_reg[17]  ( .D(N57), .CLK(clk), .RSTB(n257), .SETB(n258), .Q(
        a[17]), .QN(n215) );
  DFFASRX1 \a_reg[18]  ( .D(N58), .CLK(clk), .RSTB(n255), .SETB(n256), .Q(
        a[18]), .QN(n214) );
  DFFASRX1 \a_reg[19]  ( .D(N59), .CLK(clk), .RSTB(n253), .SETB(n254), .Q(
        a[19]) );
  DFFASRX1 \a_reg[20]  ( .D(N60), .CLK(clk), .RSTB(n251), .SETB(n252), .Q(
        a[20]) );
  DFFASRX1 \a_reg[21]  ( .D(N61), .CLK(clk), .RSTB(n249), .SETB(n250), .Q(
        a[21]) );
  DFFASRX1 \a_reg[22]  ( .D(N62), .CLK(clk), .RSTB(n247), .SETB(n248), .Q(
        a[22]) );
  DFFASRX1 \a_reg[23]  ( .D(N63), .CLK(clk), .RSTB(n245), .SETB(n246), .Q(
        a[23]) );
  DFFASRX1 \a_reg[24]  ( .D(N64), .CLK(clk), .RSTB(n243), .SETB(n244), .Q(
        a[24]), .QN(n213) );
  DFFASRX1 \a_reg[25]  ( .D(N65), .CLK(clk), .RSTB(n241), .SETB(n242), .Q(
        a[25]), .QN(n212) );
  DFFASRX1 \a_reg[26]  ( .D(N66), .CLK(clk), .RSTB(n239), .SETB(n240), .Q(
        a[26]), .QN(n211) );
  DFFASRX1 \a_reg[27]  ( .D(N67), .CLK(clk), .RSTB(n237), .SETB(n238), .Q(
        a[27]), .QN(n210) );
  DFFASRX1 \a_reg[28]  ( .D(N68), .CLK(clk), .RSTB(n235), .SETB(n236), .Q(
        a[28]), .QN(n209) );
  DFFASRX1 \a_reg[29]  ( .D(N69), .CLK(clk), .RSTB(n233), .SETB(n234), .Q(
        a[29]), .QN(n208) );
  DFFASRX1 \a_reg[30]  ( .D(N70), .CLK(clk), .RSTB(n231), .SETB(n232), .Q(
        a[30]), .QN(n207) );
  DFFARX1 \cnt_reg[31]  ( .D(N138), .CLK(clk), .RSTB(rst), .Q(cnt[31]) );
  DFFARX1 \cnt_reg[1]  ( .D(N108), .CLK(clk), .RSTB(rst), .Q(cnt[1]) );
  DFFARX1 \cnt_reg[2]  ( .D(N109), .CLK(clk), .RSTB(rst), .Q(cnt[2]) );
  DFFARX1 \cnt_reg[3]  ( .D(N110), .CLK(clk), .RSTB(rst), .Q(cnt[3]) );
  DFFARX1 \cnt_reg[4]  ( .D(N111), .CLK(clk), .RSTB(rst), .Q(cnt[4]) );
  DFFARX1 \cnt_reg[5]  ( .D(N112), .CLK(clk), .RSTB(rst), .Q(cnt[5]) );
  DFFARX1 \cnt_reg[6]  ( .D(N113), .CLK(clk), .RSTB(rst), .Q(cnt[6]) );
  DFFARX1 \cnt_reg[7]  ( .D(N114), .CLK(clk), .RSTB(rst), .Q(cnt[7]) );
  DFFARX1 \cnt_reg[8]  ( .D(N115), .CLK(clk), .RSTB(rst), .Q(cnt[8]) );
  DFFARX1 \cnt_reg[9]  ( .D(N116), .CLK(clk), .RSTB(rst), .Q(cnt[9]) );
  DFFARX1 \cnt_reg[10]  ( .D(N117), .CLK(clk), .RSTB(rst), .Q(cnt[10]) );
  DFFARX1 \cnt_reg[11]  ( .D(N118), .CLK(clk), .RSTB(rst), .Q(cnt[11]) );
  DFFARX1 \cnt_reg[12]  ( .D(N119), .CLK(clk), .RSTB(rst), .Q(cnt[12]) );
  DFFARX1 \cnt_reg[13]  ( .D(N120), .CLK(clk), .RSTB(rst), .Q(cnt[13]) );
  DFFARX1 \cnt_reg[14]  ( .D(N121), .CLK(clk), .RSTB(rst), .Q(cnt[14]) );
  DFFARX1 \cnt_reg[15]  ( .D(N122), .CLK(clk), .RSTB(rst), .Q(cnt[15]) );
  DFFARX1 \cnt_reg[16]  ( .D(N123), .CLK(clk), .RSTB(rst), .Q(cnt[16]) );
  DFFARX1 \cnt_reg[17]  ( .D(N124), .CLK(clk), .RSTB(rst), .Q(cnt[17]) );
  DFFARX1 \cnt_reg[18]  ( .D(N125), .CLK(clk), .RSTB(rst), .Q(cnt[18]) );
  DFFARX1 \cnt_reg[19]  ( .D(N126), .CLK(clk), .RSTB(rst), .Q(cnt[19]) );
  DFFARX1 \cnt_reg[20]  ( .D(N127), .CLK(clk), .RSTB(rst), .Q(cnt[20]) );
  DFFARX1 \cnt_reg[21]  ( .D(N128), .CLK(clk), .RSTB(rst), .Q(cnt[21]) );
  DFFARX1 \cnt_reg[22]  ( .D(N129), .CLK(clk), .RSTB(rst), .Q(cnt[22]) );
  DFFARX1 \cnt_reg[23]  ( .D(N130), .CLK(clk), .RSTB(rst), .Q(cnt[23]) );
  DFFARX1 \cnt_reg[24]  ( .D(N131), .CLK(clk), .RSTB(rst), .Q(cnt[24]) );
  DFFARX1 \cnt_reg[25]  ( .D(N132), .CLK(clk), .RSTB(rst), .Q(cnt[25]) );
  DFFARX1 \cnt_reg[26]  ( .D(N133), .CLK(clk), .RSTB(rst), .Q(cnt[26]) );
  DFFARX1 \cnt_reg[27]  ( .D(N134), .CLK(clk), .RSTB(rst), .Q(cnt[27]) );
  DFFARX1 \cnt_reg[28]  ( .D(N135), .CLK(clk), .RSTB(rst), .Q(cnt[28]) );
  DFFARX1 \cnt_reg[29]  ( .D(N136), .CLK(clk), .RSTB(rst), .Q(cnt[29]) );
  DFFARX1 \cnt_reg[30]  ( .D(N137), .CLK(clk), .RSTB(rst), .Q(cnt[30]) );
  DFFASRX1 \a_reg[0]  ( .D(N40), .CLK(clk), .RSTB(n291), .SETB(n292), .Q(a[0])
         );
  DFFARX1 \cnt_reg[0]  ( .D(N107), .CLK(clk), .RSTB(rst), .Q(cnt[0]) );
  OR2X1 U252 ( .IN1(rst), .IN2(a_in[31]), .Q(n229) );
  NAND2X0 U253 ( .IN1(a_in[31]), .IN2(n186), .QN(n230) );
  OR2X1 U254 ( .IN1(rst), .IN2(a_in[30]), .Q(n231) );
  NAND2X0 U255 ( .IN1(a_in[30]), .IN2(n186), .QN(n232) );
  OR2X1 U256 ( .IN1(rst), .IN2(a_in[29]), .Q(n233) );
  NAND2X0 U257 ( .IN1(a_in[29]), .IN2(n186), .QN(n234) );
  OR2X1 U258 ( .IN1(rst), .IN2(a_in[28]), .Q(n235) );
  NAND2X0 U259 ( .IN1(a_in[28]), .IN2(n186), .QN(n236) );
  OR2X1 U260 ( .IN1(rst), .IN2(a_in[27]), .Q(n237) );
  NAND2X0 U261 ( .IN1(a_in[27]), .IN2(n186), .QN(n238) );
  OR2X1 U262 ( .IN1(rst), .IN2(a_in[26]), .Q(n239) );
  NAND2X0 U263 ( .IN1(a_in[26]), .IN2(n186), .QN(n240) );
  OR2X1 U264 ( .IN1(rst), .IN2(a_in[25]), .Q(n241) );
  NAND2X0 U265 ( .IN1(a_in[25]), .IN2(n186), .QN(n242) );
  OR2X1 U266 ( .IN1(rst), .IN2(a_in[24]), .Q(n243) );
  NAND2X0 U267 ( .IN1(a_in[24]), .IN2(n186), .QN(n244) );
  OR2X1 U268 ( .IN1(rst), .IN2(a_in[23]), .Q(n245) );
  NAND2X0 U269 ( .IN1(a_in[23]), .IN2(n186), .QN(n246) );
  OR2X1 U270 ( .IN1(rst), .IN2(a_in[22]), .Q(n247) );
  NAND2X0 U271 ( .IN1(a_in[22]), .IN2(n186), .QN(n248) );
  OR2X1 U272 ( .IN1(rst), .IN2(a_in[21]), .Q(n249) );
  NAND2X0 U273 ( .IN1(a_in[21]), .IN2(n186), .QN(n250) );
  OR2X1 U274 ( .IN1(rst), .IN2(a_in[20]), .Q(n251) );
  NAND2X0 U275 ( .IN1(a_in[20]), .IN2(n186), .QN(n252) );
  OR2X1 U276 ( .IN1(rst), .IN2(a_in[19]), .Q(n253) );
  NAND2X0 U277 ( .IN1(a_in[19]), .IN2(n186), .QN(n254) );
  OR2X1 U278 ( .IN1(rst), .IN2(a_in[18]), .Q(n255) );
  NAND2X0 U279 ( .IN1(a_in[18]), .IN2(n186), .QN(n256) );
  OR2X1 U280 ( .IN1(rst), .IN2(a_in[17]), .Q(n257) );
  NAND2X0 U281 ( .IN1(a_in[17]), .IN2(n186), .QN(n258) );
  OR2X1 U282 ( .IN1(rst), .IN2(a_in[16]), .Q(n259) );
  NAND2X0 U283 ( .IN1(a_in[16]), .IN2(n186), .QN(n260) );
  OR2X1 U284 ( .IN1(rst), .IN2(a_in[15]), .Q(n261) );
  NAND2X0 U285 ( .IN1(a_in[15]), .IN2(n186), .QN(n262) );
  OR2X1 U286 ( .IN1(rst), .IN2(a_in[14]), .Q(n263) );
  NAND2X0 U287 ( .IN1(a_in[14]), .IN2(n186), .QN(n264) );
  OR2X1 U288 ( .IN1(rst), .IN2(a_in[13]), .Q(n265) );
  NAND2X0 U289 ( .IN1(a_in[13]), .IN2(n186), .QN(n266) );
  OR2X1 U290 ( .IN1(rst), .IN2(a_in[12]), .Q(n267) );
  NAND2X0 U291 ( .IN1(a_in[12]), .IN2(n186), .QN(n268) );
  OR2X1 U292 ( .IN1(rst), .IN2(a_in[11]), .Q(n269) );
  NAND2X0 U293 ( .IN1(a_in[11]), .IN2(n186), .QN(n270) );
  OR2X1 U294 ( .IN1(rst), .IN2(a_in[10]), .Q(n271) );
  NAND2X0 U295 ( .IN1(a_in[10]), .IN2(n186), .QN(n272) );
  OR2X1 U296 ( .IN1(rst), .IN2(a_in[9]), .Q(n273) );
  NAND2X0 U297 ( .IN1(a_in[9]), .IN2(n186), .QN(n274) );
  OR2X1 U298 ( .IN1(rst), .IN2(a_in[8]), .Q(n275) );
  NAND2X0 U299 ( .IN1(a_in[8]), .IN2(n186), .QN(n276) );
  OR2X1 U300 ( .IN1(rst), .IN2(a_in[7]), .Q(n277) );
  NAND2X0 U301 ( .IN1(a_in[7]), .IN2(n186), .QN(n278) );
  OR2X1 U302 ( .IN1(rst), .IN2(a_in[6]), .Q(n279) );
  NAND2X0 U303 ( .IN1(a_in[6]), .IN2(n186), .QN(n280) );
  OR2X1 U304 ( .IN1(rst), .IN2(a_in[5]), .Q(n281) );
  NAND2X0 U305 ( .IN1(a_in[5]), .IN2(n186), .QN(n282) );
  OR2X1 U306 ( .IN1(rst), .IN2(a_in[4]), .Q(n283) );
  NAND2X0 U307 ( .IN1(a_in[4]), .IN2(n186), .QN(n284) );
  OR2X1 U308 ( .IN1(rst), .IN2(a_in[3]), .Q(n285) );
  NAND2X0 U309 ( .IN1(a_in[3]), .IN2(n186), .QN(n286) );
  OR2X1 U310 ( .IN1(rst), .IN2(a_in[2]), .Q(n287) );
  NAND2X0 U311 ( .IN1(a_in[2]), .IN2(n186), .QN(n288) );
  OR2X1 U312 ( .IN1(rst), .IN2(a_in[1]), .Q(n289) );
  NAND2X0 U313 ( .IN1(a_in[1]), .IN2(n186), .QN(n290) );
  OR2X1 U314 ( .IN1(rst), .IN2(a_in[0]), .Q(n291) );
  NAND2X0 U315 ( .IN1(a_in[0]), .IN2(n186), .QN(n292) );
  AO222X1 U316 ( .IN1(N155), .IN2(n187), .IN3(n188), .IN4(cntout[9]), .IN5(
        n189), .IN6(cnt[9]), .Q(n99) );
  AO222X1 U317 ( .IN1(N154), .IN2(n187), .IN3(n188), .IN4(cntout[8]), .IN5(
        n189), .IN6(cnt[8]), .Q(n98) );
  AO222X1 U318 ( .IN1(N153), .IN2(n187), .IN3(n188), .IN4(cntout[7]), .IN5(
        n189), .IN6(cnt[7]), .Q(n97) );
  AO222X1 U319 ( .IN1(N152), .IN2(n187), .IN3(n188), .IN4(cntout[6]), .IN5(
        n189), .IN6(cnt[6]), .Q(n96) );
  AO222X1 U320 ( .IN1(N151), .IN2(n187), .IN3(n188), .IN4(cntout[5]), .IN5(
        n189), .IN6(cnt[5]), .Q(n95) );
  AO222X1 U321 ( .IN1(N150), .IN2(n187), .IN3(n188), .IN4(cntout[4]), .IN5(
        n189), .IN6(cnt[4]), .Q(n94) );
  AO222X1 U322 ( .IN1(N149), .IN2(n187), .IN3(n188), .IN4(cntout[3]), .IN5(
        n189), .IN6(cnt[3]), .Q(n93) );
  AO222X1 U323 ( .IN1(N148), .IN2(n187), .IN3(n188), .IN4(cntout[2]), .IN5(
        n189), .IN6(cnt[2]), .Q(n92) );
  AO222X1 U324 ( .IN1(N147), .IN2(n187), .IN3(n188), .IN4(cntout[1]), .IN5(
        n189), .IN6(cnt[1]), .Q(n91) );
  AO222X1 U325 ( .IN1(N146), .IN2(n187), .IN3(n188), .IN4(cntout[0]), .IN5(
        n189), .IN6(cnt[0]), .Q(n90) );
  AO222X1 U326 ( .IN1(N177), .IN2(n187), .IN3(n188), .IN4(cntout[31]), .IN5(
        n189), .IN6(cnt[31]), .Q(n121) );
  AO222X1 U327 ( .IN1(N176), .IN2(n187), .IN3(n188), .IN4(cntout[30]), .IN5(
        n189), .IN6(cnt[30]), .Q(n120) );
  AO222X1 U328 ( .IN1(N175), .IN2(n187), .IN3(n188), .IN4(cntout[29]), .IN5(
        n189), .IN6(cnt[29]), .Q(n119) );
  AO222X1 U329 ( .IN1(N174), .IN2(n187), .IN3(n188), .IN4(cntout[28]), .IN5(
        n189), .IN6(cnt[28]), .Q(n118) );
  AO222X1 U330 ( .IN1(N173), .IN2(n187), .IN3(n188), .IN4(cntout[27]), .IN5(
        n189), .IN6(cnt[27]), .Q(n117) );
  AO222X1 U331 ( .IN1(N172), .IN2(n187), .IN3(n188), .IN4(cntout[26]), .IN5(
        n189), .IN6(cnt[26]), .Q(n116) );
  AO222X1 U332 ( .IN1(N171), .IN2(n187), .IN3(n188), .IN4(cntout[25]), .IN5(
        n189), .IN6(cnt[25]), .Q(n115) );
  AO222X1 U333 ( .IN1(N170), .IN2(n187), .IN3(n188), .IN4(cntout[24]), .IN5(
        n189), .IN6(cnt[24]), .Q(n114) );
  AO222X1 U334 ( .IN1(N169), .IN2(n187), .IN3(n188), .IN4(cntout[23]), .IN5(
        n189), .IN6(cnt[23]), .Q(n113) );
  AO222X1 U335 ( .IN1(N168), .IN2(n187), .IN3(n188), .IN4(cntout[22]), .IN5(
        n189), .IN6(cnt[22]), .Q(n112) );
  AO222X1 U336 ( .IN1(N167), .IN2(n187), .IN3(n188), .IN4(cntout[21]), .IN5(
        n189), .IN6(cnt[21]), .Q(n111) );
  AO222X1 U337 ( .IN1(N166), .IN2(n187), .IN3(n188), .IN4(cntout[20]), .IN5(
        n189), .IN6(cnt[20]), .Q(n110) );
  AO222X1 U338 ( .IN1(N165), .IN2(n187), .IN3(n188), .IN4(cntout[19]), .IN5(
        n189), .IN6(cnt[19]), .Q(n109) );
  AO222X1 U339 ( .IN1(N164), .IN2(n187), .IN3(n188), .IN4(cntout[18]), .IN5(
        n189), .IN6(cnt[18]), .Q(n108) );
  AO222X1 U340 ( .IN1(N163), .IN2(n187), .IN3(n188), .IN4(cntout[17]), .IN5(
        n189), .IN6(cnt[17]), .Q(n107) );
  AO222X1 U341 ( .IN1(N162), .IN2(n187), .IN3(n188), .IN4(cntout[16]), .IN5(
        n189), .IN6(cnt[16]), .Q(n106) );
  AO222X1 U342 ( .IN1(N161), .IN2(n187), .IN3(n188), .IN4(cntout[15]), .IN5(
        n189), .IN6(cnt[15]), .Q(n105) );
  AO222X1 U343 ( .IN1(N160), .IN2(n187), .IN3(n188), .IN4(cntout[14]), .IN5(
        n189), .IN6(cnt[14]), .Q(n104) );
  AO222X1 U344 ( .IN1(N159), .IN2(n187), .IN3(n188), .IN4(cntout[13]), .IN5(
        n189), .IN6(cnt[13]), .Q(n103) );
  AO222X1 U345 ( .IN1(N158), .IN2(n187), .IN3(n188), .IN4(cntout[12]), .IN5(
        n189), .IN6(cnt[12]), .Q(n102) );
  AO222X1 U346 ( .IN1(N157), .IN2(n187), .IN3(n188), .IN4(cntout[11]), .IN5(
        n189), .IN6(cnt[11]), .Q(n101) );
  AO222X1 U347 ( .IN1(N156), .IN2(n187), .IN3(n188), .IN4(cntout[10]), .IN5(
        n189), .IN6(cnt[10]), .Q(n100) );
  NOR2X0 U348 ( .IN1(n187), .IN2(n189), .QN(n188) );
  AND4X1 U349 ( .IN1(state[1]), .IN2(state[0]), .IN3(sel[1]), .IN4(n190), .Q(
        n189) );
  NOR4X0 U350 ( .IN1(n190), .IN2(n191), .IN3(n192), .IN4(sel[1]), .QN(n187) );
  INVX0 U351 ( .IN(sel[0]), .QN(n190) );
  NOR2X0 U352 ( .IN1(n193), .IN2(n186), .QN(d) );
  INVX0 U353 ( .IN(rst), .QN(n186) );
  NOR4X0 U354 ( .IN1(n194), .IN2(n195), .IN3(n196), .IN4(n197), .QN(n193) );
  NAND4X0 U355 ( .IN1(n206), .IN2(n207), .IN3(n208), .IN4(n209), .QN(n197) );
  NAND4X0 U356 ( .IN1(n210), .IN2(n211), .IN3(n212), .IN4(n213), .QN(n196) );
  NAND4X0 U357 ( .IN1(n214), .IN2(n215), .IN3(n198), .IN4(n199), .QN(n195) );
  NOR4X0 U358 ( .IN1(a[19]), .IN2(a[21]), .IN3(a[22]), .IN4(a[23]), .QN(n199)
         );
  NOR3X0 U359 ( .IN1(a[16]), .IN2(a[14]), .IN3(a[15]), .QN(n198) );
  OR4X1 U360 ( .IN1(n200), .IN2(n201), .IN3(n202), .IN4(n203), .Q(n194) );
  NAND4X0 U361 ( .IN1(n224), .IN2(n225), .IN3(n226), .IN4(n227), .QN(n203) );
  NAND4X0 U362 ( .IN1(state[1]), .IN2(n192), .IN3(n228), .IN4(n204), .QN(n202)
         );
  NOR2X0 U363 ( .IN1(a[20]), .IN2(a[0]), .QN(n204) );
  INVX0 U364 ( .IN(state[0]), .QN(n192) );
  NAND4X0 U365 ( .IN1(n216), .IN2(n217), .IN3(n218), .IN4(n219), .QN(n201) );
  NAND4X0 U366 ( .IN1(n220), .IN2(n221), .IN3(n222), .IN4(n223), .QN(n200) );
  OA21X1 U367 ( .IN1(b[31]), .IN2(n205), .IN3(a[31]), .Q(N71) );
  OA21X1 U368 ( .IN1(b[30]), .IN2(n205), .IN3(a[30]), .Q(N70) );
  OA21X1 U369 ( .IN1(b[29]), .IN2(n205), .IN3(a[29]), .Q(N69) );
  OA21X1 U370 ( .IN1(b[28]), .IN2(n205), .IN3(a[28]), .Q(N68) );
  OA21X1 U371 ( .IN1(b[27]), .IN2(n205), .IN3(a[27]), .Q(N67) );
  OA21X1 U372 ( .IN1(b[26]), .IN2(n205), .IN3(a[26]), .Q(N66) );
  OA21X1 U373 ( .IN1(b[25]), .IN2(n205), .IN3(a[25]), .Q(N65) );
  OA21X1 U374 ( .IN1(b[24]), .IN2(n205), .IN3(a[24]), .Q(N64) );
  OA21X1 U375 ( .IN1(b[23]), .IN2(n205), .IN3(a[23]), .Q(N63) );
  OA21X1 U376 ( .IN1(b[22]), .IN2(n205), .IN3(a[22]), .Q(N62) );
  OA21X1 U377 ( .IN1(b[21]), .IN2(n205), .IN3(a[21]), .Q(N61) );
  OA21X1 U378 ( .IN1(b[20]), .IN2(n205), .IN3(a[20]), .Q(N60) );
  OA21X1 U379 ( .IN1(b[19]), .IN2(n205), .IN3(a[19]), .Q(N59) );
  OA21X1 U380 ( .IN1(b[18]), .IN2(n205), .IN3(a[18]), .Q(N58) );
  OA21X1 U381 ( .IN1(b[17]), .IN2(n205), .IN3(a[17]), .Q(N57) );
  OA21X1 U382 ( .IN1(b[16]), .IN2(n205), .IN3(a[16]), .Q(N56) );
  OA21X1 U383 ( .IN1(b[15]), .IN2(n205), .IN3(a[15]), .Q(N55) );
  OA21X1 U384 ( .IN1(b[14]), .IN2(n205), .IN3(a[14]), .Q(N54) );
  OA21X1 U385 ( .IN1(b[13]), .IN2(n205), .IN3(a[13]), .Q(N53) );
  OA21X1 U386 ( .IN1(b[12]), .IN2(n205), .IN3(a[12]), .Q(N52) );
  OA21X1 U387 ( .IN1(b[11]), .IN2(n205), .IN3(a[11]), .Q(N51) );
  OA21X1 U388 ( .IN1(b[10]), .IN2(n205), .IN3(a[10]), .Q(N50) );
  OA21X1 U389 ( .IN1(b[9]), .IN2(n205), .IN3(a[9]), .Q(N49) );
  OA21X1 U390 ( .IN1(b[8]), .IN2(n205), .IN3(a[8]), .Q(N48) );
  OA21X1 U391 ( .IN1(b[7]), .IN2(n205), .IN3(a[7]), .Q(N47) );
  OA21X1 U392 ( .IN1(b[6]), .IN2(n205), .IN3(a[6]), .Q(N46) );
  OA21X1 U393 ( .IN1(b[5]), .IN2(n205), .IN3(a[5]), .Q(N45) );
  OA21X1 U394 ( .IN1(b[4]), .IN2(n205), .IN3(a[4]), .Q(N44) );
  OA21X1 U395 ( .IN1(b[3]), .IN2(n205), .IN3(a[3]), .Q(N43) );
  OA21X1 U396 ( .IN1(b[2]), .IN2(n205), .IN3(a[2]), .Q(N42) );
  OA21X1 U397 ( .IN1(b[1]), .IN2(n205), .IN3(a[1]), .Q(N41) );
  OA21X1 U398 ( .IN1(b[0]), .IN2(n205), .IN3(a[0]), .Q(N40) );
  MUX21X1 U399 ( .IN1(N106), .IN2(cnt[31]), .S(n205), .Q(N138) );
  MUX21X1 U400 ( .IN1(N105), .IN2(cnt[30]), .S(n205), .Q(N137) );
  MUX21X1 U401 ( .IN1(N104), .IN2(cnt[29]), .S(n205), .Q(N136) );
  MUX21X1 U402 ( .IN1(N103), .IN2(cnt[28]), .S(n205), .Q(N135) );
  MUX21X1 U403 ( .IN1(N102), .IN2(cnt[27]), .S(n205), .Q(N134) );
  MUX21X1 U404 ( .IN1(N101), .IN2(cnt[26]), .S(n205), .Q(N133) );
  MUX21X1 U405 ( .IN1(N100), .IN2(cnt[25]), .S(n205), .Q(N132) );
  MUX21X1 U406 ( .IN1(N99), .IN2(cnt[24]), .S(n205), .Q(N131) );
  MUX21X1 U407 ( .IN1(N98), .IN2(cnt[23]), .S(n205), .Q(N130) );
  MUX21X1 U408 ( .IN1(N97), .IN2(cnt[22]), .S(n205), .Q(N129) );
  MUX21X1 U409 ( .IN1(N96), .IN2(cnt[21]), .S(n205), .Q(N128) );
  MUX21X1 U410 ( .IN1(N95), .IN2(cnt[20]), .S(n205), .Q(N127) );
  MUX21X1 U411 ( .IN1(N94), .IN2(cnt[19]), .S(n205), .Q(N126) );
  MUX21X1 U412 ( .IN1(N93), .IN2(cnt[18]), .S(n205), .Q(N125) );
  MUX21X1 U413 ( .IN1(N92), .IN2(cnt[17]), .S(n205), .Q(N124) );
  MUX21X1 U414 ( .IN1(N91), .IN2(cnt[16]), .S(n205), .Q(N123) );
  MUX21X1 U415 ( .IN1(N90), .IN2(cnt[15]), .S(n205), .Q(N122) );
  MUX21X1 U416 ( .IN1(N89), .IN2(cnt[14]), .S(n205), .Q(N121) );
  MUX21X1 U417 ( .IN1(N88), .IN2(cnt[13]), .S(n205), .Q(N120) );
  MUX21X1 U418 ( .IN1(N87), .IN2(cnt[12]), .S(n205), .Q(N119) );
  MUX21X1 U419 ( .IN1(N86), .IN2(cnt[11]), .S(n205), .Q(N118) );
  MUX21X1 U420 ( .IN1(N85), .IN2(cnt[10]), .S(n205), .Q(N117) );
  MUX21X1 U421 ( .IN1(N84), .IN2(cnt[9]), .S(n205), .Q(N116) );
  MUX21X1 U422 ( .IN1(N83), .IN2(cnt[8]), .S(n205), .Q(N115) );
  MUX21X1 U423 ( .IN1(N82), .IN2(cnt[7]), .S(n205), .Q(N114) );
  MUX21X1 U424 ( .IN1(N81), .IN2(cnt[6]), .S(n205), .Q(N113) );
  MUX21X1 U425 ( .IN1(N80), .IN2(cnt[5]), .S(n205), .Q(N112) );
  MUX21X1 U426 ( .IN1(N79), .IN2(cnt[4]), .S(n205), .Q(N111) );
  MUX21X1 U427 ( .IN1(N78), .IN2(cnt[3]), .S(n205), .Q(N110) );
  MUX21X1 U428 ( .IN1(N77), .IN2(cnt[2]), .S(n205), .Q(N109) );
  MUX21X1 U429 ( .IN1(N76), .IN2(cnt[1]), .S(n205), .Q(N108) );
  MUX21X1 U430 ( .IN1(N75), .IN2(cnt[0]), .S(n205), .Q(N107) );
  NAND2X0 U431 ( .IN1(state[0]), .IN2(n191), .QN(n205) );
  INVX0 U432 ( .IN(state[1]), .QN(n191) );
endmodule


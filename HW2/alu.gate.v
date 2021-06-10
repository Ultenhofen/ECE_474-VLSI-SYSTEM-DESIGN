/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Thu Apr 15 21:04:02 2021
/////////////////////////////////////////////////////////////


module alu_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [9:0] carry;
  wire   [8:0] B_AS;
  assign carry[0] = ADD_SUB;

  FADDX1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  XOR2X1 U1 ( .IN1(carry[0]), .IN2(carry[8]), .Q(SUM[8]) );
  XOR2X1 U2 ( .IN1(B[7]), .IN2(carry[0]), .Q(B_AS[7]) );
  XOR2X1 U3 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U4 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U5 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U6 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U7 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U8 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U9 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module alu ( in_a, in_b, opcode, alu_out, alu_zero, alu_carry );
  input [7:0] in_a;
  input [7:0] in_b;
  input [3:0] opcode;
  output [7:0] alu_out;
  output alu_zero, alu_carry;
  wire   N80, N81, N82, N83, N84, N85, N86, N87, N88, N100, \U3/U1/Z_0 ,
         \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 , \U3/U1/Z_4 , \U3/U1/Z_5 ,
         \U3/U1/Z_6 , \U3/U1/Z_7 , \U3/U2/Z_0 , n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123;
  assign N100 = in_a[0];

  alu_DW01_addsub_0 r30 ( .A({1'b0, in_a[7:1], N100}), .B({1'b0, \U3/U1/Z_7 , 
        \U3/U1/Z_6 , \U3/U1/Z_5 , \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , 
        \U3/U1/Z_1 , \U3/U1/Z_0 }), .CI(1'b0), .ADD_SUB(\U3/U2/Z_0 ), .SUM({
        N88, N87, N86, N85, N84, N83, N82, N81, N80}) );
  NOR2X0 U72 ( .IN1(n69), .IN2(n70), .QN(alu_zero) );
  OR4X1 U73 ( .IN1(alu_out[0]), .IN2(alu_out[1]), .IN3(alu_out[2]), .IN4(
        alu_out[3]), .Q(n70) );
  OR4X1 U74 ( .IN1(alu_out[4]), .IN2(alu_out[5]), .IN3(alu_out[6]), .IN4(
        alu_out[7]), .Q(n69) );
  AO222X1 U75 ( .IN1(N87), .IN2(n71), .IN3(n72), .IN4(n73), .IN5(in_a[6]), 
        .IN6(n74), .Q(alu_out[7]) );
  XOR2X1 U76 ( .IN1(in_b[7]), .IN2(in_a[7]), .Q(n73) );
  AO221X1 U77 ( .IN1(n72), .IN2(n75), .IN3(n76), .IN4(in_a[7]), .IN5(n77), .Q(
        alu_out[6]) );
  AO22X1 U78 ( .IN1(in_a[5]), .IN2(n74), .IN3(N86), .IN4(n71), .Q(n77) );
  XOR2X1 U79 ( .IN1(in_b[6]), .IN2(in_a[6]), .Q(n75) );
  AO221X1 U80 ( .IN1(n72), .IN2(n78), .IN3(n76), .IN4(in_a[6]), .IN5(n79), .Q(
        alu_out[5]) );
  AO22X1 U81 ( .IN1(in_a[4]), .IN2(n74), .IN3(N85), .IN4(n71), .Q(n79) );
  XOR2X1 U82 ( .IN1(in_b[5]), .IN2(in_a[5]), .Q(n78) );
  AO221X1 U83 ( .IN1(n72), .IN2(n80), .IN3(in_a[5]), .IN4(n76), .IN5(n81), .Q(
        alu_out[4]) );
  AO22X1 U84 ( .IN1(in_a[3]), .IN2(n74), .IN3(N84), .IN4(n71), .Q(n81) );
  XOR2X1 U85 ( .IN1(in_b[4]), .IN2(in_a[4]), .Q(n80) );
  AO221X1 U86 ( .IN1(n72), .IN2(n82), .IN3(in_a[4]), .IN4(n76), .IN5(n83), .Q(
        alu_out[3]) );
  AO22X1 U87 ( .IN1(in_a[2]), .IN2(n74), .IN3(N83), .IN4(n71), .Q(n83) );
  XOR2X1 U88 ( .IN1(in_b[3]), .IN2(in_a[3]), .Q(n82) );
  AO221X1 U89 ( .IN1(n72), .IN2(n84), .IN3(in_a[3]), .IN4(n76), .IN5(n85), .Q(
        alu_out[2]) );
  AO22X1 U90 ( .IN1(in_a[1]), .IN2(n74), .IN3(N82), .IN4(n71), .Q(n85) );
  XOR2X1 U91 ( .IN1(in_b[2]), .IN2(in_a[2]), .Q(n84) );
  AO221X1 U92 ( .IN1(n72), .IN2(n86), .IN3(in_a[2]), .IN4(n76), .IN5(n87), .Q(
        alu_out[1]) );
  AO22X1 U93 ( .IN1(N100), .IN2(n74), .IN3(N81), .IN4(n71), .Q(n87) );
  XOR2X1 U94 ( .IN1(in_b[1]), .IN2(in_a[1]), .Q(n86) );
  AO221X1 U95 ( .IN1(in_a[1]), .IN2(n76), .IN3(N80), .IN4(n71), .IN5(n88), .Q(
        alu_out[0]) );
  AO222X1 U96 ( .IN1(n72), .IN2(n89), .IN3(n90), .IN4(n91), .IN5(n92), .IN6(
        n93), .Q(n88) );
  AO22X1 U97 ( .IN1(n94), .IN2(n95), .IN3(n96), .IN4(n97), .Q(n93) );
  NAND2X0 U98 ( .IN1(n98), .IN2(n99), .QN(n96) );
  NAND3X0 U99 ( .IN1(n95), .IN2(n100), .IN3(opcode[1]), .QN(n99) );
  NAND4X0 U100 ( .IN1(n101), .IN2(n102), .IN3(n103), .IN4(n104), .QN(n95) );
  NOR4X0 U101 ( .IN1(in_b[7]), .IN2(in_b[6]), .IN3(in_b[5]), .IN4(in_b[4]), 
        .QN(n104) );
  NOR2X0 U102 ( .IN1(in_b[3]), .IN2(in_b[2]), .QN(n103) );
  INVX0 U103 ( .IN(in_b[0]), .QN(n101) );
  INVX0 U104 ( .IN(n98), .QN(n94) );
  INVX0 U105 ( .IN(n105), .QN(n92) );
  INVX0 U106 ( .IN(n106), .QN(n91) );
  MUX21X1 U107 ( .IN1(n97), .IN2(n107), .S(opcode[0]), .Q(n106) );
  NAND4X0 U108 ( .IN1(n107), .IN2(n108), .IN3(n109), .IN4(n110), .QN(n97) );
  NOR4X0 U109 ( .IN1(in_a[7]), .IN2(in_a[6]), .IN3(in_a[5]), .IN4(in_a[4]), 
        .QN(n110) );
  NOR2X0 U110 ( .IN1(in_a[3]), .IN2(in_a[2]), .QN(n109) );
  INVX0 U111 ( .IN(in_a[1]), .QN(n108) );
  INVX0 U112 ( .IN(N100), .QN(n107) );
  NOR2X0 U113 ( .IN1(n111), .IN2(n112), .QN(n90) );
  XOR2X1 U114 ( .IN1(in_b[0]), .IN2(N100), .Q(n89) );
  NOR3X0 U115 ( .IN1(n100), .IN2(n105), .IN3(n111), .QN(n72) );
  NOR3X0 U116 ( .IN1(opcode[0]), .IN2(opcode[1]), .IN3(n112), .QN(n76) );
  AO22X1 U117 ( .IN1(n74), .IN2(in_a[7]), .IN3(N88), .IN4(n71), .Q(alu_carry)
         );
  AO21X1 U118 ( .IN1(n113), .IN2(opcode[0]), .IN3(\U3/U2/Z_0 ), .Q(n71) );
  INVX0 U119 ( .IN(n114), .QN(n113) );
  NOR2X0 U120 ( .IN1(n98), .IN2(n112), .QN(n74) );
  NAND2X0 U121 ( .IN1(opcode[3]), .IN2(n115), .QN(n112) );
  AND3X1 U122 ( .IN1(n100), .IN2(n116), .IN3(n117), .Q(\U3/U2/Z_0 ) );
  XOR2X1 U123 ( .IN1(opcode[2]), .IN2(opcode[1]), .Q(n117) );
  AND2X1 U124 ( .IN1(in_b[7]), .IN2(n118), .Q(\U3/U1/Z_7 ) );
  AND2X1 U125 ( .IN1(in_b[6]), .IN2(n118), .Q(\U3/U1/Z_6 ) );
  AND2X1 U126 ( .IN1(in_b[5]), .IN2(n118), .Q(\U3/U1/Z_5 ) );
  AND2X1 U127 ( .IN1(in_b[4]), .IN2(n118), .Q(\U3/U1/Z_4 ) );
  AND2X1 U128 ( .IN1(in_b[3]), .IN2(n118), .Q(\U3/U1/Z_3 ) );
  AND2X1 U129 ( .IN1(in_b[2]), .IN2(n118), .Q(\U3/U1/Z_2 ) );
  NOR2X0 U130 ( .IN1(n102), .IN2(n119), .QN(\U3/U1/Z_1 ) );
  INVX0 U131 ( .IN(in_b[1]), .QN(n102) );
  AO21X1 U132 ( .IN1(n118), .IN2(in_b[0]), .IN3(n120), .Q(\U3/U1/Z_0 ) );
  MUX21X1 U133 ( .IN1(n121), .IN2(n122), .S(opcode[1]), .Q(n120) );
  NOR2X0 U134 ( .IN1(n100), .IN2(n114), .QN(n122) );
  NOR2X0 U135 ( .IN1(opcode[0]), .IN2(n105), .QN(n121) );
  NAND2X0 U136 ( .IN1(opcode[2]), .IN2(n116), .QN(n105) );
  INVX0 U137 ( .IN(n119), .QN(n118) );
  AO21X1 U138 ( .IN1(n98), .IN2(n123), .IN3(n114), .Q(n119) );
  NAND2X0 U139 ( .IN1(n115), .IN2(n116), .QN(n114) );
  INVX0 U140 ( .IN(opcode[3]), .QN(n116) );
  INVX0 U141 ( .IN(opcode[2]), .QN(n115) );
  NAND2X0 U142 ( .IN1(opcode[1]), .IN2(n100), .QN(n123) );
  INVX0 U143 ( .IN(opcode[0]), .QN(n100) );
  NAND2X0 U144 ( .IN1(opcode[0]), .IN2(n111), .QN(n98) );
  INVX0 U145 ( .IN(opcode[1]), .QN(n111) );
endmodule


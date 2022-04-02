/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Mar 30 15:56:37 2022
/////////////////////////////////////////////////////////////


module JAM_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  XOR2X1 U1 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2XL U5 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2X1 U6 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N194, N196, N197, N198, N199, N200, N201, N202, N203, N204, N205,
         N206, N207, N208, n604, n605, n606, n607, \j_seq_reg[0][2] ,
         \j_seq_reg[0][1] , \j_seq_reg[0][0] , \j_seq_reg[1][2] ,
         \j_seq_reg[1][1] , \j_seq_reg[1][0] , \j_seq_reg[2][2] ,
         \j_seq_reg[2][1] , \j_seq_reg[2][0] , \j_seq_reg[3][2] ,
         \j_seq_reg[3][1] , \j_seq_reg[3][0] , \j_seq_reg[4][2] ,
         \j_seq_reg[4][1] , \j_seq_reg[4][0] , \j_seq_reg[5][2] ,
         \j_seq_reg[5][1] , \j_seq_reg[5][0] , \j_seq_reg[6][2] ,
         \j_seq_reg[6][1] , \j_seq_reg[6][0] , \j_seq_reg[7][2] ,
         \j_seq_reg[7][1] , \j_seq_reg[7][0] , min_work_eq_flag, N209, N210,
         N211, N216, min_work_lt_flag, N306, N307, N308, N631, N632, N633,
         N634, N635, N636, N637, N638, N639, N640, N676, N677, N678, N679,
         N680, N681, N682, N683, N684, N685, N686, N687, N688, N689, N690,
         N691, n53, n54, n55, n64, n96, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n409, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603;
  wire   [2:0] ref_point_val;
  wire   [9:0] min_reg;
  wire   [9:0] min_work_reg;
  wire   [15:0] sort_times_reg;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  JAM_DW01_inc_0 add_347 ( .A(sort_times_reg), .SUM({N691, N690, N689, N688, 
        N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676}) );
  JAM_DW01_add_0 add_279 ( .A(min_reg), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N640, N639, N638, N637, N636, N635, N634, N633, N632, N631}) );
  DFFRX1 \sort_times_reg_reg[15]  ( .D(n325), .CK(CLK), .RN(n424), .Q(
        sort_times_reg[15]) );
  DFFRX1 \sort_times_reg_reg[11]  ( .D(n328), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[11]) );
  DFFRX1 \sort_times_reg_reg[12]  ( .D(n327), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[12]) );
  DFFRX1 \sort_times_reg_reg[14]  ( .D(n339), .CK(CLK), .RN(n422), .Q(
        sort_times_reg[14]) );
  DFFRX1 \sort_times_reg_reg[13]  ( .D(n326), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[13]) );
  DFFRX1 \sort_times_reg_reg[5]  ( .D(n334), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[5]) );
  DFFRX1 \sort_times_reg_reg[10]  ( .D(n329), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[10]) );
  DFFRX1 \sort_times_reg_reg[6]  ( .D(n333), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[6]) );
  DFFRX1 \sort_times_reg_reg[8]  ( .D(n331), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[8]) );
  DFFRX1 \sort_times_reg_reg[9]  ( .D(n330), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[9]) );
  DFFRX1 \sort_times_reg_reg[7]  ( .D(n332), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[7]) );
  DFFRX1 \sort_times_reg_reg[4]  ( .D(n335), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[4]) );
  DFFRX1 \sort_times_reg_reg[1]  ( .D(n338), .CK(CLK), .RN(n422), .Q(
        sort_times_reg[1]) );
  DFFRX1 \sort_times_reg_reg[2]  ( .D(n337), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[2]) );
  DFFRX1 \sort_times_reg_reg[3]  ( .D(n336), .CK(CLK), .RN(n423), .Q(
        sort_times_reg[3]) );
  DFFRX1 \sort_times_reg_reg[0]  ( .D(n380), .CK(CLK), .RN(n422), .Q(
        sort_times_reg[0]) );
  DFFRX1 \min_reg_reg[9]  ( .D(n367), .CK(CLK), .RN(n424), .Q(min_reg[9]) );
  DFFSX1 \min_work_reg_reg[6]  ( .D(n317), .CK(CLK), .SN(n427), .Q(
        min_work_reg[6]), .QN(n387) );
  DFFSX1 \min_work_reg_reg[9]  ( .D(n323), .CK(CLK), .SN(n427), .Q(
        min_work_reg[9]), .QN(n386) );
  DFFRX1 \ref_index_reg_reg[0]  ( .D(N306), .CK(CLK), .RN(n422), .Q(N197), 
        .QN(N206) );
  DFFSX1 \min_work_reg_reg[5]  ( .D(n318), .CK(CLK), .SN(n427), .Q(
        min_work_reg[5]) );
  DFFSX1 \min_work_reg_reg[4]  ( .D(n319), .CK(CLK), .SN(n427), .Q(
        min_work_reg[4]) );
  DFFSX1 \min_work_reg_reg[8]  ( .D(n315), .CK(CLK), .SN(n427), .Q(
        min_work_reg[8]) );
  DFFRX1 \min_reg_reg[5]  ( .D(n370), .CK(CLK), .RN(n424), .Q(min_reg[5]), 
        .QN(n385) );
  DFFRX1 \min_reg_reg[4]  ( .D(n371), .CK(CLK), .RN(n424), .Q(min_reg[4]), 
        .QN(n381) );
  DFFSX1 \min_work_reg_reg[2]  ( .D(n321), .CK(CLK), .SN(n427), .Q(
        min_work_reg[2]), .QN(n382) );
  DFFSX1 \min_work_reg_reg[0]  ( .D(n324), .CK(CLK), .SN(n427), .Q(
        min_work_reg[0]) );
  DFFRX1 \j_seq_reg_reg[4][1]  ( .D(n352), .CK(CLK), .RN(n424), .Q(
        \j_seq_reg[4][1] ) );
  DFFRX1 \j_seq_reg_reg[0][1]  ( .D(n363), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[0][1] ) );
  DFFRX1 \j_seq_reg_reg[1][1]  ( .D(n343), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[1][1] ) );
  DFFSX1 \min_work_reg_reg[1]  ( .D(n322), .CK(CLK), .SN(n427), .Q(
        min_work_reg[1]), .QN(n390) );
  DFFSX1 \min_work_reg_reg[3]  ( .D(n320), .CK(CLK), .SN(n427), .Q(
        min_work_reg[3]), .QN(n383) );
  DFFRX1 \j_seq_reg_reg[5][1]  ( .D(n355), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[5][1] ) );
  DFFRX1 \j_seq_reg_reg[6][0]  ( .D(n359), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[6][0] ) );
  DFFRX2 \current_state_reg[1]  ( .D(n574), .CK(CLK), .RN(n422), .Q(
        current_state[1]), .QN(n54) );
  DFFRX1 \j_seq_reg_reg[4][0]  ( .D(n353), .CK(CLK), .RN(n424), .Q(
        \j_seq_reg[4][0] ) );
  DFFRX1 \j_seq_reg_reg[0][2]  ( .D(n340), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[0][2] ) );
  DFFRX1 \j_seq_reg_reg[0][0]  ( .D(n341), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[0][0] ) );
  DFFRX1 \j_seq_reg_reg[1][2]  ( .D(n342), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[1][2] ) );
  DFFRX1 \j_seq_reg_reg[2][2]  ( .D(n345), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[2][2] ) );
  DFFRX1 \j_seq_reg_reg[2][0]  ( .D(n347), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[2][0] ) );
  DFFRX1 \j_seq_reg_reg[3][2]  ( .D(n348), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[3][2] ) );
  DFFRX1 \counter_reg_reg[0]  ( .D(n379), .CK(CLK), .RN(n422), .Q(N194), .QN(
        N200) );
  DFFSX1 \min_index_reg_reg[2]  ( .D(n366), .CK(CLK), .SN(n427), .Q(N205), 
        .QN(n96) );
  DFFRX1 \min_reg_reg[8]  ( .D(n376), .CK(CLK), .RN(n424), .Q(min_reg[8]), 
        .QN(n384) );
  DFFRX1 \min_reg_reg[6]  ( .D(n369), .CK(CLK), .RN(n424), .Q(min_reg[6]) );
  DFFRX1 \min_reg_reg[3]  ( .D(n372), .CK(CLK), .RN(n424), .Q(min_reg[3]) );
  DFFRX1 \j_seq_reg_reg[6][1]  ( .D(n358), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[6][1] ) );
  DFFRX1 \j_seq_reg_reg[2][1]  ( .D(n346), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[2][1] ) );
  DFFRX1 \j_seq_reg_reg[7][1]  ( .D(n361), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[7][1] ) );
  DFFRX1 \j_seq_reg_reg[3][1]  ( .D(n349), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[3][1] ) );
  DFFRX1 \j_seq_reg_reg[7][0]  ( .D(n362), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[7][0] ) );
  DFFRX1 \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n422), .Q(
        current_state[2]), .QN(n53) );
  DFFSX1 \min_reg_reg[2]  ( .D(n373), .CK(CLK), .SN(n427), .Q(min_reg[2]), 
        .QN(n388) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n422), .Q(
        current_state[0]), .QN(n55) );
  DFFSX1 \min_reg_reg[1]  ( .D(n374), .CK(CLK), .SN(n427), .Q(min_reg[1]), 
        .QN(n389) );
  DFFRX1 \j_seq_reg_reg[4][2]  ( .D(n351), .CK(CLK), .RN(n424), .Q(
        \j_seq_reg[4][2] ) );
  DFFRX1 \j_seq_reg_reg[1][0]  ( .D(n344), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[1][0] ) );
  DFFRX1 \j_seq_reg_reg[5][2]  ( .D(n354), .CK(CLK), .RN(n424), .Q(
        \j_seq_reg[5][2] ) );
  DFFRX1 \j_seq_reg_reg[5][0]  ( .D(n356), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[5][0] ) );
  DFFRX1 \j_seq_reg_reg[6][2]  ( .D(n357), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[6][2] ) );
  DFFRX1 \j_seq_reg_reg[7][2]  ( .D(n360), .CK(CLK), .RN(n425), .Q(
        \j_seq_reg[7][2] ) );
  DFFRX1 \j_seq_reg_reg[3][0]  ( .D(n350), .CK(CLK), .RN(n426), .Q(
        \j_seq_reg[3][0] ) );
  DFFRX4 \counter_reg_reg[2]  ( .D(n377), .CK(CLK), .RN(n422), .Q(N196), .QN(
        n396) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n311), .CK(CLK), .RN(n426), .Q(n606), .QN(
        n101) );
  DFFSX1 \min_reg_reg[0]  ( .D(n375), .CK(CLK), .SN(n551), .Q(min_reg[0]) );
  DFFSXL \min_work_reg_reg[7]  ( .D(n316), .CK(CLK), .SN(n427), .Q(
        min_work_reg[7]), .QN(n542) );
  DFFRX1 \min_reg_reg[7]  ( .D(n368), .CK(CLK), .RN(n424), .Q(min_reg[7]) );
  DFFRX1 \ref_index_reg_reg[1]  ( .D(N307), .CK(CLK), .RN(n422), .Q(N198), 
        .QN(n463) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n312), .CK(CLK), .RN(n426), .QN(n102) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n313), .CK(CLK), .RN(n426), .QN(n103) );
  DFFRX1 \MatchCount_reg[0]  ( .D(n314), .CK(CLK), .RN(n426), .QN(n104) );
  DFFRX2 \ref_index_reg_reg[2]  ( .D(N308), .CK(CLK), .RN(n422), .Q(N199), 
        .QN(n465) );
  DFFSX2 \min_index_reg_reg[1]  ( .D(n365), .CK(CLK), .SN(n551), .Q(N204), 
        .QN(n503) );
  DFFRX2 \counter_reg_reg[1]  ( .D(n378), .CK(CLK), .RN(n422), .Q(n445), .QN(
        n64) );
  DFFSX2 \min_index_reg_reg[0]  ( .D(n364), .CK(CLK), .SN(n427), .Q(N203), 
        .QN(n502) );
  NOR2X1 U366 ( .A(n442), .B(N196), .Y(n397) );
  NOR2X1 U367 ( .A(n396), .B(n443), .Y(n398) );
  INVX3 U368 ( .A(W[0]), .Y(n444) );
  NOR2X1 U369 ( .A(n444), .B(W[1]), .Y(n438) );
  OAI21X2 U370 ( .A0(N198), .A1(n595), .B0(n183), .Y(N207) );
  INVX16 U371 ( .A(n395), .Y(J[2]) );
  NOR2X2 U372 ( .A(n397), .B(n398), .Y(n395) );
  AO22XL U373 ( .A0(n418), .A1(min_work_reg[7]), .B0(n573), .B1(min_reg[7]), 
        .Y(n316) );
  OAI22X2 U374 ( .A0(min_reg[9]), .A1(n386), .B0(n543), .B1(n535), .Y(
        min_work_lt_flag) );
  CLKAND2X12 U375 ( .A(min_work_reg[9]), .B(Valid), .Y(MinCost[9]) );
  INVX16 U376 ( .A(n104), .Y(MatchCount[0]) );
  INVX16 U377 ( .A(n103), .Y(MatchCount[1]) );
  INVX16 U378 ( .A(n102), .Y(MatchCount[2]) );
  CLKAND2X12 U379 ( .A(min_work_reg[8]), .B(Valid), .Y(MinCost[8]) );
  CLKAND2X12 U380 ( .A(min_work_reg[7]), .B(Valid), .Y(MinCost[7]) );
  CLKAND2X12 U381 ( .A(min_work_reg[6]), .B(Valid), .Y(MinCost[6]) );
  CLKAND2X12 U382 ( .A(min_work_reg[5]), .B(Valid), .Y(MinCost[5]) );
  CLKAND2X12 U383 ( .A(min_work_reg[4]), .B(Valid), .Y(MinCost[4]) );
  CLKAND2X12 U384 ( .A(min_work_reg[3]), .B(Valid), .Y(MinCost[3]) );
  CLKAND2X12 U385 ( .A(min_work_reg[2]), .B(Valid), .Y(MinCost[2]) );
  BUFX12 U386 ( .A(n606), .Y(MatchCount[3]) );
  CLKAND2X12 U387 ( .A(min_work_reg[1]), .B(Valid), .Y(MinCost[1]) );
  CLKAND2X12 U388 ( .A(min_work_reg[0]), .B(Valid), .Y(MinCost[0]) );
  OAI22X1 U389 ( .A0(n465), .A1(n454), .B0(N199), .B1(n453), .Y(
        ref_point_val[1]) );
  INVX16 U390 ( .A(n64), .Y(W[1]) );
  INVX12 U391 ( .A(n579), .Y(J[0]) );
  NOR2X1 U392 ( .A(W[0]), .B(n445), .Y(n399) );
  NOR2X1 U393 ( .A(W[0]), .B(n445), .Y(n400) );
  NAND3BXL U394 ( .AN(min_work_lt_flag), .B(n537), .C(n536), .Y(n540) );
  AO22X1 U395 ( .A0(\j_seq_reg[1][0] ), .A1(n169), .B0(\j_seq_reg[0][0] ), 
        .B1(n399), .Y(n429) );
  AO22X1 U396 ( .A0(\j_seq_reg[5][0] ), .A1(n438), .B0(\j_seq_reg[4][0] ), 
        .B1(n400), .Y(n428) );
  AO22X1 U397 ( .A0(\j_seq_reg[5][1] ), .A1(n438), .B0(\j_seq_reg[4][1] ), 
        .B1(n399), .Y(n432) );
  NOR2X1 U398 ( .A(W[0]), .B(n445), .Y(n437) );
  BUFX16 U399 ( .A(N194), .Y(W[0]) );
  NOR2X2 U400 ( .A(n64), .B(W[0]), .Y(n441) );
  NOR3X1 U401 ( .A(n594), .B(n595), .C(n586), .Y(n232) );
  OAI22X1 U402 ( .A0(n566), .A1(n402), .B0(n395), .B1(n413), .Y(n138) );
  OAI22X1 U403 ( .A0(n395), .A1(n566), .B0(n413), .B1(n402), .Y(n136) );
  OAI22X1 U404 ( .A0(n580), .A1(n566), .B0(n413), .B1(n401), .Y(n156) );
  OAI22X1 U405 ( .A0(n579), .A1(n566), .B0(n413), .B1(n403), .Y(n144) );
  OAI22X1 U406 ( .A0(n566), .A1(n401), .B0(n580), .B1(n413), .Y(n157) );
  OAI22X1 U407 ( .A0(n566), .A1(n403), .B0(n579), .B1(n413), .Y(n145) );
  AOI21XL U408 ( .A0(J[1]), .A1(n389), .B0(n605), .Y(n545) );
  NOR3X1 U409 ( .A(N207), .B(n595), .C(n411), .Y(n137) );
  NOR3X1 U410 ( .A(N207), .B(n419), .C(n411), .Y(n151) );
  CLKINVX1 U411 ( .A(n412), .Y(n567) );
  NOR2X2 U412 ( .A(n64), .B(n444), .Y(n440) );
  NAND4XL U413 ( .A(n305), .B(n306), .C(W[0]), .D(n419), .Y(n310) );
  AO22XL U414 ( .A0(\j_seq_reg[1][1] ), .A1(n438), .B0(\j_seq_reg[0][1] ), 
        .B1(n400), .Y(n433) );
  OAI211XL U415 ( .A0(n416), .A1(n273), .B0(W[0]), .C0(n554), .Y(n272) );
  CLKBUFX3 U416 ( .A(N197), .Y(n419) );
  AND2XL U417 ( .A(J[2]), .B(n388), .Y(n547) );
  XNOR2XL U418 ( .A(n483), .B(W[0]), .Y(n276) );
  CLKINVX1 U419 ( .A(n240), .Y(n557) );
  CLKINVX1 U420 ( .A(n226), .Y(n558) );
  OAI221XL U421 ( .A0(n181), .A1(n567), .B0(n182), .B1(n575), .C0(n165), .Y(
        n179) );
  NOR2X1 U422 ( .A(n54), .B(n115), .Y(n114) );
  NOR2X1 U423 ( .A(n115), .B(current_state[1]), .Y(n118) );
  CLKBUFX3 U424 ( .A(n108), .Y(n416) );
  NOR3X1 U425 ( .A(n502), .B(n409), .C(n503), .Y(n188) );
  NOR3X1 U426 ( .A(N203), .B(n409), .C(n503), .Y(n174) );
  NOR3X1 U427 ( .A(n503), .B(N203), .C(n96), .Y(n233) );
  NOR3X1 U428 ( .A(N204), .B(n409), .C(n502), .Y(n153) );
  NOR3X1 U429 ( .A(N204), .B(n409), .C(N203), .Y(n141) );
  NOR3X1 U430 ( .A(n503), .B(n502), .C(n96), .Y(n249) );
  NOR3X1 U431 ( .A(n502), .B(N204), .C(n96), .Y(n219) );
  NOR3X1 U432 ( .A(N203), .B(N204), .C(n96), .Y(n204) );
  CLKBUFX3 U433 ( .A(n111), .Y(n415) );
  CLKINVX1 U434 ( .A(RST), .Y(n551) );
  CLKINVX1 U435 ( .A(n232), .Y(n584) );
  CLKINVX1 U436 ( .A(N201), .Y(n483) );
  INVX3 U437 ( .A(n418), .Y(n573) );
  CLKINVX1 U438 ( .A(n138), .Y(n561) );
  CLKINVX1 U439 ( .A(n136), .Y(n560) );
  CLKINVX1 U440 ( .A(n145), .Y(n563) );
  CLKINVX1 U441 ( .A(n157), .Y(n564) );
  CLKINVX1 U442 ( .A(n156), .Y(n565) );
  CLKINVX1 U443 ( .A(n144), .Y(n562) );
  CLKINVX1 U444 ( .A(n120), .Y(n581) );
  INVX4 U445 ( .A(n414), .Y(n566) );
  CLKINVX1 U446 ( .A(n247), .Y(n585) );
  CLKINVX1 U447 ( .A(n151), .Y(n590) );
  CLKINVX1 U448 ( .A(n186), .Y(n588) );
  CLKINVX1 U449 ( .A(n137), .Y(n587) );
  CLKINVX1 U450 ( .A(n172), .Y(n589) );
  NAND2X1 U451 ( .A(n575), .B(n413), .Y(n299) );
  CLKINVX1 U452 ( .A(n218), .Y(n583) );
  CLKINVX1 U453 ( .A(n203), .Y(n582) );
  CLKINVX1 U454 ( .A(n417), .Y(n568) );
  NAND3X1 U455 ( .A(n576), .B(n571), .C(n567), .Y(n308) );
  CLKBUFX3 U456 ( .A(n551), .Y(n427) );
  CLKBUFX3 U457 ( .A(n551), .Y(n426) );
  CLKBUFX3 U458 ( .A(n551), .Y(n425) );
  CLKBUFX3 U459 ( .A(n426), .Y(n424) );
  CLKBUFX3 U460 ( .A(n425), .Y(n423) );
  CLKBUFX3 U461 ( .A(n551), .Y(n422) );
  OAI31X1 U462 ( .A0(n301), .A1(N211), .A2(n302), .B0(n578), .Y(n109) );
  AO21X1 U463 ( .A0(n580), .A1(N210), .B0(n579), .Y(n301) );
  CLKINVX1 U464 ( .A(n303), .Y(n578) );
  CLKBUFX3 U465 ( .A(n132), .Y(n418) );
  NAND2XL U466 ( .A(min_work_lt_flag), .B(n114), .Y(n132) );
  AOI221X1 U467 ( .A0(n581), .A1(n416), .B0(n109), .B1(n273), .C0(n114), .Y(
        n293) );
  OAI32X1 U468 ( .A0(n302), .A1(N210), .A2(n580), .B0(n395), .B1(N209), .Y(
        n303) );
  NAND2BX1 U469 ( .AN(n400), .B(n262), .Y(N201) );
  OAI211X1 U470 ( .A0(n444), .A1(n553), .B0(n300), .C0(n293), .Y(n379) );
  OAI21XL U471 ( .A0(n415), .A1(n296), .B0(n444), .Y(n300) );
  AO21X1 U472 ( .A0(min_work_eq_flag), .A1(n114), .B0(n573), .Y(n130) );
  CLKINVX1 U473 ( .A(n274), .Y(n554) );
  CLKINVX1 U474 ( .A(n282), .Y(n553) );
  AND2X1 U475 ( .A(N209), .B(n395), .Y(n302) );
  OR2X1 U476 ( .A(n283), .B(n575), .Y(n284) );
  AOI211XL U477 ( .A0(ref_point_val[1]), .A1(n580), .B0(n579), .C0(
        ref_point_val[0]), .Y(n291) );
  INVX3 U478 ( .A(J[1]), .Y(n580) );
  CLKINVX1 U479 ( .A(N202), .Y(n482) );
  INVXL U480 ( .A(ref_point_val[1]), .Y(n592) );
  CLKINVX1 U481 ( .A(ref_point_val[2]), .Y(n593) );
  NOR2XL U482 ( .A(ref_point_val[1]), .B(n580), .Y(n292) );
  INVXL U483 ( .A(ref_point_val[0]), .Y(n591) );
  NAND2X2 U484 ( .A(n416), .B(n258), .Y(n147) );
  OAI22XL U485 ( .A0(n120), .A1(n591), .B0(n581), .B1(n404), .Y(n258) );
  NAND2X2 U486 ( .A(n416), .B(n268), .Y(n159) );
  OAI22XL U487 ( .A0(n120), .A1(n592), .B0(n581), .B1(n405), .Y(n268) );
  NAND2X2 U488 ( .A(n416), .B(n267), .Y(n160) );
  OAI22XL U489 ( .A0(n120), .A1(n405), .B0(n581), .B1(n592), .Y(n267) );
  NAND2X2 U490 ( .A(n416), .B(n250), .Y(n140) );
  OAI22XL U491 ( .A0(n120), .A1(n593), .B0(n581), .B1(n406), .Y(n250) );
  NAND2X2 U492 ( .A(n416), .B(n251), .Y(n142) );
  OAI22XL U493 ( .A0(n120), .A1(n406), .B0(n581), .B1(n593), .Y(n251) );
  INVX3 U494 ( .A(n419), .Y(n595) );
  CLKINVX1 U495 ( .A(n419), .Y(n464) );
  NAND4X2 U496 ( .A(n304), .B(n305), .C(n306), .D(n263), .Y(n120) );
  XNOR2XL U497 ( .A(n595), .B(W[0]), .Y(n304) );
  INVX3 U498 ( .A(N207), .Y(n594) );
  INVX3 U499 ( .A(n411), .Y(n586) );
  NAND2X2 U500 ( .A(n416), .B(n259), .Y(n148) );
  OAI22XL U501 ( .A0(n120), .A1(n404), .B0(n581), .B1(n591), .Y(n259) );
  CLKINVX1 U502 ( .A(n195), .Y(n556) );
  OAI211X1 U503 ( .A0(n196), .A1(n567), .B0(n197), .C0(n165), .Y(n195) );
  OAI2BB1X1 U504 ( .A0N(n198), .A1N(n598), .B0(n416), .Y(n197) );
  NOR2X1 U505 ( .A(n199), .B(n186), .Y(n196) );
  NOR2X1 U506 ( .A(n262), .B(W[2]), .Y(n199) );
  CLKINVX1 U507 ( .A(n155), .Y(n570) );
  CLKINVX1 U508 ( .A(n209), .Y(n559) );
  CLKINVX1 U509 ( .A(n265), .Y(n569) );
  NAND2X1 U510 ( .A(n568), .B(n265), .Y(n135) );
  NAND2X1 U511 ( .A(n568), .B(n155), .Y(n150) );
  NAND2X1 U512 ( .A(n568), .B(n209), .Y(n206) );
  NOR2XL U513 ( .A(n483), .B(W[0]), .Y(n279) );
  CLKBUFX3 U514 ( .A(n133), .Y(n414) );
  NOR2X1 U515 ( .A(n107), .B(n567), .Y(n133) );
  CLKBUFX3 U516 ( .A(n248), .Y(n413) );
  NAND2X1 U517 ( .A(n412), .B(n107), .Y(n248) );
  NOR3X2 U518 ( .A(n594), .B(n419), .C(n586), .Y(n247) );
  NOR3X2 U519 ( .A(n411), .B(n419), .C(n594), .Y(n186) );
  NOR3X2 U520 ( .A(N207), .B(n419), .C(n586), .Y(n218) );
  NOR3X2 U521 ( .A(N207), .B(n595), .C(n586), .Y(n203) );
  NOR3X2 U522 ( .A(n411), .B(n595), .C(n594), .Y(n172) );
  CLKINVX1 U523 ( .A(n179), .Y(n555) );
  AND3X2 U524 ( .A(n260), .B(n261), .C(n165), .Y(n244) );
  OAI2BB1X1 U525 ( .A0N(n263), .A1N(n596), .B0(n416), .Y(n260) );
  OAI21XL U526 ( .A0(n112), .A1(n247), .B0(n412), .Y(n261) );
  NAND2X1 U527 ( .A(n568), .B(n179), .Y(n171) );
  OR2X1 U528 ( .A(n299), .B(n273), .Y(n296) );
  NOR2X2 U529 ( .A(n118), .B(n417), .Y(n165) );
  CLKINVX1 U530 ( .A(n141), .Y(n600) );
  CLKINVX1 U531 ( .A(n153), .Y(n603) );
  CLKINVX1 U532 ( .A(n204), .Y(n602) );
  CLKINVX1 U533 ( .A(n174), .Y(n599) );
  CLKINVX1 U534 ( .A(n233), .Y(n597) );
  CLKINVX1 U535 ( .A(n219), .Y(n601) );
  CLKINVX1 U536 ( .A(n188), .Y(n598) );
  CLKBUFX3 U537 ( .A(n162), .Y(n417) );
  NOR3X1 U538 ( .A(n416), .B(n118), .C(n412), .Y(n162) );
  CLKINVX1 U539 ( .A(n409), .Y(n501) );
  INVX3 U540 ( .A(n416), .Y(n575) );
  INVX3 U541 ( .A(n273), .Y(n576) );
  CLKINVX1 U542 ( .A(n114), .Y(n572) );
  CLKINVX1 U543 ( .A(n249), .Y(n596) );
  INVX3 U544 ( .A(n118), .Y(n571) );
  AOI221XL U545 ( .A0(\j_seq_reg[2][2] ), .A1(n441), .B0(\j_seq_reg[3][2] ), 
        .B1(n440), .C0(n439), .Y(n442) );
  AOI221XL U546 ( .A0(\j_seq_reg[6][0] ), .A1(n441), .B0(\j_seq_reg[7][0] ), 
        .B1(n440), .C0(n428), .Y(n431) );
  AOI221XL U547 ( .A0(\j_seq_reg[2][0] ), .A1(n441), .B0(\j_seq_reg[3][0] ), 
        .B1(n440), .C0(n429), .Y(n430) );
  CLKINVX1 U548 ( .A(n537), .Y(n543) );
  CLKINVX1 U549 ( .A(n523), .Y(n544) );
  NAND2X1 U550 ( .A(W[1]), .B(W[0]), .Y(n262) );
  OAI211X1 U551 ( .A0(current_state[0]), .A1(n54), .B0(n280), .C0(n281), .Y(
        n274) );
  NOR3BXL U552 ( .AN(n413), .B(n282), .C(n415), .Y(n281) );
  OAI32XL U553 ( .A0(n103), .A1(MatchCount[2]), .A2(n127), .B0(n128), .B1(n102), .Y(n312) );
  NAND3BXL U554 ( .AN(min_work_lt_flag), .B(n130), .C(MatchCount[0]), .Y(n127)
         );
  OAI21XL U555 ( .A0(n125), .A1(n101), .B0(n126), .Y(n311) );
  OA21XL U556 ( .A0(min_work_lt_flag), .A1(MatchCount[2]), .B0(n128), .Y(n125)
         );
  NAND4BXL U557 ( .AN(n127), .B(MatchCount[2]), .C(MatchCount[1]), .D(n101), 
        .Y(n126) );
  OAI22XL U558 ( .A0(n129), .A1(n103), .B0(MatchCount[1]), .B1(n127), .Y(n313)
         );
  BUFX16 U559 ( .A(n607), .Y(Valid) );
  NOR2X1 U560 ( .A(n553), .B(current_state[0]), .Y(n607) );
  NAND4X2 U561 ( .A(n288), .B(n280), .C(n553), .D(n413), .Y(n283) );
  NAND2X1 U562 ( .A(current_state[0]), .B(current_state[1]), .Y(n288) );
  OAI211XL U563 ( .A0(n396), .A1(n553), .B0(n293), .C0(n294), .Y(n377) );
  AOI22X1 U564 ( .A0(n415), .A1(n295), .B0(N202), .B1(n296), .Y(n294) );
  AO21X1 U565 ( .A0(n262), .A1(W[2]), .B0(n199), .Y(n295) );
  OAI221XL U566 ( .A0(n552), .A1(n115), .B0(n576), .B1(n109), .C0(n116), .Y(
        next_state[0]) );
  CLKINVX1 U567 ( .A(n105), .Y(n552) );
  AOI211X1 U568 ( .A0(n117), .A1(n54), .B0(n118), .C0(n412), .Y(n116) );
  OAI22XL U569 ( .A0(current_state[0]), .A1(n120), .B0(n112), .B1(n55), .Y(
        n117) );
  OAI21XL U570 ( .A0(n554), .A1(n502), .B0(n272), .Y(n364) );
  OAI221XL U571 ( .A0(n105), .A1(n572), .B0(n577), .B1(n576), .C0(n106), .Y(
        next_state[2]) );
  AOI31X1 U572 ( .A0(n107), .A1(n54), .A2(current_state[2]), .B0(n416), .Y(
        n106) );
  CLKINVX1 U573 ( .A(n109), .Y(n577) );
  OAI211X1 U574 ( .A0(n579), .A1(n284), .B0(n572), .C0(n287), .Y(n375) );
  AOI22X1 U575 ( .A0(N631), .A1(n415), .B0(min_reg[0]), .B1(n283), .Y(n287) );
  OAI211X1 U576 ( .A0(n395), .A1(n284), .B0(n572), .C0(n285), .Y(n373) );
  AOI22X1 U577 ( .A0(N633), .A1(n415), .B0(min_reg[2]), .B1(n283), .Y(n285) );
  OAI211X1 U578 ( .A0(n580), .A1(n284), .B0(n572), .C0(n286), .Y(n374) );
  AOI22X1 U579 ( .A0(N632), .A1(n415), .B0(min_reg[1]), .B1(n283), .Y(n286) );
  OAI211X1 U580 ( .A0(n297), .A1(n64), .B0(n293), .C0(n298), .Y(n378) );
  AOI221XL U581 ( .A0(n273), .A1(W[0]), .B0(n415), .B1(n444), .C0(n282), .Y(
        n297) );
  AOI222XL U582 ( .A0(n299), .A1(N201), .B0(n169), .B1(n415), .C0(n399), .C1(
        n273), .Y(n298) );
  NOR2X1 U583 ( .A(n54), .B(n53), .Y(n282) );
  OAI21XL U584 ( .A0(n104), .A1(n130), .B0(n131), .Y(n314) );
  OAI21XL U585 ( .A0(min_work_lt_flag), .A1(n104), .B0(n130), .Y(n131) );
  OA21XL U586 ( .A0(min_work_lt_flag), .A1(MatchCount[0]), .B0(n130), .Y(n129)
         );
  OA21XL U587 ( .A0(min_work_lt_flag), .A1(MatchCount[1]), .B0(n129), .Y(n128)
         );
  AO21X1 U588 ( .A0(N216), .A1(n289), .B0(n575), .Y(n280) );
  OAI21XL U589 ( .A0(ref_point_val[2]), .A1(n395), .B0(n290), .Y(n289) );
  OAI22XL U590 ( .A0(J[2]), .A1(n593), .B0(n291), .B1(n292), .Y(n290) );
  AO22X1 U591 ( .A0(n283), .A1(min_reg[9]), .B0(N640), .B1(n415), .Y(n367) );
  CLKINVX1 U592 ( .A(n110), .Y(n574) );
  AOI211X1 U593 ( .A0(n415), .A1(n112), .B0(n113), .C0(n114), .Y(n110) );
  NOR3X1 U594 ( .A(n54), .B(current_state[2]), .C(n109), .Y(n113) );
  AO22X1 U595 ( .A0(n274), .A1(n409), .B0(n554), .B1(n277), .Y(n366) );
  OAI22XL U596 ( .A0(n396), .A1(n575), .B0(n576), .B1(n278), .Y(n277) );
  XNOR2X1 U597 ( .A(N202), .B(n279), .Y(n278) );
  AO22X1 U598 ( .A0(n274), .A1(N204), .B0(n554), .B1(n275), .Y(n365) );
  OAI22XL U599 ( .A0(n276), .A1(n576), .B0(n64), .B1(n575), .Y(n275) );
  AO22X1 U600 ( .A0(n283), .A1(min_reg[7]), .B0(N638), .B1(n415), .Y(n368) );
  AO22X1 U601 ( .A0(n283), .A1(min_reg[8]), .B0(N639), .B1(n415), .Y(n376) );
  OAI21X2 U602 ( .A0(n399), .A1(n396), .B0(n271), .Y(N202) );
  BUFX16 U603 ( .A(N196), .Y(W[2]) );
  NAND2XL U604 ( .A(n400), .B(n396), .Y(n271) );
  OAI2BB2XL U605 ( .B0(n243), .B1(n244), .A0N(n244), .A1N(\j_seq_reg[7][2] ), 
        .Y(n360) );
  AOI211X1 U606 ( .A0(\j_seq_reg[7][2] ), .A1(n417), .B0(n245), .C0(n246), .Y(
        n243) );
  OAI221XL U607 ( .A0(n249), .A1(n142), .B0(n140), .B1(n596), .C0(n571), .Y(
        n245) );
  OAI22XL U608 ( .A0(n561), .A1(n585), .B0(n247), .B1(n560), .Y(n246) );
  OAI2BB2XL U609 ( .B0(n229), .B1(n557), .A0N(n557), .A1N(\j_seq_reg[6][2] ), 
        .Y(n357) );
  AOI211X1 U610 ( .A0(\j_seq_reg[6][2] ), .A1(n417), .B0(n230), .C0(n231), .Y(
        n229) );
  OAI221XL U611 ( .A0(n233), .A1(n142), .B0(n140), .B1(n597), .C0(n571), .Y(
        n230) );
  OAI22XL U612 ( .A0(n561), .A1(n584), .B0(n232), .B1(n560), .Y(n231) );
  OAI2BB2XL U613 ( .B0(n555), .B1(n170), .A0N(\j_seq_reg[2][2] ), .A1N(n171), 
        .Y(n345) );
  AOI221XL U614 ( .A0(n136), .A1(n589), .B0(n172), .B1(n138), .C0(n173), .Y(
        n170) );
  OAI22XL U615 ( .A0(n140), .A1(n599), .B0(n174), .B1(n142), .Y(n173) );
  OAI21XL U616 ( .A0(n556), .A1(n184), .B0(n185), .Y(n348) );
  OAI21XL U617 ( .A0(n556), .A1(n417), .B0(\j_seq_reg[3][2] ), .Y(n185) );
  AOI221XL U618 ( .A0(n136), .A1(n588), .B0(n186), .B1(n138), .C0(n187), .Y(
        n184) );
  OAI22XL U619 ( .A0(n140), .A1(n598), .B0(n188), .B1(n142), .Y(n187) );
  OAI2BB2XL U620 ( .B0(n215), .B1(n558), .A0N(n558), .A1N(\j_seq_reg[5][2] ), 
        .Y(n354) );
  AOI211X1 U621 ( .A0(\j_seq_reg[5][2] ), .A1(n417), .B0(n216), .C0(n217), .Y(
        n215) );
  OAI221XL U622 ( .A0(n219), .A1(n142), .B0(n140), .B1(n601), .C0(n571), .Y(
        n216) );
  OAI22XL U623 ( .A0(n561), .A1(n583), .B0(n218), .B1(n560), .Y(n217) );
  OAI2BB2XL U624 ( .B0(n570), .B1(n149), .A0N(\j_seq_reg[1][2] ), .A1N(n150), 
        .Y(n342) );
  AOI221XL U625 ( .A0(n136), .A1(n590), .B0(n151), .B1(n138), .C0(n152), .Y(
        n149) );
  OAI22XL U626 ( .A0(n140), .A1(n603), .B0(n153), .B1(n142), .Y(n152) );
  OAI2BB2XL U627 ( .B0(n200), .B1(n559), .A0N(n559), .A1N(\j_seq_reg[4][2] ), 
        .Y(n351) );
  AOI211X1 U628 ( .A0(\j_seq_reg[4][2] ), .A1(n417), .B0(n201), .C0(n202), .Y(
        n200) );
  OAI221XL U629 ( .A0(n204), .A1(n142), .B0(n140), .B1(n602), .C0(n571), .Y(
        n201) );
  OAI22XL U630 ( .A0(n561), .A1(n582), .B0(n203), .B1(n560), .Y(n202) );
  OAI2BB2XL U631 ( .B0(n569), .B1(n134), .A0N(\j_seq_reg[0][2] ), .A1N(n135), 
        .Y(n340) );
  AOI221XL U632 ( .A0(n136), .A1(n587), .B0(n137), .B1(n138), .C0(n139), .Y(
        n134) );
  OAI22XL U633 ( .A0(n600), .A1(n140), .B0(n141), .B1(n142), .Y(n139) );
  AO22X1 U634 ( .A0(n418), .A1(min_work_reg[0]), .B0(n573), .B1(min_reg[0]), 
        .Y(n324) );
  AO22X1 U635 ( .A0(n418), .A1(min_work_reg[1]), .B0(n573), .B1(min_reg[1]), 
        .Y(n322) );
  AO22X1 U636 ( .A0(n418), .A1(min_work_reg[2]), .B0(n573), .B1(min_reg[2]), 
        .Y(n321) );
  AO22X1 U637 ( .A0(n418), .A1(min_work_reg[8]), .B0(n573), .B1(min_reg[8]), 
        .Y(n315) );
  AO22X1 U638 ( .A0(n418), .A1(min_work_reg[3]), .B0(n573), .B1(min_reg[3]), 
        .Y(n320) );
  AO22X1 U639 ( .A0(n418), .A1(min_work_reg[6]), .B0(n573), .B1(min_reg[6]), 
        .Y(n317) );
  AO22X1 U640 ( .A0(n418), .A1(min_work_reg[9]), .B0(n573), .B1(min_reg[9]), 
        .Y(n323) );
  AO22X1 U641 ( .A0(n418), .A1(min_work_reg[4]), .B0(n573), .B1(min_reg[4]), 
        .Y(n319) );
  AO22X1 U642 ( .A0(n418), .A1(min_work_reg[5]), .B0(n573), .B1(min_reg[5]), 
        .Y(n318) );
  AO22X1 U643 ( .A0(n283), .A1(min_reg[6]), .B0(N637), .B1(n415), .Y(n369) );
  AO22X1 U644 ( .A0(n283), .A1(min_reg[5]), .B0(N636), .B1(n415), .Y(n370) );
  AO22X1 U645 ( .A0(n283), .A1(min_reg[4]), .B0(N635), .B1(n415), .Y(n371) );
  AO22X1 U646 ( .A0(n283), .A1(min_reg[3]), .B0(N634), .B1(n415), .Y(n372) );
  OAI2BB2XL U647 ( .B0(n569), .B1(n264), .A0N(\j_seq_reg[0][1] ), .A1N(n135), 
        .Y(n363) );
  AOI221XL U648 ( .A0(n156), .A1(n587), .B0(n137), .B1(n157), .C0(n266), .Y(
        n264) );
  OAI22XL U649 ( .A0(n600), .A1(n159), .B0(n141), .B1(n160), .Y(n266) );
  OAI2BB2XL U650 ( .B0(n570), .B1(n154), .A0N(\j_seq_reg[1][1] ), .A1N(n150), 
        .Y(n343) );
  AOI221XL U651 ( .A0(n156), .A1(n590), .B0(n151), .B1(n157), .C0(n158), .Y(
        n154) );
  OAI22XL U652 ( .A0(n603), .A1(n159), .B0(n153), .B1(n160), .Y(n158) );
  OAI2BB2XL U653 ( .B0(n559), .B1(n205), .A0N(\j_seq_reg[4][1] ), .A1N(n206), 
        .Y(n352) );
  AOI221XL U654 ( .A0(n156), .A1(n582), .B0(n203), .B1(n157), .C0(n207), .Y(
        n205) );
  OAI22XL U655 ( .A0(n159), .A1(n602), .B0(n204), .B1(n160), .Y(n207) );
  OA22X1 U656 ( .A0(n586), .A1(n511), .B0(n411), .B1(n510), .Y(n401) );
  OA22X1 U657 ( .A0(n519), .A1(n586), .B0(n411), .B1(n518), .Y(n402) );
  OA22X1 U658 ( .A0(n586), .A1(n507), .B0(n411), .B1(n506), .Y(n403) );
  OAI2BB2XL U659 ( .B0(n556), .B1(n192), .A0N(n556), .A1N(\j_seq_reg[3][0] ), 
        .Y(n350) );
  AOI211X1 U660 ( .A0(\j_seq_reg[3][0] ), .A1(n417), .B0(n193), .C0(n194), .Y(
        n192) );
  OAI221XL U661 ( .A0(n188), .A1(n148), .B0(n147), .B1(n598), .C0(n571), .Y(
        n193) );
  OAI22XL U662 ( .A0(n563), .A1(n588), .B0(n186), .B1(n562), .Y(n194) );
  OAI2BB2XL U663 ( .B0(n244), .B1(n255), .A0N(n244), .A1N(\j_seq_reg[7][0] ), 
        .Y(n362) );
  AOI211X1 U664 ( .A0(\j_seq_reg[7][0] ), .A1(n417), .B0(n256), .C0(n257), .Y(
        n255) );
  OAI221XL U665 ( .A0(n249), .A1(n148), .B0(n147), .B1(n596), .C0(n571), .Y(
        n256) );
  OAI22XL U666 ( .A0(n563), .A1(n585), .B0(n247), .B1(n562), .Y(n257) );
  NAND2X1 U667 ( .A(N198), .B(n595), .Y(n183) );
  OAI2BB2XL U668 ( .B0(n556), .B1(n189), .A0N(n556), .A1N(\j_seq_reg[3][1] ), 
        .Y(n349) );
  AOI211X1 U669 ( .A0(\j_seq_reg[3][1] ), .A1(n417), .B0(n190), .C0(n191), .Y(
        n189) );
  OAI22XL U670 ( .A0(n564), .A1(n588), .B0(n186), .B1(n565), .Y(n191) );
  OAI221XL U671 ( .A0(n188), .A1(n160), .B0(n159), .B1(n598), .C0(n571), .Y(
        n190) );
  OAI2BB2XL U672 ( .B0(n557), .B1(n234), .A0N(n557), .A1N(\j_seq_reg[6][1] ), 
        .Y(n358) );
  AOI211X1 U673 ( .A0(\j_seq_reg[6][1] ), .A1(n417), .B0(n235), .C0(n236), .Y(
        n234) );
  OAI22XL U674 ( .A0(n564), .A1(n584), .B0(n232), .B1(n565), .Y(n236) );
  OAI221XL U675 ( .A0(n233), .A1(n160), .B0(n159), .B1(n597), .C0(n571), .Y(
        n235) );
  OAI2BB2XL U676 ( .B0(n558), .B1(n223), .A0N(n558), .A1N(\j_seq_reg[5][0] ), 
        .Y(n356) );
  AOI211X1 U677 ( .A0(\j_seq_reg[5][0] ), .A1(n417), .B0(n224), .C0(n225), .Y(
        n223) );
  OAI221XL U678 ( .A0(n219), .A1(n148), .B0(n147), .B1(n601), .C0(n571), .Y(
        n224) );
  OAI22XL U679 ( .A0(n563), .A1(n583), .B0(n218), .B1(n562), .Y(n225) );
  OAI2BB2XL U680 ( .B0(n555), .B1(n175), .A0N(n555), .A1N(\j_seq_reg[2][1] ), 
        .Y(n346) );
  AOI211X1 U681 ( .A0(\j_seq_reg[2][1] ), .A1(n417), .B0(n176), .C0(n177), .Y(
        n175) );
  OAI22XL U682 ( .A0(n564), .A1(n589), .B0(n172), .B1(n565), .Y(n177) );
  OAI221XL U683 ( .A0(n174), .A1(n160), .B0(n159), .B1(n599), .C0(n571), .Y(
        n176) );
  OAI21XL U684 ( .A0(n558), .A1(n220), .B0(n221), .Y(n355) );
  OAI21XL U685 ( .A0(n558), .A1(n417), .B0(\j_seq_reg[5][1] ), .Y(n221) );
  AOI221XL U686 ( .A0(n156), .A1(n583), .B0(n218), .B1(n157), .C0(n222), .Y(
        n220) );
  OAI22XL U687 ( .A0(n159), .A1(n601), .B0(n219), .B1(n160), .Y(n222) );
  OAI2BB2XL U688 ( .B0(n570), .B1(n161), .A0N(n570), .A1N(\j_seq_reg[1][0] ), 
        .Y(n344) );
  AOI211X1 U689 ( .A0(n417), .A1(\j_seq_reg[1][0] ), .B0(n163), .C0(n164), .Y(
        n161) );
  OAI221XL U690 ( .A0(n153), .A1(n148), .B0(n147), .B1(n603), .C0(n571), .Y(
        n163) );
  OAI22XL U691 ( .A0(n563), .A1(n590), .B0(n151), .B1(n562), .Y(n164) );
  OAI2BB2XL U692 ( .B0(n244), .B1(n252), .A0N(n244), .A1N(\j_seq_reg[7][1] ), 
        .Y(n361) );
  AOI211X1 U693 ( .A0(\j_seq_reg[7][1] ), .A1(n417), .B0(n253), .C0(n254), .Y(
        n252) );
  OAI22XL U694 ( .A0(n564), .A1(n585), .B0(n247), .B1(n565), .Y(n254) );
  OAI221XL U695 ( .A0(n249), .A1(n160), .B0(n159), .B1(n596), .C0(n571), .Y(
        n253) );
  OAI211X1 U696 ( .A0(n411), .A1(n396), .B0(n309), .C0(n310), .Y(n107) );
  NAND3XL U697 ( .A(n306), .B(n594), .C(n445), .Y(n309) );
  XNOR2X1 U698 ( .A(n396), .B(n586), .Y(n306) );
  NOR2X1 U699 ( .A(N200), .B(n445), .Y(n169) );
  OAI211X1 U700 ( .A0(n575), .A1(n603), .B0(n165), .C0(n166), .Y(n155) );
  AOI32X1 U701 ( .A0(n419), .A1(n465), .A2(n167), .B0(n412), .B1(n168), .Y(
        n166) );
  OAI2BB1XL U702 ( .A0N(n396), .A1N(n169), .B0(n590), .Y(n168) );
  OAI222XL U703 ( .A0(n483), .A1(n576), .B0(n594), .B1(n413), .C0(n463), .C1(
        n308), .Y(N307) );
  OAI222XL U704 ( .A0(n482), .A1(n576), .B0(n586), .B1(n413), .C0(n465), .C1(
        n308), .Y(N308) );
  OAI211X1 U705 ( .A0(n575), .A1(n602), .B0(n165), .C0(n211), .Y(n209) );
  AOI222XL U706 ( .A0(n203), .A1(n412), .B0(n212), .B1(n167), .C0(n213), .C1(
        n400), .Y(n211) );
  NOR2X1 U707 ( .A(n419), .B(n465), .Y(n212) );
  OAI2BB2XL U708 ( .B0(n569), .B1(n143), .A0N(\j_seq_reg[0][0] ), .A1N(n135), 
        .Y(n341) );
  AOI221XL U709 ( .A0(n144), .A1(n587), .B0(n137), .B1(n145), .C0(n146), .Y(
        n143) );
  OAI22XL U710 ( .A0(n600), .A1(n147), .B0(n141), .B1(n148), .Y(n146) );
  OAI2BB2XL U711 ( .B0(n555), .B1(n178), .A0N(\j_seq_reg[2][0] ), .A1N(n171), 
        .Y(n347) );
  AOI221XL U712 ( .A0(n144), .A1(n589), .B0(n172), .B1(n145), .C0(n180), .Y(
        n178) );
  OAI22XL U713 ( .A0(n147), .A1(n599), .B0(n174), .B1(n148), .Y(n180) );
  OAI2BB2XL U714 ( .B0(n559), .B1(n208), .A0N(\j_seq_reg[4][0] ), .A1N(n206), 
        .Y(n353) );
  AOI221XL U715 ( .A0(n144), .A1(n582), .B0(n203), .B1(n145), .C0(n210), .Y(
        n208) );
  OAI22XL U716 ( .A0(n147), .A1(n602), .B0(n204), .B1(n148), .Y(n210) );
  XNOR2X1 U717 ( .A(n64), .B(n594), .Y(n305) );
  OAI211X1 U718 ( .A0(n575), .A1(n600), .B0(n165), .C0(n269), .Y(n265) );
  AOI32X1 U719 ( .A0(n595), .A1(n465), .A2(n167), .B0(n412), .B1(n270), .Y(
        n269) );
  NAND2X1 U720 ( .A(n587), .B(n271), .Y(n270) );
  OA22X1 U721 ( .A0(n501), .A1(n488), .B0(n409), .B1(n487), .Y(n404) );
  OA22X1 U722 ( .A0(n501), .A1(n492), .B0(n409), .B1(n491), .Y(n405) );
  OA22X1 U723 ( .A0(n500), .A1(n501), .B0(n409), .B1(n499), .Y(n406) );
  NOR2X1 U724 ( .A(n463), .B(n595), .Y(n307) );
  NAND2X1 U725 ( .A(n307), .B(n465), .Y(n198) );
  OAI21XL U726 ( .A0(n557), .A1(n237), .B0(n238), .Y(n359) );
  OAI21XL U727 ( .A0(n557), .A1(n417), .B0(\j_seq_reg[6][0] ), .Y(n238) );
  AOI221XL U728 ( .A0(n144), .A1(n584), .B0(n232), .B1(n145), .C0(n239), .Y(
        n237) );
  OAI22XL U729 ( .A0(n147), .A1(n597), .B0(n233), .B1(n148), .Y(n239) );
  CLKBUFX3 U730 ( .A(N208), .Y(n411) );
  OAI21XL U731 ( .A0(n307), .A1(n465), .B0(n198), .Y(N208) );
  CLKINVX1 U732 ( .A(N200), .Y(n484) );
  OA21XL U733 ( .A0(n183), .A1(N199), .B0(n599), .Y(n182) );
  AOI31XL U734 ( .A0(n444), .A1(n396), .A2(n445), .B0(n172), .Y(n181) );
  OAI222XL U735 ( .A0(W[0]), .A1(n576), .B0(N197), .B1(n413), .C0(n595), .C1(
        n308), .Y(N306) );
  NOR2X1 U736 ( .A(n262), .B(n396), .Y(n112) );
  NOR2X1 U737 ( .A(n567), .B(n396), .Y(n213) );
  OAI211X1 U738 ( .A0(n567), .A1(n584), .B0(n165), .C0(n241), .Y(n240) );
  AOI32XL U739 ( .A0(n445), .A1(n444), .A2(n213), .B0(n416), .B1(n242), .Y(
        n241) );
  OAI21XL U740 ( .A0(n465), .A1(n183), .B0(n597), .Y(n242) );
  OAI211X1 U741 ( .A0(n575), .A1(n601), .B0(n165), .C0(n227), .Y(n226) );
  AOI222XL U742 ( .A0(n218), .A1(n412), .B0(n228), .B1(n167), .C0(n213), .C1(
        n169), .Y(n227) );
  NOR2X1 U743 ( .A(n595), .B(n465), .Y(n228) );
  CLKBUFX3 U744 ( .A(n119), .Y(n412) );
  NOR3X1 U745 ( .A(n53), .B(current_state[1]), .C(n55), .Y(n119) );
  NAND2X1 U746 ( .A(n307), .B(N199), .Y(n263) );
  CLKBUFX3 U747 ( .A(N205), .Y(n409) );
  AO22X1 U748 ( .A0(n566), .A1(sort_times_reg[15]), .B0(N691), .B1(n414), .Y(
        n325) );
  AO22X1 U749 ( .A0(n566), .A1(sort_times_reg[13]), .B0(N689), .B1(n414), .Y(
        n326) );
  AO22X1 U750 ( .A0(n566), .A1(sort_times_reg[12]), .B0(N688), .B1(n414), .Y(
        n327) );
  AO22X1 U751 ( .A0(n566), .A1(sort_times_reg[11]), .B0(N687), .B1(n414), .Y(
        n328) );
  AO22X1 U752 ( .A0(n566), .A1(sort_times_reg[10]), .B0(N686), .B1(n414), .Y(
        n329) );
  AO22X1 U753 ( .A0(n566), .A1(sort_times_reg[9]), .B0(N685), .B1(n414), .Y(
        n330) );
  AO22X1 U754 ( .A0(n566), .A1(sort_times_reg[8]), .B0(N684), .B1(n414), .Y(
        n331) );
  AO22X1 U755 ( .A0(n566), .A1(sort_times_reg[7]), .B0(N683), .B1(n414), .Y(
        n332) );
  AO22X1 U756 ( .A0(n566), .A1(sort_times_reg[6]), .B0(N682), .B1(n414), .Y(
        n333) );
  AO22X1 U757 ( .A0(n566), .A1(sort_times_reg[5]), .B0(N681), .B1(n414), .Y(
        n334) );
  AO22X1 U758 ( .A0(n566), .A1(sort_times_reg[4]), .B0(N680), .B1(n414), .Y(
        n335) );
  AO22X1 U759 ( .A0(n566), .A1(sort_times_reg[3]), .B0(N679), .B1(n414), .Y(
        n336) );
  AO22X1 U760 ( .A0(n566), .A1(sort_times_reg[2]), .B0(N678), .B1(n414), .Y(
        n337) );
  AO22X1 U761 ( .A0(n566), .A1(sort_times_reg[1]), .B0(N677), .B1(n414), .Y(
        n338) );
  AO22X1 U762 ( .A0(n566), .A1(sort_times_reg[14]), .B0(N690), .B1(n414), .Y(
        n339) );
  AO22X1 U763 ( .A0(n566), .A1(sort_times_reg[0]), .B0(N676), .B1(n414), .Y(
        n380) );
  NOR2X1 U764 ( .A(n575), .B(N198), .Y(n167) );
  NAND2X1 U765 ( .A(n55), .B(n53), .Y(n115) );
  NOR3X1 U766 ( .A(current_state[0]), .B(current_state[1]), .C(n53), .Y(n108)
         );
  NOR3X1 U767 ( .A(current_state[1]), .B(current_state[2]), .C(n55), .Y(n111)
         );
  NOR3X2 U768 ( .A(n54), .B(current_state[2]), .C(n55), .Y(n273) );
  NOR4X1 U769 ( .A(sort_times_reg[9]), .B(sort_times_reg[7]), .C(
        sort_times_reg[14]), .D(sort_times_reg[13]), .Y(n124) );
  NAND4X1 U770 ( .A(n121), .B(n122), .C(n123), .D(n124), .Y(n105) );
  AND4X1 U771 ( .A(sort_times_reg[4]), .B(sort_times_reg[5]), .C(
        sort_times_reg[6]), .D(sort_times_reg[8]), .Y(n121) );
  AND4X1 U772 ( .A(sort_times_reg[15]), .B(sort_times_reg[1]), .C(
        sort_times_reg[2]), .D(sort_times_reg[3]), .Y(n122) );
  AND4X1 U773 ( .A(sort_times_reg[0]), .B(sort_times_reg[10]), .C(
        sort_times_reg[11]), .D(sort_times_reg[12]), .Y(n123) );
  INVX3 U774 ( .A(n605), .Y(n579) );
  OAI22XL U775 ( .A0(n396), .A1(n431), .B0(N196), .B1(n430), .Y(n605) );
  BUFX16 U776 ( .A(n604), .Y(J[1]) );
  OAI22XL U777 ( .A0(n396), .A1(n435), .B0(N196), .B1(n434), .Y(n604) );
  AOI221XL U778 ( .A0(\j_seq_reg[6][1] ), .A1(n441), .B0(\j_seq_reg[7][1] ), 
        .B1(n440), .C0(n432), .Y(n435) );
  AOI221XL U779 ( .A0(\j_seq_reg[2][1] ), .A1(n441), .B0(\j_seq_reg[3][1] ), 
        .B1(n440), .C0(n433), .Y(n434) );
  AO22X1 U780 ( .A0(\j_seq_reg[5][2] ), .A1(n169), .B0(\j_seq_reg[4][2] ), 
        .B1(n437), .Y(n436) );
  AOI221XL U781 ( .A0(\j_seq_reg[6][2] ), .A1(n441), .B0(\j_seq_reg[7][2] ), 
        .B1(n440), .C0(n436), .Y(n443) );
  AO22X1 U782 ( .A0(\j_seq_reg[1][2] ), .A1(n169), .B0(\j_seq_reg[0][2] ), 
        .B1(n437), .Y(n439) );
  NOR2X1 U783 ( .A(n463), .B(n419), .Y(n460) );
  NOR2X1 U784 ( .A(n463), .B(n464), .Y(n459) );
  NOR2X1 U785 ( .A(n464), .B(N198), .Y(n457) );
  NOR2X1 U786 ( .A(n419), .B(N198), .Y(n456) );
  AO22X1 U787 ( .A0(\j_seq_reg[5][0] ), .A1(n457), .B0(\j_seq_reg[4][0] ), 
        .B1(n456), .Y(n447) );
  AOI221XL U788 ( .A0(\j_seq_reg[6][0] ), .A1(n460), .B0(\j_seq_reg[7][0] ), 
        .B1(n459), .C0(n447), .Y(n450) );
  AO22X1 U789 ( .A0(\j_seq_reg[1][0] ), .A1(n457), .B0(\j_seq_reg[0][0] ), 
        .B1(n456), .Y(n448) );
  AOI221XL U790 ( .A0(\j_seq_reg[2][0] ), .A1(n460), .B0(\j_seq_reg[3][0] ), 
        .B1(n459), .C0(n448), .Y(n449) );
  OAI22XL U791 ( .A0(n465), .A1(n450), .B0(N199), .B1(n449), .Y(
        ref_point_val[0]) );
  AO22X1 U792 ( .A0(\j_seq_reg[5][1] ), .A1(n457), .B0(\j_seq_reg[4][1] ), 
        .B1(n456), .Y(n451) );
  AOI221XL U793 ( .A0(\j_seq_reg[6][1] ), .A1(n460), .B0(\j_seq_reg[7][1] ), 
        .B1(n459), .C0(n451), .Y(n454) );
  AO22X1 U794 ( .A0(\j_seq_reg[1][1] ), .A1(n457), .B0(\j_seq_reg[0][1] ), 
        .B1(n456), .Y(n452) );
  AOI221XL U795 ( .A0(\j_seq_reg[2][1] ), .A1(n460), .B0(\j_seq_reg[3][1] ), 
        .B1(n459), .C0(n452), .Y(n453) );
  AO22X1 U796 ( .A0(\j_seq_reg[5][2] ), .A1(n457), .B0(\j_seq_reg[4][2] ), 
        .B1(n456), .Y(n455) );
  AOI221XL U797 ( .A0(\j_seq_reg[6][2] ), .A1(n460), .B0(\j_seq_reg[7][2] ), 
        .B1(n459), .C0(n455), .Y(n462) );
  AO22X1 U798 ( .A0(\j_seq_reg[1][2] ), .A1(n457), .B0(\j_seq_reg[0][2] ), 
        .B1(n456), .Y(n458) );
  AOI221XL U799 ( .A0(\j_seq_reg[2][2] ), .A1(n460), .B0(\j_seq_reg[3][2] ), 
        .B1(n459), .C0(n458), .Y(n461) );
  OAI22XL U800 ( .A0(n462), .A1(n465), .B0(N199), .B1(n461), .Y(
        ref_point_val[2]) );
  NOR2X1 U801 ( .A(n483), .B(N200), .Y(n479) );
  NOR2X1 U802 ( .A(n483), .B(n484), .Y(n478) );
  NOR2X1 U803 ( .A(n484), .B(N201), .Y(n476) );
  NOR2X1 U804 ( .A(N200), .B(N201), .Y(n475) );
  AO22X1 U805 ( .A0(\j_seq_reg[5][0] ), .A1(n476), .B0(\j_seq_reg[4][0] ), 
        .B1(n475), .Y(n466) );
  AOI221XL U806 ( .A0(\j_seq_reg[6][0] ), .A1(n479), .B0(\j_seq_reg[7][0] ), 
        .B1(n478), .C0(n466), .Y(n469) );
  AO22X1 U807 ( .A0(\j_seq_reg[1][0] ), .A1(n476), .B0(\j_seq_reg[0][0] ), 
        .B1(n475), .Y(n467) );
  AOI221XL U808 ( .A0(\j_seq_reg[2][0] ), .A1(n479), .B0(\j_seq_reg[3][0] ), 
        .B1(n478), .C0(n467), .Y(n468) );
  OAI22XL U809 ( .A0(n482), .A1(n469), .B0(N202), .B1(n468), .Y(N211) );
  AO22X1 U810 ( .A0(\j_seq_reg[5][1] ), .A1(n476), .B0(\j_seq_reg[4][1] ), 
        .B1(n475), .Y(n470) );
  AOI221XL U811 ( .A0(\j_seq_reg[6][1] ), .A1(n479), .B0(\j_seq_reg[7][1] ), 
        .B1(n478), .C0(n470), .Y(n473) );
  AO22X1 U812 ( .A0(\j_seq_reg[1][1] ), .A1(n476), .B0(\j_seq_reg[0][1] ), 
        .B1(n475), .Y(n471) );
  AOI221XL U813 ( .A0(\j_seq_reg[2][1] ), .A1(n479), .B0(\j_seq_reg[3][1] ), 
        .B1(n478), .C0(n471), .Y(n472) );
  OAI22XL U814 ( .A0(n482), .A1(n473), .B0(N202), .B1(n472), .Y(N210) );
  AO22X1 U815 ( .A0(\j_seq_reg[5][2] ), .A1(n476), .B0(\j_seq_reg[4][2] ), 
        .B1(n475), .Y(n474) );
  AOI221XL U816 ( .A0(\j_seq_reg[6][2] ), .A1(n479), .B0(\j_seq_reg[7][2] ), 
        .B1(n478), .C0(n474), .Y(n481) );
  AO22X1 U817 ( .A0(\j_seq_reg[1][2] ), .A1(n476), .B0(\j_seq_reg[0][2] ), 
        .B1(n475), .Y(n477) );
  AOI221XL U818 ( .A0(\j_seq_reg[2][2] ), .A1(n479), .B0(\j_seq_reg[3][2] ), 
        .B1(n478), .C0(n477), .Y(n480) );
  OAI22XL U819 ( .A0(n481), .A1(n482), .B0(N202), .B1(n480), .Y(N209) );
  NOR2X1 U820 ( .A(n503), .B(N203), .Y(n498) );
  NOR2X1 U821 ( .A(n503), .B(n502), .Y(n497) );
  NOR2X1 U822 ( .A(n502), .B(N204), .Y(n495) );
  NOR2X1 U823 ( .A(N203), .B(N204), .Y(n494) );
  AO22X1 U824 ( .A0(\j_seq_reg[5][0] ), .A1(n495), .B0(\j_seq_reg[4][0] ), 
        .B1(n494), .Y(n485) );
  AOI221XL U825 ( .A0(\j_seq_reg[6][0] ), .A1(n498), .B0(\j_seq_reg[7][0] ), 
        .B1(n497), .C0(n485), .Y(n488) );
  AO22X1 U826 ( .A0(\j_seq_reg[1][0] ), .A1(n495), .B0(\j_seq_reg[0][0] ), 
        .B1(n494), .Y(n486) );
  AOI221XL U827 ( .A0(\j_seq_reg[2][0] ), .A1(n498), .B0(\j_seq_reg[3][0] ), 
        .B1(n497), .C0(n486), .Y(n487) );
  AO22X1 U828 ( .A0(\j_seq_reg[5][1] ), .A1(n495), .B0(\j_seq_reg[4][1] ), 
        .B1(n494), .Y(n489) );
  AOI221XL U829 ( .A0(\j_seq_reg[6][1] ), .A1(n498), .B0(\j_seq_reg[7][1] ), 
        .B1(n497), .C0(n489), .Y(n492) );
  AO22X1 U830 ( .A0(\j_seq_reg[1][1] ), .A1(n495), .B0(\j_seq_reg[0][1] ), 
        .B1(n494), .Y(n490) );
  AOI221XL U831 ( .A0(\j_seq_reg[2][1] ), .A1(n498), .B0(\j_seq_reg[3][1] ), 
        .B1(n497), .C0(n490), .Y(n491) );
  AO22X1 U832 ( .A0(\j_seq_reg[5][2] ), .A1(n495), .B0(\j_seq_reg[4][2] ), 
        .B1(n494), .Y(n493) );
  AOI221XL U833 ( .A0(\j_seq_reg[6][2] ), .A1(n498), .B0(\j_seq_reg[7][2] ), 
        .B1(n497), .C0(n493), .Y(n500) );
  AO22X1 U834 ( .A0(\j_seq_reg[1][2] ), .A1(n495), .B0(\j_seq_reg[0][2] ), 
        .B1(n494), .Y(n496) );
  AOI221XL U835 ( .A0(\j_seq_reg[2][2] ), .A1(n498), .B0(\j_seq_reg[3][2] ), 
        .B1(n497), .C0(n496), .Y(n499) );
  NOR2X1 U836 ( .A(n594), .B(N206), .Y(n517) );
  NOR2X1 U837 ( .A(n594), .B(N197), .Y(n516) );
  NOR2X1 U838 ( .A(n419), .B(N207), .Y(n514) );
  NOR2X1 U839 ( .A(N206), .B(N207), .Y(n513) );
  AO22X1 U840 ( .A0(\j_seq_reg[5][0] ), .A1(n514), .B0(\j_seq_reg[4][0] ), 
        .B1(n513), .Y(n504) );
  AOI221XL U841 ( .A0(\j_seq_reg[6][0] ), .A1(n517), .B0(\j_seq_reg[7][0] ), 
        .B1(n516), .C0(n504), .Y(n507) );
  AO22X1 U842 ( .A0(\j_seq_reg[1][0] ), .A1(n514), .B0(\j_seq_reg[0][0] ), 
        .B1(n513), .Y(n505) );
  AOI221XL U843 ( .A0(\j_seq_reg[2][0] ), .A1(n517), .B0(\j_seq_reg[3][0] ), 
        .B1(n516), .C0(n505), .Y(n506) );
  AO22X1 U844 ( .A0(\j_seq_reg[5][1] ), .A1(n514), .B0(\j_seq_reg[4][1] ), 
        .B1(n513), .Y(n508) );
  AOI221XL U845 ( .A0(\j_seq_reg[6][1] ), .A1(n517), .B0(\j_seq_reg[7][1] ), 
        .B1(n516), .C0(n508), .Y(n511) );
  AO22X1 U846 ( .A0(\j_seq_reg[1][1] ), .A1(n514), .B0(\j_seq_reg[0][1] ), 
        .B1(n513), .Y(n509) );
  AOI221XL U847 ( .A0(\j_seq_reg[2][1] ), .A1(n517), .B0(\j_seq_reg[3][1] ), 
        .B1(n516), .C0(n509), .Y(n510) );
  AO22X1 U848 ( .A0(\j_seq_reg[5][2] ), .A1(n514), .B0(\j_seq_reg[4][2] ), 
        .B1(n513), .Y(n512) );
  AOI221XL U849 ( .A0(\j_seq_reg[6][2] ), .A1(n517), .B0(\j_seq_reg[7][2] ), 
        .B1(n516), .C0(n512), .Y(n519) );
  AO22X1 U850 ( .A0(\j_seq_reg[1][2] ), .A1(n514), .B0(\j_seq_reg[0][2] ), 
        .B1(n513), .Y(n515) );
  AOI221XL U851 ( .A0(\j_seq_reg[2][2] ), .A1(n517), .B0(\j_seq_reg[3][2] ), 
        .B1(n516), .C0(n515), .Y(n518) );
  NOR2BX1 U852 ( .AN(min_reg[0]), .B(min_work_reg[0]), .Y(n520) );
  OAI22XL U853 ( .A0(min_reg[1]), .A1(n520), .B0(n520), .B1(n390), .Y(n522) );
  NAND2X1 U854 ( .A(min_reg[7]), .B(n542), .Y(n534) );
  NAND2X1 U855 ( .A(min_reg[6]), .B(n387), .Y(n529) );
  NOR2X1 U856 ( .A(n384), .B(min_work_reg[8]), .Y(n523) );
  NOR2X1 U857 ( .A(n385), .B(min_work_reg[5]), .Y(n530) );
  NOR3BXL U858 ( .AN(n529), .B(n523), .C(n530), .Y(n521) );
  NAND3X1 U859 ( .A(n522), .B(n534), .C(n521), .Y(n541) );
  NAND2X1 U860 ( .A(min_reg[9]), .B(n386), .Y(n537) );
  NOR2BX1 U861 ( .AN(min_reg[3]), .B(min_work_reg[3]), .Y(n539) );
  NOR2X1 U862 ( .A(n381), .B(min_work_reg[4]), .Y(n538) );
  NOR2X1 U863 ( .A(n539), .B(n538), .Y(n528) );
  NOR2BX1 U864 ( .AN(min_work_reg[0]), .B(min_reg[0]), .Y(n525) );
  AO21X1 U865 ( .A0(n389), .A1(n525), .B0(min_work_reg[1]), .Y(n524) );
  NAND2X1 U866 ( .A(min_reg[2]), .B(n382), .Y(n536) );
  OAI211X1 U867 ( .A0(n525), .A1(n389), .B0(n524), .C0(n536), .Y(n526) );
  OAI221XL U868 ( .A0(min_reg[2]), .A1(n382), .B0(min_reg[3]), .B1(n383), .C0(
        n526), .Y(n527) );
  AOI222XL U869 ( .A0(min_work_reg[5]), .A1(n385), .B0(min_work_reg[4]), .B1(
        n381), .C0(n528), .C1(n527), .Y(n532) );
  NAND2BX1 U870 ( .AN(n530), .B(n529), .Y(n531) );
  OAI222XL U871 ( .A0(n532), .A1(n531), .B0(min_reg[6]), .B1(n387), .C0(
        min_reg[7]), .C1(n542), .Y(n533) );
  AOI32X1 U872 ( .A0(n534), .A1(n544), .A2(n533), .B0(min_work_reg[8]), .B1(
        n384), .Y(n535) );
  NOR4X1 U873 ( .A(n541), .B(n540), .C(n539), .D(n538), .Y(min_work_eq_flag)
         );
  NOR3X1 U874 ( .A(min_reg[7]), .B(min_reg[9]), .C(min_reg[8]), .Y(n550) );
  AOI2BB2X1 U875 ( .B0(n545), .B1(min_reg[0]), .A0N(J[1]), .A1N(n389), .Y(n546) );
  OAI22XL U876 ( .A0(n547), .A1(n546), .B0(J[2]), .B1(n388), .Y(n548) );
  NOR3X1 U877 ( .A(n548), .B(min_reg[4]), .C(min_reg[3]), .Y(n549) );
  NAND4BBXL U878 ( .AN(min_reg[6]), .BN(min_reg[5]), .C(n550), .D(n549), .Y(
        N216) );
endmodule


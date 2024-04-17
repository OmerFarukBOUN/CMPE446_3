// ==============================================================
// Generated by Vitis HLS v2023.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_module_hart (
        ap_ready,
        inst_val,
        r1_val,
        r2_val,
        pc_val,
        ap_return_0,
        ap_return_1
);


output   ap_ready;
input  [31:0] inst_val;
input  [31:0] r1_val;
input  [31:0] r2_val;
input  [31:0] pc_val;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

wire    grp_OP_AL_32I_fu_187_ap_ready;
reg   [5:0] grp_OP_AL_32I_fu_187_opcode_val;
wire   [6:0] grp_OP_AL_32I_fu_187_func7_val;
wire   [2:0] grp_OP_AL_32I_fu_187_func3_val;
reg   [31:0] grp_OP_AL_32I_fu_187_op2_val;
wire   [31:0] grp_OP_AL_32I_fu_187_ap_return;
wire   [31:0] grp_fu_200_p2;
reg   [31:0] ap_phi_mux_phi_ln83_phi_fu_141_p18;
wire   [6:0] opcode_fu_248_p1;
wire   [31:0] add_ln80_fu_440_p2;
wire   [31:0] imm_20_U_fu_350_p3;
wire  signed [31:0] sext_ln53_fu_608_p1;
wire  signed [31:0] sext_ln48_fu_636_p1;
wire   [0:0] grp_fu_211_p2;
wire   [31:0] add_ln86_4_fu_433_p2;
reg   [31:0] ap_phi_mux_phi_ln83_1_phi_fu_166_p18;
wire   [31:0] add_ln86_6_fu_601_p2;
wire   [31:0] or_ln86_1_fu_627_p3;
wire   [31:0] or_ln1_fu_655_p3;
wire   [31:0] tmp_10_fu_422_p4;
wire   [31:0] tmp_11_fu_411_p4;
wire   [2:0] func3_fu_252_p4;
wire  signed [31:0] sext_ln37_fu_285_p1;
wire   [0:0] icmp_ln67_3_fu_561_p2;
wire   [0:0] icmp_ln67_4_fu_575_p2;
wire   [0:0] icmp_ln67_2_fu_547_p2;
wire   [0:0] icmp_ln67_1_fu_533_p2;
wire   [0:0] icmp_ln67_fu_519_p2;
wire   [11:0] offset_2_fu_275_p4;
wire   [0:0] tmp_8_fu_298_p3;
wire   [0:0] tmp_fu_290_p3;
wire   [5:0] tmp_3_fu_316_p4;
wire   [3:0] tmp_5_fu_306_p4;
wire   [19:0] tmp_6_fu_340_p4;
wire   [7:0] tmp_s_fu_377_p4;
wire   [0:0] tmp_9_fu_369_p3;
wire   [9:0] tmp_7_fu_359_p4;
wire   [20:0] offset_1_fu_387_p6;
wire   [31:0] add_ln86_5_fu_405_p2;
wire  signed [31:0] sext_ln42_fu_401_p1;
wire   [0:0] icmp_ln68_fu_447_p2;
wire   [12:0] offset_3_fu_326_p6;
wire   [0:0] icmp_ln69_fu_461_p2;
wire   [0:0] grp_fu_216_p2;
wire   [0:0] xor_ln71_fu_483_p2;
wire   [0:0] grp_fu_222_p2;
wire   [0:0] xor_ln73_fu_505_p2;
wire   [12:0] returnval_7_fu_511_p3;
wire   [12:0] returnval_6_fu_497_p3;
wire   [12:0] returnval_8_fu_525_p3;
wire   [12:0] returnval_5_fu_489_p3;
wire   [12:0] returnval_9_fu_539_p3;
wire   [12:0] returnval_4_fu_475_p3;
wire   [12:0] returnval_10_fu_553_p3;
wire   [12:0] returnval_3_fu_467_p3;
wire   [12:0] returnval_11_fu_567_p3;
wire   [12:0] returnval_2_fu_453_p3;
wire   [12:0] returnval_12_fu_581_p3;
wire   [12:0] returnval_fu_589_p3;
wire  signed [31:0] sext_ln66_fu_597_p1;
wire   [30:0] grp_fu_228_p4;
wire   [0:0] trunc_ln86_1_fu_617_p1;
wire   [0:0] trunc_ln54_fu_613_p1;
wire   [30:0] grp_fu_238_p4;
wire   [0:0] or_ln86_fu_621_p2;
wire   [0:0] trunc_ln86_fu_645_p1;
wire   [0:0] trunc_ln49_fu_641_p1;
wire   [0:0] or_ln86_2_fu_649_p2;
wire    ap_ce_reg;

top_module_OP_AL_32I grp_OP_AL_32I_fu_187(
    .ap_ready(grp_OP_AL_32I_fu_187_ap_ready),
    .opcode_val(grp_OP_AL_32I_fu_187_opcode_val),
    .func7_val(grp_OP_AL_32I_fu_187_func7_val),
    .func3_val(grp_OP_AL_32I_fu_187_func3_val),
    .op1_val(r1_val),
    .op2_val(grp_OP_AL_32I_fu_187_op2_val),
    .ap_return(grp_OP_AL_32I_fu_187_ap_return)
);

always @ (*) begin
    if (((grp_fu_211_p2 == 1'd0) & (opcode_fu_248_p1 == 7'd103))) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = tmp_11_fu_411_p4;
    end else if (((grp_fu_211_p2 == 1'd1) & (opcode_fu_248_p1 == 7'd103))) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = tmp_10_fu_422_p4;
    end else if ((opcode_fu_248_p1 == 7'd51)) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = or_ln1_fu_655_p3;
    end else if ((opcode_fu_248_p1 == 7'd19)) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = or_ln86_1_fu_627_p3;
    end else if ((opcode_fu_248_p1 == 7'd99)) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = add_ln86_6_fu_601_p2;
    end else if (((opcode_fu_248_p1 == 7'd55) | (opcode_fu_248_p1 == 7'd23))) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = grp_fu_200_p2;
    end else if ((opcode_fu_248_p1 == 7'd111)) begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = add_ln86_4_fu_433_p2;
    end else begin
        ap_phi_mux_phi_ln83_1_phi_fu_166_p18 = 'bx;
    end
end

always @ (*) begin
    if ((opcode_fu_248_p1 == 7'd51)) begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = sext_ln48_fu_636_p1;
    end else if ((opcode_fu_248_p1 == 7'd19)) begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = sext_ln53_fu_608_p1;
    end else if ((opcode_fu_248_p1 == 7'd55)) begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = imm_20_U_fu_350_p3;
    end else if ((opcode_fu_248_p1 == 7'd23)) begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = add_ln80_fu_440_p2;
    end else if (((opcode_fu_248_p1 == 7'd111) | ((grp_fu_211_p2 == 1'd0) & (opcode_fu_248_p1 == 7'd103)) | ((grp_fu_211_p2 == 1'd1) & (opcode_fu_248_p1 == 7'd103)))) begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = grp_fu_200_p2;
    end else begin
        ap_phi_mux_phi_ln83_phi_fu_141_p18 = 'bx;
    end
end

always @ (*) begin
    if ((opcode_fu_248_p1 == 7'd51)) begin
        grp_OP_AL_32I_fu_187_op2_val = r2_val;
    end else if ((opcode_fu_248_p1 == 7'd19)) begin
        grp_OP_AL_32I_fu_187_op2_val = sext_ln37_fu_285_p1;
    end else begin
        grp_OP_AL_32I_fu_187_op2_val = 'bx;
    end
end

always @ (*) begin
    if ((opcode_fu_248_p1 == 7'd51)) begin
        grp_OP_AL_32I_fu_187_opcode_val = 6'd51;
    end else if ((opcode_fu_248_p1 == 7'd19)) begin
        grp_OP_AL_32I_fu_187_opcode_val = 6'd19;
    end else begin
        grp_OP_AL_32I_fu_187_opcode_val = 'bx;
    end
end

assign add_ln80_fu_440_p2 = (imm_20_U_fu_350_p3 + pc_val);

assign add_ln86_4_fu_433_p2 = ($signed(sext_ln42_fu_401_p1) + $signed(pc_val));

assign add_ln86_5_fu_405_p2 = ($signed(sext_ln37_fu_285_p1) + $signed(pc_val));

assign add_ln86_6_fu_601_p2 = ($signed(sext_ln66_fu_597_p1) + $signed(pc_val));

assign ap_ready = 1'b1;

assign func3_fu_252_p4 = {{inst_val[14:12]}};

assign grp_OP_AL_32I_fu_187_func3_val = {{inst_val[14:12]}};

assign grp_OP_AL_32I_fu_187_func7_val = {{inst_val[31:25]}};

assign grp_fu_200_p2 = (pc_val + 32'd4);

assign grp_fu_211_p2 = ((func3_fu_252_p4 == 3'd0) ? 1'b1 : 1'b0);

assign grp_fu_216_p2 = (($signed(r1_val) < $signed(r2_val)) ? 1'b1 : 1'b0);

assign grp_fu_222_p2 = ((r1_val < r2_val) ? 1'b1 : 1'b0);

assign grp_fu_228_p4 = {{grp_OP_AL_32I_fu_187_ap_return[31:1]}};

assign grp_fu_238_p4 = {{grp_fu_200_p2[31:1]}};

assign icmp_ln67_1_fu_533_p2 = ((func3_fu_252_p4 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln67_2_fu_547_p2 = ((func3_fu_252_p4 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln67_3_fu_561_p2 = ((func3_fu_252_p4 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln67_4_fu_575_p2 = ((func3_fu_252_p4 == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln67_fu_519_p2 = ((func3_fu_252_p4 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln68_fu_447_p2 = ((r1_val == r2_val) ? 1'b1 : 1'b0);

assign icmp_ln69_fu_461_p2 = ((r1_val != r2_val) ? 1'b1 : 1'b0);

assign imm_20_U_fu_350_p3 = {{tmp_6_fu_340_p4}, {12'd0}};

assign offset_1_fu_387_p6 = {{{{{tmp_8_fu_298_p3}, {tmp_s_fu_377_p4}}, {tmp_9_fu_369_p3}}, {tmp_7_fu_359_p4}}, {1'd0}};

assign offset_2_fu_275_p4 = {{inst_val[31:20]}};

assign offset_3_fu_326_p6 = {{{{{tmp_8_fu_298_p3}, {tmp_fu_290_p3}}, {tmp_3_fu_316_p4}}, {tmp_5_fu_306_p4}}, {1'd0}};

assign opcode_fu_248_p1 = inst_val[6:0];

assign or_ln1_fu_655_p3 = {{grp_fu_238_p4}, {or_ln86_2_fu_649_p2}};

assign or_ln86_1_fu_627_p3 = {{grp_fu_238_p4}, {or_ln86_fu_621_p2}};

assign or_ln86_2_fu_649_p2 = (trunc_ln86_fu_645_p1 | trunc_ln49_fu_641_p1);

assign or_ln86_fu_621_p2 = (trunc_ln86_1_fu_617_p1 | trunc_ln54_fu_613_p1);

assign returnval_10_fu_553_p3 = ((icmp_ln67_2_fu_547_p2[0:0] == 1'b1) ? returnval_5_fu_489_p3 : returnval_9_fu_539_p3);

assign returnval_11_fu_567_p3 = ((icmp_ln67_3_fu_561_p2[0:0] == 1'b1) ? returnval_4_fu_475_p3 : returnval_10_fu_553_p3);

assign returnval_12_fu_581_p3 = ((icmp_ln67_4_fu_575_p2[0:0] == 1'b1) ? returnval_3_fu_467_p3 : returnval_11_fu_567_p3);

assign returnval_2_fu_453_p3 = ((icmp_ln68_fu_447_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_3_fu_467_p3 = ((icmp_ln69_fu_461_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_4_fu_475_p3 = ((grp_fu_216_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_5_fu_489_p3 = ((xor_ln71_fu_483_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_6_fu_497_p3 = ((grp_fu_222_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_7_fu_511_p3 = ((xor_ln73_fu_505_p2[0:0] == 1'b1) ? offset_3_fu_326_p6 : 13'd4);

assign returnval_8_fu_525_p3 = ((icmp_ln67_fu_519_p2[0:0] == 1'b1) ? returnval_7_fu_511_p3 : 13'd1);

assign returnval_9_fu_539_p3 = ((icmp_ln67_1_fu_533_p2[0:0] == 1'b1) ? returnval_6_fu_497_p3 : returnval_8_fu_525_p3);

assign returnval_fu_589_p3 = ((grp_fu_211_p2[0:0] == 1'b1) ? returnval_2_fu_453_p3 : returnval_12_fu_581_p3);

assign sext_ln37_fu_285_p1 = $signed(offset_2_fu_275_p4);

assign sext_ln42_fu_401_p1 = $signed(offset_1_fu_387_p6);

assign sext_ln48_fu_636_p1 = $signed(grp_fu_228_p4);

assign sext_ln53_fu_608_p1 = $signed(grp_fu_228_p4);

assign sext_ln66_fu_597_p1 = $signed(returnval_fu_589_p3);

assign tmp_10_fu_422_p4 = {add_ln86_5_fu_405_p2[32-1:1], |(1'd0)};

assign tmp_11_fu_411_p4 = {add_ln86_5_fu_405_p2[32-1:1], |(1'd1)};

assign tmp_3_fu_316_p4 = {{inst_val[30:25]}};

assign tmp_5_fu_306_p4 = {{inst_val[11:8]}};

assign tmp_6_fu_340_p4 = {{inst_val[31:12]}};

assign tmp_7_fu_359_p4 = {{inst_val[30:21]}};

assign tmp_8_fu_298_p3 = inst_val[32'd31];

assign tmp_9_fu_369_p3 = inst_val[32'd20];

assign tmp_fu_290_p3 = inst_val[32'd7];

assign tmp_s_fu_377_p4 = {{inst_val[19:12]}};

assign trunc_ln49_fu_641_p1 = grp_OP_AL_32I_fu_187_ap_return[0:0];

assign trunc_ln54_fu_613_p1 = grp_OP_AL_32I_fu_187_ap_return[0:0];

assign trunc_ln86_1_fu_617_p1 = grp_fu_200_p2[0:0];

assign trunc_ln86_fu_645_p1 = grp_fu_200_p2[0:0];

assign xor_ln71_fu_483_p2 = (grp_fu_216_p2 ^ 1'd1);

assign xor_ln73_fu_505_p2 = (grp_fu_222_p2 ^ 1'd1);

assign ap_return_0 = ap_phi_mux_phi_ln83_phi_fu_141_p18;

assign ap_return_1 = ap_phi_mux_phi_ln83_1_phi_fu_166_p18;

endmodule //top_module_hart
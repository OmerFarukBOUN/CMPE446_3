// ==============================================================
// Generated by Vitis HLS v2023.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module hart_OP_AL_32I (
        ap_ready,
        opcode_val,
        func7_val,
        func3_val,
        op1_val,
        op2_val,
        ap_return
);


output   ap_ready;
input  [5:0] opcode_val;
input  [6:0] func7_val;
input  [2:0] func3_val;
input  [31:0] op1_val;
input  [31:0] op2_val;
output  [31:0] ap_return;

wire   [30:0] grp_fu_258_p2;
reg   [30:0] ap_phi_mux_rd_val_9_phi_fu_87_p52;
wire   [5:0] opcode_val_read_read_fu_78_p2;
wire   [2:0] func3_val_read_read_fu_66_p2;
wire   [30:0] grp_fu_228_p2;
wire   [30:0] grp_fu_234_p2;
wire   [30:0] zext_ln7_1_fu_338_p1;
wire   [30:0] zext_ln7_fu_343_p1;
wire   [30:0] trunc_ln7_fu_362_p1;
wire   [30:0] grp_fu_252_p2;
wire   [6:0] func7_val_read_read_fu_72_p2;
wire   [30:0] trunc_ln7_2_fu_314_p1;
wire   [30:0] trunc_ln7_1_fu_333_p1;
wire   [30:0] rd_val_14_fu_383_p2;
wire   [30:0] trunc_ln28_fu_378_p1;
wire   [0:0] grp_fu_264_p3;
wire   [30:0] trunc_ln28_1_fu_373_p1;
wire   [30:0] zext_ln7_3_fu_406_p1;
wire   [30:0] zext_ln7_2_fu_411_p1;
wire   [30:0] trunc_ln19_fu_401_p1;
wire   [30:0] trunc_ln19_1_fu_396_p1;
wire   [30:0] trunc_ln15_fu_433_p1;
wire   [30:0] trunc_ln15_1_fu_422_p1;
reg   [0:0] ap_phi_mux_error_phi_fu_148_p52;
wire   [30:0] empty_61_fu_292_p1;
wire   [30:0] empty_fu_284_p1;
wire   [31:0] grp_fu_272_p2;
wire   [4:0] trunc_ln45_fu_300_p1;
wire   [31:0] zext_ln45_fu_304_p1;
wire   [31:0] rd_val_16_fu_308_p2;
wire   [4:0] trunc_ln44_fu_319_p1;
wire   [31:0] zext_ln44_fu_323_p1;
wire   [31:0] rd_val_15_fu_327_p2;
wire   [0:0] grp_fu_240_p2;
wire   [0:0] grp_fu_246_p2;
wire   [4:0] trunc_ln38_fu_348_p1;
wire   [31:0] zext_ln38_fu_352_p1;
wire   [31:0] rd_val_2_fu_356_p2;
wire   [31:0] ashr_ln28_fu_367_p2;
wire   [31:0] grp_fu_278_p2;
wire   [31:0] lshr_ln19_fu_390_p2;
wire   [31:0] shl_ln15_fu_416_p2;
wire   [31:0] ashr_ln15_fu_427_p2;
wire    ap_ce_reg;

always @ (*) begin
    if (((~(func3_val_read_read_fu_66_p2 == 3'd5) & ~(func3_val_read_read_fu_66_p2 == 3'd0) & (func7_val_read_read_fu_72_p2 == 7'd32) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | (~(func7_val_read_read_fu_72_p2 == 7'd32) & ~(func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | (~(func7_val_read_read_fu_72_p2 == 7'd32) & ~(func7_val_read_read_fu_72_p2 == 7'd0) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | (~(opcode_val_read_read_fu_78_p2 == 6'd51) & ~(opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_error_phi_fu_148_p52 = 1'd1;
    end else if ((((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 
    == 6'd19)) | ((func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd2) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd3) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd4) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd6) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd7) & (opcode_val_read_read_fu_78_p2 == 6'd51)) 
    | ((func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd2) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd3) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd4) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd6) & (opcode_val_read_read_fu_78_p2 == 6'd19)) | ((func3_val_read_read_fu_66_p2 == 3'd7) & (opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_error_phi_fu_148_p52 = 1'd0;
    end else begin
        ap_phi_mux_error_phi_fu_148_p52 = 'bx;
    end
end

always @ (*) begin
    if (((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln15_1_fu_422_p1;
    end else if (((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln15_fu_433_p1;
    end else if (((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln19_1_fu_396_p1;
    end else if (((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln19_fu_401_p1;
    end else if (((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd2) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = zext_ln7_2_fu_411_p1;
    end else if (((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd3) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = zext_ln7_3_fu_406_p1;
    end else if (((grp_fu_264_p3 == 1'd0) & (func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln28_1_fu_373_p1;
    end else if (((grp_fu_264_p3 == 1'd1) & (func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln28_fu_378_p1;
    end else if (((func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd51))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = rd_val_14_fu_383_p2;
    end else if (((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd19))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln7_1_fu_333_p1;
    end else if (((func7_val_read_read_fu_72_p2 == 7'd32) & (func3_val_read_read_fu_66_p2 == 3'd5) & (opcode_val_read_read_fu_78_p2 == 6'd19))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln7_2_fu_314_p1;
    end else if ((((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func3_val_read_read_fu_66_p2 == 3'd0) & (opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = grp_fu_252_p2;
    end else if (((func3_val_read_read_fu_66_p2 == 3'd1) & (opcode_val_read_read_fu_78_p2 == 6'd19))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = trunc_ln7_fu_362_p1;
    end else if (((func3_val_read_read_fu_66_p2 == 3'd2) & (opcode_val_read_read_fu_78_p2 == 6'd19))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = zext_ln7_fu_343_p1;
    end else if (((func3_val_read_read_fu_66_p2 == 3'd3) & (opcode_val_read_read_fu_78_p2 == 6'd19))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = zext_ln7_1_fu_338_p1;
    end else if ((((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd4) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func3_val_read_read_fu_66_p2 == 3'd4) & (opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = grp_fu_234_p2;
    end else if ((((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd6) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func3_val_read_read_fu_66_p2 == 3'd6) & (opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = grp_fu_228_p2;
    end else if ((((func7_val_read_read_fu_72_p2 == 7'd0) & (func3_val_read_read_fu_66_p2 == 3'd7) & (opcode_val_read_read_fu_78_p2 == 6'd51)) | ((func3_val_read_read_fu_66_p2 == 3'd7) & (opcode_val_read_read_fu_78_p2 == 6'd19)))) begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = grp_fu_258_p2;
    end else begin
        ap_phi_mux_rd_val_9_phi_fu_87_p52 = 'bx;
    end
end

assign ap_ready = 1'b1;

assign ashr_ln15_fu_427_p2 = $signed(op1_val) >>> grp_fu_272_p2;

assign ashr_ln28_fu_367_p2 = $signed(op1_val) >>> op2_val;

assign empty_61_fu_292_p1 = op2_val[30:0];

assign empty_fu_284_p1 = op1_val[30:0];

assign grp_fu_228_p2 = (empty_fu_284_p1 | empty_61_fu_292_p1);

assign grp_fu_234_p2 = (empty_fu_284_p1 ^ empty_61_fu_292_p1);

assign grp_fu_240_p2 = ((op1_val < op2_val) ? 1'b1 : 1'b0);

assign grp_fu_246_p2 = (($signed(op1_val) < $signed(op2_val)) ? 1'b1 : 1'b0);

assign grp_fu_252_p2 = (empty_61_fu_292_p1 + empty_fu_284_p1);

assign grp_fu_258_p2 = (empty_fu_284_p1 & empty_61_fu_292_p1);

assign grp_fu_264_p3 = op2_val[32'd31];

assign grp_fu_272_p2 = (32'd0 - op2_val);

assign grp_fu_278_p2 = op1_val << grp_fu_272_p2;

assign lshr_ln19_fu_390_p2 = op1_val >> op2_val;

assign rd_val_14_fu_383_p2 = (empty_fu_284_p1 - empty_61_fu_292_p1);

assign rd_val_15_fu_327_p2 = op1_val >> zext_ln44_fu_323_p1;

assign rd_val_16_fu_308_p2 = $signed(op1_val) >>> zext_ln45_fu_304_p1;

assign rd_val_2_fu_356_p2 = op1_val << zext_ln38_fu_352_p1;

assign shl_ln15_fu_416_p2 = op1_val << op2_val;

assign trunc_ln15_1_fu_422_p1 = shl_ln15_fu_416_p2[30:0];

assign trunc_ln15_fu_433_p1 = ashr_ln15_fu_427_p2[30:0];

assign trunc_ln19_1_fu_396_p1 = lshr_ln19_fu_390_p2[30:0];

assign trunc_ln19_fu_401_p1 = grp_fu_278_p2[30:0];

assign trunc_ln28_1_fu_373_p1 = ashr_ln28_fu_367_p2[30:0];

assign trunc_ln28_fu_378_p1 = grp_fu_278_p2[30:0];

assign trunc_ln38_fu_348_p1 = op2_val[4:0];

assign trunc_ln44_fu_319_p1 = op2_val[4:0];

assign trunc_ln45_fu_300_p1 = op2_val[4:0];

assign trunc_ln7_1_fu_333_p1 = rd_val_15_fu_327_p2[30:0];

assign trunc_ln7_2_fu_314_p1 = rd_val_16_fu_308_p2[30:0];

assign trunc_ln7_fu_362_p1 = rd_val_2_fu_356_p2[30:0];

assign zext_ln38_fu_352_p1 = trunc_ln38_fu_348_p1;

assign zext_ln44_fu_323_p1 = trunc_ln44_fu_319_p1;

assign zext_ln45_fu_304_p1 = trunc_ln45_fu_300_p1;

assign zext_ln7_1_fu_338_p1 = grp_fu_240_p2;

assign zext_ln7_2_fu_411_p1 = grp_fu_246_p2;

assign zext_ln7_3_fu_406_p1 = grp_fu_240_p2;

assign zext_ln7_fu_343_p1 = grp_fu_246_p2;

assign ap_return = {{ap_phi_mux_rd_val_9_phi_fu_87_p52}, {ap_phi_mux_error_phi_fu_148_p52}};

assign func3_val_read_read_fu_66_p2 = func3_val;

assign func7_val_read_read_fu_72_p2 = func7_val;

assign opcode_val_read_read_fu_78_p2 = opcode_val;

endmodule //hart_OP_AL_32I

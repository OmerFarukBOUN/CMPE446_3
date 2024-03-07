// ==============================================================
// Generated by Vitis HLS v2023.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hart_hart,hls_ip_2023_2_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvf1517-3-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.202714,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=101,HLS_SYN_LUT=2126,HLS_VERSION=2023_2_2}" *)

module hart (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inst,
        pc,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] inst;
input  [31:0] pc;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] rf_address0;
reg    rf_ce0;
reg    rf_we0;
reg   [31:0] rf_d0;
wire   [31:0] rf_q0;
reg   [4:0] rf_address1;
reg    rf_ce1;
reg    rf_we1;
reg   [31:0] rf_d1;
wire   [31:0] rf_q1;
wire   [31:0] grp_fu_289_p2;
wire   [6:0] opcode_fu_326_p1;
reg   [6:0] opcode_reg_847;
wire   [4:0] rd_fu_330_p4;
reg   [4:0] rd_reg_851;
wire   [2:0] func3_fu_360_p4;
reg   [2:0] func3_reg_857;
reg   [6:0] tmp5_reg_868;
wire  signed [31:0] sext_ln36_fu_390_p1;
reg  signed [31:0] sext_ln36_reg_873;
wire   [12:0] offset_3_fu_430_p6;
reg   [12:0] offset_3_reg_878;
wire   [0:0] icmp_ln48_fu_510_p2;
reg   [0:0] icmp_ln48_reg_888;
wire   [31:0] next_pc_8_fu_533_p4;
wire   [31:0] next_pc_7_fu_543_p4;
wire   [31:0] next_pc_5_fu_558_p2;
wire    grp_OP_AL_32I_fu_270_ap_ready;
reg   [5:0] grp_OP_AL_32I_fu_270_opcode_val;
reg   [6:0] grp_OP_AL_32I_fu_270_func7_val;
reg   [2:0] grp_OP_AL_32I_fu_270_func3_val;
reg   [31:0] grp_OP_AL_32I_fu_270_op1_val;
reg   [31:0] grp_OP_AL_32I_fu_270_op2_val;
wire   [31:0] grp_OP_AL_32I_fu_270_ap_return;
wire   [31:0] next_pc_2_fu_771_p2;
reg   [31:0] ap_phi_mux_next_pc_9_phi_fu_249_p18;
reg   [31:0] next_pc_9_reg_245;
wire    ap_CS_fsm_state2;
wire   [31:0] next_pc_1_fu_800_p3;
wire   [31:0] next_pc_fu_832_p3;
wire   [0:0] icmp_ln75_fu_527_p2;
wire   [31:0] imm_20_U_fu_454_p3;
wire   [63:0] zext_ln73_fu_516_p1;
wire   [63:0] zext_ln69_fu_553_p1;
wire   [63:0] zext_ln65_fu_564_p1;
wire   [63:0] zext_ln61_fu_569_p1;
wire   [63:0] zext_ln57_fu_574_p1;
wire   [63:0] zext_ln57_1_fu_579_p1;
wire   [63:0] zext_ln52_fu_584_p1;
wire   [63:0] zext_ln47_fu_589_p1;
wire   [63:0] zext_ln47_1_fu_594_p1;
wire   [63:0] zext_ln53_fu_782_p1;
wire   [63:0] zext_ln48_fu_814_p1;
wire  signed [31:0] sext_ln53_fu_777_p1;
wire  signed [31:0] sext_ln48_fu_809_p1;
wire   [31:0] grp_fu_305_p2;
wire   [11:0] offset_2_fu_380_p4;
wire   [0:0] tmp_1_fu_402_p3;
wire   [0:0] tmp_fu_394_p3;
wire   [5:0] tmp_6_fu_420_p4;
wire   [3:0] tmp_3_fu_410_p4;
wire   [19:0] tmp_4_fu_444_p4;
wire   [7:0] tmp_9_fu_482_p4;
wire   [0:0] tmp_2_fu_474_p3;
wire   [9:0] tmp_5_fu_464_p4;
wire   [20:0] offset_1_fu_492_p6;
wire   [31:0] next_pc_6_fu_521_p2;
wire  signed [31:0] sext_ln41_fu_506_p1;
wire   [4:0] rs1_fu_340_p4;
wire   [4:0] rs2_fu_350_p4;
wire   [0:0] icmp_ln68_fu_599_p2;
wire   [0:0] icmp_ln69_fu_612_p2;
wire   [0:0] icmp_ln70_fu_625_p2;
wire   [0:0] icmp_ln71_fu_638_p2;
wire   [0:0] xor_ln71_fu_644_p2;
wire   [0:0] icmp_ln72_fu_657_p2;
wire   [0:0] icmp_ln73_fu_670_p2;
wire   [0:0] xor_ln73_fu_676_p2;
wire   [0:0] icmp_ln67_fu_689_p2;
wire   [12:0] returnval_7_fu_682_p3;
wire   [0:0] icmp_ln67_1_fu_702_p2;
wire   [12:0] returnval_6_fu_663_p3;
wire   [12:0] returnval_8_fu_694_p3;
wire   [0:0] icmp_ln67_2_fu_715_p2;
wire   [12:0] returnval_5_fu_650_p3;
wire   [12:0] returnval_9_fu_707_p3;
wire   [0:0] icmp_ln67_3_fu_728_p2;
wire   [12:0] returnval_4_fu_631_p3;
wire   [12:0] returnval_10_fu_720_p3;
wire   [0:0] icmp_ln67_4_fu_741_p2;
wire   [12:0] returnval_3_fu_618_p3;
wire   [12:0] returnval_11_fu_733_p3;
wire   [0:0] icmp_ln67_5_fu_754_p2;
wire   [12:0] returnval_2_fu_605_p3;
wire   [12:0] returnval_12_fu_746_p3;
wire   [12:0] returnval_fu_759_p3;
wire  signed [31:0] sext_ln66_fu_767_p1;
wire   [30:0] grp_fu_295_p4;
wire   [0:0] trunc_ln90_1_fu_790_p1;
wire   [0:0] trunc_ln54_fu_786_p1;
wire   [30:0] grp_fu_310_p4;
wire   [0:0] or_ln90_1_fu_794_p2;
wire   [0:0] trunc_ln90_fu_822_p1;
wire   [0:0] trunc_ln49_fu_818_p1;
wire   [0:0] or_ln90_fu_826_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

hart_rf_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
rf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(rf_address0),
    .ce0(rf_ce0),
    .we0(rf_we0),
    .d0(rf_d0),
    .q0(rf_q0),
    .address1(rf_address1),
    .ce1(rf_ce1),
    .we1(rf_we1),
    .d1(rf_d1),
    .q1(rf_q1)
);

hart_OP_AL_32I grp_OP_AL_32I_fu_270(
    .ap_ready(grp_OP_AL_32I_fu_270_ap_ready),
    .opcode_val(grp_OP_AL_32I_fu_270_opcode_val),
    .func7_val(grp_OP_AL_32I_fu_270_func7_val),
    .func3_val(grp_OP_AL_32I_fu_270_func3_val),
    .op1_val(grp_OP_AL_32I_fu_270_op1_val),
    .op2_val(grp_OP_AL_32I_fu_270_op2_val),
    .ap_return(grp_OP_AL_32I_fu_270_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln75_fu_527_p2 == 1'd1))) begin
        next_pc_9_reg_245 <= next_pc_7_fu_543_p4;
    end else if (((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln75_fu_527_p2 == 1'd0))) begin
        next_pc_9_reg_245 <= next_pc_8_fu_533_p4;
    end else if (((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2))) begin
        next_pc_9_reg_245 <= next_pc_fu_832_p3;
    end else if (((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2))) begin
        next_pc_9_reg_245 <= next_pc_1_fu_800_p3;
    end else if ((((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd55) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)))) begin
        next_pc_9_reg_245 <= grp_fu_289_p2;
    end else if (((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1))) begin
        next_pc_9_reg_245 <= next_pc_5_fu_558_p2;
    end else if (((opcode_reg_847 == 7'd99) & (1'b1 == ap_CS_fsm_state2))) begin
        next_pc_9_reg_245 <= next_pc_2_fu_771_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        func3_reg_857 <= {{inst[14:12]}};
        icmp_ln48_reg_888 <= icmp_ln48_fu_510_p2;
        offset_3_reg_878[12 : 1] <= offset_3_fu_430_p6[12 : 1];
        opcode_reg_847 <= opcode_fu_326_p1;
        rd_reg_851 <= {{inst[11:7]}};
        sext_ln36_reg_873 <= sext_ln36_fu_390_p1;
        tmp5_reg_868 <= {{inst[31:25]}};
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((opcode_reg_847 == 7'd51)) begin
            ap_phi_mux_next_pc_9_phi_fu_249_p18 = next_pc_fu_832_p3;
        end else if ((opcode_reg_847 == 7'd19)) begin
            ap_phi_mux_next_pc_9_phi_fu_249_p18 = next_pc_1_fu_800_p3;
        end else if ((opcode_reg_847 == 7'd99)) begin
            ap_phi_mux_next_pc_9_phi_fu_249_p18 = next_pc_2_fu_771_p2;
        end else begin
            ap_phi_mux_next_pc_9_phi_fu_249_p18 = next_pc_9_reg_245;
        end
    end else begin
        ap_phi_mux_next_pc_9_phi_fu_249_p18 = next_pc_9_reg_245;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2)) | ((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2)))) begin
        grp_OP_AL_32I_fu_270_func3_val = func3_reg_857;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_OP_AL_32I_fu_270_func3_val = 3'd0;
    end else begin
        grp_OP_AL_32I_fu_270_func3_val = 'bx;
    end
end

always @ (*) begin
    if ((((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2)) | ((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2)))) begin
        grp_OP_AL_32I_fu_270_func7_val = tmp5_reg_868;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_OP_AL_32I_fu_270_func7_val = 7'd0;
    end else begin
        grp_OP_AL_32I_fu_270_func7_val = 'bx;
    end
end

always @ (*) begin
    if (((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_OP_AL_32I_fu_270_op1_val = rf_q1;
    end else if (((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_OP_AL_32I_fu_270_op1_val = rf_q0;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_OP_AL_32I_fu_270_op1_val = pc;
    end else begin
        grp_OP_AL_32I_fu_270_op1_val = 'bx;
    end
end

always @ (*) begin
    if (((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_OP_AL_32I_fu_270_op2_val = rf_q0;
    end else if (((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_OP_AL_32I_fu_270_op2_val = sext_ln36_reg_873;
    end else if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_OP_AL_32I_fu_270_op2_val = imm_20_U_fu_454_p3;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_OP_AL_32I_fu_270_op2_val = 32'd4;
    end else begin
        grp_OP_AL_32I_fu_270_op2_val = 'bx;
    end
end

always @ (*) begin
    if (((opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_OP_AL_32I_fu_270_opcode_val = 6'd51;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)) | ((opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2)))) begin
        grp_OP_AL_32I_fu_270_opcode_val = 6'd19;
    end else begin
        grp_OP_AL_32I_fu_270_opcode_val = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((opcode_fu_326_p1 == 7'd51)) begin
            rf_address0 = zext_ln47_1_fu_594_p1;
        end else if ((opcode_fu_326_p1 == 7'd19)) begin
            rf_address0 = zext_ln52_fu_584_p1;
        end else if ((opcode_fu_326_p1 == 7'd99)) begin
            rf_address0 = zext_ln57_1_fu_579_p1;
        end else if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd55))) begin
            rf_address0 = zext_ln61_fu_569_p1;
        end else if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23))) begin
            rf_address0 = zext_ln65_fu_564_p1;
        end else if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111))) begin
            rf_address0 = zext_ln69_fu_553_p1;
        end else if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103))) begin
            rf_address0 = zext_ln73_fu_516_p1;
        end else begin
            rf_address0 = 'bx;
        end
    end else begin
        rf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2))) begin
        rf_address1 = zext_ln48_fu_814_p1;
    end else if (((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2))) begin
        rf_address1 = zext_ln53_fu_782_p1;
    end else if (((opcode_fu_326_p1 == 7'd51) & (1'b1 == ap_CS_fsm_state1))) begin
        rf_address1 = zext_ln47_fu_589_p1;
    end else if (((opcode_fu_326_p1 == 7'd99) & (1'b1 == ap_CS_fsm_state1))) begin
        rf_address1 = zext_ln57_fu_574_p1;
    end else begin
        rf_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd51) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd19) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd99) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd55) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        rf_ce0 = 1'b1;
    end else begin
        rf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd51) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (opcode_fu_326_p1 == 7'd99) & (1'b1 == ap_CS_fsm_state1)))) begin
        rf_ce1 = 1'b1;
    end else begin
        rf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd55) & (1'b1 == ap_CS_fsm_state1))) begin
        rf_d0 = imm_20_U_fu_454_p3;
    end else if ((((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        rf_d0 = grp_OP_AL_32I_fu_270_ap_return;
    end else begin
        rf_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln48_reg_888 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((opcode_reg_847 == 7'd51)) begin
            rf_d1 = sext_ln48_fu_809_p1;
        end else if ((opcode_reg_847 == 7'd19)) begin
            rf_d1 = sext_ln53_fu_777_p1;
        end else begin
            rf_d1 = 'bx;
        end
    end else begin
        rf_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd55) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd23) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd103) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (icmp_ln48_fu_510_p2 == 1'd0) & (opcode_fu_326_p1 == 7'd111) & (1'b1 == ap_CS_fsm_state1)))) begin
        rf_we0 = 1'b1;
    end else begin
        rf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd51) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln48_reg_888 == 1'd0) & (opcode_reg_847 == 7'd19) & (1'b1 == ap_CS_fsm_state2)))) begin
        rf_we1 = 1'b1;
    end else begin
        rf_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_return = ap_phi_mux_next_pc_9_phi_fu_249_p18;

assign func3_fu_360_p4 = {{inst[14:12]}};

assign grp_fu_289_p2 = (pc + 32'd4);

assign grp_fu_295_p4 = {{grp_OP_AL_32I_fu_270_ap_return[31:1]}};

assign grp_fu_305_p2 = (pc + 32'd4);

assign grp_fu_310_p4 = {{grp_fu_305_p2[31:1]}};

assign icmp_ln48_fu_510_p2 = ((rd_fu_330_p4 == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln67_1_fu_702_p2 = ((func3_reg_857 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln67_2_fu_715_p2 = ((func3_reg_857 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln67_3_fu_728_p2 = ((func3_reg_857 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln67_4_fu_741_p2 = ((func3_reg_857 == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln67_5_fu_754_p2 = ((func3_reg_857 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln67_fu_689_p2 = ((func3_reg_857 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln68_fu_599_p2 = ((rf_q1 == rf_q0) ? 1'b1 : 1'b0);

assign icmp_ln69_fu_612_p2 = ((rf_q1 != rf_q0) ? 1'b1 : 1'b0);

assign icmp_ln70_fu_625_p2 = (($signed(rf_q1) < $signed(rf_q0)) ? 1'b1 : 1'b0);

assign icmp_ln71_fu_638_p2 = (($signed(rf_q1) < $signed(rf_q0)) ? 1'b1 : 1'b0);

assign icmp_ln72_fu_657_p2 = ((rf_q1 < rf_q0) ? 1'b1 : 1'b0);

assign icmp_ln73_fu_670_p2 = ((rf_q1 < rf_q0) ? 1'b1 : 1'b0);

assign icmp_ln75_fu_527_p2 = ((func3_fu_360_p4 == 3'd0) ? 1'b1 : 1'b0);

assign imm_20_U_fu_454_p3 = {{tmp_4_fu_444_p4}, {12'd0}};

assign next_pc_1_fu_800_p3 = {{grp_fu_310_p4}, {or_ln90_1_fu_794_p2}};

assign next_pc_2_fu_771_p2 = ($signed(sext_ln66_fu_767_p1) + $signed(pc));

assign next_pc_5_fu_558_p2 = ($signed(sext_ln41_fu_506_p1) + $signed(pc));

assign next_pc_6_fu_521_p2 = ($signed(sext_ln36_fu_390_p1) + $signed(pc));

assign next_pc_7_fu_543_p4 = {next_pc_6_fu_521_p2[32-1:1], |(1'd0)};

assign next_pc_8_fu_533_p4 = {next_pc_6_fu_521_p2[32-1:1], |(1'd1)};

assign next_pc_fu_832_p3 = {{grp_fu_310_p4}, {or_ln90_fu_826_p2}};

assign offset_1_fu_492_p6 = {{{{{tmp_1_fu_402_p3}, {tmp_9_fu_482_p4}}, {tmp_2_fu_474_p3}}, {tmp_5_fu_464_p4}}, {1'd0}};

assign offset_2_fu_380_p4 = {{inst[31:20]}};

assign offset_3_fu_430_p6 = {{{{{tmp_1_fu_402_p3}, {tmp_fu_394_p3}}, {tmp_6_fu_420_p4}}, {tmp_3_fu_410_p4}}, {1'd0}};

assign opcode_fu_326_p1 = inst[6:0];

assign or_ln90_1_fu_794_p2 = (trunc_ln90_1_fu_790_p1 | trunc_ln54_fu_786_p1);

assign or_ln90_fu_826_p2 = (trunc_ln90_fu_822_p1 | trunc_ln49_fu_818_p1);

assign rd_fu_330_p4 = {{inst[11:7]}};

assign returnval_10_fu_720_p3 = ((icmp_ln67_2_fu_715_p2[0:0] == 1'b1) ? returnval_5_fu_650_p3 : returnval_9_fu_707_p3);

assign returnval_11_fu_733_p3 = ((icmp_ln67_3_fu_728_p2[0:0] == 1'b1) ? returnval_4_fu_631_p3 : returnval_10_fu_720_p3);

assign returnval_12_fu_746_p3 = ((icmp_ln67_4_fu_741_p2[0:0] == 1'b1) ? returnval_3_fu_618_p3 : returnval_11_fu_733_p3);

assign returnval_2_fu_605_p3 = ((icmp_ln68_fu_599_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_3_fu_618_p3 = ((icmp_ln69_fu_612_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_4_fu_631_p3 = ((icmp_ln70_fu_625_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_5_fu_650_p3 = ((xor_ln71_fu_644_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_6_fu_663_p3 = ((icmp_ln72_fu_657_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_7_fu_682_p3 = ((xor_ln73_fu_676_p2[0:0] == 1'b1) ? offset_3_reg_878 : 13'd4);

assign returnval_8_fu_694_p3 = ((icmp_ln67_fu_689_p2[0:0] == 1'b1) ? returnval_7_fu_682_p3 : 13'd1);

assign returnval_9_fu_707_p3 = ((icmp_ln67_1_fu_702_p2[0:0] == 1'b1) ? returnval_6_fu_663_p3 : returnval_8_fu_694_p3);

assign returnval_fu_759_p3 = ((icmp_ln67_5_fu_754_p2[0:0] == 1'b1) ? returnval_2_fu_605_p3 : returnval_12_fu_746_p3);

assign rs1_fu_340_p4 = {{inst[19:15]}};

assign rs2_fu_350_p4 = {{inst[24:20]}};

assign sext_ln36_fu_390_p1 = $signed(offset_2_fu_380_p4);

assign sext_ln41_fu_506_p1 = $signed(offset_1_fu_492_p6);

assign sext_ln48_fu_809_p1 = $signed(grp_fu_295_p4);

assign sext_ln53_fu_777_p1 = $signed(grp_fu_295_p4);

assign sext_ln66_fu_767_p1 = $signed(returnval_fu_759_p3);

assign tmp_1_fu_402_p3 = inst[32'd31];

assign tmp_2_fu_474_p3 = inst[32'd20];

assign tmp_3_fu_410_p4 = {{inst[11:8]}};

assign tmp_4_fu_444_p4 = {{inst[31:12]}};

assign tmp_5_fu_464_p4 = {{inst[30:21]}};

assign tmp_6_fu_420_p4 = {{inst[30:25]}};

assign tmp_9_fu_482_p4 = {{inst[19:12]}};

assign tmp_fu_394_p3 = inst[32'd7];

assign trunc_ln49_fu_818_p1 = grp_OP_AL_32I_fu_270_ap_return[0:0];

assign trunc_ln54_fu_786_p1 = grp_OP_AL_32I_fu_270_ap_return[0:0];

assign trunc_ln90_1_fu_790_p1 = grp_fu_305_p2[0:0];

assign trunc_ln90_fu_822_p1 = grp_fu_305_p2[0:0];

assign xor_ln71_fu_644_p2 = (icmp_ln71_fu_638_p2 ^ 1'd1);

assign xor_ln73_fu_676_p2 = (icmp_ln73_fu_670_p2 ^ 1'd1);

assign zext_ln47_1_fu_594_p1 = rs2_fu_350_p4;

assign zext_ln47_fu_589_p1 = rs1_fu_340_p4;

assign zext_ln48_fu_814_p1 = rd_reg_851;

assign zext_ln52_fu_584_p1 = rs1_fu_340_p4;

assign zext_ln53_fu_782_p1 = rd_reg_851;

assign zext_ln57_1_fu_579_p1 = rs2_fu_350_p4;

assign zext_ln57_fu_574_p1 = rs1_fu_340_p4;

assign zext_ln61_fu_569_p1 = rd_fu_330_p4;

assign zext_ln65_fu_564_p1 = rd_fu_330_p4;

assign zext_ln69_fu_553_p1 = rd_fu_330_p4;

assign zext_ln73_fu_516_p1 = rd_fu_330_p4;

always @ (posedge ap_clk) begin
    offset_3_reg_878[0] <= 1'b0;
end

endmodule //hart

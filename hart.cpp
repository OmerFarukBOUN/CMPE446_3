#include "parameters.hpp"

#ifdef DEBUG
#include <iostream>
#endif


pc_type next_pc_calc(pc_type current_pc, imm_type offset, bit_type error);



hart_return hart(inst_type inst, r_type r1, r_type r2, pc_type pc)
{
//#pragma HLS AGGREGATE compact=bit variable=hart_return
//#pragma HLS interface mode=ap_ovld port=return


//#pragma HLS PIPELINE II=4
	hart_return hart_out;
	opcode_type opcode;
	func3_type func3;
	func7_type func7;
	imm_type imm_11_0;
	imm_type imm_12;
	imm_type imm_11_S;
	pc_type imm_20_U;
	imm_type imm_JAL;
	imm_type offset;
	bit_type error;
	r_e_type return_val;
	rf_pntr_type rd;

    opcode= inst.range(6,0) ;
	rd = inst.range(11,7);
	func3= inst.range(14,12);
	func7= inst.range(31,25);
	imm_11_0=(imm_type)((ap_int<12>) (inst.range(31, 20)));
	imm_12 = (imm_type)((ap_int<13>)((inst[31] << 12) | (inst[7] << 11)
			| (inst.range(30, 25) << 5) | (inst.range(11, 8) << 1)));
	imm_11_S = (imm_type) (inst.range(31, 25)<<5) | (inst.range(11,7));
	imm_20_U = (pc_type) inst.range(31,12) << 12;
	imm_JAL = (imm_type) ((ap_int<21>) (inst[31]<<20 | inst.range(30,21) << 1 | inst[20]<<11 | inst.range(19,12)<<12));


	switch(opcode){
	case OP_AL_R:
		return_val = OP_AL_32I(opcode,func7,func3,r1,r2);
		hart_out.register_ret=return_val>>1;
		hart_out.next_pc =next_pc_calc(pc, 4, return_val[0]);
		break;
	case OP_AL_I:
		return_val = OP_AL_32I(opcode,func7,func3,r1,(r_type) imm_11_0);
		hart_out.register_ret=return_val>>1;
		hart_out.next_pc =next_pc_calc(pc, 4, return_val[0]);
		break; //caution!!! check imm and fumc7
	case OP_AL_B:
		offset = OP_AL_32B(imm_12, func3, r1, r2);
		hart_out.next_pc = next_pc_calc(pc, offset, 0);
		break;
	case OP_LUI:
		hart_out.register_ret = imm_20_U;
		hart_out.next_pc = next_pc_calc(pc, 4, 0);
		break;
	case OP_AUIPC:
		hart_out.register_ret = ALU_SUM(pc, imm_20_U);
		hart_out.next_pc = next_pc_calc(pc, 4, 0);
		break;
	case OP_JAL:
		hart_out.register_ret = ALU_SUM(pc, 4);
		hart_out.next_pc = next_pc_calc(pc, imm_JAL, 0);
		break;
	case OP_JALR:
		hart_out.register_ret = ALU_SUM(pc, 4);
		hart_out.next_pc = next_pc_calc(pc, imm_11_0, 0);
		func3 ? hart_out.next_pc[0] = 1: hart_out.next_pc[0] = 0;
		break;

    default: error = 1; break;
	}


	return hart_out;
}

pc_type next_pc_calc(pc_type current_pc, imm_type offset, bit_type error) {
	return (current_pc+offset)|error;
}


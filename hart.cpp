#include "parameters.hpp"

#ifdef DEBUG
#include <iostream>
#endif


pc_type next_pc_calc(pc_type current_pc, imm_type offset, bit_type error);

pc_type hart(inst_type inst, pc_type pc)
{
//#pragma HLS interface mode=ap_ovld port=return


//#pragma HLS PIPELINE II=4
	opcode_type opcode;
	rf_pntr_type rd,rs1, rs2 ;
	func3_type func3;
	func7_type func7;
	static r_type rf[XLEN];
	pc_type next_pc;
	imm_type imm_11_0;
	imm_type imm_12;
	imm_type imm_11_S;
	pc_type imm_20_U;
	imm_type imm_JAL;
	imm_type offset;
	bit_type error;
	r_e_type return_val;

    opcode= inst.range(6,0) ;
	rd = inst.range(11,7);
	rs1= inst.range(19,15);
	rs2= inst.range(24,20);
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
		return_val = OP_AL_32I(opcode,func7,func3,rf[rs1],rf[rs2]);
		if (rd!=0) rf[rd]=return_val>>1;
		next_pc =next_pc_calc(pc, 4, return_val[0]);
		break;
	case OP_AL_I:
		return_val = OP_AL_32I(opcode,func7,func3,rf[rs1],(r_type) imm_11_0);
		if (rd!=0) rf[rd]=return_val>>1;
		next_pc =next_pc_calc(pc, 4, return_val[0]);
		break; //caution!!! check imm and fumc7
	case OP_AL_B:
		offset = OP_AL_32B(imm_12, func3, rf[rs1], rf[rs2]);
		next_pc = next_pc_calc(pc, offset, 0);
		break;
	case OP_LUI:
		if (rd!=0) rf[rd] = imm_20_U;
		next_pc = next_pc_calc(pc, 4, 0);
		break;
	case OP_AUIPC:
		if (rd!=0) rf[rd] = ALU_SUM(pc, imm_20_U);
		next_pc = next_pc_calc(pc, 4, 0);
		break;
	case OP_JAL:
		if (rd!=0) rf[rd] = ALU_SUM(pc, 4);
		next_pc = next_pc_calc(pc, imm_JAL, 0);
		break;
	case OP_JALR:
		if (rd!=0) rf[rd] = ALU_SUM(pc, 4);
		next_pc = next_pc_calc(pc, imm_11_0, 0);
		func3 ? next_pc[0] = 1: next_pc[0] = 0;
		break;

    default: error = 1; break;
	}

#ifdef DEBUG
	std::cout << hex << rf[1] << std::endl;
#endif


	return(next_pc);
}

pc_type next_pc_calc(pc_type current_pc, imm_type offset, bit_type error) {
	return (current_pc+offset)|error;
}


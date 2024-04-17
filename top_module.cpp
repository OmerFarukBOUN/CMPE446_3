#include "parameters.hpp"

#ifdef DEBUG
#include <iostream>
using namespace std;
#endif

pc_type top_module(inst_type inst1, inst_type inst2, pc_type current_pc) {
//#pragma HLS PIPELINE
#pragma HLS INLINE OFF
	pc_type next_pc;
	rf_pntr_type rs1_1, rs2_1, rd_1, rs1_2, rs2_2, rd_2;
	opcode_type opcode1;
	opcode_type opcode2;
	static r_type rf[XLEN];
	hart_return data_1;
	hart_return data_2;
	pc_type second_pc;
	hazard_type hazards;
	r_type reg1_2, reg2_2;
#pragma HLS array_partition variable=rf type=complete

	rd_1 = inst1.range(11, 7);
	rs1_1 = inst1.range(19, 15);
	rs2_1 = inst1.range(24, 20);
	opcode1 = inst1.range(6, 0);

	rd_2 = inst2.range(11, 7);
	rs1_2 = inst2.range(19, 15);
	rs2_2 = inst2.range(24, 20);
	opcode2 = inst2.range(6, 0);
	second_pc = current_pc + 4;

	hazards = data_hazard_detection(inst1, inst2);
	data_1 = hart(inst1, rf[rs1_1], rf[rs2_1], current_pc);
#if defined(FIRSTDESIGN)

	hazards[0] ? reg1_2 = data_1.register_ret : reg1_2 = rf[rs1_2];
	hazards[1] ? reg2_2 = data_1.register_ret : reg2_2 = rf[rs2_2];

	data_2 = hart(inst2, reg1_2, reg2_2, second_pc);

	if (second_pc != data_1.next_pc) {
		next_pc = data_1.next_pc;
		if (opcode1 != OP_AL_B && !data_1.next_pc[0] && rd_1 != 0)
			rf[rd_1] = data_1.register_ret;
	} else {
		next_pc = data_2.next_pc;

		if (rd_1 != rd_2) {
			if (opcode1 != OP_AL_B && !data_1.next_pc[0] && rd_1 != 0)
				rf[rd_1] = data_1.register_ret;
			if (opcode2 != OP_AL_B && !data_2.next_pc[0] && rd_2 != 0)
				rf[rd_2] = data_2.register_ret;
		} else {
			if (opcode2 != OP_AL_B && !data_2.next_pc[0] && rd_2 != 0)
				rf[rd_2] = data_2.register_ret;
		}

	}
#else
	if (hazards[0]|hazards[1]) {
		if (opcode1 != OP_AL_B && !data_1.next_pc[0] && rd_1 != 0)
						rf[rd_1] = data_1.register_ret;
		next_pc = data_1.next_pc;
	}else{
		data_2 = hart(inst2, rf[rs1_2], rf[rs2_2], second_pc);
		if (second_pc != data_1.next_pc) {
			next_pc = data_1.next_pc;
			if (opcode1 != OP_AL_B && !data_1.next_pc[0] && rd_1 != 0)
				rf[rd_1] = data_1.register_ret;
		} else {
			next_pc = data_2.next_pc;

			if (rd_1 != rd_2) {
				if (opcode1 != OP_AL_B && !data_1.next_pc[0] && rd_1 != 0)
					rf[rd_1] = data_1.register_ret;
				if (opcode2 != OP_AL_B && !data_2.next_pc[0] && rd_2 != 0)
					rf[rd_2] = data_2.register_ret;
			} else {
				if (opcode2 != OP_AL_B && !data_2.next_pc[0] && rd_2 != 0)
					rf[rd_2] = data_2.register_ret;
			}

		}
	}
#endif

	return next_pc;
}

hazard_type data_hazard_detection(inst_type inst1, inst_type inst2) {
	rf_pntr_type rs1_1, rs2_1, rd_1, rs1_2, rs2_2, rd_2;
	opcode_type opcode1;
	opcode_type opcode2;
	hazard_type hazards;

	rd_1 = inst1.range(11, 7);
	rs1_1 = inst1.range(19, 15);
	rs2_1 = inst1.range(24, 20);
	opcode1 = inst1.range(6, 0);

	rd_2 = inst2.range(11, 7);
	rs1_2 = inst2.range(19, 15);
	rs2_2 = inst2.range(24, 20);
	opcode2 = inst2.range(6, 0);

	// If the register to return is x0 for the first instruction, there are no hazards
	if (rd_1 == 0 || opcode1 != OP_AL_B) {
		hazards = 0;
	} else {
		//  If the register to return for the first instruction is used as rs1 in the second instruction
		hazards[0] =
				((rd_1 == rs1_2)
						& (opcode2 != OP_LUI & opcode2 != OP_AUIPC
								& opcode2 != OP_JAL));

		//  If the register to return for the first instruction is used as rs2 in the second instruction
		hazards[1] = ((rd_1 == rs2_2)
				& (opcode2 == OP_AL_B | opcode2 == OP_AL_R));

	}
	return hazards;
}


#include "parameters.hpp"


r_e_type OP_AL_32I(inst_type opcode, func7_type func7, func3_type func3, r_type op1, r_type op2)
{
	r_type rd_val;
	bit_type error=0;
	switch(opcode) {
	case OP_AL_R:
		switch(func7){ //func7
		case FUNC7_0:
			switch(func3){
			case ADD: rd_val =  op1 + op2; break;
			case SLL: rd_val = op1 << op2;break;
			case SLT: op1<op2 ? rd_val = 1 : rd_val =0; break;
			case SLTU:(uns)op1<(uns)op2 ? rd_val = 1 : rd_val =0; break;
			case XOR: rd_val = op1 ^ op2;break;
			case SRL: rd_val = (uns) op1 >> op2;break;
			case OR:  rd_val = op1 | op2;break;
			case AND: rd_val = op1 & op2;break;
			default: error = 1;break;//... //illegal opcode
			}
			break;
		case FUNC7_32:
			switch(func3){ //func3
			case SUB: rd_val = op1 - op2; break;
			case SRA: rd_val = op1 >> op2;break;
			default: error = 1;break;//... //illegal opcode
			}
			break;
		default: error = 1;break; //... //illegal opcode
		}
		break;
	case OP_AL_I:
		switch(func3){
		case ADD: rd_val =  op1 + op2; break;
		case SLL: rd_val = op1 << (uns)op2.range(4, 0);break;
		case SLT: op1<op2 ? rd_val = 1 : rd_val =0; break;
		case SLTU:(uns)op1<(uns)op2 ? rd_val = 1 : rd_val =0; break;
		case XOR: rd_val = op1 ^ op2;break;
		case SRL:
			switch (func7) {
			case FUNC7_0: rd_val = (r_type) (((uns) op1) >> (rf_pntr_type) op2.range(4, 0));break;
			case FUNC7_32: rd_val = (r_type) (op1 >> (rf_pntr_type)op2.range(4,0));break;
			default: error = 1; break;
			}
			break;
		case OR:  rd_val = op1 | op2; break;
		case AND: rd_val = op1 & op2; break;
		default: error = 1;break; //... //illegal opcode
		}
		break;
	default: error = 1; break;
	}
	return (rd_val<<1) | error; //caution: you also have to return illegal opcode info!!
}




// For branching


imm_type OP_AL_32B(imm_type offset, func3_type func3, r_type op1, r_type op2) {
	imm_type returnval;
	switch(func3) {
	case BEQ: (op1==op2) ? returnval = offset : returnval = 4; break;
	case BNE: (op1!=op2) ? returnval = offset : returnval = 4; break;
	case BLT: (op1<op2) ? returnval = offset : returnval = 4; break;
	case BGE: (op1>=op2) ? returnval = offset : returnval = 4; break;
	case BLTU: ((uns)op1<(uns)op2) ? returnval = offset : returnval = 4; break;
	case BGEU: ((uns)op1>=(uns)op2) ? returnval = offset : returnval = 4; break;
	default: returnval = 1; break;
	}
	return returnval;
}

imm_type ALU_SUM(imm_type op1, imm_type op2) {
	return op1 + op2;
}

imm_type ALU_DIF(imm_type op1, imm_type op2) {
	return op1 + op2;
}


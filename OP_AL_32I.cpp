
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
			case ADD: rd_val = ALU_SUM(op1,op2); break;
			case SLL: rd_val = ALU_SLL(op1, op2.range(4,0));break;
			case SLT: rd_val = ALU_SLT(op1,op2); break;
			case SLTU:rd_val = ALU_SLTU((uns)op1, (uns)op2); break;
			case XOR: rd_val = ALU_XOR(op1,op2);break;
			case SRL: rd_val = ALU_SRL((uns) op1,op2.range(4,0));break;
			case OR:  rd_val = ALU_OR(op1,op2);break;
			case AND: rd_val = ALU_AND(op1,op2);break;
			default: error = 1;break;//... //illegal opcode
			}
			break;
		case FUNC7_32:
			switch(func3){ //func3
			case SUB: rd_val = ALU_SUM(op1, ALU_NEG(op2)); break;
			case SRA: rd_val = ALU_SRA(op1, op2.range(4,0));break;
			default: error = 1;break;//... //illegal opcode
			}
			break;
		default: error = 1;break; //... //illegal opcode
		}
		break;
	case OP_AL_I:
		switch(func3){
		case ADD: rd_val = ALU_SUM(op1,op2); break;
		case SLL: rd_val = ALU_SLL(op1, op2.range(4,0));break;
		case SLT: rd_val = ALU_SLT(op1,op2); break;
		case SLTU:rd_val = ALU_SLTU((uns)op1, (uns)op2); break;
		case XOR: rd_val = ALU_XOR(op1,op2);break;
		case SRL:
			switch (func7) {
			case FUNC7_0: rd_val = ALU_SRL((uns) op1,op2.range(4,0));break;
			case FUNC7_32: rd_val = ALU_SRA(op1, op2.range(4,0));break;
			default: error = 1; break;
			}
			break;
		case OR:  rd_val = ALU_OR(op1,op2);break;
		case AND: rd_val = ALU_AND(op1,op2);break;
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

imm_type ALU_NEG(imm_type op1) {
	return -op1;
}

imm_type ALU_SLL(imm_type op1, rf_pntr_type op2) {
	return op1 << op2;
}

imm_type ALU_SLT(imm_type op1, imm_type op2) {
	return (op1<op2);
}

imm_type ALU_SLTU(uns op1, uns op2) {
	return (op1<op2);
}


imm_type ALU_XOR(imm_type op1, imm_type op2) {
	return op1 ^ op2;
}

imm_type ALU_SRL(uns op1, rf_pntr_type op2) {
	return op1 >> op2;
}

imm_type ALU_SRA(imm_type op1, rf_pntr_type op2) {
	return op1 >> op2;
}

imm_type ALU_OR(imm_type op1, imm_type op2) {
	return op1 | op2;
}

imm_type ALU_AND(imm_type op1, imm_type op2) {
	return op1 & op2;
}

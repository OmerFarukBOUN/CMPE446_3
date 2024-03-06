#include <iostream>
#include "parameters.hpp"
using namespace std;

hart_id hart_error;

void handleIllegalOpcode(hart_id* hart_no);


int main(void) //execution environment
		{
	inst_type code[] = {
			//0x3e800093, 0x7d008113, 0xc1810193, 0x83018213, 0x3e820293
#if defined(LEGAL)
			0x00500093,
			0x00700113,
			0x00208463,
			0x00108093,
			0x00500193,
			0x00500213,
			0x00419463,
			0x00108093,
			0x00500293,
			0x00700313,
			0x0062c463,
			0x00108093,
			0x00700393,
			0x00500413,
			0x0083d463,
			0x00108093,
			0x00000493,
			0xfff00513,
			0x00a4e463,
			0x00108093,
			0xfff00593,
			0x00000613,
			0x00c5f463,
			0x00108093,
			0x00500093,
			0x00c000ef,
			0x00000013,
			0x008000ef,
			0x00408167,
			0x000010b7,
			0x00002097,
			0x00500093

//			addi x1, x0, 5
//			addi x2, x0, 7
//			beq x1, x2, A
//			addi x1, x1, 1
//			A:
//			addi x3, x0, 5
//			addi x4, x0, 5
//			bne x3, x4, B
//			addi x1, x1, 1
//			B:
//			addi x5, x0, 5
//			addi x6, x0, 7
//			blt x5, x6, C
//			addi x1, x1, 1
//			C:
//			addi x7, x0, 7
//			addi x8, x0, 5
//			bge x7, x8, D
//			addi x1, x1, 1
//			D:
//			addi x9, x0, 0
//			addi x10, x0, -1
//			bltu x9, x10, E
//			addi x1, x1, 1
//			E:
//			addi x11, x0, -1
//			addi x12, x0, 0
//			bgeu x11, x12, F
//			addi x1, x1, 1
//			F:
//			addi x1, x0, 5
//			jal x1, G
//			add x0,x0, 0
//			jal x1, H
//			G:
//			jalr x2, x1, 4
//			H:
//			lui x1, 1
//			auipc x1, 2

#else
			0x00500093, // addi x1, x0, 5
			0x0,		// Illegal Opcode
			0x00500093  // addi x1, x0, 5
#endif

	}; //assuming 32-bit Instruction Memory interface
	int N = sizeof(code) >> 2;
	unsigned int pc = 0;
	while ((pc >> 2) < N) {
#ifdef DEBUG
		cout << pc << " " << hex << code[pc >> 2] << "\n";
#endif
		pc = hart(code[pc >> 2], pc);
		if (pc & 1 != 0) {
			hart_error = 0;
//			handleIllegalOpcode(&hart_error);
			return -1;
		}
	}
	return (0);

}


// For handling illegal opcodes. Can be redefined.
void handleIllegalOpcode(hart_id* hart_no) {
#ifdef DEBUG
	cout << "Illegal Opcode!" << endl;
#endif
}

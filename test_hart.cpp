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
			0x00000693,
			0x00000513,
			0x00200613,
			0x00800593,
			0x00200713,
			0x02d65663,
			0x000687b3,
			0x40e787b3,
			0xfef04ee3,
			0x00078863,
			0x00170713,
			0xfed716e3,
			0x00150513,
			0x00168693,
			0xfcb69ce3,
			0x0100006f,
			0x00150513,
			0x00168693,
			0xfc9ff06f,
			0x00000013
#endif


	}; //assuming 32-bit Instruction Memory interface
	int N = sizeof(code) >> 2;
	unsigned int pc = 0;
	while ((pc >> 2) < N) {
#ifdef DEBUG
		cout << pc << " " << hex << code[pc >> 2] << "\n";
#endif
		pc = top_module(code[pc >> 2],code[(pc >> 2)+1], pc);
		if (pc & 1 != 0) {
			hart_error = 0;
//			handleIllegalOpcode(&hart_error);
			return 0;
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

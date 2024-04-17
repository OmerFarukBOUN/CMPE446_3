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


			0x00800613,
			0xf68737b7,
			0x00060313,
			0x0a178793,
			0x00000513,
			0x00400893,
			0x00200813,
			0x00100593,
			0x00f5f6b3,
			0x00d036b3,
			0x00f87733,
			0x00d50533,
			0x00e03733,
			0x00f8f6b3,
			0x00e50533,
			0x00d036b3,
			0x00f37733,
			0x00d50533,
			0x00e03733,
			0xfff60613,
			0x00359593,
			0x00381813,
			0x00389893,
			0x00e50533,
			0x00331313,
			0xfa061ee3
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

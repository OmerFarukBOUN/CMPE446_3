#include <cmath>
#include "ap_fixed.h"
using namespace std;


//#define EXTRA
#define LEGAL
//#define DEBUG

#define XLEN 32
#define BYTE 8
#define BIT 1
#define STACKSIZE 100
#define DATAMEMSIZE 100
#define RF_PNTR_WIDTH 5
#define OPCODE_WIDTH 7
#define FUNC3_WIDTH 3
#define FUNC7_WIDTH 7
#define LOG_NO_OF_HART 1
//#define

//#define AUIPC 		0010111
#define OP_AL_I 	0b0010011
#define OP_AL_R 	0b0110011
#define OP_AL_B 	0b1100011
#define OP_AL_Load 	0b0000011
#define OP_AL_Save 	0b0100011
#define OP_AL_U 	0b1101111
#define OP_LUI 		0b0110111
#define OP_AUIPC 	0b0010111
#define OP_JAL 		0b1101111
#define OP_JALR		0b1100111

#define FUNC7_0 0
#define FUNC7_32 32

typedef ap_int<XLEN> inst_type ;
typedef ap_uint<RF_PNTR_WIDTH> rf_pntr_type ;
typedef ap_uint<OPCODE_WIDTH> opcode_type ;
typedef ap_uint<FUNC3_WIDTH> func3_type ;
typedef ap_int<FUNC7_WIDTH> func7_type ;
typedef ap_int<XLEN> imm_type ;
typedef ap_uint<XLEN> pc_type ;
typedef ap_int<XLEN> r_type ;
typedef ap_int<XLEN+BIT> r_e_type;
typedef ap_uint<XLEN> uns ;
typedef ap_int<XLEN> data_type ;
typedef ap_uint<BIT> bit_type;
typedef ap_uint<LOG_NO_OF_HART> hart_id;
//typedef ap_uint<

#define ADD 0
#define SUB 0
#define SLL 1
#define SLT 2
#define SLTU 3
#define XOR 4
#define SRL 5
#define SRA 5
#define OR 6
#define AND 7

#define BEQ 0
#define BNE 1
#define BLT 4
#define BGE 5
#define BLTU 6
#define BGEU 7

#define LB 0
#define LH 1
#define LW 2
#define LBU 4
#define LHU 5

#define SB 0
#define SH 1
#define SW 2

pc_type hart(inst_type inst, pc_type pc);
r_e_type OP_AL_32I(inst_type opcode, func7_type func7, func3_type func3, r_type op1, r_type op2);
r_e_type OP_AL_32B(r_type offset, func3_type func3, r_type op1, r_type op2);
r_type mem(r_type addr, func3_type func3, r_type waddr, bit_type we);
//r_type OP_AL_32Load(r_type imm, func3_type func3, r_type op1);


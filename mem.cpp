#include "parameters.hpp"

r_type mem(r_type addr, func3_type func3, r_type waddr, bit_type we) {
//#pragma HLS PIPELINE II=4
	static data_type data_mem[DATAMEMSIZE];
	bit_type error = 0;
	data_type current_data = data_mem[waddr.range(31,2)];
	if (we) {
		switch(func3) {
		case SB:
			switch(waddr.range(1,0)) {
			case 0: data_mem[waddr.range(31,2)]=(current_data.range(31, 8) << 8) & addr.range(7,0);break;
			case 1: data_mem[waddr.range(31,2)]=(current_data.range(31, 16) << 16) & (addr.range(7,0)<<8) & (current_data.range(7, 0));break;
			case 2: data_mem[waddr.range(31,2)]=(current_data.range(31, 24) << 24) & (addr.range(7,0)<<16) & (current_data.range(15, 0));break;
			case 3: data_mem[waddr.range(31,2)]= (addr.range(7,0)<<24) & (current_data.range(23, 0));break;
			}
			break;
		case SH:
			switch(waddr.range(1,0)) {
			case 0: data_mem[waddr.range(31,2)]=(current_data.range(31, 16) << 16) & addr.range(15,0);break;
			case 2: data_mem[waddr.range(31,2)]=(addr.range(15,0)<<16) & (current_data.range(15, 0));break;
			default: data_mem[waddr.range(31,2)]=0xFFFFFFFF; error=1;break;
			}
			break;
		case SW:
			switch(waddr.range(1,0)) {
			case 0: data_mem[waddr.range(31,2)]=addr.range(31,0);break;
			default: data_mem[waddr.range(31,2)]=0xFFFFFFFF;error = 1;break;
			}
			break;
		default: error = 1; break;
		}
		return error;
	} else {
		return data_mem[addr.range(31,2)];
	}
}

#include "Collatz.h"

Output Collatz(Uint8 x){
	x = (Uint8)input;
	Uint16 aux = (Uint16)x;
	Uint16 greatest = (Uint16)x;
	Uint8 steps;

	if (aux > (Uint16)0){
		loop: for(steps = (Uint8)0; aux != (Uint16)1; steps++){
			if (aux % (Uint16)2 == 0){
				aux = aux >> 1;
			} else{
				aux = (aux * (Uint16)3) + (Uint16)1;
			}
			if (aux > greatest){
				greatest = aux;
			}
		}
	}
	Output out = {greatest, steps};
	return out;
}


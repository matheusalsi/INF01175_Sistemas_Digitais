#include "ConjecturaDeCollatz.h"
#include <stdio.h>
#include <stdlib.h>

void Collatz(Uint8 x, Uint16 greatest, Uint8 steps){
	Uint16 aux = (Uint16)x;
	greatest = (Uint16)x;
	steps = (Uint8)0;
	if (aux > (Uint16)0){
		loop:while(aux != (Uint16)1){
			if (aux % (Uint16)2 == 0){
				aux = aux >> 1;
			} else{
				aux = (aux * (Uint16)3) + (Uint16)1;
			}
			if (aux > greatest){
				greatest = aux;
			}
			steps = steps + (Uint8)1;
		}
	}
	printf("\n steps:%d \n greatest:%d \n\n",(int)steps,(int)greatest);
}


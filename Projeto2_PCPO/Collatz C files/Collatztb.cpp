#include "ConjecturaDeCollatz.h"
#include <stdio.h>
#include <stdlib.h>

#define input 3

int main() {
	printf("\n number = %d \n", input);

    Uint8 x = (Uint8)input;
    Uint8 steps;
    Uint16 greatest;

    Collatz(x, greatest, steps);

    return 0;
}

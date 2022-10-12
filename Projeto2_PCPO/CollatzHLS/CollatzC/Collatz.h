#ifndef __COLLATZ_H__
#define __COLLATZ_H__
#define input 3


typedef unsigned char Uint8; //8bits
typedef unsigned short Uint16; //16bits
typedef struct Output{
	Uint8 steps;
	Uint8 greatest;
}Output;

// Prototype of top level function for C-synthesis
Output Collatz(Uint8 x);

#endif

ORG 0	
Inicio:
	NOP
	LDA m1
	SUB n1
	XOR n1
	STA r1

	LDA m2
	SUB n2
	XOR n2
	STA r2

	LDA m3
	SUB n3
	XOR n3 
	STA r3

	LDA m4
	SUB n4
	XOR n4 
	STA r4

Fim:	
	HLT		;Termina o programa


org 128
m1: db 3
m2: db 3
m3: db 3
m4: db 3


n1: db 1
n2: db 1
n3: db 1
n4: db 1


r1: db
r2: db
r3: db
r4: db

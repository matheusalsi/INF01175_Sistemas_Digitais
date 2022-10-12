ORG 0	
Inicio:
	NOP
	LDA m1
	ADD n1
	STA r1

	LDA m2
	ADD n2
	STA r2

	LDA m3
	ADD n3
	STA r3

	LDA m4
	ADD n4
	STA r4

	LDA m5
	ADD n5
	STA r5

	LDA m6
	ADD n6
	STA r6

	LDA m7
	ADD n7
	STA r7

	LDA m8
	ADD n8
	STA r8

	LDA m9
	ADD n9
	STA r9

Fim:	
	HLT		;Termina o programa


org 128
m1: db 1
m2: db 1
m3: db 1

m4: db 1
m5: db 1
m6: db 1

m7: db 1
m8: db 1
m9: db 1

n1: db 1
n2: db 1
n3: db 1

n4: db 1
n5: db 1
n6: db 1

n7: db 1
n8: db 1
n9: db 1

r1: db
r2: db
r3: db

r4: db
r5: db
r6: db

r7: db
r8: db
r9: db
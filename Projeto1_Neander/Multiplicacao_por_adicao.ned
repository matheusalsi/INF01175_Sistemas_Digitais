org 0
	nop
	lda valor
	sta Resultado
	lda vezes
	not
	add um
	add um
	sta loop_Num
	jz fim

loop:
	lda Resultado
	add valor
	sta Resultado
	lda loop_Num
	add um
	sta loop_Num
	jz fim
	jmp loop

fim:
	hlt

org 128
valor: db 2
vezes: db 6
loop_Num: db
Resultado: db

um: db 1
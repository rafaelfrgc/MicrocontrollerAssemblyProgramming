org 00h

main:
	MOV ACC, #01001001b 		;move de forma imediata o valor 1001001b para o acumulador
	MOV B, #10010101b 			;move de forma imediata o valor 10010101b para o registrador B
	ANL A, B 					;faz a operação AND entre o acumulador e o registrador B
	RR A 						;rotaciona 1bit a direita
	RR A  						;rotaciona 1bit a direita
	CPL A 						;complemento de A
	RL A 						;rotaciona 1bit a esquerda
	RL A 						;rotaciona 1bit a esquerda
	ORL A, B 					;faz a operação OR entre o acumulador e o registrador B
	XRL A, B 					;faz a operação XOR entre o acumulador e o registrador B
	SWAP A 						;troca os nibbles (nibbles são os 4 bits mais significativos e os 4 bits menos significativos)
	JMP main 					;faz um salto incondicional para o endereço main
end
org 00h 			;seta o endereço de inicio do programa

main:
	MOV ACC, #2 	;move de forma imediata o valor 2 no acumulador  (ACC)				-2 us
	MOV B, #3 		;move de forma imediata o valor 3 no registrador B 					-2 us
	MOV 50h, #7 	;move de forma imediata o valor 7 no endereço 50h 					-2 us
	ADD A, 50h 		;soma o valor do acumulador com o valor do endereço 50h 			-1 us
	SUBB A, #3 		;subtrai o valor do acumulador com o valor 3 						-1 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	SUBB A, B 		;subtrai o valor do acumulador com o valor do registrador B 		-1 us
	MUL AB 			;multiplica o valor do acumulador com o valor do registrador B 		-4 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	DIV AB 			;divide o valor do acumulador com o valor do registrador B 			-4 us
	MOV 51h, A 		;move o valor do acumulador para o endereço 51h 					-1 us
	MOV 52h, B 		;move o valor do registrador B para o endereço 52h 					-2 us
	JMP main 		;retorna para o inicio do programa 									-2 us
end 				;finaliza o programa
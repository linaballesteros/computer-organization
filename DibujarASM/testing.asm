(ciclo) // ciclo por siempre para que el teclado siempre se quede esperando una tecla
@KBD
D=M 
@tecla
M=D 

@76
D=D-A 
@dibujarL
D;JEQ

@tecla 
D=M 

(leerTeclado)
@ciclo
0;JMP 

@SCREEN
D=A

@address // llevar la direccion en la que vamos 
M=D


(dibujarL)
	// put bitmap location value in R12
	// put code return address in R13
	

	@address // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address 
	D=M+1
	M=D
	A=D

	@R12
	AD=D+M
	// row 7
	M=1
	// row 8
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 9
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 10
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 11
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 12
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 13
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 14
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 15
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 16
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 17
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 18
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 19
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 20
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 21
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 22
	D=A // D holds previous addr
	@32
	AD=D+A
	@2047 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP


@leerTeclado 
0;JMP
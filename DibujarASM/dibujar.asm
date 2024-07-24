// Organización de Computadores
// Realizado por Valentina Giraldo, Mauricio Carrillo y Lina Ballesteros

(ciclo) // ciclo por siempre para que el teclado siempre se quede esperando una tecla
@KBD
D=M 
@tecla
M=D 

@82 // R -> raya 
D=D-A
@dibujarMitad
D;JEQ

@tecla // dibujar la L
D=M
@76
D=D-A 
@dibujarL	
// @dibujar_l
D;JEQ

@tecla // dibujar la V
D=M
@86
D=D-A 
@dibujarV
// @dibujar_v
D;JEQ

@tecla // dibujar la M
D=M
@77
D=D-A 
@dibujarM
// @dibujar_m
D;JEQ


@tecla 
D=M 

(leerTeclado)
@ciclo
0;JMP 

// para mayusculas
@16384
D=A

@address // llevar la direccion en la que vamos 
M=D

// para minusculas mitad <- 20480+(32*7)
@20704
D=A

@address_2 // llevar la direccion en la que vamos 
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

	@address 
	D=M+1
	M=D
	A=D

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

	// dibujar l minuscula 

// put bitmap location value in R12
	// put code return address in R13
	@address_2 // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@R12
	AD=D+M
	// row 4
	M=1
	// row 5
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 6
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 7
	D=A // D holds previous addr
	@32
	AD=D+A
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
	M=1
	// row 23
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 24
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 25
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 26
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 27
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// row 28
	D=A // D holds previous addr
	@32
	AD=D+A
	M=1
	// return
	@R13
	A=M
	D;JMP

(dibujarV)
// put bitmap location value in R12
	// put code return address in R13

	@address // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address 
	D=M+1
	M=D
	A=D

	@address 
	D=M+1
	M=D
	A=D

	@address // sumar 3 espacios más que la L porque es más ancha
	D=M+1
	M=D
	A=D
	
	@R12
	AD=D+M
	// row 6
	M=1
	AD=A+1 // D holds addr
	@4096 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@31
	AD=D+A
	@4 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@31
	AD=D+A
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@31
	AD=D+A
	@16 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@31
	AD=D+A
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@128 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@64 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@64 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@128 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	@512 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	@2048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	@4096 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=1
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 20
	D=A // D holds previous addr
	@32
	AD=D+A
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	
	//dibujar v minuscula
	
	@address_2 // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@R12
	AD=D+M
	// row 12
	M=1
	AD=A+1 // D holds addr
	M=1
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@32766 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 14
	D=A // D holds previous addr
	@32
	AD=D+A
	@16388 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@32
	AD=D+A
	@8200 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@32
	AD=D+A
	@4112 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@32
	AD=D+A
	@2080 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@32
	AD=D+A
	@1088 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@32
	AD=D+A
	@640 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@32
	AD=D+A
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP

(dibujarM)
// put bitmap location value in R12
	// put code return address in R13
	@address // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address 
	D=M+1
	M=D
	A=D

	@address 
	D=M+1
	M=D
	A=D

	@address // sumar 3 espacios más que la L porque es más ancha
	D=M+1
	M=D
	A=D

	@R12
	AD=D+M
	// row 6
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@12 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@15 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@15 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@31
	AD=D+A
	@25 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@11 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@31
	AD=D+A
	@16335 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@9 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@31
	AD=D+A
	@24673 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@31
	AD=D+A
	@12481 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@6529 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@3841 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	@1537 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 27
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 28
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M

	//dibujar m minuscula

	@address_2 // 16
	D=M 
	A=M // tengo que llevar la dirección

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@address_2 
	D=M+1
	M=D
	A=D

	@R12
	AD=D+M
	// row 9
	M=1
	// row 10
	D=A // D holds previous addr
	@32
	AD=D+A
	@8135 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 11
	D=A // D holds previous addr
	@32
	AD=D+A
	@16913 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@1795 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@515 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	@513 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	@513 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	@513 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	@513 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@31
	AD=D+A
	M=1
	AD=A+1 // D holds addr
	@8 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP



(dibujarMitad)
	@5
	D=M

	@LOOP_INFINITO
	D;JLE

	@contador
	M=D 

	@20480 // mitad de la pantalla
	D=A 

	@raya
	M=D

	(LOOP)

	@raya // 16
	D=M 
	A=M // tengo que llevar la dirección
	M=-1 

	@raya
	D=M+1
	M=D
	A=D
	M=-1

	@raya
	M=D 

	@contador
	MD=M-1

	@LOOP
	D;JGT 


@leerTeclado 
0;JMP
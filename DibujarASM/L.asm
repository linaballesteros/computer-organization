// variable para iniciar la pantalla
@SCREEN // @16384
D=A 

@dp // 16 - direccion de pantalla
M=D


// tamaño
// @4 
// D=A 

//@n // 17
//M=D 

// imprimir
@dp // 16
D=M 
A=M // tengo que llevar la dirección
M=-1 

@dp 
D=M+1
M=D
A=D
M=-1

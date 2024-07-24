@0
D=A

@3
D=M

@

// asignar B = 4
@4
D=A 
@3
M=D // B=4 -> "B" [3]=4

// recupero el valor de a
@2
D=M       // cargar el valor de A desde la memoria a D

@3
D=D-M     // restar el valor de B a D

@5
M=D       // guardas el resultado en la dirección de memoria 5

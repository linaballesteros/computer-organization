// r = x*n
//base
@3
D=a
@x
M=D 

//factor
@4
D=A 
@n 
M=D

// resultado = 0
@r 
M=0

// iteracion 
@i 
M=0

(multiplicacion)
@i
D=M 
@n
D=D-M  // i-n
@fin_iteracion
D;JEQ 
    @x 
    D=M 
    //suma resp = resp + x
    @r 
    M=M+D 
    @i 
    M=M+1 
    @multiplicacion
    0;JMP
    
(fin_iteracion)
@fin_iteracion
0;JMP 

@5
D=A 
@x
M=D // x=5

@8
D=A 
@y
M=D // y=5

//if (x == y)
@x 
D=M 

@y
D=D-M // x-y
@true
D;JEQ

@else
0;JMP

(true)
@resultado
M=D
@final
0;JMP

(else)
@xyz
M=D // si quiero guardar el valor de la resta -> M=D / para decir que nos dio -1 M=-1
@final
0;JMP

(final)
@final
0;JMP

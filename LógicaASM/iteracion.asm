// Lo primero que necesitamos es la asignación de i desde 0
//
// i = 0 -> Asignación
@i
M=0

//decision
(for_inicio) // podemos etiquetarlo como queramos
@id
D=M 

@10 // constante, el tope
D=D-A 

@fin_for // si i>=0 termina
    D;JGE // continuo dentro del ciclo
    @contar
    M=D 

    // variacion de i -> i++
    @i 
    M=M+1
    @for_inicio
    0;JMP 


(fin_for)
@fin_for
0;JMP


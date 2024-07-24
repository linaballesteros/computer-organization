
(ciclo) // ciclo por siempre para que el teclado siempre se quede esperando una tecla
@KBD
D=M 
@tecla
M=D 

@65 // constante A en decimal que podemos ver en la última posición de CPUemulator RAM
D=D-A 
@esA 
D;JEQ

@tecla 
D=M
@66 // constante B
D=D-A 
@esB
D;JEQ

// @SCREEN
// M=0 // limpiar pantalla, despues de tener presionada una tecla, al soltarla borra la pantalla

(leerTeclado)
@ciclo
0;JMP 

(esA)
@SCREEN
M=-1

@leerTeclado 
0;JMP

(esB)
@22186 // lo llevo a la D
D=A
@SCREEN
M=D
@leerTeclado
0;JMP
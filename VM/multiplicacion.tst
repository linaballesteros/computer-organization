load multiplicacion.vm,

set sp 256,
set local 300,
set argument 400,
set argument[0] 5,
set argument[1] 3,

repeat 100{
    vmstep;
}
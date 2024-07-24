load division.vm,

set sp 256,
set local 300,
set argument 400,
set argument[0] 4,
set argument[1] 2,

repeat 100{
    vmstep;
}
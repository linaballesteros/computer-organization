load suma.vm,

set sp 256,
set local 300,
set argument 400,
set argument[0] 5,

repeat 33{
    vmstep;
}
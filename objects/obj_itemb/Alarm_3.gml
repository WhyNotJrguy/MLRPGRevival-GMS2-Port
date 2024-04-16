if global.turn = 0 or obj_mariob.moveto = 9
{
    obj_mariob.moveto = 0;
    obj_mariob.phase = 4;
    with obj_mariob event_user(4);
}
else if global.turn = 1 or obj_luigib.moveto = 9
{
    obj_luigib.moveto = 0;
    obj_luigib.phase = 4;
}
global.Mitem = 0;
global.Litem = 0;
instance_destroy();


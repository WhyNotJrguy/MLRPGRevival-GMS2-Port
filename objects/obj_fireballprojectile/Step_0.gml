//Make gravity
if zgravityon = 1
    zspeed += zgravity;
z += zspeed; //Changes the height of the jump (the greater z is, the higher Mario is)
if z > 11
    falling = 1;
if z <= 0
{
    if falling = 1
        visible = false;
    zspeed = 0;
    z = 0;
    zgravityon = 0;
    ground = 1;
}
if ground = 0 && obj_mariob.moveto = 7 && global.turn = 0
    x -= 1;
if ground = 0 && obj_mariob.moveto = 10 && global.turn = 0
{
    x -= 1;
    y += 3;
}
if ground = 0 && obj_luigib.moveto = 7 && global.turn = 1
    x -= 1;
if ground = 0 && obj_luigib.moveto = 10 && global.turn = 1
    y -= 3;

switch (global.turn)
{
    case 0:
        switch (pow)
        {
            case 1:
                mp_linear_step(obj_mariob.targetx - 64,obj_mariob.targety + 16,3,0);
                if x = obj_mariob.targetx - 64 && y = obj_mariob.targety + 16
                    instance_destroy();
                break;
            case 2:
                mp_linear_step(obj_mariob.targetx,obj_mariob.targety,6,0);
                if x = obj_mariob.targetx && y = obj_mariob.targety
                    instance_destroy();
                break;
        }
        break;
    case 1:
        switch (pow)
        {
            case 1:
                mp_linear_step(obj_luigib.targetx - 64,obj_luigib.targety - 16,3,0);
                if x = obj_luigib.targetx - 64 && y = obj_luigib.targety - 16
                    instance_destroy();
                break;
            case 2:
                mp_linear_step(obj_luigib.targetx,obj_luigib.targety,6,0);
                if x = obj_luigib.targetx - 64 && y = obj_luigib.targety
                    instance_destroy();
                break;
        }
        break;
}


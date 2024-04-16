if instance_exists(obj_pointsbattle) or obj_mariob.phase < 4 or obj_luigib.phase < 4
    depth = y;
else
    depth = -y;

if !instance_exists(SHYGUY)
    instance_destroy();
else
{    
    SHYGUY.x = x;
    SHYGUY.y = y;
}


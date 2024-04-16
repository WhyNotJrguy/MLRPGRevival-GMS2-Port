if other.z > z-20 && other.z < z && dead = false && global.spin = 0
{
    other.zspeed = -2;
    //Determines item to come out
    switch (item)
    {
        case 0:
        instance_create(x,y-z-32,obj_coin)
        break;
    }
    dead = true;
    sprite_index = spr_qblock; //Make block jump
    image_speed = 1;
}
if other.z > z-20 && other.z < z && dead = true
{
    other.zspeed = -4;
    sprite_index = spr_qblock_empty; //Make block jump
    
    image_speed = 1;
}


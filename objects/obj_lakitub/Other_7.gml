if sprite_index = spr_lakituattack
{
    sprite_index = spr_lakitustance;
    image_xscale = -1;
    if instance_exists(obj_lakituball)
        turndone = 2;
    else
        turndone = 1;
    moveto = 0;
}


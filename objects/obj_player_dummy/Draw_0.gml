//Draw Mario without moving his mask
draw_sprite(sprite_index,image_index,x,y-z);

//Draw shadow
if ground = 0
{
    if z < 10
        draw_sprite(spr_shadow1,image_index,x,y);
    if z >= 10 && z < 20
        draw_sprite(spr_shadow2,image_index,x,y);
    if z >= 20
        draw_sprite(spr_shadow3,image_index,x,y);
}


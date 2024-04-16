if dir = 0 or dir = 1 or dir = 7
{
    draw_sprite(spr_shadow,zgravity,x-6,y-landing);
    draw_sprite_ext(sprite_index,image_index,x-6,y-z,xscale,1,0,c_white,1);
}
else if dir = 2
{
    draw_sprite(spr_shadow,zgravity,x,(y+6)-landing);
    draw_sprite_ext(sprite_index,image_index,x,(y+6)-z,xscale,1,0,c_white,1);
}
else if dir = 6
{
    draw_sprite(spr_shadow,zgravity,x,(y-6)-landing);
    draw_sprite_ext(sprite_index,image_index,x,(y-6)-z,xscale,1,0,c_white,1);
}
else if dir = 3 or dir = 4 or dir = 5
{
    draw_sprite(spr_shadow,zgravity,x+6,y-landing);
    draw_sprite_ext(sprite_index,image_index,x+6,y-z,xscale,1,0,c_white,1);
}
 

/*Directions
dir = 0 is Right
dir = 1 is Up Right
dir = 2 is Up
dir = 3 is Up Left
dir = 4 is Left
dir = 5 is Down Left
dir = 6 is Down
dir = 7 is Down Right

/* */
/*  */

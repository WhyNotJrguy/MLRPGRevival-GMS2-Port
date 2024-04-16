if z > landing
    draw_sprite(spr_shadow,1,x+5,y-landing);

if z < landing
    draw_sprite(spr_shadow,1,x+5,y-landing);

draw_sprite(sprite_index,image_index,x,y-z);


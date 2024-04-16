//Draw sprite
if ready = 1 or obj_fireballm.ready = 1
    draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale/3,image_yscale/3,0,c_red,1);
else if ready = 2 or obj_fireballm.ready = 2
    draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale/2,image_yscale/2,0,c_yellow,0.4);


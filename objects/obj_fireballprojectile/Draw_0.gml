switch (pow)
{
    case 1:
        draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale/3.5,image_yscale/3.5,0,c_yellow,0.6);
        break;
    case 2:
        draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale/2,image_yscale/2,0,c_yellow,1);
        break;
}


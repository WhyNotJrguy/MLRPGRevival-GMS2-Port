if global.strike = 4
{
    image_index = 0;
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_33;
        break;
        case 1:
            sprite_index = spr_lplayer_34;
        break;
        case 2:
            sprite_index = spr_lplayer_35;
        break;
        case 3:
            sprite_index = spr_lplayer_32;
            image_xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_33;
            image_xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_34;
            image_xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_31;
        break;
        case 7:
            sprite_index = spr_lplayer_32;
        break;
    }
}


if global.strike > 0 && global.strike <> 4
{
    if sprite_index = spr_goomba_1
    {
        sprite_index = spr_goomba_5;
        image_single = 0;
        exit;
    }
    if sprite_index = spr_goomba_2
    {
        sprite_index = spr_goomba_5;
        image_single = 1;
        exit;
    }
    if sprite_index = spr_goomba_3
    {
        sprite_index = spr_goomba_5;
        image_single = 2;
        exit;
    }
    if sprite_index = spr_goomba_4
    {
        sprite_index = spr_goomba_5;
        image_single = 3;
        exit;
    }
}


//Mario throws the item
if global.turn = 0
{
    //Green Shells
    if attacknum = 0
    {
        with obj_mariob image_index = 0;
        with obj_mariob image_speed = 0.275;
        with obj_mariob sprite_index = spr_mariobgreenshellkick;
        with obj_luigib image_index = 0;
        with obj_luigib image_speed = 0.275;
        with obj_luigib sprite_index = spr_luigibgreenshellstance;
        if zgravityon = 0
        {
            z = 0;
            audio_play_sound(snd_throw,0,0);
        }  
    }  
    //Fire Flower
    if attacknum = 1
        visible = false;
}

//Luigi throws the item
if global.turn = 1
{
    //Green Shells
    if attacknum = 0
    {
        with obj_mariob image_index = 0;
        with obj_mariob image_speed = 0.275;
        with obj_mariob sprite_index = spr_mariobgreenshellstance;
        with obj_luigib image_index = 0;
        with obj_luigib image_speed = 0.275;
        with obj_luigib sprite_index = spr_luigibgreenshellkick;
        if zgravityon = 0
        {
            z = 0;
            audio_play_sound(snd_throw,0,0);
        }  
    }  
    //Fire Flower
    if attacknum = 1
        visible = false;
}
alarm[2] = 5;


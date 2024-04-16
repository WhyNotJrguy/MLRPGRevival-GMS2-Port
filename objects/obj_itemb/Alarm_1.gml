//Mario throws the item
if global.turn = 0
{
    with obj_mariob image_index = 0;
    with obj_mariob image_speed = 0.275;
    //Mario consumes the item
    if obj_mariob.targetchoose = 1
        with obj_mariob moveto = 7;
    //Mario throws the item
    else if obj_mariob.targetchoose = 2
    {
        with obj_luigib image_index = 0;
        with obj_luigib image_speed = 0.275;
        with obj_mariob moveto = 10;
        with obj_luigib moveto = 8;
    }
    if zgravityon = 0
    {
        zspeed = 12;
        ground = 0;
        zgravityon = 1;
        audio_play_sound(snd_throw,0,0);
    }        
}
//Luigi throws the item
if global.turn = 1
{
    with obj_luigib image_index = 0;
    with obj_luigib image_speed = 0.275;
    //Luigi consumes the item
    if obj_luigib.targetchoose = 2
        with obj_luigib moveto = 7;
    //Luigi throws the item
    else if obj_luigib.targetchoose = 1
    {
        with obj_mariob image_index = 0;
        with obj_mariob image_speed = 0.275;
        with obj_luigib moveto = 10;
        with obj_mariob moveto = 8;
    }
    if zgravityon = 0
    {
        zspeed = 12;
        ground = 0;
        zgravityon = 1;
        audio_play_sound(snd_throw,0,0);
    }        
}
alarm[2] = 5;


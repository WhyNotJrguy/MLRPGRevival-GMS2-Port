//Grow the item
if image_xscale < 1 && image_yscale < 1
{
    image_xscale += 0.2;
    image_yscale += 0.2;
    alarm[0] = 2;
}
else
{
    if global.turn = 0
        with obj_mariob image_single = 18;
    else if global.turn = 1
        with obj_luigib image_single = 18;
    audio_play_sound(snd_badge,0,0);
    ready = 1;
}


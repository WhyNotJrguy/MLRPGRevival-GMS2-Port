//Mario's bonus is added up
if global.turn = -1.25 && obj_mariob.stance = 13 && moveto = 3 && obj_mariob.image_single = 10
{
    audio_play_sound(snd_mario_ehee,0,0);
    moveto = 4;
}
if global.turn = -1.75 && obj_luigib.stance = 13 && moveto = 3 && obj_luigib.image_single = 10
{
    audio_play_sound(snd_luigi_hahaha,0,0);
    moveto = 4;
}
if moveto = 4 && !audio_is_playing(snd_mario_ehee) && !audio_is_playing(snd_luigi_hahaha)
    alarm[3] = 45;
else
    alarm[2] = 1;


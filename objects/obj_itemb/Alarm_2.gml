//If Mario is using the item on himself
if global.turn = 0 && obj_mariob.moveto = 9
{
    audio_play_sound(snd_item_use,0,0);
    if image_index = 15
        audio_play_sound(snd_mario_relief,0,0);
    else if image_index >= 4 && image_index <= 7
    {
        audio_play_sound(snd_mario_yummy,0,0);
        audio_play_sound(snd_luigi_yahoo,0,0);
    }
    else if image_index < 15
        audio_play_sound(snd_mario_yummy,0,0);
    event_user(0);
    with obj_mariob image_index = 0;
    alarm[3] = 90;
}
//If Mario is throwing the item to Luigi
else if global.turn = 0 && obj_luigib.moveto = 9
{

    audio_play_sound(snd_item_use,0,0);
    if image_index = 15
        audio_play_sound(snd_luigi_auhhh,0,0);
    else if image_index >= 4 && image_index <= 7
    {
        audio_play_sound(snd_mario_yummy,0,0);
        audio_play_sound(snd_luigi_yahoo,0,0);
    }
    else if image_index < 15
        audio_play_sound(snd_luigi_yahoo,0,0);
    event_user(1);
    with obj_luigib image_index = 0;
    alarm[3] = 90;
}
//If Luigi is using the item on himself
else if global.turn = 1 && obj_luigib.moveto = 9
{
    audio_play_sound(snd_item_use,0,0);
    if image_index = 15
        audio_play_sound(snd_luigi_auhhh,0,0);
    else if image_index >= 4 && image_index <= 7
    {
        audio_play_sound(snd_mario_yummy,0,0);
        audio_play_sound(snd_luigi_yahoo,0,0);
    }
    else if image_index < 15
        audio_play_sound(snd_luigi_yahoo,0,0);
    event_user(0);
    with obj_luigib image_index = 0;
    alarm[3] = 90;
}
//If Luigi is throwing the item to Luigi
else if global.turn = 1 && obj_mariob.moveto = 9
{

    audio_play_sound(snd_item_use,0,0);
    if image_index = 15
        audio_play_sound(snd_mario_relief,0,0);
    else if image_index >= 4 && image_index <= 7
    {
        audio_play_sound(snd_mario_yummy,0,0);
        audio_play_sound(snd_luigi_yahoo,0,0);
    }
    else if image_index < 15
        audio_play_sound(snd_mario_yummy,0,0);
    event_user(1);
    with obj_mariob image_index = 0;
    alarm[3] = 90;
}
else
    alarm[2] = 2;


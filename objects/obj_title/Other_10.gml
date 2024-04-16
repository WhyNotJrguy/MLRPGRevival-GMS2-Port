if ready < 2
{
    ready = 2;
    audio_stop_all();
    audio_play_sound(snd_confirm,1,0);
    alarm[1] = 90;
}


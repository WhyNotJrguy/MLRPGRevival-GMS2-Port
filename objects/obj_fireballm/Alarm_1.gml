if throws > 3
    instance_destroy();
else
{
    ready = 2;
    obj_fireballl.ready = 2;
    obj_brosattack.phase = 2;
    throws += 1;
    audio_play_sound(snd_pan,0,0);
    alarm[0] = 120;
}


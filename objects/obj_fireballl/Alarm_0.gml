if throws > 3
    instance_destroy();
else
{
    ready = 1;
    obj_fireballm.ready = 1;
    obj_brosattack.phase = 1;
    throws += 1;
    audio_play_sound(snd_pan,0,0);
    alarm[1] = 120;
}


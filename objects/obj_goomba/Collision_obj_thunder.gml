//Hand Attack
if global.thunder = 1
{
    status = "hit";
    speed = 0;
    timer = 12;
    par_player.zspeed = 4;
    audio_stop_sound(global.music);
    if instance_exists(obj_lplayer_2) && instance_exists(obj_mplayer_2)
        global.strike = 7;
    event_user(1);
}


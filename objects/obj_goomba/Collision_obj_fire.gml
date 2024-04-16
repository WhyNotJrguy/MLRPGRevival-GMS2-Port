//Hand Attack
if global.fire = 1
{
    status = "hit";
    speed = 0;
    timer = 12;
    par_player.zspeed = 4;
    audio_stop_sound(global.music);
    if instance_exists(obj_mplayer) && instance_exists(obj_lplayer)
        global.strike = 3;
    event_user(1);
}


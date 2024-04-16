if status = "dead" or status = "hit"
    exit;
else if not instance_exists(obj_battlestart)
{
    //Jump Encounter
    if obj_lplayer_2.z < z + 18 && obj_lplayer_2.zspeed < 0 && obj_lplayer_2.jump = 1
    {
        status = "hit";
        speed = 0;
        timer = 12;
        par_player.zspeed = 4;
        audio_stop_sound(global.music);
        audio_play_sound(snd_hit,0,0);
        global.strike = 5;
        //Damage Enemy    
        event_user(1);       
    }
    
    //Enter Battle
    event_user(0);
}


if active = true && !instance_exists(obj_battlecontrol) && other.z >= 2 //First Strike - Jump
{
    audio_stop_sound(global.music);
    audio_play_sound(snd_hit,0,0);
    active = false;
    global.strike = 1;
    with other active = false;
    with other image_speed = 0;
    global.battletype = battletype;
    alarm[2] = 30;
}
else if active = true && !instance_exists(obj_battlecontrol) && audio_is_playing(snd_hammer) //First Strike - Hammer
{
    audio_stop_sound(global.music);
    audio_play_sound(snd_hit,0,0);
    active = false;
    global.strike = 2;
    with other active = false;
    with other image_speed = 0;
    global.battletype = battletype;
    alarm[2] = 30;
}
else if active = true && !instance_exists(obj_battlecontrol) && audio_is_playing(snd_charge_up) //First Strike - Hand
{
    audio_stop_sound(global.music);
    audio_play_sound(snd_hit,0,0);
    active = false;
    global.strike = 3;
    with other active = false;
    with other image_speed = 0;
    global.battletype = battletype;
    alarm[2] = 30;
}
else if active = true && !instance_exists(obj_battlecontrol) && other.z < 2 //Neutral Encounter
{
    active = false;
    global.strike = 0;
    with other active = false;
    with other image_speed = 0;
    global.battletype = battletype;
    instance_create(x,y,obj_battlestart);
}


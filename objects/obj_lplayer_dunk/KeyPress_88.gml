if !place_meeting(x,y,obj_metal_solid) && moving = 0
&& !place_meeting(x,y,obj_dunk_solid) && !instance_exists(obj_mplayer)
&& !instance_exists(obj_fire)
{
    audio_play_sound(snd_churn,0,0);
    instance_change(obj_lplayer_change,false);
}


if !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire)
&& !instance_exists(obj_thunder) && !instance_exists(obj_lplayer_2)
{
    if global.jump = 1 && z = landing && jump = 0
    {
        zspeed = 6;
        jump = 1;
        audio_play_sound(snd_jump_mini,0,0);
    }
    if global.hammer = 1 && moving = 0
    {
        hammer = 1;
        moving = 2;
        audio_play_sound(snd_hammer,0,0);
    }
    if global.hand = 1 && moving = 0
        instance_create(x,y,obj_fire);
}


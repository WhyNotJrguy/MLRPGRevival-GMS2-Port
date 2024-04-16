if instance_exists(obj_mplayer) && !instance_exists(obj_mplayer_mini) && !instance_exists(obj_mplayer_2)
{
    if sprite_index = spr_firebrand_1 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_firecharging);
        instance_destroy();
    }
    
    if sprite_index = spr_firebrand_1 && image_index > 17
    {
        sprite_index = spr_firebrand_2;
        audio_stop_sound(snd_firecharging);
        audio_play_sound(snd_firecharged,0,1);
        if (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
            instance_destroy();
    }
    if sprite_index = spr_firebrand_2 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_firecharged);
        sprite_index = spr_firebrand_3;
    }
    if sprite_index = spr_firebrand_3 && image_index > 3
    {
        sprite_index = spr_firebrand_4;
        global.fire = 1;
        audio_play_sound(snd_fire_shoot,0,0);
    }
    if sprite_index = spr_firebrand_4 && image_index > 11
        instance_destroy();
    
    depth = -y-obj_mplayer.z;
    if obj_mplayer.dir = 0
    {
        x = obj_mplayer.x+16;
        y = obj_mplayer.y-8-obj_mplayer.z;
    }
    if obj_mplayer.dir = 1
    {
        x = obj_mplayer.x+12;
        y = obj_mplayer.y-16-obj_mplayer.z;
    }
    if obj_mplayer.dir = 2
    {
        x = obj_mplayer.x;
        y = obj_mplayer.y-32-obj_mplayer.z;
    }
    if obj_mplayer.dir = 3
    {
        x = obj_mplayer.x-12;
        y = obj_mplayer.y-16-obj_mplayer.z;
    }
    if obj_mplayer.dir = 4
    {
        x = obj_mplayer.x-16;
        y = obj_mplayer.y-8-obj_mplayer.z;
    }
    if obj_mplayer.dir = 5
    {
        x = obj_mplayer.x-12;
        y = obj_mplayer.y-obj_mplayer.z;
    }
    if obj_mplayer.dir = 6
    {
        x = obj_mplayer.x;
        y = obj_mplayer.y-obj_mplayer.z;
    }
    if obj_mplayer.dir = 7
    {
        x = obj_mplayer.x+12;
        y = obj_mplayer.y-obj_mplayer.z;
    }
}
    
if !instance_exists(obj_mplayer) && instance_exists(obj_mplayer_mini) && !instance_exists(obj_mplayer_2)
{
    if sprite_index = spr_firebrand_1 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_firecharging);
        instance_destroy();
    }
    if sprite_index = spr_firebrand_1 && image_index > 17
    {
        sprite_index = spr_firebrand_2;
        audio_stop_sound(snd_firecharging);
        audio_play_sound(snd_firecharged,0,1);
    if (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
        instance_destroy();
    }
    if sprite_index = spr_firebrand_2 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_firecharged);
        sprite_index = spr_firebrand_3;
    }
    if sprite_index = spr_firebrand_3 && image_index > 3
    {
        sprite_index = spr_firebrand_4;
        global.fire = 1;
        audio_play_sound(snd_fire_shoot,0,0);
    }
    if sprite_index = spr_firebrand_4 && image_index > 11
        instance_destroy();
    
    depth = -y-obj_mplayer_mini.z;
    if obj_mplayer_mini.dir = 0
    {
        x = obj_mplayer_mini.x+16;
        y = obj_mplayer_mini.y-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 1
    {
        x = obj_mplayer_mini.x+12;
        y = obj_mplayer_mini.y-8-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 2
    {
        x = obj_mplayer_mini.x;
        y = obj_mplayer_mini.y-16-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 3
    {
        x = obj_mplayer_mini.x-12;
        y = obj_mplayer_mini.y-8-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 4
    {
        x = obj_mplayer_mini.x-16;
        y = obj_mplayer_mini.y-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 5
    {
        x = obj_mplayer_mini.x-12;
        y = obj_mplayer_mini.y+8-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 6
    {
        x = obj_mplayer_mini.x;
        y = obj_mplayer_mini.y+8-obj_mplayer_mini.z;
    }
    if obj_mplayer_mini.dir = 7 
    {
        x = obj_mplayer_mini.x+12;
        y = obj_mplayer_mini.y+8-obj_mplayer_mini.z;
    }
}
    
if !instance_exists(obj_mplayer) && !instance_exists(obj_mplayer_mini) && instance_exists(obj_mplayer_2)
{
    if sprite_index = spr_firebrand_1 && (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
    {
        audio_stop_sound(snd_firecharging);
        instance_destroy();
    }
    if sprite_index = spr_firebrand_1 && image_index > 17
    {
        sprite_index = spr_firebrand_2;
        audio_stop_sound(snd_firecharging);
        audio_play_sound(snd_firecharged,0,1);
        if (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
            instance_destroy();
    }
    if sprite_index = spr_firebrand_2 && (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
    {
        audio_stop_sound(snd_firecharged);
        sprite_index = spr_firebrand_3;
    }
    if sprite_index = spr_firebrand_3 && image_index > 3
    {
        sprite_index = spr_firebrand_4;
        global.fire = 1;
        global.electrocute = 1;
        audio_play_sound(snd_fire_running,0,0);
        audio_play_sound(snd_running,0,1);
    }
    if sprite_index = spr_firebrand_4 && image_index > 11
        instance_destroy();
    
    depth = -y-obj_mplayer_2.z;
    if obj_mplayer_2.dir = 0
    {
        x = obj_mplayer_2.x+16;
        y = obj_mplayer_2.y-8-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 1
    {
        x = obj_mplayer_2.x+12;
        y = obj_mplayer_2.y-16-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 2
    {
        x = obj_mplayer_2.x;
        y = obj_mplayer_2.y-32-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 3
    {
        x = obj_mplayer_2.x-12;
        y = obj_mplayer_2.y-16-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 4
    {
        x = obj_mplayer_2.x-16;
        y = obj_mplayer_2.y-8-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 5
    {
        x = obj_mplayer_2.x-12;
        y = obj_mplayer_2.y-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 6
    {
        x = obj_mplayer_2.x;
        y = obj_mplayer_2.y-obj_mplayer_2.z;
    }
    if obj_mplayer_2.dir = 7
    {
        x = obj_mplayer_2.x+12;
        y = obj_mplayer_2.y-obj_mplayer_2.z;
    }
}


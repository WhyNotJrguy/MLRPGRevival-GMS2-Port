if !instance_exists(obj_lplayer_2) && instance_exists(obj_lplayer)
{
    if sprite_index = spr_thunderhand_1 && (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
    {
        audio_stop_sound(snd_thundercharging);
        instance_destroy();
    }
    if sprite_index = spr_thunderhand_1 && image_index > 24
    {
        sprite_index = spr_thunderhand_2;
        audio_stop_sound(snd_thundercharging);
        audio_play_sound(snd_thundercharged,0,1);
    if (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
        instance_destroy();
    }
    if sprite_index = spr_thunderhand_2 && (!gamepad_button_check(0, global.buttonB) || !keyboard_check(global.keyB)) //B
    {
        audio_stop_sound(snd_thundercharged);
        sprite_index = spr_thunderhand_3;
    }
    if sprite_index = spr_thunderhand_3 && image_index > 2 && global.electrocute = 0
    {
        sprite_index = spr_thunderhand_4;
        global.thunder = 1;
        global.electrocute = 1;
        audio_play_sound(snd_thunder_shoot,0,0);
        if instance_exists(obj_mplayer)
            audio_play_sound(snd_thunder_shocking,0,1);
    }

    if sprite_index = spr_thunderhand_4 && image_index > 11
        instance_destroy();

    depth = -y-obj_lplayer.z;
  
    if obj_lplayer.dir = 0
    {
        x = obj_lplayer.x+16;
        y = obj_lplayer.y-8-obj_lplayer.z;
    }
    if obj_lplayer.dir = 1
    {
        x = obj_lplayer.x+12;
        y = obj_lplayer.y-16-obj_lplayer.z;
    }
    if obj_lplayer.dir = 2
    {
        x = obj_lplayer.x;
        y = obj_lplayer.y-32-obj_lplayer.z;
    }
    if obj_lplayer.dir = 3
    {
        x = obj_lplayer.x-12;
        y = obj_lplayer.y-16-obj_lplayer.z;
    }
    if obj_lplayer.dir = 4
    {
        x = obj_lplayer.x-16;
        y = obj_lplayer.y-8-obj_lplayer.z;
    }
    if obj_lplayer.dir = 5
    {
        x = obj_lplayer.x-12;
        y = obj_lplayer.y-obj_lplayer.z;
    }
    if obj_lplayer.dir = 6
    {
        x = obj_lplayer.x;
        y = obj_lplayer.y-obj_lplayer.z;
    }
    if obj_lplayer.dir = 7
    {
        x = obj_lplayer.x+12;
        y = obj_lplayer.y-obj_lplayer.z;
    }
}

if instance_exists(obj_lplayer_2) && !instance_exists(obj_lplayer)
{
    if sprite_index = spr_thunderhand_1 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_thundercharging);
        instance_destroy();
    }
    if sprite_index = spr_thunderhand_1 && image_index > 24
    {
        sprite_index = spr_thunderhand_2;
        audio_stop_sound(snd_thundercharging);
        audio_play_sound(snd_thundercharged,0,1);
        if (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
            instance_destroy();
    }
    if sprite_index = spr_thunderhand_2 && (!gamepad_button_check(0, global.buttonA) || !keyboard_check(global.keyA)) //A
    {
        audio_stop_sound(snd_thundercharged);
        sprite_index = spr_thunderhand_3;
    }
    if sprite_index = spr_thunderhand_3 && image_index > 2
    {
        sprite_index = spr_thunderhand_4;
        global.thunder = 1;
        audio_play_sound(snd_thunder_shoot,0,0);
    }
    if sprite_index = spr_thunderhand_4 && image_index > 11
        instance_destroy();
     
    depth = -y-obj_lplayer_2.z;
    if obj_lplayer_2.dir = 0
    {
        x = obj_lplayer_2.x+16;
        y = obj_lplayer_2.y-8-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 1
    {
        x = obj_lplayer_2.x+12;
        y = obj_lplayer_2.y-16-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 2
    {
        x = obj_lplayer_2.x;
        y = obj_lplayer_2.y-32-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 3
    {
        x = obj_lplayer_2.x-12;
        y = obj_lplayer_2.y-16-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 4
    {
        x = obj_lplayer_2.x-16;
        y = obj_lplayer_2.y-8-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 5
    {
        x = obj_lplayer_2.x-12;
        y = obj_lplayer_2.y-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 6
    {
        x = obj_lplayer_2.x;
        y = obj_lplayer_2.y-obj_lplayer_2.z;
    }
    if obj_lplayer_2.dir = 7
    {
        x = obj_lplayer_2.x+12;
        y = obj_lplayer_2.y-obj_lplayer_2.z;
    }
}


if gamepad_button_check_pressed(0, global.buttonSelect) || keyboard_check_pressed(global.keySelect)
    event_user(1);

if instance_exists(obj_mplayer) && !instance_exists(obj_lplayer_dunk)
    otro = obj_mplayer;
if instance_exists(obj_mplayer) &&  instance_exists(obj_lplayer_dunk)
    otro = obj_mplayer;
if !instance_exists(obj_mplayer) &&  instance_exists(obj_lplayer_dunk)
    otro = obj_lplayer_dunk;
if instance_exists(obj_lplayer_2) && !instance_exists(obj_mplayer_mini)
    otro = obj_lplayer_2;
if instance_exists(obj_lplayer_2) &&  instance_exists(obj_mplayer_mini)
    otro = obj_lplayer_2;
if !instance_exists(obj_lplayer_2) &&  instance_exists(obj_mplayer_mini)
    otro = obj_mplayer_mini;

if instance_exists(obj_lplayer)
    otro2 = obj_lplayer;
if instance_exists(obj_mplayer_2)
    otro2 = obj_mplayer_2;

if gamepad_button_check_pressed(0, global.buttonTriggerR) || keyboard_check_pressed(global.keyTriggerR)
{
    if instance_exists(obj_mplayer) or instance_exists(obj_mplayer_mini)
    {
        if global.movesOverworld > 0
        {
            if global.jump = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_hammer,0,0);
            if global.hammer = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_fire,0,0);
            if global.hand = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_jump,0,0);
        }
    }
    if instance_exists(obj_lplayer_2)
    {
        if global.movesOverworld > 0
        {
            if global.jump = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_hammer,0,0);
            if global.hammer = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_thunder,0,0);
            if global.hand = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_jump,0,0);
        }
    }
}

if gamepad_button_check_pressed(0, global.buttonTriggerL) || keyboard_check_pressed(global.keyTriggerL)
{
    if instance_exists(obj_mplayer_2)
    {
        if global.movesOverworld > 0
        {
            if global.jump2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 0 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_spin,0,0);    
            if global.super = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_hammer,0,0);
            if global.hammer2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_fire,0,0);
            if global.hand2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_mplayer_jump,0,0);
        }
    }
    if instance_exists(obj_lplayer)
    {
        if global.movesOverworld > 0
        {
            if global.jump2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_high,0,0);       
            if global.super = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_hammer,0,0);
            if global.hammer2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_thunder,0,0);
            if global.hand2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
            && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1
                audio_play_sound(snd_lplayer_jump,0,0);
        }
    }
}

if keyboard_check_pressed(global.keyTriggerR)
&& keyboard_check_pressed(global.keyTriggerL)
{
    global.jump = 1;
    global.hammer = 0;
    global.hand = 0;
    global.jump2 = 1;
    global.super = 0;
    global.hammer2 = 0;
    global.hand2 = 0;
    exit;
}
if gamepad_button_check_pressed(0, global.buttonTriggerR)
&& gamepad_button_check_pressed(0, global.buttonTriggerL)
{
    global.jump = 1;
    global.hammer = 0;
    global.hand = 0;
    global.jump2 = 1;
    global.super = 0;
    global.hammer2 = 0;
    global.hand2 = 0;
    exit;
}

if (gamepad_button_check_pressed(0, global.buttonTriggerR) || keyboard_check_pressed(global.keyTriggerR)) && global.electrocute = 0
{
    if global.hammer = 0 && global.hand = 0 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump = 0;
        global.hammer = 1;
        global.hand = 0;
        exit;
    }
      
    if global.hammer = 1 && global.hand = 0 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump = 0;
        global.hammer = 0;
        global.hand = 1;
        exit;
    }
      
    if global.hammer = 0 && global.hand = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump = 1;
        global.hammer = 0;
        global.hand = 0;
        exit;
    }
}

if (gamepad_button_check_pressed(0, global.buttonTriggerL) || keyboard_check_pressed(global.keyTriggerL))
&& global.electrocute = 0 && global.dontmove = 0
{
    if global.super = 0 && global.hammer2 = 0 && global.hand2 = 0 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump2 = 0;
        global.super = 1;
        global.hammer2 = 0;
        global.hand2 = 0;
        exit;
    }
      
    if global.super = 1 && global.hammer2 = 0 && global.hand2 = 0 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump2 = 0;
        global.super = 0;
        global.hammer2 = 1;
        global.hand2 = 0;
        exit;
    }
      
    if global.super = 0 && global.hammer2 = 1 && global.hand2 = 0 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump2 = 0;
        global.super = 0;
        global.hammer2 = 0;
        global.hand2 = 1;
        exit;
    }
      
    if global.super = 0 && global.hammer2 = 0 && global.hand2 = 1 && !otro.jump = 1 && !otro.hammer = 1 && !otro.hand = 1
    && !otro2.jump = 1 && global.spin = 0 && !otro2.hammer = 1 && !otro2.hand = 1 && global.movesOverworld > 0
    {
        global.jump2 = 1;
        global.super = 0;
        global.hammer2 = 0;
        global.hand2 = 0;
        exit;
    }
}

//Follow Player
if instance_exists(obj_mplayer) && !instance_exists(obj_lplayer_dunk)
{
    x = obj_mplayer.x+12;
    y = obj_mplayer.y-obj_mplayer.z;
}
if instance_exists(obj_mplayer) && instance_exists(obj_lplayer_dunk)
{
    x = obj_mplayer.x+12;
    y = obj_mplayer.y-obj_mplayer.z;
}
if !instance_exists(obj_mplayer) && instance_exists(obj_lplayer_dunk)
{
    x = obj_lplayer_dunk.x+12;
    y = obj_lplayer_dunk.y-obj_lplayer_dunk.z;
}
if instance_exists(obj_lplayer_2) && !instance_exists(obj_mplayer_mini)
{
    x = obj_lplayer_2.x+12;
    y = obj_lplayer_2.y-obj_lplayer_2.z;
}
if instance_exists(obj_lplayer_2) && instance_exists(obj_mplayer_mini)
{
    x = obj_lplayer_2.x+12;
    y = obj_lplayer_2.y-obj_lplayer_2.z;
}
if !instance_exists(obj_lplayer_2) && instance_exists(obj_mplayer_mini)
{
    x = obj_mplayer_mini.x+12;
    y = obj_mplayer_mini.y-obj_mplayer_mini.z;
}


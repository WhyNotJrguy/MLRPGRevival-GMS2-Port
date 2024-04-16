if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA)
{
    audio_play_sound(snd_confirm,0,0);
    if global.music = mus_Overworld || track = 0 && !audio_is_playing(mus_Overworld)
        audio_loop_sound(mus_Overworld,2492090,4796792,48000,1);
    if global.music = mus_Fanfare || track = 1 && !audio_is_playing(mus_Fanfare)
        audio_loop_sound(mus_Fanfare,179300,2085283,48000,1);
    if global.music = mus_Boss || track = 2 && !audio_is_playing(mus_Boss)
        audio_loop_sound(mus_Boss,3449846,6907701,48000,1);
    if global.music = mus_Battle || track = 3 && !audio_is_playing(mus_Battle) //Perfect loop
        audio_loop_sound(mus_Battle,355555,2661860,48000,1);
}
if gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB)
{
    audio_stop_all();
    audio_play_sound(snd_confirm,0,0);
    global.music = 0;
    with obj_audio_loop_sound instance_destroy();
}
if gamepad_button_check_pressed(0, global.buttonLeft) || keyboard_check_pressed(global.keyLeft)
{
    audio_play_sound(snd_select,0,0);
    if track > 0
        track-= 1;
    event_user(0);
}
if gamepad_button_check_pressed(0, global.buttonRight) || keyboard_check_pressed(global.keyRight)
{
    audio_play_sound(snd_select,0,0);
    if track < 10
        track+= 1;
    event_user(0);
}
if gamepad_button_check_pressed(0, global.buttonTriggerL) || keyboard_check_pressed(global.keyTriggerL)
{
    with obj_audio_loop_sound audio_sound_set_track_position(_audio,_loop_begin);
}
if gamepad_button_check_pressed(0, global.buttonTriggerR) || keyboard_check_pressed(global.keyTriggerR)
{
    with obj_audio_loop_sound audio_sound_set_track_position(_audio,audio_sound_get_track_position(_audio) + 10);
}


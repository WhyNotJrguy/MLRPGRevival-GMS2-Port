if gamepad_button_check(0, global.buttonY) || keyboard_check(global.keyY)
{
    audio_play_sound(snd_select,0,0);
    event_user(0);
}


//Press Start or A
if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
|| gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart) //Start
    event_user(0);
if !audio_is_playing(mus_Title) && ready = 1
    game_restart();


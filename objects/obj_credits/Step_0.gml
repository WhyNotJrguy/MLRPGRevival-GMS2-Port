room_speed = 60;
if canquit = 1
{
    if gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart)
    {
        canquit = 0;
        alarm[9] = 60;
    }
}


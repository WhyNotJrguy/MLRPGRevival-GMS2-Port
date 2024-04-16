if textspeed <> 0
    textspeed -= 0.5;
if ready = 1 && action = 0
{
    if gamepad_button_check_pressed(0, global.buttonLeft) || keyboard_check_pressed(global.keyLeft) //Left
    {
        switch (selection)
        {
            case 0:
                exit;
            break;
            case 1:
                audio_play_sound(snd_select,0,0);
                selection = 0;
            break;     
            case 2:
                audio_play_sound(snd_select,0,0);
                selection = 0;
            break;
            case 3:
                audio_play_sound(snd_select,0,0);
                selection = 2;
            break;       
        }
        deletion = 180;
        textspeed = 204;
    }
    if gamepad_button_check_pressed(0, global.buttonUp) || keyboard_check_pressed(global.keyUp) //Up
    {
        switch (selection)
        {
            case 0:
                audio_play_sound(snd_select,0,0);
                selection = 1;
            break;
            case 1:
                exit;
            break;     
            case 2:
                audio_play_sound(snd_select,0,0);
                selection = 1;
            break;
            case 3:
                audio_play_sound(snd_select,0,0);
                selection = 1;
            break;       
        }
        deletion = 180;
        textspeed = 204;
    }
    if gamepad_button_check_pressed(0, global.buttonRight) || keyboard_check_pressed(global.keyRight) //Right
    {
        switch (selection)
        {
            case 0:
                audio_play_sound(snd_select,0,0);
                selection = 2;
            break;
            case 1:
                audio_play_sound(snd_select,0,0);
                selection = 3;
            break;     
            case 2:
                audio_play_sound(snd_select,0,0);
                selection = 3;
            break;
            case 3:
                exit;
            break;       
        }
        deletion = 180;
        textspeed = 204;
    }
    if gamepad_button_check_pressed(0, global.buttonDown) || keyboard_check_pressed(global.keyDown) //Down
    {
        switch (selection)
        {
            case 0:
                exit;
            break;
            case 1:
                audio_play_sound(snd_select,0,0);
                selection = 2;
            break;     
            case 2:
                audio_play_sound(snd_select,0,0);
                selection = 3;
            break;
            case 3:
                exit;
            break;       
        }
        deletion = 180;
        textspeed = 204;
    }
}
else if ready = 1 && action > 0
{
    if gamepad_button_check_pressed(0, global.buttonUp) || keyboard_check_pressed(global.keyUp) //Up
    {
        audio_play_sound(snd_select,0,0);
        if action = 1
            action = 4;
        else
            action -= 1;
    }
    if gamepad_button_check_pressed(0, global.buttonDown) || keyboard_check_pressed(global.keyDown) //Down
    {
        audio_play_sound(snd_select,0,0);
        if action = 4
            action = 1;
        else
            action += 1;
    }
}

//Press Start or A
if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
|| gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart) //Start
{
    event_user(0);
}

//L + R Text Speed
if gamepad_button_check(0, global.buttonTriggerL) || keyboard_check(global.keyTriggerL) //L
{
    heldL = 1;
    textspeed -= 1;
}
if gamepad_button_check(0, global.buttonTriggerR) || keyboard_check(global.keyTriggerR) //R
{
    heldR = 1;
    textspeed += 2;
}
if gamepad_button_check_released(0, global.buttonTriggerL) || keyboard_check_released(global.keyTriggerL) //L
{
    if heldL = 1
        heldL = 0;
    if textspeed = -2 || textspeed = 0
        textspeed -= 0.5;
}
if gamepad_button_check_released(0, global.buttonTriggerR) || keyboard_check_released(global.keyTriggerR) //R
{
    if heldR = 1
        heldR = 0;
    if textspeed = 2 || textspeed = 0
        textspeed -= 0.5;
}
//Press Y
if gamepad_button_check(0, global.buttonY) || keyboard_check(global.keyY) //Y
{
    if selection = 1 && file_exists("ML_RPG_SaveA.sav")
        deletion -= 1;
    else if selection = 2 && file_exists("ML_RPG_SaveB.sav")
        deletion -= 1;    
    if deletion <= 0
    {
        deletion = 180;
        event_user(1);
    }
}
if gamepad_button_check_released(0, global.buttonY) || keyboard_check_released(global.keyY) //Y
{
    if deletion > 0 && selection < 180
        deletion = 180;
}


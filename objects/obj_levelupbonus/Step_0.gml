if gamepad_button_check_pressed(0, global.buttonY) || keyboard_check_pressed(global.keyY) //for now (to escape softlock when leveling up)
{
    audio_play_sound(snd_incorrect,0,0); //fail safe
    if instance_number(obj_mariob) > 0 and instance_number(obj_luigib) > 0
    {
        with obj_mariob instance_destroy();
        with obj_luigib instance_destroy();
    }
}

if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
{
    if global.turn = -1.25 && moveto = 2 //Determine roulette chances for Mario's next level up
    {
        if global.Mlastbonus = -1
            global.Mlastbonus = 6;
        else if global.Mlastbonus = 6
        {
            if movechoose = 52 //HP bonus
                global.Mlastbonus = 0;
            if movechoose = 76 //BP bonus
                global.Mlastbonus = 1;
            if movechoose = 100 //POW bonus
                global.Mlastbonus = 2;
            if movechoose = 124 //DEF bonus
                global.Mlastbonus = 3;
            if movechoose = 148 //SPEED bonus
                global.Mlastbonus = 4;
            if movechoose = 172 //STACHE bonus
                global.Mlastbonus = 5;
        }
        else
        {
            if movechoose = 52 && global.Mlastbonus = 0 //HP bonus
                global.Mlastbonus = 0;
            else if movechoose = 76 && global.Mlastbonus = 1 //BP bonus
                global.Mlastbonus = 1;
            else if movechoose = 100 && global.Mlastbonus = 2 //POW bonus
                global.Mlastbonus = 2;
            else if movechoose = 124 && global.Mlastbonus = 3 //DEF bonus
                global.Mlastbonus = 3;
            else if movechoose = 148 && global.Mlastbonus = 4 //SPEED bonus
                global.Mlastbonus = 4;
            else if movechoose = 172 && global.Mlastbonus = 5 //STACHE bonus
                global.Mlastbonus = 5;
            else
                global.Mlastbonus = -1;
        }
        value = value;
        moveto = 1.5;
        audio_stop_sound(snd_roulette);
        audio_play_sound(snd_equip,0,0);
        alarm[1] = 20; //Add bonus
    }
    if global.turn = -1.75 && moveto = 2 //Determine roulette chances for Luigi's next level up
    {
        if global.Llastbonus = -1
            global.Llastbonus = 6;
        else if global.Llastbonus = 6
        {
            if movechoose = 52 //HP bonus
                global.Llastbonus = 0;
            if movechoose = 76 //BP bonus
                global.Llastbonus = 1;
            if movechoose = 100 //POW bonus
                global.Llastbonus = 2;
            if movechoose = 124 //DEF bonus
                global.Llastbonus = 3;
            if movechoose = 148 //SPEED bonus
                global.Llastbonus = 4;
            if movechoose = 172 //STACHE bonus
                global.Llastbonus = 5;
        }
        else
        {
            if movechoose = 52 && global.Llastbonus = 0 //HP bonus
                global.Llastbonus = 0;
            else if movechoose = 76 && global.Llastbonus = 1 //BP bonus
                global.Llastbonus = 1;
            else if movechoose = 100 && global.Llastbonus = 2 //POW bonus
                global.Llastbonus = 2;
            else if movechoose = 124 && global.Llastbonus = 3 //DEF bonus
                global.Llastbonus = 3;
            else if movechoose = 148 && global.Llastbonus = 4 //SPEED bonus
                global.Llastbonus = 4;
            else if movechoose = 172 && global.Llastbonus = 5 //STACHE bonus
                global.Llastbonus = 5;
            else
                global.Llastbonus = -1;
        }
        value = value;
        moveto = 1.5;
        audio_stop_sound(snd_roulette);
        audio_play_sound(snd_equip,0,0);
        alarm[1] = 20; //Add bonus
    }
    if moveto = 5
    {
        if (global.turn = -1.25 && global.Mexpleft > 0)
        or (global.turn = -1.75 && global.Lexpleft > 0)
        {
            moveto = 6;
            __background_set_colour( c_black );
            global.turn = -1.5;
            audio_stop_sound(mus_Fanfare);
            audio_play_sound(snd_confirm,0,0);
            alarm[4] = 1; //Fade out background
        }
    }
}
if gamepad_button_check_pressed(0, global.buttonUp) || keyboard_check_pressed(global.keyUp) //Up
{
    if x = 368 && y = 24 && moveto = 0
    {
        audio_play_sound(snd_select,0,0);
        movechoose += -24;
    }
}
if gamepad_button_check_pressed(0, global.buttonDown) || keyboard_check_pressed(global.keyDown) //Down
{
    if x = 368 && y = 24 && moveto = 0
    {
        audio_play_sound(snd_select,0,0);
        movechoose += 24;
    }
}

if movechoose > 172
    movechoose = 52;
if movechoose < 52
    movechoose = 172;
if x = 368 && y = 24 && moveto = 1
    moveto = 0;
else if moveto > 2
    mp_linear_step(432,24,1,0);
else
    mp_linear_step(368,24,1,0);


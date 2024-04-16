if active = false
    exit;

//Make gravity
if zgravityon = 1
    zspeed += zgravity;
z += zspeed; //Changes the height of the jump (the greater z is, the higher Mario is)
if z <= 0
{
    zspeed = 0;
    z = 0;
    zgravityon = 0;
    ground = 1;
}

if ground = 0
{
    if zspeed > 0
        sprite_index = spr_mariochoosejump;
    else
        sprite_index =  spr_stance2;
}

if gamepad_button_check(0, global.buttonLeft) || keyboard_check(global.keyLeft) //Left
{
    if active = true && collision = 0
        x -= 2;
}
if gamepad_button_check(0, global.buttonUp) || keyboard_check(global.keyUp) //Up
{
    if active = true && collision = 0
        y -= 2;
}
if gamepad_button_check(0, global.buttonRight) || keyboard_check(global.keyRight) //Right
{
    if active = true && collision = 0
        x += 2;
}
if gamepad_button_check(0, global.buttonDown) || keyboard_check(global.keyDown) //Down
{
    if active = true && collision = 0
        y += 2;
}
if gamepad_button_check(0, global.buttonSelect) || keyboard_check(global.keySelect) //Select
|| gamepad_button_check(0, global.buttonA) || keyboard_check(global.keyA) //A
{
    if zgravityon = 0 && active = true
    {
        zspeed = 12;
        ground = 0;
        zgravityon = 1;
        audio_play_sound(snd_jump,0,0);
    }
}
if gamepad_button_check(0, global.buttonStart) || keyboard_check(vk_enter) //Start
{
    /*if global.finalboss = false
    {
        audio_play_sound(snd_choose,0,0);
        global.finalboss = true;
    }
    else if global.finalboss = true
    {
        audio_play_sound(snd_cancel,0,0);
        global.finalboss = false;
    }*/
}

/* */
/*  */

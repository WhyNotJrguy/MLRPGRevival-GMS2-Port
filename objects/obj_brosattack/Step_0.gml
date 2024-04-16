//Controls
if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
    scr_Mbrosattack();
if gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB) //B
    scr_Lbrosattack();

//Make gravity
if zgravityon = 1
    zspeed += zgravity;
z += zspeed; //Changes the height of the jump (the greater z is, the higher Mario is)
if z > 11
    falling = 1;
if z <= 0
{
    if falling = 1
        visible = false;
    zspeed = 0;
    z = 0;
    zgravityon = 0;
    ground = 1;
}
if ground = 0 && obj_mariob.moveto = 7 && global.turn = 0
    x -= 1;
if ground = 0 && obj_mariob.moveto = 10 && global.turn = 0
{
    x -= 1;
    y += 3;
}
if ground = 0 && obj_luigib.moveto = 7 && global.turn = 1
    x -= 1;
if ground = 0 && obj_luigib.moveto = 10 && global.turn = 1
    y -= 3;

//Bros Attacks
switch (attacknum)
{
    case 0: //Green Shells
    {
        switch (phase)
        {
            case 1: //Heads to enemy from Mario
                if global.turn = 0 && global.hitrank < 2
                    mp_linear_step(obj_mariob.targetx,obj_mariob.targety,4,0);
                else if global.turn = 1 && global.hitrank < 2
                    mp_linear_step(obj_luigib.targetx,obj_luigib.targety,4,0);
                else if global.turn = 0 && global.hitrank > 1
                    mp_linear_step(obj_mariob.targetx,obj_mariob.targety,4.5,0);
                else if global.turn = 1 && global.hitrank > 1
                    mp_linear_step(obj_luigib.targetx,obj_luigib.targety,4.5,0);
            break;
            case 2: //Heads to Luigi from enemy
                if global.hitrank < 2
                    mp_linear_step(obj_luigib.x-32,obj_luigib.y+4,4,0);
                else if global.hitrank > 1
                    mp_linear_step(obj_luigib.x-32,obj_luigib.y+4,4.5,0);
            break;
            case 3: //Heads to enemy from Luigi
                if global.turn = 0 && global.hitrank < 2
                    mp_linear_step(obj_mariob.targetx,obj_mariob.targety,4,0);
                else if global.turn = 1 && global.hitrank < 2
                    mp_linear_step(obj_luigib.targetx,obj_luigib.targety,4,0);
                else if global.turn = 0 && global.hitrank > 1
                    mp_linear_step(obj_mariob.targetx,obj_mariob.targety,4.5,0);
                else if global.turn = 1 && global.hitrank > 1
                    mp_linear_step(obj_luigib.targetx,obj_luigib.targety,4.5,0);
            break;
            case 4: //Heads to Mario from enemy
            if global.hitrank < 2
                mp_linear_step(obj_mariob.x-32,obj_mariob.y,4,0);
            else if global.hitrank > 1
                mp_linear_step(obj_mariob.x-32,obj_mariob.y,4.5,0);
            break;
            case 5: //Head off screen (left)
            if global.hitrank < 2
                mp_linear_step(x-32,y,4,0);
            else if global.hitrank > 1
                mp_linear_step(x-32,y,4.5,0);
            break;
            case 6: //Head off screen (right)
                if global.turn = 0 && global.hitrank < 2
                    mp_linear_step(obj_mariob.targetx + room_width,obj_mariob.targety,4,0);
                else if global.turn = 1 && global.hitrank < 2
                    mp_linear_step(obj_luigib.targetx + room_width,obj_luigib.targety,4,0);
                else if global.turn = 0 && global.hitrank > 1
                    mp_linear_step(obj_mariob.targetx + room_width,obj_mariob.targety,4.5,0);
                else if global.turn = 1 && global.hitrank > 1
                    mp_linear_step(obj_luigib.targetx + room_width,obj_luigib.targety,4.5,0);
            break;
        }
        if x = obj_mariob.x-32 && y = obj_mariob.y
        {
            obj_mariob.stance = 17;
            obj_mariob.image_index = 0;
            audio_play_sound(snd_mario_woah,0,0);
            phase = 5;
        }
        if x = obj_luigib.x-32 && y = obj_luigib.y+4
        {
            obj_luigib.stance = 17;
            obj_luigib.image_index = 0;
            audio_play_sound(snd_luigi_auhhh,0,0);
            phase = 5;
        }
        if phase = 1 or phase = 3
        {
            if obj_mariob.targetchoose = 0 && global.turn = 0
                phase = 6;
            if obj_luigib.targetchoose = 0 && global.turn = 1
                phase = 6;
        }        
    }
    break;
    /*case 1: //Fire Flowers
        switch (phase)
        {
            case 1: //Mario's turn
                break;
            case 2: //Luigi's turn
                break;
            case 3: //Both Mario's and Luigi's turn
                break;
        }
        break;*/
}

/* */
/*  */

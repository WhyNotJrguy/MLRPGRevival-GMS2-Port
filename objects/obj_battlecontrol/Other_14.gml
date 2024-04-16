//Level Up System
if global.turn < 0 && locked = 0
{
    //Check to see if Mario leveled up
    if global.Mdead = 0 && global.Mexpleft <= 0 && instance_exists(obj_mariob)
    {
        audio_play_sound(snd_confirm,0,0);
        global.Mlvl += 1; //Increase level by 1
        locked = 1;
        if global.Mdead = 0 && global.Mexpleft <= 0 && instance_exists(obj_mariob) //Level up Mario
            scr_MarioNextLevel();
        alarm[5] = 15; //Go to level up Mario
    }
    //Check to see if Luigi leveled up
    else if global.Ldead = 0 && global.Lexpleft <= 0 && instance_exists(obj_luigib)
    {
        audio_play_sound(snd_confirm,0,0);
        global.Llvl += 1; //Increase level by 1
        locked = 1;
        if global.Ldead = 0 && global.Lexpleft <= 0 && instance_exists(obj_luigib) //Level up Luigi
            scr_LuigiNextLevel();
        alarm[6] = 15; //Go to level up Luigi
    }
    //Return to Overworld
    else if global.turn = -1
    {
        audio_stop_sound(mus_Fanfare);
        audio_play_sound(snd_confirm,0,0);
        alarm[4] = 90;
    }
}


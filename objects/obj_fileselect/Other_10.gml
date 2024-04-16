//Selection
if ready = 1
{
    if selection = 0 || selection = 3
    {
        ready = 0;
        audio_stop_all();
        audio_play_sound(snd_confirm,1,0);
        
        alarm[1] = 90;
    }
    else if action = 1 //Start Game
    {
        ready = 0;
        audio_stop_all();
        audio_play_sound(snd_confirm,1,0);
        
        alarm[1] = 90;
    }    
    else if action = 2 //Copy File
    {
        if global.file = 1 && file_exists("ML_RPG_SaveA.sav") && !file_exists("ML_RPG_SaveB.sav")
            audio_play_sound(snd_confirm,1,0);
        else if global.file = 2 && file_exists("ML_RPG_SaveB.sav") && !file_exists("ML_RPG_SaveA.sav")
            audio_play_sound(snd_confirm,1,0);
        else
            audio_play_sound(snd_incorrect,1,0);
    }
    else if action = 3 //Erase File
    {
        if global.file = 1 && file_exists("ML_RPG_SaveA.sav")
            event_user(1);
        else if global.file = 2 && file_exists("ML_RPG_SaveB.sav")
            event_user(1);
        else
            audio_play_sound(snd_incorrect,1,0);
    }
    else if action = 4 //Back
    {
        audio_play_sound(snd_cancel,1,0);
        action = 0;
    }
    else if action = 0
    {
        audio_play_sound(snd_confirm,1,0);
        action = 1;
    }
}


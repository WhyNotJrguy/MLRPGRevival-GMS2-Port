if ready = 1
{
    if selection = 1 && file_exists("ML_RPG_SaveA.sav")
    {
        ready = 2;
        action = 0;
        audio_play_sound(snd_delete_file,1,0);
        file_delete("ML_RPG_SaveA.sav");
        alarm[0] = 90;
    }
    if selection = 2 && file_exists("ML_RPG_SaveB.sav")
    {
        ready = 2;
        action = 0;
        audio_play_sound(snd_delete_file,1,0);
        file_delete("ML_RPG_SaveB.sav");
        alarm[0] = 90;
    }
}


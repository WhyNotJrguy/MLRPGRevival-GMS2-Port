audio_play_sound(snd_equip,0,0);
global.saveMessage += 1; //for now
//Save the game
switch (global.file)
{
    case 1:
        scr_filesave("ML_RPG_SaveA.sav");
    break;
    case 2:
        scr_filesave("ML_RPG_SaveB.sav");
    break;
}
show_message("Game Saved!" + "SM: " + string(global.saveMessage));


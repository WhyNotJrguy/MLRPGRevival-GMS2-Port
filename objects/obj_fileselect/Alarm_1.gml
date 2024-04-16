//Load Game or Return to Title Screen
global.saveMessage = -1;
global.flag = -1;
global.coins = 0;
if selection = 1
{
    if (file_exists("ML_RPG_SaveA.sav"))
        scr_fileload("ML_RPG_SaveA.sav");
    room_goto(rmMarioBrosHouse);                      
}
else if selection = 2
{
    if (file_exists("ML_RPG_SaveB.sav"))
        scr_fileload("ML_RPG_SaveB.sav");
    room_goto(rmMarioBrosHouse);                      
}
else if selection = 3
    room_goto(rmCredits);
else if selection = 0
    room_goto(rm_TitleScreen);


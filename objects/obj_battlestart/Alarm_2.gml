//Start the battle
if global.strike > 0 && global.strike < 4
{
    //Attack all enemies in the battle
    if obj_battlecontrol.enemyid[0] > 0
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[0].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[0].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[0];
    }
    //Otherwise, choose the single enemy in the battle
    else if obj_battlecontrol.enemyid[1] > 0
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[1].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[1].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[1];
    }
    else if obj_battlecontrol.enemyid[2] > 0
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[2].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[2].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[2];
    }
    else if obj_battlecontrol.enemyid[3] > 0
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[3].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[3].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[3];
    }
    else if obj_battlecontrol.enemyid[4] > 0
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[4].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[4].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[4];
    }
    else
    {
        obj_mariob.targetx = obj_battlecontrol.enemyid[5].x;
        obj_mariob.targety = obj_battlecontrol.enemyid[5].y;
        obj_mariob.targetid = obj_battlecontrol.enemyid[5];
    }
}
else if global.strike > 4
{
    //Attack all enemies in the battle
    if obj_battlecontrol.enemyid[0] > 0
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[0].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[0].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[0];
    }
    //Otherwise, choose the single enemy in the battle
    else if obj_battlecontrol.enemyid[1] > 0
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[1].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[1].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[1];
    }
    else if obj_battlecontrol.enemyid[2] > 0
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[2].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[2].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[2];
    }
    else if obj_battlecontrol.enemyid[3] > 0
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[3].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[3].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[3];
    }
    else if obj_battlecontrol.enemyid[4] > 0
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[4].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[4].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[4];
    }
    else
    {
        obj_luigib.targetx = obj_battlecontrol.enemyid[5].x;
        obj_luigib.targety = obj_battlecontrol.enemyid[5].y;
        obj_luigib.targetid = obj_battlecontrol.enemyid[5];
    }
}

//All Strikes
if global.strike = 7 //Luigi Hand 1st Strike
{
    obj_luigib.alarm[7] = 2;
    obj_luigib.phase = 0.25;
    obj_luigib.zspeed = 0;
    obj_luigib.stance = 0; //stance 0 means that he is not in a stance
    obj_luigib.control = 0;
    obj_mariob.phase = 0;
    global.turn = 1;
}
else if global.strike = 6 //Luigi Hammer 1st Strike
{
    obj_luigib.alarm[6] = 2;
    obj_luigib.phase = 0.25;
    obj_luigib.zspeed = 0;
    obj_luigib.stance = 0; //stance 0 means that he is not in a stance
    obj_luigib.control = 0;
    obj_mariob.phase = 0;
    global.turn = 1;
}
else if global.strike = 5 //Luigi Jump 1st Strike
{
    obj_luigib.alarm[5] = 2;
    obj_luigib.phase = 0.25;
    obj_luigib.zspeed = 0;
    obj_luigib.stance = 0; //stance 0 means that he is not in a stance
    obj_luigib.control = 0;
    obj_mariob.phase = 0;
    global.turn = 1;
}
else if global.strike = 4 //Enemy 1st Strike
    global.turn = 2;
else if global.strike = 3 //Mario Hand 1st Strike
{
    obj_mariob.alarm[7] = 2;
    obj_mariob.phase = 0.25;
    obj_mariob.zspeed = 0;
    obj_mariob.stance = 0; //stance 0 means that he is not in a stance
    obj_mariob.control = 0;
    obj_luigib.phase = 0;
    global.turn = 0;
}
else if global.strike = 2 //Mario Hammer 1st Strike
{
    obj_mariob.alarm[6] = 2;
    obj_mariob.phase = 0.25;
    obj_mariob.zspeed = 0;
    obj_mariob.stance = 0; //stance 0 means that he is not in a stance
    obj_mariob.control = 0;
    obj_luigib.phase = 0;
    global.turn = 0;
}
else if global.strike = 1 //Mario Jump 1st Strike
{
    obj_mariob.alarm[5] = 2;
    obj_mariob.phase = 0.25;
    obj_mariob.zspeed = 0;
    obj_mariob.stance = 0; //stance 0 means that he is not in a stance
    obj_mariob.control = 0;
    obj_luigib.phase = 0;
    global.turn = 0;
}
else //Neutral Encounter
    with obj_battlecontrol event_user(8);
//Play Battle Music
audio_sound_gain(global.music,0.7,0);
music_play(global.music);


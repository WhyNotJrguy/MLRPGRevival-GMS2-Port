//Add up bonus
if global.turn = -1.25 //Mario recieves bonus
{
    if value > 0
    {
        audio_play_sound(snd_spendcoins,0,0);
        if movechoose = 52 //HP bonus
            global.maxMHP += 1;
        if movechoose = 76 //BP bonus
            global.maxMBP += 1;
        if movechoose = 100 //POW bonus
            global.Mpow += 1;
        if movechoose = 124 //DEF bonus
            global.Mdef += 1;
        if movechoose = 148 //SPEED bonus
            global.Mspd += 1;
        if movechoose = 172 //STACHE bonus*/
            global.Mstache += 1;
        value -= 1; //Subtract 1 from exp gained
        alarm[1] = 1;
    }
    else if value = 0 && moveto = 1.5 //Lakitu moves away
    {
        audio_stop_sound(snd_spendcoins);
        moveto = 3;
        obj_mariob.stance = 13;
        obj_mariob.image_index = 0;
        obj_mariob.x += 2;
        alarm[2] = 1;
    }
}
if global.turn = -1.75 //Luigi recieves bonus
{
    if value > 0
    {
        audio_play_sound(snd_spendcoins,0,0);
        if movechoose = 52 //HP bonus
            global.maxLHP += 1;
        if movechoose = 76 //BP bonus
            global.maxLBP += 1;
        if movechoose = 100 //POW bonus
            global.Lpow += 1;
        if movechoose = 124 //DEF bonus
            global.Ldef += 1;
        if movechoose = 148 //SPEED bonus
            global.Lspd += 1;
        if movechoose = 172 //STACHE bonus*/
            global.Lstache += 1;
        value -= 1; //Subtract 1 from exp gained
        alarm[1] = 1;
    }
    else if value = 0 && moveto = 1.5 //Lakitu moves away
    {
        sound_stop(snd_spendcoins);
        moveto = 3;
        obj_luigib.stance = 13;
        obj_luigib.image_index = 0;
        obj_luigib.x += 1;
        alarm[2] = 1;
    }
}


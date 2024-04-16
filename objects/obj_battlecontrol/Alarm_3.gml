//Win
if global.Mdead = 0 && instance_exists(obj_mariob)
{
    if wintype = -1
        with obj_mariob stance = 8;
    if wintype = -2
        with obj_mariob stance = 9;
    if wintype = -3
        with obj_mariob stance = 10;
}
if global.Ldead = 0 && instance_exists(obj_luigib)
{
    if wintype = -1
        with obj_luigib stance = 8;
    if wintype = -2
        with obj_luigib stance = 9;
    if wintype = -3
        with obj_luigib stance = 10;
}

//Add up points
if global.experience > 0
{
    audio_play_sound(snd_spendcoins,0,0);
    if global.experience > 0
    {
        if global.Mdead = 0 && instance_exists(obj_mariob)
        {
            global.Mexp += 1; //Add to Mario's exp
            global.Mexpleft -= 1; //Subtract amount Mario has left to level up
        }
        if global.Ldead = 0 && instance_exists(obj_luigib)
        {
            global.Lexp += 1; //Added to Luigi's exp
            global.Lexpleft -= 1; //Subtract amount Mario has left to level up
        }
        global.experience -= 1; //Subtract 1 from exp gained
        alarm[3] = 1;
    }
}
if global.coinsearned > 0
{
    if !audio_is_playing(snd_spendcoins)
        audio_play_sound(snd_spendcoins,0,0);
    global.coins += 1; //Add to coin count
    global.coinsearned -= 1; //Subtract 1 from coins gained
    if global.coinsearned > 0
        alarm[3] = 1;
}
if global.experience = 0 && global.coinsearned = 0
    audio_stop_sound(snd_spendcoins);


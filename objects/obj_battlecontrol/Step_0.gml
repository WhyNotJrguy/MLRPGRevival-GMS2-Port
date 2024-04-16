if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
{
    if global.turn < 0 && audio_is_playing(mus_Fanfare) && obj_mariob.stance <> 7 && obj_luigib.stance <> 7
    {
        if global.turn = -1.25 && obj_mariob.x > 107 && locked = 0 && !instance_exists(obj_levelupbonus)
        {
            audio_play_sound(snd_spendcoins,0,0);
            audio_play_sound(snd_confirm,0,0);
            //Add up stat totals
            global.maxMHP += hpamount;
            hpamount = 0;
            global.maxMBP += bpamount;
            bpamount = 0;
            global.Mpow += powamount;
            powamount = 0;
            global.Mdef += defamount;
            defamount = 0;
            global.Mspd += spdamount;
            spdamount = 0;
            global.Mstache += stacheamount;
            stacheamount = 0;
            locked = 1;
            alarm[8] = 50; //Move Lakitu cloud in
        }
        else if global.turn = -1.75 && obj_luigib.x > 105 && locked = 0 && !instance_exists(obj_levelupbonus)
        {
            audio_play_sound(snd_spendcoins,0,0);
            audio_play_sound(snd_confirm,0,0);
            //Add up stat totals
            global.maxLHP += hpamount;
            hpamount = 0;
            global.maxLBP += bpamount;
            bpamount = 0;
            global.Lpow += powamount;
            powamount = 0;
            global.Ldef += defamount;
            defamount = 0;
            global.Lspd += spdamount;
            spdamount = 0;
            global.Lstache += stacheamount;
            stacheamount = 0;
            locked = 1;
            alarm[8] = 50; //Move Lakitu cloud in
        }
        else if instance_exists(obj_levelupbonus) && obj_levelupbonus.moveto = 0
        {
            //Start bonus wheel
            audio_play_sound(snd_confirm,0,0);
            audio_play_sound(snd_roulette,0,1);
            obj_levelupbonus.moveto = 2;
            with obj_levelupbonus alarm[0] = 5;
        }
        else if global.experience = 0 && global.coinsearned = 0
        {
            //Check to see if Mario or Luigi leveled up
            event_user(4);
        }
        else if global.experience > 0 or global.coins > 0
        {
            //Add up remaining totals at once
            audio_stop_sound(snd_spendcoins);
            audio_play_sound(snd_confirm,0,0);
            if global.Mdead = 0
            {
                global.Mexp += global.experience;
                global.Mexpleft -= global.experience;
            }
            if global.Ldead = 0
            {
                global.Lexp += global.experience;
                global.Lexpleft -= global.experience;
            }
            global.coins += global.coinsearned;
            global.experience = 0;
            global.coinsearned = 0;
        }
    }
}
if gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB) //B
{
    if instance_exists(obj_levelupbonus) && obj_levelupbonus.moveto = 2
    {
        audio_play_sound(snd_cancel,0,0);
        audio_stop_sound(snd_roulette);
        with obj_levelupbonus moveto = 0;
        with obj_levelupbonus value = 0;
    }
}

if !instance_exists(enemyid[1])&& 
!instance_exists(enemyid[2])&&
!instance_exists(enemyid[3])&&
!instance_exists(enemyid[4])&&
!instance_exists(enemyid[5])
{
    if obj_mariob.x = obj_mariob.stancex && obj_mariob.y = obj_mariob.stancey
    && obj_luigib.x = obj_luigib.stancex && obj_luigib.y = obj_luigib.stancey
    && !instance_exists(obj_pointsbattle) && !instance_exists(obj_rankbattle)
    && !instance_exists(obj_totaldamage) && (global.posx = 0 && global.posy = 0
    or global.turn = 2)
        event_user(3); //Victory
}
else if global.turn = 2 //Enemies Turn
{
    startid = 0;
    do
    {
        startid += 1;
    }
    until (instance_exists(enemyid[startid]));
    
    if instance_exists(enemyid[startid])
    {
        if enemyid[startid].turndone = 0 && enemyid[startid].moveto = 0
        {
            if obj_mariob.hurt = 1 && obj_mariob.control = 1 && global.Mdead = 0 && instance_exists(obj_mariob)
                obj_mariob.hurt = 0;
            if obj_luigib.hurt = 1 && obj_luigib.control = 1 && global.Ldead = 0 && instance_exists(obj_luigib)
                obj_luigib.hurt = 0;
            target = floor(random(2));
            if global.Mdead > 0 or !instance_exists(obj_mariob)
                target = 1;
            if global.Ldead > 0 or !instance_exists(obj_luigib)
                target = 0;
            if target = 0
                enemyid[startid].moveto = 1; //Move towards Mario
            if target = 1
                enemyid[startid].moveto = 3; //Move towards Luigi
        }
    }
}

if instance_number(obj_mariob) = 0 and instance_number(obj_luigib) = 0
{
    global.stunned = true; //This could be the variable to avoid encountering same enemy in Overworld
    transition_kind = 21;
    room_goto(global.roomin);
}


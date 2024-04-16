//Green Shells
switch (phase)
{
    case 1:
        with obj_mariob event_user(5); //Determine luck
        global.damage = round(global.Mpow/2 - other.def/100); //Takes Mario's pow for damage
        break;
    case 3:
        with obj_luigib event_user(5); //Determine Luck
        global.damage = round(global.Lpow/2 - other.def/100); //Takes Luigi's pow for damage
        break;
}

if global.luckyhit = true //Lucky Hit
{
    audio_play_sound(snd_luckyhit,0,0);
    other.hurt = 1;
    switch (phase)
    {
        case 1:
            global.damage+= global.Mlvl; //Adds certain damage based on what level Mario is
            break;
        case 3:
            global.damage+= global.Llvl; //Adds certain damage based on what level Luigi is
            break;
    }
    other.hp += -global.damage;
    instance_create(x,y,obj_pointsbattle);
}
else
    other.hp += -global.damage; //Deals the damage based on Mario's pow
if !instance_exists(obj_rankbattle)
{
    rank += 0.5;
    if rank >= 3
    {
        global.hitrank = 3;
        audio_play_sound(snd_excellenthit,0,0);
        alarm[3] = 2;
    }
    else if rank = 2
    {
        audio_play_sound(snd_greathit,0,0);
        global.hitrank = 2;
    }
    else if rank = 1
    {
        global.hitrank = 1;
        audio_play_sound(snd_goodhit,0,0);
    }
    else if rank = 0
    {
        global.hitrank = 0;
        audio_play_sound(snd_okhit,0,0);
        audio_play_sound(snd_hit,0,0);
    }
    
    if rank = 0 or rank = 1 or rank = 2 or rank = 3
    {
        instance_create(x,y,obj_rankbattle);
        obj_rankbattle.image_single = global.hitrank;
    }
}
if !instance_exists(obj_pointsbattle)
{
    instance_create(x,y,obj_pointsbattle);
    global.totaldamage+= global.damage;
}
if other.hurt = 1
{
    switch (phase)
    {
        case 1:
            phase = 2;
            obj_mariob.sprite_index = spr_mariobgreenshellstance;
            obj_luigib.sprite_index = spr_luigibgreenshellstance2;                
            break;
        case 3:
            phase = 4;
            obj_mariob.sprite_index = spr_mariobgreenshellstance2;
            obj_luigib.sprite_index = spr_luigibgreenshellstance;     
            break;       
    }
    alarm[4] = 20;
}


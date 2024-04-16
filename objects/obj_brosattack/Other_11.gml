//Fire Flowers

global.damage = 0;
with obj_mariob event_user(5); //Determine luck
global.damage += round(global.Mpow/2 - ID.def/100); //Takes Mario's pow for damage
global.damage += round(global.Lpow/2 - ID.def/100); //Takes Luigi's pow for damage

if global.luckyhit = true //Lucky Hit
{
    audio_play_sound(snd_luckyhit,0,0);
    ID.hurt = 1;
    global.damage += global.Mlvl; //Adds certain damage based on what level Mario is
}

if amount >= 44
    ID.hp += round(-global.damage); //Deals the damage based on Mario's pow
else if amount >= 24 && amount < 44
    ID.hp += round(-global.damage/1.5); //Deals the damage based on Mario's pow
else if amount >= 12 && amount < 24
    ID.hp += round(-global.damage/2); //Deals the damage based on Mario's pow
else if amount >= 0 && amount < 12
    ID.hp += round(-global.damage/2.5); //Deals the damage based on Mario's pow
instance_create(x,y,obj_pointsbattle);

if !instance_exists(obj_rankbattle)
{
    if amount >= 44
    {
        global.hitrank = 3;
        audio_play_sound(snd_excellenthit,0,0);
        alarm[3] = 2;
    }
    else if amount >= 24 && amount < 44
    {
        audio_play_sound(snd_greathit,0,0);
        global.hitrank = 2;
    }
    else if amount >= 12 && amount < 24
    {
        audio_play_sound(snd_goodhit,0,0);
        global.hitrank = 1;
    }
    else if amount >= 0 && amount < 12
    {
        audio_play_sound(snd_okhit,0,0);
        global.hitrank = 0;
    }
    
    if amount < 4
    {
        instance_create(x,y,obj_rankbattle);
        obj_rankbattle.image_single = global.hitrank;
        amount = 0;
    }
}
if !instance_exists(obj_pointsbattle)
{
    instance_create(x,y,obj_pointsbattle);
    global.totaldamage+= global.damage;
}
if ID.hurt = 1
    alarm[4] = 20;


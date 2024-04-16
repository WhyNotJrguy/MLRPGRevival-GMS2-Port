//Hit enemy with Jump Attack
if held = 1
{
    held = 0;
    zspeed = 7;
    other.hurt = 1;
    event_user(5); //Determine luck
    global.damage = round(global.Lpow - other.def/100); //Takes Luigi's pow for damage
    if global.luckyhit = true //Lucky Hit
    {
        audio_play_sound(snd_luckyhit,0,0);
        other.hurt = 1;
        global.damage+= global.Llvl; //Adds certain damage based on what level Luigi is
        other.hp += -global.damage;
        instance_create(x,y,obj_pointsbattle);
        obj_pointsbattle.reappear = 1
    }
    else
        other.hp += -global.damage; //Deals the damage based on Luigi's pow
    if instance_exists(obj_rankbattle)
        with obj_rankbattle instance_destroy();
    instance_create(x-48,y-48,obj_rankbattle);
    if repeataction = 1
    {
        audio_play_sound(snd_hit,0,0);
        audio_play_sound(snd_excellenthit,0,0);
        with obj_rankbattle image_single = 3; //Excellent Hit
        global.hitrank = 3;
        __background_set( e__BG.Visible, 7, true ); //Show Excellent Effect
        alarm[3] = 20;
        moveto = 0;
        global.totaldamage+= global.damage;
        repeataction = 0;
    }
    else
    {
        audio_play_sound(snd_hit,0,0);
        audio_play_sound(snd_goodhit,0,0);
        with obj_rankbattle image_single = 1; //Good Hit
        global.hitrank = 1;
        zspeed = 15;
        moveto = 1;
        global.totaldamage+= global.damage;
        repeataction = 1;
        with obj_battlecontrol event_user(1); //Another chance to land a lucky hit
    }
    if obj_rankbattle.image_single = 2 or obj_rankbattle.image_single = 3
    { 
        instance_create(x,y,obj_pointsbattle);
        obj_pointsbattle.totaldamage = 1;
    }
    else
        instance_create(x,y,obj_pointsbattle);
}
else
{
    zspeed = 7;
    other.hurt = 1;
    event_user(5); //Determine luck
    global.damage = round(global.Lpow/2 - other.def/100); //Takes Luigi's pow for damage
    other.hp += -global.damage; //Deals the damage based on Luigi's pow
    if !instance_exists(obj_rankbattle)
        instance_create(x-48,y-48,obj_rankbattle);
    if !instance_exists(obj_pointsbattle) && repeataction = 0
    {
        instance_create(x,y,obj_pointsbattle);
        with obj_rankbattle image_single = 0; //Ok Hit
        global.hitrank = 0;
        global.totaldamage+= global.damage;
        sprite_index = spr_mhurt;
    }
    else if repeataction = 1
    {
        with obj_rankbattle instance_destroy();
        instance_create(x-48,y-48,obj_rankbattle);
        instance_create(x,y,obj_pointsbattle);
        with obj_rankbattle image_single = 2; //Great Hit
        global.hitrank = 2;
        obj_pointsbattle.totaldamage = 1;
        global.totaldamage+= global.damage;
        sprite_index = spr_mariobwalkingback;
    }
    if sprite_index = spr_mhurt
    {
        x-= 12;
        y+= 8;
        speed = 0.001;
        moveto = -1;
        alarm[1] = 30;
    }
    else
    {
        moveto =  0;
        audio_play_sound(snd_hit,0,0);
    }
    repeataction = 0;
}
global.posx = x;
global.posy = y;
glitchfix = true;


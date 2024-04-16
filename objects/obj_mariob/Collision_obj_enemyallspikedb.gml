//Damage all enemies
if moveto = 1 && z <= other.headz && other.dead = 0
{
    hurt = 1;
    global.takedamage = 1; //Mario takes damage
    damage = round(global.MHP * global.Mdef/100 - other.pow); //Mario HP * Mario defense/100 - Enemy's POW
    global.MHP += damage;
    global.damage = -damage; //Damage dealt
    if global.MHP <= 0
        global.Mdead = -0.25;
    audio_play_sound(snd_takedamage,0,0);
    zspeed = 7;
    if !instance_exists(obj_rankbattle)
        instance_create(x-48,y-48,obj_rankbattle);
    if !instance_exists(obj_pointsbattle) && repeataction = 0
    {
        instance_create(x,y,obj_pointsbattle);
        with obj_rankbattle image_single = 4; //Too Bad
        sprite_index = spr_mhurt;
    }
    x-= 12;
    y+= 8;
    speed = 0.001;
    moveto = -1;
    alarm[1] = 30;
    repeataction = 0;
    global.posx = x;
    global.posy = y;
}


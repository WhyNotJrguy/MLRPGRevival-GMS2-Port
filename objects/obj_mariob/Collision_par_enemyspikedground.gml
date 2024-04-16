if moveto = 1 && z <= other.headz && other.dead = 0 && obj_battlecontrol.enemyid[targetchoose] = other
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

if phase = -1 && other.dead = 0 //Jump counterattack
{
    if z <= other.headz
    {
        //Attacked
        if other.headz - z > 5 && hurt = 0
        {
            sprite_index = spr_mhurt;
            hurt = 1;
            global.takedamage = 1; //Mario takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.MHP * global.Mdef/100 - other.pow); //Mario HP * Mario defense/100 - Enemy's POW
            global.MHP += damage;
            global.damage = -damage; //Damage dealt
            if global.MHP <= 0
                global.Mdead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        //Counterattack
        else if other.headz - z <= 5
        {
            sprite_index = spr_mhurt;
            hurt = 1;
            global.takedamage = 1; //Mario takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.MHP * global.Mdef/100 - other.pow); //Mario HP * Mario defense/100 - Enemy's POW
            global.MHP += damage;
            global.damage = -damage; //Damage dealt
            if global.MHP <= 0
                global.Mdead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        other.moveto = 0;
        other.turndone = 1;
    }
}

if phase = -2 && other.dead = 0 //Hammer counterattack
{
        //Counterattack
        if sprite_index = spr_mariobhammerhit && image_index > 2 && other.x-12 >= x && other.hurt = 0
        {
            global.hurt = 1;
            other.hurt = 1;
            instance_create(other.xstart,other.ystart,obj_pointsbattle);
            damage = round(other.hp * other.def/100 - global.Mpow); //Enemy HP * Enemy defense/100 - Mario's POW
            if damage >= 0
                damage = -1;
            other.hp += damage;
            global.damage = -damage; //Damage dealt
            audio_play_sound(snd_strike,0,0);
        }
        //Attacked
        else if hurt = 0
        {
            sprite_index = spr_mhurt;
            image_speed = 0.275;
            hurt = 1;
            global.takedamage = 1; //Mario takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.MHP * global.Mdef/100 - other.pow); //Mario HP * Mario defense/100 - Enemy's POW
            global.MHP += damage;
            global.damage = -damage; //Damage dealt
            if global.MHP <= 0
                global.Mdead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        other.moveto = 0;
        other.turndone = 1;
}


if phase = -1 && other.dead = 0 //Jump counterattack
{
    if z <= other.headz
    {
        //Attacked
        if other.headz - z > 5 && hurt = 0
        {
            sprite_index = spr_lhurt;
            hurt = 1;
            global.takedamage = 2; //Luigi takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.LHP * global.Ldef/100 - other.pow); //Luigi HP * Luigi defense/100 - Enemy's POW
            global.LHP += damage;
            global.damage = -damage; //Damage dealt
            if global.LHP <= 0
                global.Ldead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        //Counterattack
        else if other.headz - z <= 5
        {
            sprite_index = spr_lhurt;
            hurt = 1;
            global.takedamage = 2; //Luigi takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.LHP * global.Ldef/100 - other.pow); //Luigi HP * Luigi defense/100 - Enemy's POW
            global.LHP += damage;
            global.damage = -damage; //Damage dealt
            if global.LHP <= 0
                global.Ldead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        other.moveto = 0;
        other.turndone = 1;
    }
}

if phase = -2 && other.dead = 0 //Hammer counterattack
{
        //Counterattack
        if sprite_index = spr_luigibhammerhit && image_index > 2 && other.hurt = 0
        {
            global.hurt = 1;
            other.hurt = 1;
            //instance_create(other.xstart,other.ystart,obj_pointsbattle);
            damage = round(other.hp * other.def/100 - global.Lpow); //Enemy HP * Enemy defense/100 - Luigi's POW
            if damage >= 0
                damage = -1;
            other.hp += damage;
            global.damage = -damage; //Damage dealt
            audio_play_sound(snd_strike,0,0);
        }
        //Attacked
        else if hurt = 0 && global.takedamage = 0
        {
            sprite_index = spr_lhurt;
            image_speed = 0.275;
            hurt = 1;
            global.takedamage = 2; //Luigi takes damage
            instance_create(x+16,y,obj_pointsbattle);
            damage = round(global.LHP * global.Ldef/100 - other.pow); //Luigi HP * Luigi defense/100 - Enemy's POW
            global.LHP += damage;
            global.damage = -damage; //Damage dealt
            if global.LHP <= 0
                global.Ldead = 0.5;
            audio_play_sound(snd_takedamage,0,0);
        }
        other.turndone = 1;
}


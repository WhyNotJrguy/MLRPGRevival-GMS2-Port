if moveto = 1 && z <= other.headz && other.dead = 0 && obj_battlecontrol.enemyid[targetchoose] = other
    event_user(0);

//Fix glitch with specific enemies lower in the room
if phase = 4 && moveto = 0 && !sprite_index = spr_luigibwalkingback
    stance = 6;

if phase = -1 && other.dead = 0
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
            zspeed = 5;
            zgravityon = 1;
            global.hurt = 1;
            other.hurt = 1;
            instance_create(other.xstart,other.ystart,obj_pointsbattle);
            damage = round(other.hp * other.def/100 - global.Lpow); //Enemy HP * Enemy defense/100 - Luigi's POW
            if damage >= 0
                damage = -1;
            other.hp += damage;
            global.damage = -damage; //Damage dealt
            sprite_index = spr_luigibjumpland2; //Nailed hit
            audio_play_sound(snd_hit,0,0);
        }
        other.moveto = 0;
        other.turndone = 1;
    }
}


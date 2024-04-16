if global.Mdead = 1 && global.Ldead = 1 or dead = 1
    exit
else
{
    //Make gravity
    if moveto = 0
    {
        if zgravityon = 1
            zspeed += zgravity;
        z += zspeed;
        if z > 11
            falling = 1;
        if z <= 0
        {
            if falling = 1 && target = 0
                moveto = 1; //Roll towards Mario
            else if falling = 1 && target = 1
                moveto = 3; //Roll towards Luigi
            zspeed = 0;
            z = 0;
            zgravityon = 0;
            ground = 1;
        }
        if ground = 0
            x -= 1;
        if ground = 0 && ready = 1
        {
            x -= 1;
            y += 3;
        }
    }
    else
    {
        if x = stancex && y = stancey
            stance = 1;
        if moveto = 1
        {
            mp_linear_step(obj_mariob.x+80,obj_mariob.y,1.75,0); //Roll towards Mario
            obj_mariob.stance = 4; //Battle stance
            obj_luigib.stance = 4; //Battle stance
        }
        if y = obj_mariob.y && moveto = 1
            moveto = 2;
        if moveto = 2
            mp_linear_step(-32,y,1.5,0); //Roll passed Mario
        if moveto = 3
        {
            mp_linear_step(obj_luigib.x+80,obj_luigib.y,1.75,0); //Roll towards Luigi
            obj_mariob.stance = 4; //Battle stance
            obj_luigib.stance = 4; //Battle stance
        }
        if y = obj_luigib.y && moveto = 3
            moveto = 4;
        if moveto = 4
            mp_linear_step(-32,y,1.5,0); //Roll passed Luigi
        
        enemyahead = 0; //enemyahead is just a variable used in coding, don't worry about it
        if turndone = 1 && global.turn = 2
        {
            if enemynum < 5
            {
                do 
                {
                    enemyahead += 1;
                    nextid = obj_battlecontrol.enemyid[enemynum+enemyahead];
                }
                until (instance_exists(nextid) or enemynum+enemyahead = 5)
                if instance_exists(nextid)
                {
                    if nextid.moveto = 0 && nextid.turndone = 0
                    {
                        if global.Mdead > 0
                            target = 1;
                        if global.Ldead > 0
                            target = 0;
    
                        if target = 0
                            nextid.moveto = 1; //Move to Mario
                        if target = 1
                            nextid.moveto = 3; //Move to Luigi
                    }
                }
            }
            if enemynum+enemyahead = 5 && x = xstart && y = ystart
            {
                if global.Lspd > global.Mspd && global.turn <> 1
                {
                    obj_luigib.turnnext = 0;
                    obj_luigib.phase = 1;
                    obj_mariob.turnnext = 1;
                    obj_mariob.stance = 1;
                    global.turn = 1;
                }
                else
                {
                    obj_mariob.turnnext = 0;
                    obj_luigib.turnnext = 1;
                    obj_luigib.stance = 1;
                    global.turn = 0;
                }
                turndone = 0;
            }
        }
    
        if global.turn != 2
            turndone = 0;
    
        if hp <= 0 //Enemy dies
        {
            global.stunned = true;
            audio_play_sound(snd_enemy_dead,0,0);
            global.experience += experience;
            global.coinsearned += coins;
            event_user(0);
        }
    }
    if hurt = 1
        hurttime += -0.2;
    if hurttime <= 0
    {
        hurt = 0;
        hurttime = 20;
    }
}


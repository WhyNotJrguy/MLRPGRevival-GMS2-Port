enemynum = 0; //the number in obj_battlecontrol's variable enemyid

if id = obj_battlecontrol.enemyid[1]
    enemynum = 1;
if id = obj_battlecontrol.enemyid[2]
    enemynum = 2;
if id = obj_battlecontrol.enemyid[3]
    enemynum = 3;
if id = obj_battlecontrol.enemyid[4]
    enemynum = 4;
if id = obj_battlecontrol.enemyid[5]
    enemynum = 5;

if global.Mdead = 1 && global.Ldead = 1 or dead = 1
    exit
else
{
    if x = stancex && y = stancey
    {
        if global.Mdead = 0.5 && obj_mariob.sprite_index = spr_mariodie
            exit;
        if global.Ldead = 0.5 && obj_luigib.sprite_index = spr_luigidie
            exit;
        if global.Mdead = 1 && global.Ldead = 1
            exit;
    }
    if hurt = 1
        hurttime += -0.2;
    if stance = 1
    {
        sprite_index = spr_lakitustance;
        image_xscale = 1;
    }
    if stance = 2
        sprite_index = spr_lakituattack;
    if hurttime <= 0
    {
        hurt = 0;
        hurttime = 10;
    }
    if hurt = 1
        sprite_index = spr_lakituhurt;
    if hurt = 0 && stance = 1
        sprite_index = spr_lakitustance;
    
    if x = stancex && y = stancey
        stance = 1;
    if moveto = 0
        mp_linear_step(stancex,stancey,1.5,0); //Return to starting position
    if moveto = 1
    {
        mp_linear_step(240,obj_mariob.y+24,1.5,0); //Prepare to attack Mario
        sprite_index = spr_lakitustance;
        stance = 0;
        obj_mariob.stance = 4; //Battle stance
        obj_luigib.stance = 4; //Battle stance
    }
    if x = 240 && y = obj_mariob.y+24 && moveto = 1 //Ready to attack Mario
    {
        sprite_index = spr_lakituattack;
        stance = 2;
        moveto = 2;
    }
    if moveto = 2 && sprite_index = spr_lakituattack && image_index >= 1
    {
        ID = instance_create(x+8,y-56,obj_lakituball); //Throw Lakitu Ball
        with ID target = 0;
        moveto = -1;
    }
    if moveto = 3
    {
        mp_linear_step(240,obj_luigib.y-24,1.5,0); //Prepare to attack Luigi
        sprite_index = spr_lakitustance;
        stance = 0;
        obj_mariob.stance = 4; //Battle stance
        obj_luigib.stance = 4; //Battle stance
    }
    if x = 240 && y = obj_luigib.y-24 && moveto = 3 //Ready to attack Luigi
    {
        sprite_index = spr_lakituattack;
        stance = 2;
        moveto = 4;
    }
    if moveto = 4 && sprite_index = spr_lakituattack && image_index >= 1
    {
        ID = instance_create(x+8,y-56,obj_lakituball); //Throw Lakitu Ball
        with ID target = 1;
        moveto = -1;
    }

    
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
                    target = floor(random(2)); //Choose whether to attack Mario or Luigi
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
        if enemynum+enemyahead = 5 && x = xstart && y = ystart && !instance_exists(obj_lakituball)
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

    if turndone = 2 && !instance_exists(obj_lakituball)
        turndone = 1;
    
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


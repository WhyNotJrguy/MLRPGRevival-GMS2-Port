//Restore Overworld Room
if room_persistent = true && !instance_exists(obj_battlecontrol)
{
    if global.MHP <= 0
    {
        global.Mdead = 0;
        global.MHP = 1;
    }
    if global.LHP <= 0
    {
        global.Ldead = 0;
        global.LHP = 1;
    }
    if instance_exists(obj_qblock)
    {
        with obj_qblock image_speed = 0.15;
    }
    
    //fix this so the goomba has invincibility frames and either dies or returns to normal state
    /*with obj_mplayer_stunned instance_create(x,y,obj_mplayer);
    with obj_mplayer_stunned instance_destroy();
    with obj_lplayer_stunned instance_create(x,y,obj_lplayer);
    with obj_lplayer_stunned instance_destroy();*/
    
    
    if instance_exists(obj_enemy_stunned)
    {
        with (obj_enemy_stunned)
        {
            enemy = instance_create(x,y,name);
            enemy.sprite_index = sprite_index;
            enemy.name = name;
            instance_destroy();
        }

    }
    
    var i = 0;
    repeat(7)
    {
        __background_set( e__BG.HSpeed, i, bck_hspeed[i] );
        __background_set( e__BG.VSpeed, i, bck_vspeed[i] );
        i += 1;
    }
    
    global.turn = 0;
    global.strike = 0;
    room_persistent = false;
    room_speed = Overworld_Spd;
    music_play(global.musicOverworld);
}

/* */
/*  */

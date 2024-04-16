//Hit enemy with Fire Attack
if targetid.floating = 1
{
    targetid.hurt = 0;
    if instance_exists(obj_rankbattle)
        with obj_rankbattle instance_destroy();
    instance_create(x-48,y-48,obj_rankbattle);
    with obj_rankbattle image_single = 4;
}
else if targetid.floating = 0
{
    if targetid.firebrand = 2
    {
        targetid.hurt = -1;
        global.damage = round(global.Mpow - targetid.def/100);
        if global.hitrank = 0 //Ok Hit
            global.damage = round(global.Mpow/2 - targetid.def/100);
        if global.hitrank = 1 //Good Hit
            global.damage = round(global.Mpow - targetid.def/100);
        if global.hitrank = 2 //Great Hit
            global.damage += round(global.Mpow/2 - targetid.def/100);
        if global.hitrank = 3 //Excellent Hit
            global.damage += round(global.Mpow/2 - targetid.def/100);
        targetid.hp += global.damage;
        audio_play_sound(snd_item_use,0,0);
        
        if instance_exists(obj_rankbattle)
            with obj_rankbattle instance_destroy();
        instance_create(x-48,y-48,obj_rankbattle);
        with obj_rankbattle image_single = global.hitrank;
        alarm[3] = 20;
        repeataction = 0;
        if global.hitrank = 2 or global.hitrank = 3
        { 
            instance_create(x+24,y,obj_healpointsbattle);
            obj_healpointsbattle.totaldamage = 1;
        }
        else
            instance_create(x+24,y,obj_healpointsbattle);
    }
    else if targetid.firebrand < 2
    {
        //Hit enemy with Hand Attack
        targetid.hurt = 1;
        event_user(5); //Determine luck
        global.damage = round(global.Mpow - targetid.def/100);
        if global.hitrank = 0 //Ok Hit
            global.damage = round(global.Mpow/2 - targetid.def/100);
        if global.hitrank = 1 //Good Hit
            global.damage = round(global.Mpow - targetid.def/100);
        if global.hitrank = 2 //Great Hit
            global.damage += round(global.Mpow/2 - targetid.def/100); //Takes Mario's pow for damage
        if global.hitrank = 3 //Excellent Hit
        {
            global.damage *= 2;
            global.damage += global.Mlvl;
        }
        
        if global.luckyhit = true //Lucky Hit
        {
            audio_play_sound(snd_luckyhit,0,0);
            targetid.hurt = 1;
            global.damage+= global.Mlvl; //Adds certain damage based on what level Mario is
            targetid.hp += -global.damage;
        }
        else
            targetid.hp += -global.damage; //Deals the damage based on Mario's pow
            
            if instance_exists(obj_rankbattle)
                with obj_rankbattle instance_destroy();
            instance_create(x-48,y-48,obj_rankbattle);
            if global.hitrank = 3
            {
                __background_set( e__BG.Visible, 7, true ); //Show Excellent Effect
                audio_play_sound(snd_excellenthit,0,0);
            }
            with obj_rankbattle image_single = global.hitrank;
            alarm[3] = 20;
            repeataction = 0;
            if global.hitrank = 2 or global.hitrank = 3
            { 
                instance_create(x+24,y,obj_pointsbattle);
                obj_pointsbattle.totaldamage = 1;
            }
            else
                instance_create(x+24,y,obj_pointsbattle);
    }
}


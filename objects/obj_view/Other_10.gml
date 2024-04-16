//Stop time for battle entrance

var MP, LP;

if instance_exists(obj_mplayer) && instance_exists(obj_lplayer)
{
    MP = obj_mplayer;
    with MP instance_create(x,y,obj_mplayer_stunned);
    with obj_mplayer_stunned sprite_index = MP.sprite_index;
    with obj_mplayer_stunned dir = MP.dir;
    if global.strike = 4
        with obj_mplayer_stunned event_user(0);
    with MP instance_destroy();
    
    LP = obj_lplayer;
    with LP instance_create(x,y,obj_lplayer_stunned);
    with obj_lplayer_stunned sprite_index = LP.sprite_index;
    with obj_lplayer_stunned dir = LP.dir;
    if global.strike = 4
        with obj_lplayer_stunned event_user(0);
    with LP instance_destroy();
}
else if instance_exists(obj_lplayer_2) && instance_exists(obj_mplayer_2)
{
    LP = obj_lplayer_2;
    with LP instance_create(x,y,obj_lplayer_stunned);
    with obj_lplayer_stunned sprite_index = LP.sprite_index;
    with obj_lplayer_stunned dir = LP.dir;
    if global.strike = 4
        with obj_lplayer_stunned event_user(0);
    with LP instance_destroy();
    
    MP = obj_mplayer_2;
    with MP instance_create(x,y,obj_mplayer_stunned);
    with obj_mplayer_stunned sprite_index = MP.sprite_index;
    with obj_mplayer_stunned dir = MP.dir;
    if global.strike = 4
        with obj_mplayer_stunned event_user(0);
    with MP instance_destroy();
}
else if instance_exists(obj_mplayer_mini)
{
    MP = obj_mplayer_mini;
    with MP instance_create(x,y,obj_mplayer_stunned);
    with obj_mplayer_stunned sprite_index = MP.sprite_index;
    with obj_mplayer_stunned dir = MP.dir;
    if global.strike = 4
        with obj_mplayer_stunned event_user(0);
    with MP instance_destroy();
}

if instance_exists(par_enemy)
{
    with (par_enemy)
    {
        name = object_index;
        enemy = instance_create(x,y,obj_enemy_stunned);
        enemy.sprite_index = sprite_index;
        enemy.name = name;
        instance_destroy();
    }
}

if instance_exists(obj_qblock)
    with obj_qblock image_speed = 0;
    
var i = 0;
repeat(7)
{
    bck_hspeed[i] = __background_get( e__BG.HSpeed, i );
    bck_vspeed[i] = __background_get( e__BG.VSpeed, i );
    i += 1;
}


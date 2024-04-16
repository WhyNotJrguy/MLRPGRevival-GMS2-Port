if !room = rm_Battle
{
    instance_create(x,y,obj_mplayer);
    instance_create(x,y,obj_lplayer);
    
    if instance_exists(obj_mplayer)
    {
        obj_mplayer.x = global.Mprevx;
        obj_mplayer.y = global.Mprevy;
        obj_mplayer.z = global.Mprevz;
        obj_mplayer.landing = global.Mprevlanding;
    }
    
    if instance_exists(obj_lplayer)
    {    
        obj_lplayer.x = global.Lprevx;
        obj_lplayer.y = global.Lprevy;
        obj_lplayer.z = global.Lprevz;
        obj_lplayer.landing = global.Lprevlanding;
    }
}


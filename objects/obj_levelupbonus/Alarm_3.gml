if global.Mexpleft <= 0 //Next level up for Mario
{
    with obj_battlecontrol locked = 0;
    with obj_battlecontrol event_user(4);
    obj_mariob.image_index = 0;
    obj_mariob.image_speed = 0.275;
    obj_mariob.stance = 7;
    global.turn = -1.5;
    instance_destroy();
}
else if global.Lexpleft <= 0 //Next level up for Luigi
{
    with obj_battlecontrol locked = 0;
    with obj_battlecontrol event_user(4);
    obj_mariob.visible = false;
    obj_luigib.image_index = 0;
    obj_luigib.image_speed = 0.275;
    obj_luigib.stance = 7;
    obj_luigib.visible = true;
    global.turn = -1.5;
    instance_destroy();
}
if moveto = 6 && __background_get( e__BG.Alpha, 0 ) > 0 && (global.Lexp < global.Lexpleft or global.Mexp < global.Mexpleft)
{
    with obj_mariob image_index = 0;
    with obj_mariob stance = 7;
    __background_set( e__BG.Alpha, 0, __background_get( e__BG.Alpha, 0 ) - (0.1) );
    obj_mariob.image_alpha -= 0.1;
    alarm[3] = 1;
}
else
{
    //Set maximum variables
    if global.turn = -1.25
    {
        global.MHP = global.maxMHP;
        global.MBP = global.maxMBP;
    }
    if global.turn = -1.75
    {
        global.LHP = global.maxLHP;
        global.LBP = global.maxLBP;
    }
    moveto = 5;
}


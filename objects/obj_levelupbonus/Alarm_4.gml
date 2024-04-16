//Background fades out while transitioning back to the Overworld
if __background_get( e__BG.Alpha, 0 ) > 0
{
    __background_set( e__BG.Alpha, 0, __background_get( e__BG.Alpha, 0 ) - (0.1) );
    with obj_mariob visible = false;
    with obj_luigib visible = false;
    if obj_battlecontrol._alpha > 0
        obj_battlecontrol._alpha -= 0.1;
    obj_battlecontrol.padvisibility -= 0.1;
    alarm[4] = 1;
}
else
    with obj_battlecontrol alarm[4] = 60;


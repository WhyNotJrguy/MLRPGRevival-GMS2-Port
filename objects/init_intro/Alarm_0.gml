if __background_get( e__BG.Alpha, 0 ) > 0
{
    __background_set( e__BG.Alpha, 0, __background_get( e__BG.Alpha, 0 ) - (0.1) );
    alarm[0] = 2;
}
else
    alarm[1] = 2;


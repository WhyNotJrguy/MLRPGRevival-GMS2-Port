//Enemy Encounter
if par_player.invincible = false && par_player.z < z + 14 && global.stunned = false
{
    par_player.alarm[1] = 1;
    par_player.invincible = true;
    with obj_view event_user(0);
    if active = true && !instance_exists(obj_battlecontrol)
    {
        global.stunned = false;
        encounter = true;
        active = false;
        if status = "attacking"
            global.strike = 4;
        with par_player active = false;
        with par_player image_speed = 0;
        global.battletype = battletype;
        instance_create(x,y,obj_battlestart);
        
        room_persistent = true;
        room_speed = 60;
    }
}


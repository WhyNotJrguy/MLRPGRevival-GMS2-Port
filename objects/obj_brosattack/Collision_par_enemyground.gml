if other.hurt = 0
{
    other.hurt = 1;
    ID = other;
    if (obj_battlecontrol.enemyid[obj_mariob.targetchoose] = other && global.turn = 0)
    or (obj_battlecontrol.enemyid[obj_luigib.targetchoose] = other && global.turn = 1)
    {
        switch (attacknum)
        {
            case 0:
                event_user(0);
                break;
        }
    }
}

global.posx = x;
global.posy = y;


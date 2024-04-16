if other.hurt = 0
{
    other.hurt = 1;
    ID = other;
    obj_brosattack.amount += 1;
    obj_brosattack.ID = ID;
    if (obj_battlecontrol.enemyid[obj_mariob.targetchoose] = other && global.turn = 0)
    or (obj_battlecontrol.enemyid[obj_luigib.targetchoose] = other && global.turn = 1)
    {
        with obj_brosattack event_user(1);
    }
}

global.posx = x;
global.posy = y;


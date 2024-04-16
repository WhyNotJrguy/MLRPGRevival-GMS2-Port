//Find enemy's speed
var i = 0;
repeat(5)
{
    if instance_exists(enemyid[i]) or (enemyid[i] = 0) or (enemyid[i] = noone)
    or obj_mariob.phase < 0 or obj_luigib.phase < 0
        {}
    else
        spd = enemyid[i].spd;
    i += 1;
}

//Determine who goes first
if global.Mspd < spd or global.Lspd < spd
{
    if global.Mspd > global.Lspd or !instance_exists(obj_luigib)
        obj_mariob.turnnext = 1;
    else if global.Lspd > global.Mspd or !instance_exists(obj_mariob)
        obj_luigib.turnnext = 1;
    global.turn = 2;
    global.strike = 0;
}
else if global.Lspd > global.Mspd or !instance_exists(obj_mariob)
{
    obj_luigib.phase = 1;
    obj_luigib.turnnext = 0;
    obj_mariob.turnnext = 1;
    global.turn = 1;
    global.strike = 0;
}
else
{
    obj_mariob.phase = 1;
    obj_mariob.turnnext = 0;
    obj_luigib.turnnext = 1;
    global.turn = 0;
    global.strike = 0;
}


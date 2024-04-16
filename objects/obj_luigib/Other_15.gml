//Luck System:
//The higher global.Lstache is, the luckier Luigi is.

if global.Lstache >= 999
{
    global.Lstache = 999;
    global.luckyhit = true;
}
else
{
    if global.Lstache >= random(999)
        global.luckyhit = true;
    else
        global.luckyhit = false;
}


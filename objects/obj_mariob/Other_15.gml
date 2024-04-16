//Luck System:
//The higher global.Mstache is, the luckier Mario is.

if global.Mstache >= 999
{
    global.Mstache = 999;
    global.luckyhit = true;
}
else
{
    if global.Mstache >= random(999)
        global.luckyhit = true;
    else
        global.luckyhit = false; 
}


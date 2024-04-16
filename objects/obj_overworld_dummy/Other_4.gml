if active = false
{
    if global.MHP <= 0
    {
        global.Mdead = 0;
        global.MHP = 1;
    }
    if global.LHP <= 0
    {
        global.Ldead = 0;
        global.LHP = 1;
    }
    global.turn = 0;
    global.music = mus_Overworld; //for now
    music_play(global.music);
}


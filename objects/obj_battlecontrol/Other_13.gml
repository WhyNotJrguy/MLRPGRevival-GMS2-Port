//Victory
if global.turn > -1
{
    global.turn = -1;
    if global.Mdead = 0 && instance_exists(obj_mariob)
    {
        if obj_mariob.phase < 0
            wintype = obj_mariob.phase;
        obj_mariob.image_speed = 0.45;
        obj_mariob.phase = 0.75;
        obj_mariob.stance = 7;
    }
    if global.Mdead > 0 or !instance_exists(obj_mariob)
    {
        obj_mariob.phase = 0.25;
        obj_mariob.control = 0;
    }
    if global.Ldead = 0 && instance_exists(obj_luigib)
    {
        if obj_luigib.phase < 0
            wintype = obj_luigib.phase;
        obj_luigib.phase = 0.75
        obj_luigib.image_speed = 0.45;
        obj_luigib.stance = 7;
    }
    if global.Ldead > 0 or !instance_exists(obj_luigib)
    {
        obj_luigib.phase = 0.25;
        obj_luigib.control = 0;
    }
    audio_stop_sound(global.music);
    audio_stop_all();
    music_play(mus_Fanfare);
    alarm[3] = 90;
    __background_set( e__BG.Index, 7, bg_darkened );
    __background_set( e__BG.Visible, 7, true );
}


//Move Lakitu cloud in
if global.turn = -1.25 && obj_mariob.x > 107 && stacheamount = -1
{
    if !audio_is_playing(snd_movein)
        audio_play_sound(snd_movein,0,0);
    with obj_mariob image_index = 0;
    with obj_mariob stance = 12;
    with obj_mariob x -= 4;
    instance_create(432,24,obj_levelupbonus);
}
if global.turn = -1.75 && obj_luigib.x > 105 && stacheamount = -1
{
    if !audio_is_playing(snd_movein)
        audio_play_sound(snd_movein,0,0);
    with obj_luigib image_index = 0;
    with obj_luigib stance = 12;
    with obj_luigib x -= 1;
    instance_create(432,24,obj_levelupbonus);
}
if stacheamount >= 0
{
    if hpamount = 0
        hpamount = -1;
    else if bpamount = 0
        bpamount = -1;
    else if powamount = 0
        powamount = -1;
    else if defamount = 0
        defamount = -1;
    else if spdamount = 0
        spdamount = -1;
    else if stacheamount = 0
        stacheamount = -1;
    alarm[8] = 8;
}


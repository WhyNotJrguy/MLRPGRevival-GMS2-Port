obj_mariob.sprite_index = spr_mariobfireflowertransform2;
obj_luigib.sprite_index = spr_luigibfireflowertransform2;
audio_play_sound(snd_powerup,0,0);
if instance_exists(obj_fireballm)
    with obj_fireballm instance_destroy();
obj_brosattack.phase = 0;
instance_destroy();


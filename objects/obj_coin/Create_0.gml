global.coins+= 1;
if not audio_is_playing(snd_coin)
    audio_play_sound(snd_coin,0,0);
done = false;
image_index = 2;
image_speed = 0.25;
vspeed = -10;
gravity_direction = 270;
gravity = 1;


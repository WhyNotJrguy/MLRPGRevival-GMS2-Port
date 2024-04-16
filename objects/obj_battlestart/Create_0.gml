//The image is going to zoom in, so its initial size should be VERY big and shrink until it gets very small.
//This is a variable to keep us from having to type "image_xscale/image_yscale" over and over again
scale = 0;
audio_stop_sound(global.music);
audio_stop_all();
ready = 0;
targetid = 0;
trigger = 0;
image_speed = .275;
global.roomin = room;
alarm[0] = 2;
if global.finalboss = true
    audio_play_sound(snd_bowser_showtime,0,0);
else if global.strike = 4
{
    audio_play_sound(snd_mario_mamamia,0,0);
    audio_play_sound(snd_luigi_mamamia,0,0);
}
else
    audio_play_sound(snd_mario_letsgo,0,0);
alarm[1] = 90;
speed = 60;


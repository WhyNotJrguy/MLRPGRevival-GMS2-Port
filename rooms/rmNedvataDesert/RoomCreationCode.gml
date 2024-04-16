//Set the Overworld Music for this area
global.musicOverworld = mus_Desert;
music_play(global.musicOverworld);
//Desert Ambience
audio_play_sound(snd_desert_wind,0,1);
//Background Speed
__background_set( e__BG.HSpeed, 0, -0.2 );
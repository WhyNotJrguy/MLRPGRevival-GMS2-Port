//DEBUG
global.movesOverworld += 1; 
if global.movesOverworld > 5
    global.movesOverworld = 0;
audio_play_sound(snd_equip,0,0);


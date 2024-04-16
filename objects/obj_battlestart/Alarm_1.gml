//Enter the Battle
room_goto(global.battleroom); //for now
//room_goto(global.battleroom);
if global.finalboss <> true && global.strike <> 4
    audio_play_sound(snd_luigi_okeydokey,0,0);
alarm[2] = 60;


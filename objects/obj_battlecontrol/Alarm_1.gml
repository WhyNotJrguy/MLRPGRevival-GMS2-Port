//Run Away
if audio_is_playing(snd_step)
    audio_stop_sound(snd_step);
audio_stop_all();
global.stunned = true; //This could be the variable to have enemies with invicibility frames in the Overworld
transition_kind = 21;
room = global.roomin;
global.outcome = 0.5;


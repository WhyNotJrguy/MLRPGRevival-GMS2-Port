if room = rm_Audio_Loop_Test
{
    draw_text(x,y+0,string_hash_to_newline("Loop Pos: " + string(_loop_begin)));
    draw_text(x,y+20,string_hash_to_newline("Loop End: " + string(_loop_end)));
    
    draw_text(x,y+50,string_hash_to_newline("Audio Pos: " + string(audio_sound_get_track_position(_audio)))); 
    draw_text(x,y+70,string_hash_to_newline("Audio End: " + string(audio_sound_length(_audio))));
}


//Running Away
if global.Mdead > 0
{
    audio_play_sound(snd_jump,0,0);
    moveto = 11; //Move to Mario
}
else
    phase = -3;


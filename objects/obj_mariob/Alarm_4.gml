//Running Away
if global.Ldead > 0
{
    audio_play_sound(snd_jump,0,0);
    moveto = 11; //Move to Luigi
}
else
    phase = -3;


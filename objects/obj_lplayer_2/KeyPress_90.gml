if global.spin = 1 && global.spin2 = 1 && !instance_exists(obj_spin)
{
  audio_play_sound(snd_jump_spin,0,0);
  instance_create(x,y,obj_spin);
  z+= 8;
  exit;
}


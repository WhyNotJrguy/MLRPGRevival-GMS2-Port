if !otro.hammer = 1 && !otro.hand = 1 && distance_to_object(otro) < 19 && global.dontmove = 0 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && !instance_exists(obj_lplayer_change)
{
  if global.jump2 = 1 && z = landing && jump = 0
  {
    zspeed = 6
    jump = 1
    audio_play_sound(snd_jump,0,0);
  }
  if global.super = 1
  {
    if global.zcan = 1
    {
      global.spin = 1
    }
    if global.zcan = 0 && z = landing
    {
      zspeed = 5
      jump = 1
      audio_play_sound(snd_jump,0,0);
    }
  }
  if global.hammer2 = 1 && moving = 0 && global.can = 1 && global.zcan = 1 && !distance_to_object(obj_metal_solid) < 1
  {
    hammer = 1
    moving = 2
    if instance_exists(obj_lplayer_2) {audio_play_sound(snd_hammer_dunk,0,0);}
    if instance_exists(obj_lplayer_dunk) {audio_play_sound(snd_hammer,0,0);}
  }
  if global.hand2 = 1 && moving = 0 && global.can = 1  && global.zcan = 1
  {
    instance_create(x,y,obj_fire)
  }
}


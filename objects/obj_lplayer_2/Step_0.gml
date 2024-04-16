if !instance_exists(obj_spin)
{
    z+= zspeed;
    zspeed-= zgravity;
    if z < landing
    {
        z = landing;
        zspeed = 0;
        zgravity = 0;
    }
    if z > landing
        zgravity = 1;
}

if instance_exists(obj_mplayer_2) {otro = obj_mplayer_2}
if instance_exists(obj_mplayer_mini) {otro = obj_mplayer_mini}

//Press Enter Button/Key
if (gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart))
{
 if jump = 0 && hammer = 0 && hand = 0 && otro.jump = 0 && otro.hammer = 0 && otro.hand = 0 && global.electrocute = 0 && !instance_exists(obj_thunder) && !instance_exists(obj_fire)
 {
   audio_play_sound(snd_mplayer_letsgo,0,0);
   instance_change(obj_lplayer,false)
 }
}

if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && global.electrocute = 0 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
{
  if keyboard_check(vk_left)&& not keyboard_check(vk_right)
  {
    if keyboard_check(vk_up)&& not keyboard_check(vk_down) {dir=3}
    if not keyboard_check(vk_up)&& keyboard_check(vk_down) {dir=5}
    if not keyboard_check(vk_up)&& not keyboard_check(vk_down) {dir=4}
  }
  if not keyboard_check(vk_left)&& keyboard_check(vk_right)
  {
    if keyboard_check(vk_up)&& not keyboard_check(vk_down) {dir=1}
    if not keyboard_check(vk_up)&& keyboard_check(vk_down) {dir=7}
    if not keyboard_check(vk_up)&& not keyboard_check(vk_down) {dir=0}
  }
  if not keyboard_check(vk_left)&& not keyboard_check(vk_right)
  {
    if keyboard_check(vk_up)&& not keyboard_check(vk_down) {dir=2}
    if not keyboard_check(vk_up)&& keyboard_check(vk_down) {dir=6}
  }
}

if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && global.electrocute = 0 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && !instance_exists(obj_spin)
{
  if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down) {moving = 1}
}
if global.electrocute = 0 && !hammer = 1 && !instance_exists(obj_spin)
{
  if keyboard_check(vk_left)&& keyboard_check(vk_right) {moving = 0}
  if keyboard_check(vk_up)&& keyboard_check(vk_down) {moving = 0}
}

if instance_exists(obj_spin)
{
  if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down) {moving = 4}
  if keyboard_check(vk_left)&& keyboard_check(vk_right) {moving = 3}
  if keyboard_check(vk_up)&& keyboard_check(vk_down) {moving = 3}
}

if landing = z && jump = 0 && hammer = 0 && hand = 0 && global.electrocute = 0 && !instance_exists(obj_spin)
{
  if dir=0 {sprite_index=spr_lplayer_3 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_4 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_5 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_4 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_3 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_2 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_1 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_2 xscale = 1}
}

if jump = 1 && zspeed >0 && !instance_exists(obj_spin)
{
  if dir=0 {sprite_index=spr_lplayer_0 image_index = 2 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_0 image_index = 3 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_0 image_index = 4 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_0 image_index = 3 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_0 image_index = 2 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_0 image_index = 1 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_0 image_index = 0 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_0 image_index = 1 xscale = 1}
}

if jump = 1 && zspeed <= 0 && !instance_exists(obj_spin)
{
  if dir=0 {sprite_index=spr_lplayer_0 image_index = 7 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_0 image_index = 8 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_0 image_index = 9 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_0 image_index = 8 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_0 image_index = 7 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_0 image_index = 6 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_0 image_index = 5 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_0 image_index = 6 xscale = 1}
}

if landing = z {jump = 0}

if global.spin = 1 && !instance_exists(obj_spin)
{
  if dir=0 {sprite_index=spr_spin_jump image_index = 2 xscale = 1}
  if dir=1 {sprite_index=spr_spin_jump image_index = 3 xscale = 1}
  if dir=2 {sprite_index=spr_spin_jump image_index = 4 xscale = 1}
  if dir=3 {sprite_index=spr_spin_jump image_index = 3 xscale = -1}
  if dir=4 {sprite_index=spr_spin_jump image_index = 2 xscale = -1}
  if dir=5 {sprite_index=spr_spin_jump image_index = 1 xscale = -1}
  if dir=6 {sprite_index=spr_spin_jump image_index = 0 xscale = 1}
  if dir=7 {sprite_index=spr_spin_jump image_index = 1 xscale = 1}
}
if global.spin = 1 && global.spin2 = 0 && !instance_create(x,y,obj_spin_alarm) {instance_create(x,y,obj_spin_alarm)}
if instance_exists(obj_spin) {sprite_index = spr_spin_jump}
if sprite_index = spr_spin_jump {global.spin3 = 1} else {global.spin3 = 0}

if hammer = 1 && moving = 2
{
  if dir=0 {sprite_index=spr_lplayer_8 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_9 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_10 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_9 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_8 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_7 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_6 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_7 xscale = 1}
}
if hammer = 1 && image_index > 11 {hammer = 0 moving = 0}

if hand = 1 && keyboard_check (ord("X"))
{
  if dir=0 {sprite_index=spr_lplayer_13 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_14 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_15 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_14 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_13 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_12 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_11 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_12 xscale = 1}
}
if hand = 1 && moving = 0 && !keyboard_check (ord("X")) {hand = 1 moving = 2 global.thunder = 1}

if global.thunder = 1 && !keyboard_check (ord("X"))
{
  moving = 2
  if image_index > 4 {global.thunder = 0 moving = 0 hand = 0}
}

if otro.hand = 1
{
  moving = 1
  if dir=0 {sprite_index=spr_lplayer_33 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_34 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_35 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_34 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_33 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_32 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_31 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_32 xscale = 1}
}

if global.electrocute = 1
{
  if dir=0 {sprite_index=spr_lplayer_38 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_39 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_40 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_39 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_38 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_37 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_36 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_37 xscale = 1}
}

if global.electrocute = 0
    audio_stop_sound(snd_running);

if distance_to_object(obj_metal_solid) < 1 {global.can = 0}
if distance_to_object(obj_metal_solid) > 1 {global.can = 1}

if not keyboard_check(vk_left) && not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && hammer = 0 && hand = 0 && otro.hand = 0 && global.spin = 0 && global.electrocute = 0 && !instance_exists(obj_spin)
{moving = 0}

if not keyboard_check(vk_left) && not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && hammer = 0 && hand = 0 && otro.hand = 0 && global.electrocute = 0 && instance_exists(obj_spin)
{moving = 3}

if moving = 0 {image_speed = 0 image_index = 0}
if moving = 1 {image_speed = 0.6}
if moving = 2 {image_speed = 0.6}
if moving = 3 {image_speed = 0.8}
if moving = 4 {image_speed = 0.8}

if !instance_exists(obj_thunder) && !place_meeting(x,y,obj_dunk_solid) && hammer = 0 && global.dontmove = 0 && distance_to_object(otro) < 19
{
  if otro.x-x <-32 {dir0c = 0}
  if otro.x-x >16 {dir4c =0}
  if otro.y-y <-32 {dir6c = 0}
  if otro.y-y >16 {dir2c =0}
}

if moving = 1 && hammer = 0 && hand = 0 && otro.hammer = 0 && otro.hand = 0 && global.electrocute = 0 && global.spin = 0
{
  if dir = 0 && dir0c = 1 {x+=4}    
  if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=3 y+=-3}
        else {if dir0c = 1 && dir2c = 0 {x+=4}
              if dir0c = 0 && dir2c = 1 {y-=4}}}
  if dir = 2 && dir2c = 1 {y-=4}     
  if dir = 3 {if dir2c = 1 && dir4c = 1 {x-=3 y-=3}
        else {if dir2c = 1 && dir4c = 0 {y-=4}
              if dir2c = 0 && dir4c = 1 {x-=4}}}
  if dir = 4 && dir4c = 1 {x-=4} 
  if dir = 5 {if dir4c = 1 && dir6c = 1 {x-=3 y+=3}
        else {if dir4c = 1 && dir6c = 0 {x-=4}
              if dir4c = 0 && dir6c = 1 {y+=4}}}
  if dir = 6 && dir6c = 1 {y+=4}
  if dir = 7 {if dir6c = 1 && dir0c = 1 {x+=3 y+=3}
        else {if dir6c = 1 && dir0c = 0 {y+=4}
              if dir6c = 0 && dir0c = 1 {x+=4}}}
}

if global.electrocute = 1
{
  if dir = 0 && dir0c = 1 {x+=8}
  if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=7 y+=-7}
        else {if dir0c = 1 && dir2c = 0 {x+=8}
              if dir0c = 0 && dir2c = 1 {y-=8}}}
  if dir = 2 && dir2c = 1 {y-=8}
  if dir = 3 {if dir2c = 1 && dir4c = 1 {x-=7 y-=7}
        else {if dir2c = 1 && dir4c = 0 {y-=8}
              if dir2c = 0 && dir4c = 1 {x-=8}}}
  if dir = 4 && dir4c = 1 {x-=8}
  if dir = 5 {if dir4c = 1 && dir6c = 1 {x-=7 y+=7}
        else {if dir4c = 1 && dir6c = 0 {x-=8}
              if dir4c = 0 && dir6c = 1 {y+=8}}}
  if dir = 6 && dir6c = 1 {y+=8}
  if dir = 7 {if dir6c = 1 && dir0c = 1 {x+=7 y+=7}
        else {if dir6c = 1 && dir0c = 0 {y+=8}
              if dir6c = 0 && dir0c = 1 {x+=8}}}
}

if moving = 4
{
  if dir = 0 && dir0c = 1 {x+=4}    
  if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=3 y+=-3}
        else {if dir0c = 1 && dir2c = 0 {x+=4}
              if dir0c = 0 && dir2c = 1 {y-=4}}}
  if dir = 2 && dir2c = 1 {y-=4}     
  if dir = 3 {if dir2c = 1 && dir4c = 1 {x-=3 y-=3}
        else {if dir2c = 1 && dir4c = 0 {y-=4}
              if dir2c = 0 && dir4c = 1 {x-=4}}}
  if dir = 4 && dir4c = 1 {x-=4} 
  if dir = 5 {if dir4c = 1 && dir6c = 1 {x-=3 y+=3}
        else {if dir4c = 1 && dir6c = 0 {x-=4}
              if dir4c = 0 && dir6c = 1 {y+=4}}}
  if dir = 6 && dir6c = 1 {y+=4}
  if dir = 7 {if dir6c = 1 && dir0c = 1 {x+=3 y+=3}
        else {if dir6c = 1 && dir0c = 0 {y+=4}
              if dir6c = 0 && dir0c = 1 {x+=4}}}
}

if moving = 1 or instance_exists(obj_spin)
{
  x1 = x2
  x2 = x3
  x3 = x4
  x4 = x5
  x5 = x
  y1 = y2
  y2 = y3
  y3 = y4
  y4 = y5
  y5 = y
}

dir0c = 1
dir2c = 1
dir4c = 1
dir6c = 1

//Check Collisions
scr_collision_checking();

if instance_exists(obj_mplayer_2)
{
    if obj_mplayer_2.hammer = 1 && obj_mplayer_2.image_index > 5 && obj_mplayer_2.image_index < 5 && global.can = 1 && global.zcan = 1 && !place_meeting(x,y,obj_metal_solid)
    {
        if dir = 0
        {
            sprite_index = spr_lplayer_26;
            image_index = 2;
            xscale = 1;
        }
        if dir = 1
        {
            sprite_index = spr_lplayer_26;
            image_index = 3;
            xscale = 1;
        }
        if dir = 2
        {
            sprite_index = spr_lplayer_26;
            image_index = 4;
            xscale = 1;
        }
        if dir = 3
        {
            sprite_index = spr_lplayer_26;
            image_index = 3;
            xscale = -1;
        }
        if dir = 4
        {
            sprite_index = spr_lplayer_26;
            image_index = 2;
            xscale = -1;
        }
        if dir = 5
        {
            sprite_index = spr_lplayer_26;
            image_index = 1;
            xscale = -1;
        }
        if dir= 6
        {
            sprite_index = spr_lplayer_26;
            image_index = 0;
            xscale = 1;
        }
        if dir = 7
        {
            sprite_index = spr_lplayer_26;
            image_index = 1;
            xscale = 1;
        }
    }
}

if instance_exists(obj_mplayer_2)
{
    if obj_mplayer_2.hammer = 1 && obj_mplayer_2.image_index > 5 && obj_mplayer_2.image_index < 6
    && global.can = 1 && global.zcan = 1 && !place_meeting(x,y,obj_metal_solid) && !place_meeting(x,y,obj_dunk_solid)
        instance_change(obj_lplayer_dunk,false);
}

if instance_exists(obj_dunk_solid)
{
    if place_meeting(x,y,obj_dunk_solid)
        global.dontmove = 1;
    if !place_meeting(x,y,obj_dunk_solid)
        global.dontmove = 0;
}

if instance_exists(obj_mplayer_2)
{
    if distance_to_object(obj_mplayer_2) > 19
        global.dontmove = 1;
    if distance_to_object(obj_mplayer_2) < 19
        global.dontmove = 0;
}

if global.electrocute = 1
    instance_create(x,y,obj_mplayer_electrocute);


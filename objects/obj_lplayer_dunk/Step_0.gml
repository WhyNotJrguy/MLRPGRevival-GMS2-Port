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

if instance_exists(obj_mplayer) {otro = obj_mplayer}
if instance_exists(obj_mplayer_2) {otro = obj_mplayer_2}

if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
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

if !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
{
  if keyboard_check(vk_left)or keyboard_check(vk_right) or keyboard_check(vk_up)or keyboard_check(vk_down) {moving = 1}
}

if !sprite_index = spr_lplayer_27
{
  if keyboard_check(vk_left)&& keyboard_check(vk_right) {moving = 0}
  if keyboard_check(vk_up)&& keyboard_check(vk_down) {moving = 0}
}

if landing = z && hammer = 0 && hand = 0
{
  if dir=0 {sprite_index=spr_lplayer_23 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_24 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_25 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_24 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_23 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_22 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_21 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_22 xscale = 1}
}

if not keyboard_check(vk_left)&& not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && hammer = 0 && hand = 0
{moving = 0}

if moving = 0 {image_speed = 0 image_index = 0}
if moving = 1 {image_speed = 0.4}
if moving = 2 {image_speed = 0.6}
if moving = 3 {image_speed = 0.5}

if !instance_exists(obj_thunder) && hammer = 0 && global.dontmove = 0 && distance_to_object(otro) < 19 && !place_meeting(x,y,obj_dunk_solid) && !place_meeting(x,y,obj_mini_solid)
{
  if otro.x-x <-32 {dir0c = 0}
  if otro.x-x >16 {dir4c = 0}
  if otro.y-y <-32 {dir6c = 0}
  if otro.y-y >16 {dir2c = 0}
}

if instance_exists(obj_mplayer) {dir0c = 0 dir4c = 0 dir6c = 0 dir2c = 0}

if moving = 1 && hammer = 0 && hand = 0
{
  if dir = 0 && dir0c = 1{x+=4}    
  if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=3 y-=3}
        else {if dir0c = 1 && dir2c = 0 {x+=4}
              if dir0c = 0 && dir2c = 1 {y+=-4}}}
  if dir = 2 && dir2c = 1 {y-=4}     
  if dir = 3 {if dir2c = 1 && dir4c = 1 {x-=3 y-=3}
        else {if dir2c = 1 && dir4c = 0 {y-=4}
              if dir2c = 0 && dir4c = 1 {x-=4}}}
  if dir = 4 && dir4c = 1{x-=4} 
  if dir = 5 {if dir4c = 1 && dir6c = 1 {x-=3 y+=3}
        else {if dir4c = 1 && dir6c = 0 {x-=4}
                if dir4c = 0 && dir6c = 1 {y+=4}}}
  if dir = 6 && dir6c = 1 {y+=4}
  if dir = 7 {if dir6c = 1 && dir0c = 1 {x+=3 y+=3}
        else {if dir6c = 1 && dir0c = 0 {y+=4}
              if dir6c = 0 && dir0c = 1 {x+=4}}}
}

if moving = 1
{
    x1 = x2;
    x2 = x3;
    x3 = x4;
    x4 = x5;
    x5 = x;
    y1 = y2;
    y2 = y3;
    y3 = y4;
    y4 = y5;
    y5 = y;
}

dir0c = 1;
dir2c = 1;
dir4c = 1;
dir6c = 1;

//Check Collisions
scr_collision_checking();
if instance_exists(obj_dunk_solid) {if place_meeting(x,y,obj_dunk_solid) {global.dontmove = 1} if !place_meeting(x,y,obj_dunk_solid) {global.dontmove = 0}}
if instance_exists(obj_mini_solid) {if place_meeting(x,y,obj_mini_solid) {global.dontmove = 1} if !place_meeting(x,y,obj_mini_solid) {global.dontmove = 0}}
if instance_exists(obj_mplayer_2) {if distance_to_object(obj_mplayer_2) > 17 {global.dontmove = 1} if distance_to_object(obj_mplayer_2) < 17 {global.dontmove = 0}}
if instance_exists(obj_mplayer) {if distance_to_object(obj_mplayer) > 17 {global.dontmove = 1} if distance_to_object(obj_mplayer) < 17 {global.dontmove = 0}}
if global.electrocute = 1 {instance_create(x,y,obj_mplayer_electrocute)}


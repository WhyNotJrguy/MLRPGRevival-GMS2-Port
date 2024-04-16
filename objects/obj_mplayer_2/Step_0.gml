z+=zspeed
zspeed-=zgravity
if z<landing{z=landing zspeed=0 zgravity=0}
if z>landing{zgravity=1}

if instance_exists(obj_lplayer_2) {otro = obj_lplayer_2}
if instance_exists(obj_lplayer_dunk) {otro = obj_lplayer_dunk}
if instance_exists(obj_lplayer_change) {otro = obj_lplayer_change}

//Press Enter Button/Key
if (gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart))
{
 if jump = 0 && hammer = 0 && hand = 0 && otro.jump = 0 && otro.hammer = 0 && otro.hand = 0 && global.electrocute = 0 && !instance_exists(obj_thunder) && !instance_exists(obj_fire) && distance_to_object(obj_lplayer_dunk) > 19
 {
   if instance_exists(obj_lplayer_dunk) {sound_play(snd_mplayer_letsgo)}
   instance_change(obj_mplayer,false)
 }
}

if moving = 1 && global.electrocute = 0
{
  if point_direction(x,y,otro.x1,otro.y1) > 340 or point_direction(x,y,otro.x1,otro.y1) <=  20 {dir = 0}
  if point_direction(x,y,otro.x1,otro.y1) >  20 && point_direction(x,y,otro.x1,otro.y1) <=  70 {dir = 1}
  if point_direction(x,y,otro.x1,otro.y1) >  70 && point_direction(x,y,otro.x1,otro.y1) <= 110 {dir = 2}
  if point_direction(x,y,otro.x1,otro.y1) > 110 && point_direction(x,y,otro.x1,otro.y1) <= 160 {dir = 3}
  if point_direction(x,y,otro.x1,otro.y1) > 160 && point_direction(x,y,otro.x1,otro.y1) <= 200 {dir = 4}
  if point_direction(x,y,otro.x1,otro.y1) > 200 && point_direction(x,y,otro.x1,otro.y1) <= 250 {dir = 5}
  if point_direction(x,y,otro.x1,otro.y1) > 250 && point_direction(x,y,otro.x1,otro.y1) <= 290 {dir = 6}
  if point_direction(x,y,otro.x1,otro.y1) > 290 && point_direction(x,y,otro.x1,otro.y1) <= 340 {dir = 7}
}

if moving = 0 {dir = otro.dir}

if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.electrocute = 0
{
  if keyboard_check(vk_left)or keyboard_check(vk_right) or keyboard_check(vk_up)or keyboard_check(vk_down){moving = 1}
  if keyboard_check(vk_left)&& keyboard_check(vk_right) {moving = 0}
  if keyboard_check(vk_up)&& keyboard_check(vk_down) {moving = 0}
}

if otro.moving = 1
{
  if otro.dir = 0 && otro.dir0c = 0 {moving = 0}
  if otro.dir = 1 && otro.dir0c = 0 && otro.dir2c = 0 {moving = 0}
  if otro.dir = 2 && otro.dir2c = 0 {moving = 0}
  if otro.dir = 3 && otro.dir2c = 0 && otro.dir4c = 0 {moving = 0}
  if otro.dir = 4 && otro.dir4c = 0 {moving = 0}
  if otro.dir = 5 && otro.dir4c = 0 && otro.dir6c = 0 {moving = 0}
  if otro.dir = 6 && otro.dir6c = 0 {moving = 0}
  if otro.dir = 7 && otro.dir6c = 0 && otro.dir0c = 0 {moving = 0}
}

if landing = z && jump = 0 && hammer = 0 && hand = 0 && global.electrocute = 0
{
  if dir=0 {sprite_index=spr_mplayer_3 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_4 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_5 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_4 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_3 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_2 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_1 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_2 xscale = 1}
}

if jump = 1 && zspeed >0
{
  if dir=0 {sprite_index=spr_mplayer_0 image_index = 2 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_0 image_index = 3 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_0 image_index = 4 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_0 image_index = 3 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_0 image_index = 2 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_0 image_index = 1 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_0 image_index = 0 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_0 image_index = 1 xscale = 1}
}

if jump = 1 && zspeed <= 0
{
  if dir=0 {sprite_index=spr_mplayer_0 image_index = 2 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_0 image_index = 3 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_0 image_index = 4 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_0 image_index = 3 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_0 image_index = 2 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_0 image_index = 1 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_0 image_index = 0 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_0 image_index = 1 xscale = 1}
}

if landing = z {jump = 0}

if global.spin3 = 1 {x = otro.x y = otro.y z = otro.z visible = false}
if global.spin3 = 0 {visible = true}

if hammer = 1 && moving = 2
{
  if dir=0 {sprite_index=spr_mplayer_8 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_9 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_10 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_9 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_8 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_7 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_6 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_7 xscale = 1}
}
if hammer = 1 && image_index > 5 {hammer = 0 moving = 0}

if hand = 1 && keyboard_check(ord("Z"))
{
  if dir=0 {sprite_index=spr_mplayer_13 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_14 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_15 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_14 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_13 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_12 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_11 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_12 xscale = 1}
  }
if hand = 1 && moving = 0 && !keyboard_check (ord("Z")) {hand = 1 moving = 2 global.fire = 1}

if global.fire = 1 && !keyboard_check (ord("Z"))
{
  moving = 2
  if image_index > 4 {global.fire = 0 moving = 0 hand = 0}
}
if global.electrocute = 1 {moving = 1}

if global.electrocute = 1
{
  if dir=0 {sprite_index=spr_mplayer_48 xscale = 1}
  if dir=1 {sprite_index=spr_mplayer_49 xscale = 1}
  if dir=2 {sprite_index=spr_mplayer_50 xscale = 1}
  if dir=3 {sprite_index=spr_mplayer_49 xscale = -1}
  if dir=4 {sprite_index=spr_mplayer_48 xscale = -1}
  if dir=5 {sprite_index=spr_mplayer_47 xscale = -1}
  if dir=6 {sprite_index=spr_mplayer_46 xscale = 1}
  if dir=7 {sprite_index=spr_mplayer_47 xscale = 1}
}


if dir = otro.dir {global.can = 1} else {global.can = 0}
if z = otro.z {global.zcan = 1} else {global.zcan = 0}

if not keyboard_check(vk_left)&& not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && !hammer = 1 && !hand = 1 && global.electrocute = 0
{moving = 0}

if moving = 0 {image_speed = 0 image_index = 0}
if moving = 1 {image_speed = 0.6}
if moving = 2 {image_speed = 0.6}

//Determine distance to Luigi
if distance_to_object(otro) > 19
{
    dir0c = 0;
    dir4c = 0;
    dir6c = 0;
    dir2c = 0;
}

//Luigi's movements with Mario
if moving = 1 && hammer = 0 && hand = 0 && otro.hammer = 0 && otro.hand = 0 && global.electrocute = 0
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

//Luigi's movements when electrocuting Mario?
if global.electrocute = 1 && hand = 0
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

dir0c = 1;
dir2c = 1;
dir4c = 1;
dir6c = 1;

//Check Collisions
scr_collision_checking();


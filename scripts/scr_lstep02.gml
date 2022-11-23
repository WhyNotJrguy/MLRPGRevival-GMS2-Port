if instance_exists(obj_mplayer) {otro = obj_mplayer}
if instance_exists(obj_mplayer_mini) {otro = obj_mplayer_mini}

if moving=1
{
  if instance_exists(obj_mplayer) && global.electrocute = 0
  {
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) >340 or point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=20 {dir=0}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)>20 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=70 {dir = 1}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) >70 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=110 {dir=2}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)>110 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=160 {dir = 3}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) >160 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=200 {dir=4}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)>200 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=250 {dir = 5}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) >250 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=290 {dir=6}
    if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)>290 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1)<=340 {dir = 7}
  }
  if instance_exists(obj_mplayer_mini)
  {
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) >340 or point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=20 {dir=0}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)>20 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=70 {dir = 1}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) >70 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=110 {dir=2}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)>110 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=160 {dir = 3}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) >160 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=200 {dir=4}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)>200 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=250 {dir = 5}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) >250 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=290 {dir=6}
    if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)>290 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1)<=340 {dir = 7}
  }
}

if global.electrocute = 1 && instance_exists(obj_mplayer) {electrodir = obj_mplayer.electrodir}
if instance_exists(obj_mplayer_mini) {global.electrocute = 0}

if moving = 0
{
  if instance_exists(obj_mplayer) {dir = obj_mplayer.dir}
  if instance_exists(obj_mplayer_mini) {dir = obj_mplayer_mini.dir}
}

if instance_exists(obj_mplayer) && !instance_exists(obj_mplayer_mini)
{
  if !hammer = 1 && !hand = 1 && !obj_mplayer.hammer = 1 && !obj_mplayer.hand = 1 && !instance_exists(obj_fire) &&  !instance_exists(obj_thunder) && global.electrocute = 0
  {if keyboard_check(vk_left)or keyboard_check(vk_right) or keyboard_check(vk_up)or keyboard_check(vk_down) {moving = 1}}
  
  if global.electrocute = 1
  {if keyboard_check(vk_left)or keyboard_check(vk_right) or keyboard_check(vk_up)or keyboard_check(vk_down) {electromoving = 1 moving = 1}}
}
if !instance_exists(obj_mplayer) && instance_exists(obj_mplayer_mini)
{
  if !hammer = 1 && !hand = 1 && !obj_mplayer_mini.hammer = 1 && !obj_mplayer_mini.hand = 1 && !instance_exists(obj_fire) &&  !instance_exists(obj_thunder)
  {if keyboard_check(vk_left)or keyboard_check(vk_right) or keyboard_check(vk_up)or keyboard_check(vk_down) {moving = 1}}
}

if global.electrocute = 0 && !hammer = 1 && !hand = 1
{
  if instance_exists(obj_mplayer)
  {
    if !obj_mplayer.hammer = 1 && !obj_mplayer.hand = 1
    {
      if keyboard_check(vk_left) && keyboard_check(vk_right) {moving = 0}
      if keyboard_check(vk_up) && keyboard_check(vk_down) {moving = 0}
    }
  }
  if instance_exists(obj_mplayer_mini)
  {
    if !obj_mplayer_mini.hammer = 1 && !obj_mplayer_mini.hand = 1
    {
      if keyboard_check(vk_left) && keyboard_check(vk_right) {moving = 0}
      if keyboard_check(vk_up) && keyboard_check(vk_down) {moving = 0}
    }
  }
}
if global.electrocute = 1
{
  if keyboard_check(vk_left) && keyboard_check(vk_right) {electromoving = 0 moving = 0}
  if keyboard_check(vk_up) && keyboard_check(vk_down) {electromoving = 0 moving = 0}
}

if hammer = 0 && hand = 0
{
  if instance_exists(obj_mplayer)
  {
    if obj_mplayer.moving = 1
    {
      if obj_mplayer.dir = 0 && obj_mplayer.dir0c = 0 {moving = 0}
      if obj_mplayer.dir = 1 && obj_mplayer.dir0c = 0 && obj_mplayer.dir2c = 0 {moving = 0}
      if obj_mplayer.dir = 2 && obj_mplayer.dir2c = 0 {moving = 0}
      if obj_mplayer.dir = 3 && obj_mplayer.dir2c = 0 && obj_mplayer.dir4c = 0 {moving = 0}
      if obj_mplayer.dir = 4 && obj_mplayer.dir4c = 0 {moving = 0}
      if obj_mplayer.dir = 5 && obj_mplayer.dir4c = 0 && obj_mplayer.dir6c = 0 {moving = 0}
      if obj_mplayer.dir = 6 && obj_mplayer.dir6c = 0 {moving = 0}
      if obj_mplayer.dir = 7 && obj_mplayer.dir6c = 0 && obj_mplayer.dir0c = 0 {moving = 0}
    }
  }
  if instance_exists(obj_mplayer_mini)
  {
    if obj_mplayer_mini.moving = 1
    {
      if obj_mplayer_mini.dir = 0 && obj_mplayer_mini.dir0c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 1 && obj_mplayer_mini.dir0c = 0 && obj_mplayer_mini.dir2c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 2 && obj_mplayer_mini.dir2c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 3 && obj_mplayer_mini.dir2c = 0 && obj_mplayer_mini.dir4c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 4 && obj_mplayer_mini.dir4c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 5 && obj_mplayer_mini.dir4c = 0 && obj_mplayer_mini.dir6c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 6 && obj_mplayer_mini.dir6c = 0 {moving = 0}
      if obj_mplayer_mini.dir = 7 && obj_mplayer_mini.dir6c = 0 && obj_mplayer_mini.dir0c = 0 {moving = 0}
    }
  }
}

if landing = z && jump = 0 && hammer = 0 && hand = 0 && global.electrocute = 0
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

if jump = 1 && zspeed >0
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

if jump = 1 && zspeed <= 0
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

if landing = z {jump = 0}

if global.spin3 = 1 {x = otro.x y = otro.y z = otro.z visible = false}
if global.spin3 = 0 {visible = true}
/*
if otro.high = 1 {x = otro.x y = otro.y z = otro.z visible = false}
if otro.high = 0 {visible = true}
*/
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
if hammer = 1 && image_index > 8  {hammer = 0 moving = 0}

if hammer = 1 && image_index > 5
{
  if instance_exists (obj_mplayer){global.mini = 1}
  if instance_exists (obj_mplayer_mini){global.mini = 0}
}

if hand = 1 && keyboard_check (ord("Z"))
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
if hand = 1 && moving = 0 && !keyboard_check (ord("Z")) {hand = 1 moving = 3 global.thunder = 1}
if global.thunder = 1 && !keyboard_check (ord("Z"))
{
  moving = 3
  if image_index > 4 {global.thunder = 0 moving = 0 hand = 0}
}

if landing = z && global.electrocute = 1
{
  if dir=0 {sprite_index=spr_lplayer_18 xscale = 1}
  if dir=1 {sprite_index=spr_lplayer_19 xscale = 1}
  if dir=2 {sprite_index=spr_lplayer_20 xscale = 1}
  if dir=3 {sprite_index=spr_lplayer_19 xscale = -1}
  if dir=4 {sprite_index=spr_lplayer_18 xscale = -1}
  if dir=5 {sprite_index=spr_lplayer_17 xscale = -1}
  if dir=6 {sprite_index=spr_lplayer_16 xscale = 1}
  if dir=7 {sprite_index=spr_lplayer_17 xscale = 1}
}

  
if instance_exists(obj_mplayer) {if dir = obj_mplayer.dir {global.can = 1} else {global.can = 0}}
if instance_exists(obj_mplayer_mini){if dir = obj_mplayer_mini.dir {global.can = 1} else {global.can = 0}}

if instance_exists(obj_mplayer) {if z = obj_mplayer.z {global.zcan = 1} else {global.zcan = 0}}
if instance_exists(obj_mplayer_mini){if z = obj_mplayer_mini.z {global.zcan = 1} else {global.zcan = 0}}

if not keyboard_check(vk_left)&& not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && !hammer = 1 && !hand = 1 && global.electrocute = 0
{moving = 0}

if not keyboard_check(vk_left)&& not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && global.electrocute = 1
{electromoving = 0 moving = 0}

if moving = 0 {image_speed = 0 image_index = 0}
if moving = 1 {image_speed = 0.6}
if moving = 2 {image_speed = 0.6}
if moving = 3 {image_speed = 0.5}

if instance_exists(obj_mplayer) {if distance_to_object(obj_mplayer) > 19 {dir0c = 0 dir4c =0 dir6c = 0 dir2c =0}}

if instance_exists(obj_mplayer)
{
  if moving = 1 && hammer = 0 && obj_mplayer.hammer = 0 && hand = 0 && obj_mplayer.hand = 0 && global.electrocute = 0
  {
    if dir = 0 && dir0c = 1 {x+=4}    
    if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=3 y-=3}
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
  if global.electrocute = 1 && electromoving = 1
  {
    if electrodir = 0 && dir0c = 1 {x+=3}    
    if electrodir = 1 {if dir0c = 1 && dir2c = 1 {x+=2 y-=2}
          else {if dir0c = 1 && dir2c = 0 {x+=3}
                if dir0c = 0 && dir2c = 1 {y-=3}}}
    if electrodir = 2 && dir2c = 1 {y-=3}     
    if electrodir = 3 {if dir2c = 1 && dir4c = 1 {x-=2 y-=2}
          else {if dir2c = 1 && dir4c = 0 {y-=3}
                if dir2c = 0 && dir4c = 1 {x-=3}}}
    if electrodir = 4 && dir4c = 1 {x-=3} 
    if electrodir = 5 {if dir4c = 1 && dir6c = 1 {x-=2 y+=2}
          else {if dir4c = 1 && dir6c = 0 {x-=3}
                if dir4c = 0 && dir6c = 1 {y+=3}}}
    if electrodir = 6 && dir6c = 1 {y+=3}
    if electrodir = 7 {if dir6c = 1 && dir0c = 1 {x+=2 y+=2}
          else {if dir6c = 1 && dir0c = 0 {y+=3}
                if dir6c = 0 && dir0c = 1 {x+=3}}}
  }
}

if instance_exists(obj_mplayer_mini)
{
  if moving = 1 && hammer = 0 && obj_mplayer_mini.hammer = 0 && hand = 0 && obj_mplayer_mini.hand = 0 && global.dontmove = 0
  {
    if dir = 0 && dir0c = 1 {x+=4}    
    if dir = 1 {if dir0c = 1 && dir2c = 1 {x+=3 y-=3}
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
}

dir0c = 1
dir2c = 1
dir4c = 1
dir6c = 1

if !collision_rectangle(x-8,y-4,x+8,y+8,obj_z16,0,1) && z>0 {landing = 0}

if instance_exists(obj_solid) {if place_meeting(x+4,y,obj_solid) {dir0c = 0} if place_meeting(x,y-4,obj_solid) {dir2c = 0} if place_meeting(x-4,y,obj_solid) {dir4c = 0} if place_meeting(x,y+4,obj_solid) {dir6c = 0}}
if instance_exists(obj_dunk_solid) {if place_meeting(x+4,y,obj_dunk_solid) {dir0c = 0} if place_meeting(x,y-4,obj_dunk_solid) {dir2c = 0} if place_meeting(x-4,y,obj_dunk_solid) {dir4c = 0} if place_meeting(x,y+4,obj_dunk_solid) {dir6c = 0}}
if instance_exists(obj_rock) {if place_meeting(x+4,y,obj_rock) {dir0c = 0} if place_meeting(x,y-4,obj_rock) {dir2c = 0} if place_meeting(x-4,y,obj_rock) {dir4c = 0} if place_meeting(x,y+4,obj_rock) {dir6c = 0}}

if instance_exists(obj_z16) {if place_meeting(x+4,y,obj_z16)&& z<obj_z16.z {dir0c = 0} if place_meeting(x,y-4,obj_z16)&& z<obj_z16.z {dir2c = 0} if place_meeting(x-4,y,obj_z16)&& z<obj_z16.z {dir4c = 0} if place_meeting(x,y+4,obj_z16)&& z<obj_z16.z {dir6c = 0}}
if instance_exists(obj_z32) {if place_meeting(x+4,y,obj_z32)&& z<obj_z32.z {dir0c = 0} if place_meeting(x,y-4,obj_z32)&& z<obj_z32.z {dir2c = 0} if place_meeting(x-4,y,obj_z32)&& z<obj_z32.z {dir4c = 0} if place_meeting(x,y+4,obj_z32)&& z<obj_z32.z {dir6c = 0}}
if instance_exists(obj_z48) {if place_meeting(x+4,y,obj_z48)&& z<obj_z48.z {dir0c = 0} if place_meeting(x,y-4,obj_z48)&& z<obj_z48.z {dir2c = 0} if place_meeting(x-4,y,obj_z48)&& z<obj_z48.z {dir4c = 0} if place_meeting(x,y+4,obj_z48)&& z<obj_z48.z {dir6c = 0}}
if instance_exists(obj_z64) {if place_meeting(x+4,y,obj_z64)&& z<obj_z64.z {dir0c = 0} if place_meeting(x,y-4,obj_z64)&& z<obj_z64.z {dir2c = 0} if place_meeting(x-4,y,obj_z64)&& z<obj_z64.z {dir4c = 0} if place_meeting(x,y+4,obj_z64)&& z<obj_z64.z {dir6c = 0}}
if instance_exists(obj_z80) {if place_meeting(x+4,y,obj_z80)&& z<obj_z80.z {dir0c = 0} if place_meeting(x,y-4,obj_z80)&& z<obj_z80.z {dir2c = 0} if place_meeting(x-4,y,obj_z80)&& z<obj_z80.z {dir4c = 0} if place_meeting(x,y+4,obj_z80)&& z<obj_z80.z {dir6c = 0}}
if instance_exists(obj_z96) {if place_meeting(x+4,y,obj_z96)&& z<obj_z96.z {dir0c = 0} if place_meeting(x,y-4,obj_z96)&& z<obj_z96.z {dir2c = 0} if place_meeting(x-4,y,obj_z96)&& z<obj_z96.z {dir4c = 0} if place_meeting(x,y+4,obj_z96)&& z<obj_z96.z {dir6c = 0}}
if instance_exists(obj_z112) {if place_meeting(x+4,y,obj_z112)&& z<obj_z112.z {dir0c = 0} if place_meeting(x,y-4,obj_z112)&& z<obj_z112.z {dir2c = 0} if place_meeting(x-4,y,obj_z112)&& z<obj_z112.z {dir4c = 0} if place_meeting(x,y+4,obj_z112)&& z<obj_z112.z {dir6c = 0}}
if instance_exists(obj_z128) {if place_meeting(x+4,y,obj_z128)&& z<obj_z128.z {dir0c = 0} if place_meeting(x,y-4,obj_z128)&& z<obj_z128.z {dir2c = 0} if place_meeting(x-4,y,obj_z128)&& z<obj_z128.z {dir4c = 0} if place_meeting(x,y+4,obj_z128)&& z<obj_z128.z {dir6c = 0}}
if instance_exists(obj_z144) {if place_meeting(x+4,y,obj_z144)&& z<obj_z144.z {dir0c = 0} if place_meeting(x,y-4,obj_z144)&& z<obj_z144.z {dir2c = 0} if place_meeting(x-4,y,obj_z144)&& z<obj_z144.z {dir4c = 0} if place_meeting(x,y+4,obj_z144)&& z<obj_z144.z {dir6c = 0}}
if instance_exists(obj_z160) {if place_meeting(x+4,y,obj_z160)&& z<obj_z160.z {dir0c = 0} if place_meeting(x,y-4,obj_z160)&& z<obj_z160.z {dir2c = 0} if place_meeting(x-4,y,obj_z160)&& z<obj_z160.z {dir4c = 0} if place_meeting(x,y+4,obj_z160)&& z<obj_z160.z {dir6c = 0}}
if instance_exists(obj_z176) {if place_meeting(x+4,y,obj_z176)&& z<obj_z176.z {dir0c = 0} if place_meeting(x,y-4,obj_z176)&& z<obj_z176.z {dir2c = 0} if place_meeting(x-4,y,obj_z176)&& z<obj_z176.z {dir4c = 0} if place_meeting(x,y+4,obj_z176)&& z<obj_z176.z {dir6c = 0}}
if instance_exists(obj_z192) {if place_meeting(x+4,y,obj_z192)&& z<obj_z192.z {dir0c = 0} if place_meeting(x,y-4,obj_z192)&& z<obj_z192.z {dir2c = 0} if place_meeting(x-4,y,obj_z192)&& z<obj_z192.z {dir4c = 0} if place_meeting(x,y+4,obj_z192)&& z<obj_z192.z {dir6c = 0}}
if instance_exists(obj_z208) {if place_meeting(x+4,y,obj_z208)&& z<obj_z208.z {dir0c = 0} if place_meeting(x,y-4,obj_z208)&& z<obj_z208.z {dir2c = 0} if place_meeting(x-4,y,obj_z208)&& z<obj_z208.z {dir4c = 0} if place_meeting(x,y+4,obj_z208)&& z<obj_z208.z {dir6c = 0}}
if instance_exists(obj_z224) {if place_meeting(x+4,y,obj_z224)&& z<obj_z224.z {dir0c = 0} if place_meeting(x,y-4,obj_z224)&& z<obj_z224.z {dir2c = 0} if place_meeting(x-4,y,obj_z224)&& z<obj_z224.z {dir4c = 0} if place_meeting(x,y+4,obj_z224)&& z<obj_z224.z {dir6c = 0}}
if instance_exists(obj_z240) {if place_meeting(x+4,y,obj_z240)&& z<obj_z240.z {dir0c = 0} if place_meeting(x,y-4,obj_z240)&& z<obj_z240.z {dir2c = 0} if place_meeting(x-4,y,obj_z240)&& z<obj_z240.z {dir4c = 0} if place_meeting(x,y+4,obj_z240)&& z<obj_z240.z {dir6c = 0}}
if instance_exists(obj_z256) {if place_meeting(x+4,y,obj_z256)&& z<obj_z256.z {dir0c = 0} if place_meeting(x,y-4,obj_z256)&& z<obj_z256.z {dir2c = 0} if place_meeting(x-4,y,obj_z256)&& z<obj_z256.z {dir4c = 0} if place_meeting(x,y+4,obj_z256)&& z<obj_z256.z {dir6c = 0}}

if instance_exists(obj_h16) {if place_meeting(x+4,y,obj_h16)&& z<obj_h16.z && z>obj_h16.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h16)&& z<obj_h16.z && z>obj_h16.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h16)&& z<obj_h16.z && z>obj_h16.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h16)&& z<obj_h16.z && z>obj_h16.z-16-24 {dir6c = 0}}
if instance_exists(obj_h32) {if place_meeting(x+4,y,obj_h32)&& z<obj_h32.z && z>obj_h32.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h32)&& z<obj_h32.z && z>obj_h32.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h32)&& z<obj_h32.z && z>obj_h32.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h32)&& z<obj_h32.z && z>obj_h32.z-16-24 {dir6c = 0}}
if instance_exists(obj_h48) {if place_meeting(x+4,y,obj_h48)&& z<obj_h48.z && z>obj_h48.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h48)&& z<obj_h48.z && z>obj_h48.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h48)&& z<obj_h48.z && z>obj_h48.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h48)&& z<obj_h48.z && z>obj_h48.z-16-24 {dir6c = 0}}
if instance_exists(obj_h64) {if place_meeting(x+4,y,obj_h64)&& z<obj_h64.z && z>obj_h64.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h64)&& z<obj_h64.z && z>obj_h64.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h64)&& z<obj_h64.z && z>obj_h64.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h64)&& z<obj_h64.z && z>obj_h64.z-16-24 {dir6c = 0}}
if instance_exists(obj_h80) {if place_meeting(x+4,y,obj_h80)&& z<obj_h80.z && z>obj_h80.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h80)&& z<obj_h80.z && z>obj_h80.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h80)&& z<obj_h80.z && z>obj_h80.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h80)&& z<obj_h80.z && z>obj_h80.z-16-24 {dir6c = 0}}
if instance_exists(obj_h96) {if place_meeting(x+4,y,obj_h96)&& z<obj_h96.z && z>obj_h96.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h96)&& z<obj_h96.z && z>obj_h96.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h96)&& z<obj_h96.z && z>obj_h96.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h96)&& z<obj_h96.z && z>obj_h96.z-16-24 {dir6c = 0}}
if instance_exists(obj_h112) {if place_meeting(x+4,y,obj_h112)&& z<obj_h112.z && z>obj_h112.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h112)&& z<obj_h112.z && z>obj_h112.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h112)&& z<obj_h112.z && z>obj_h112.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h112)&& z<obj_h112.z && z>obj_h112.z-16-24 {dir6c = 0}}
if instance_exists(obj_h128) {if place_meeting(x+4,y,obj_h128)&& z<obj_h128.z && z>obj_h128.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h128)&& z<obj_h128.z && z>obj_h128.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h128)&& z<obj_h128.z && z>obj_h128.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h128)&& z<obj_h128.z && z>obj_h128.z-16-24 {dir6c = 0}}
if instance_exists(obj_h144) {if place_meeting(x+4,y,obj_h144)&& z<obj_h144.z && z>obj_h144.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h144)&& z<obj_h144.z && z>obj_h144.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h144)&& z<obj_h144.z && z>obj_h144.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h144)&& z<obj_h144.z && z>obj_h144.z-16-24 {dir6c = 0}}
if instance_exists(obj_h160) {if place_meeting(x+4,y,obj_h160)&& z<obj_h160.z && z>obj_h160.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h160)&& z<obj_h160.z && z>obj_h160.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h160)&& z<obj_h160.z && z>obj_h160.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h160)&& z<obj_h160.z && z>obj_h160.z-16-24 {dir6c = 0}}
if instance_exists(obj_h176) {if place_meeting(x+4,y,obj_h176)&& z<obj_h176.z && z>obj_h176.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h176)&& z<obj_h176.z && z>obj_h176.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h176)&& z<obj_h176.z && z>obj_h176.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h176)&& z<obj_h176.z && z>obj_h176.z-16-24 {dir6c = 0}}
if instance_exists(obj_h192) {if place_meeting(x+4,y,obj_h192)&& z<obj_h192.z && z>obj_h192.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h192)&& z<obj_h192.z && z>obj_h192.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h192)&& z<obj_h192.z && z>obj_h192.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h192)&& z<obj_h192.z && z>obj_h192.z-16-24 {dir6c = 0}}
if instance_exists(obj_h208) {if place_meeting(x+4,y,obj_h208)&& z<obj_h208.z && z>obj_h208.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h208)&& z<obj_h208.z && z>obj_h208.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h208)&& z<obj_h208.z && z>obj_h208.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h208)&& z<obj_h208.z && z>obj_h208.z-16-24 {dir6c = 0}}
if instance_exists(obj_h224) {if place_meeting(x+4,y,obj_h224)&& z<obj_h224.z && z>obj_h224.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h224)&& z<obj_h224.z && z>obj_h224.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h224)&& z<obj_h224.z && z>obj_h224.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h224)&& z<obj_h224.z && z>obj_h224.z-16-24 {dir6c = 0}}
if instance_exists(obj_h240) {if place_meeting(x+4,y,obj_h240)&& z<obj_h240.z && z>obj_h240.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h240)&& z<obj_h240.z && z>obj_h240.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h240)&& z<obj_h240.z && z>obj_h240.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h240)&& z<obj_h240.z && z>obj_h240.z-16-24 {dir6c = 0}}
if instance_exists(obj_h256) {if place_meeting(x+4,y,obj_h256)&& z<obj_h256.z && z>obj_h256.z-16-24 {dir0c = 0} if place_meeting(x,y-4,obj_h256)&& z<obj_h256.z && z>obj_h256.z-16-24 {dir2c = 0} if place_meeting(x-4,y,obj_h256)&& z<obj_h256.z && z>obj_h256.z-16-24 {dir4c = 0} if place_meeting(x,y+4,obj_h256)&& z<obj_h256.z && z>obj_h256.z-16-24 {dir6c = 0}}
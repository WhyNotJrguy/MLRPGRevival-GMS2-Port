z+= zspeed;
zspeed-= zgravity;

if z < landing
{
    z = landing;
    zspeed = 0;
    zgravity = 0;
}
if z > landing
{
    zgravity = 1;
}

if instance_exists(obj_lplayer)
    otro = obj_lplayer;
if instance_exists(obj_lplayer_2)
    otro = obj_lplayer_2;

if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
{
    if keyboard_check(vk_left)&& not keyboard_check(vk_right)
    {
        if keyboard_check(vk_up)&& not keyboard_check(vk_down)
            dir = 3;
        if not keyboard_check(vk_up)&& keyboard_check(vk_down)
            dir = 5;
        if not keyboard_check(vk_up)&& not keyboard_check(vk_down)
            dir = 4;
    }
    if not keyboard_check(vk_left)&& keyboard_check(vk_right)
    {
        if keyboard_check(vk_up)&& not keyboard_check(vk_down)
            dir = 1;
        if not keyboard_check(vk_up)&& keyboard_check(vk_down)
            dir = 7;
        if not keyboard_check(vk_up)&& not keyboard_check(vk_down)
            dir = 0;
    }
    if not keyboard_check(vk_left)&& not keyboard_check(vk_right)
    {
        if keyboard_check(vk_up)&& not keyboard_check(vk_down)
            dir = 2;
        if not keyboard_check(vk_up)&& keyboard_check(vk_down)
            dir = 6;
    }
}

if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up) or keyboard_check(vk_down)
{
    if !hammer = 1 && !hand = 1 && !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
        moving = 1;
}

if !hammer = 1
{
    if keyboard_check(vk_left) && keyboard_check(vk_right)
        moving = 0;
    if keyboard_check(vk_up) && keyboard_check(vk_down)
        moving = 0;
}

if landing = z && jump = 0 && hammer = 0 && hand = 0
{
    if dir = 0
    {
        sprite_index = spr_mplayer_18;
        xscale = 1
    }
    if dir = 1
    {
        sprite_index = spr_mplayer_19;
        xscale = 1
    }
    if dir = 2
    {
        sprite_index = spr_mplayer_20;
        xscale = 1
    }
    if dir = 3
    {
        sprite_index = spr_mplayer_19;
        xscale = -1
    }
    if dir = 4
    {
        sprite_index = spr_mplayer_18;
        xscale = -1
    }
    if dir = 5
    {
        sprite_index = spr_mplayer_17;
        xscale = -1
    }
    if dir = 6
    {
        sprite_index = spr_mplayer_16;
        xscale = 1
    }
    if dir = 7
    {
        sprite_index = spr_mplayer_17;
        xscale = 1
    }
}

if jump = 1 && zspeed >0
{
    if dir = 0
    {
        sprite_index = spr_mplayer_31;
        image_index = 2;
        xscale = 1;
    }
    if dir = 1
    {
        sprite_index = spr_mplayer_31;
        image_index = 3;
        xscale = 1;
    }
    if dir = 2
    {
        sprite_index = spr_mplayer_31;
        image_index = 4;
        xscale = 1;
    }
    if dir = 3
    {
        sprite_index = spr_mplayer_31;
        image_index = 3;
        xscale = -1;
    }
    if dir = 4
    {
        sprite_index = spr_mplayer_31;
        image_index = 2;
        xscale = -1;
    }
    if dir = 5
    {
        sprite_index = spr_mplayer_31;
        image_index = 1;
        xscale = -1;
    }
    if dir = 6
    {
        sprite_index = spr_mplayer_31;
        image_index = 0;
        xscale = 1
    }
    if dir = 7
    {
        sprite_index = spr_mplayer_31;
        image_index = 1;
        xscale = 1
    }
}

if jump = 1 && zspeed <= 0
{
    if dir = 0
    {
        sprite_index = spr_mplayer_31;
        image_index = 2;
        xscale = 1;
    }
    if dir = 1
    {
        sprite_index = spr_mplayer_31;
        image_index = 3;
        xscale = 1;
    }
    if dir = 2
    {
        sprite_index = spr_mplayer_31;
        image_index = 4;
        xscale = 1;
    }
    if dir = 3
    {
        sprite_index = spr_mplayer_31;
        image_index = 3;
        xscale = -1;
    }
    if dir = 4
    {
        sprite_index = spr_mplayer_31;
        image_index = 2;
        xscale = -1;
    }
    if dir = 5
    {
        sprite_index = spr_mplayer_31;
        image_index = 1;
        xscale = -1;
    }
    if dir = 6
    {
        sprite_index = spr_mplayer_31;
        image_index = 0;
        xscale = 1;
    }
    if dir = 7
    {
        sprite_index = spr_mplayer_31;
        image_index = 1;
        xscale = 1;
    }
}

if landing = z
    jump = 0;

if hammer = 1 && moving = 2
{
    if dir = 0
    {
        sprite_index = spr_mplayer_23;
        xscale = 1;
    }
    if dir = 1
    {
        sprite_index = spr_mplayer_24;
        xscale = 1;
    }
    if dir = 2
    {
        sprite_index = spr_mplayer_25;
        xscale = 1;
    }
    if dir = 3
    {
        sprite_index = spr_mplayer_24;
        xscale = -1;
    }
    if dir = 4
    {
        sprite_index = spr_mplayer_23;
        xscale = -1;
    }
    if dir = 5
    {
        sprite_index = spr_mplayer_22;
        xscale = -1;
    }
    if dir = 6
    {
        sprite_index = spr_mplayer_21;
        xscale = 1;
    }
    if dir = 7
    {
        sprite_index = spr_mplayer_22;
        xscale = 1;
    }
}
if hammer = 1 && image_index > 11
{
    hammer = 0;
    moving = 0;
}

if hand = 1 && keyboard_check(ord("X"))
{
    if dir = 0
    {
        sprite_index = spr_mplayer_28;
        xscale = 1;
    }
    if dir = 1
    {
        sprite_index = spr_mplayer_29;
        xscale = 1;
    }
    if dir = 2
    {
        sprite_index = spr_mplayer_30;
        xscale = 1;
    }
    if dir = 3
    {
        sprite_index = spr_mplayer_29;
        xscale = -1;
    }
    if dir = 4
    {
        sprite_index = spr_mplayer_28;
        xscale = -1;
    }
    if dir = 5
    {
        sprite_index = spr_mplayer_27;
        xscale = -1;
    }
    if dir = 6
    {
        sprite_index = spr_mplayer_26;
        xscale = 1;
    }
    if dir = 7
    {
        sprite_index = spr_mplayer_27;
        xscale = 1;
    }
}

if hand = 1 && moving = 0 && !keyboard_check (ord("X"))
{
    hand = 1;
    moving = 2;
    global.fire = 1;
}

if global.fire = 1 && !keyboard_check (ord("X"))
{
    moving = 2;
    if image_index > 2
    {
        global.fire = 0;
        moving = 0;
        hand = 0;
    }
}

if not keyboard_check(vk_left)&& not keyboard_check(vk_right) && not keyboard_check(vk_up)&& not keyboard_check(vk_down) && hammer = 0 && hand = 0
    moving = 0;

if moving = 0
{
    image_speed = 0;
    image_index = 0;
}
if moving = 1
    image_speed = 0.6;
if moving = 2
    image_speed = 0.6;

if !instance_exists(obj_fire) && hammer = 0 && global.dontmove = 0 && distance_to_object(otro) < 19 && !place_meeting(x,y,obj_mini_solid)
{
    if otro.x-x < -32
        dir0c = 0;
    if otro.x-x > 16
        dir4c = 0;
    if otro.y-y < -32
        dir6c = 0;
    if otro.y-y > 16
        dir2c = 0;
}

if instance_exists(obj_lplayer_2)
{
    dir0c = 0;
    dir4c = 0;
    dir6c = 0;
    dir2c = 0;
}

if moving = 1 && hammer = 0 && hand = 0 && otro.hammer = 0
{
    if dir = 0 && dir0c = 1
        x+= 4;  
    if dir = 1
    {
        if dir0c = 1 && dir2c = 1
        {
            x+= 3;
            y+= -3;
        }
        else
        {
            if dir0c = 1 && dir2c = 0
                x+= 4;
            if dir0c = 0 && dir2c = 1
                y-= 4;
        }
    }
    if dir = 2 && dir2c = 1
        y-= 4;     
    if dir = 3
    {
        if dir2c = 1 && dir4c = 1
        {
            x-= 3;
            y-= 3;
        }
        else
        {
        if dir2c = 1 && dir4c = 0
            y-= 4;
        if dir2c = 0 && dir4c = 1
            x-= 4;
        }
    }
    if dir = 4 && dir4c = 1
        x-= 4;
    if dir = 5
    {
        if dir4c = 1 && dir6c = 1
        {
            x-= 3;
            y+= 3;
        }
        else
        {
        if dir4c = 1 && dir6c = 0
            x-= 4;
        if dir4c = 0 && dir6c = 1
            y+= 4;
        }
    }
    if dir = 6 && dir6c = 1
        y+= 4;
    if dir = 7
    {
        if dir6c = 1 && dir0c = 1
        {
            x+=3;
            y+=3;
        }
        else
        {
        if dir6c = 1 && dir0c = 0
            y+= 4;
        if dir6c = 0 && dir0c = 1
            x+= 4;
        }
    }
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

if instance_exists(obj_lplayer)
{
    if obj_lplayer.hammer = 1 && obj_lplayer.image_index > 4 && obj_lplayer.image_index < 5 && global.mini = 0 && global.can = 1  && global.zcan = 1
    {
        audio_play_sound(snd_grow,0,0);
        instance_change(obj_mplayer,false);
    }
}
if instance_exists(obj_mini_solid)
{
    if place_meeting(x,y,obj_mini_solid)
        global.dontmove = 1;
    if !place_meeting(x,y,obj_mini_solid)
        global.dontmove = 0;
}
if instance_exists(obj_lplayer)
{
    if distance_to_object(obj_lplayer) > 18
        global.dontmove = 1;
    if distance_to_object(obj_lplayer) < 18
        global.dontmove = 0;
}


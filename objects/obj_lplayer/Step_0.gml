//B Button/Key
if (gamepad_button_check(0, global.buttonB) || keyboard_check(global.keyB))
{
    if global.hand2 = 1 && moving = 0 && !otro.hammer = 1
    && !otro.hand = 1 && global.electrocute = 0 &&
    global.dontmove = 0 && global.can = 1 &&
    global.zcan = 1 && !instance_exists(obj_fire)
    && !instance_exists(obj_thunder)
    {
        hand = 1;
        moving = 0;
    }
}
//Press Start Button/Key
if (gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart))
{
    if jump = 0 && hammer = 0 && hand = 0 && otro.jump = 0
    && otro.hammer = 0 && otro.hand = 0 && global.electrocute = 0
    && global.spin = 0 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
    && distance_to_object(obj_mplayer_mini) > 19
    {
        if instance_exists(obj_mplayer_mini)
            audio_play_sound(snd_lplayer_okiedokie,0,0);
        instance_change(obj_lplayer_2,false);
    }
}
//Press B Button/Key
if (gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB))
{
    if !otro.hammer = 1 && !otro.hand = 1 && global.dontmove = 0
    && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
    {
        if global.jump2 = 1 && z = landing && jump = 0
        {
            zspeed = 6;
            jump = 1;
            audio_play_sound(snd_jump,0,0);
        }
        if global.super = 1 && instance_exists(obj_mplayer)
        {
            if global.zcan = 1
                global.spin = 1;
            if global.zcan = 0 && z = landing
            {
                zspeed = 5;
                jump = 1;
                audio_play_sound(snd_jump,0,0);
            }
        }
          
        if global.hammer2 = 1 && moving = 0 && global.can = 1 && global.zcan = 1
        {
            hammer = 1;
            moving = 2;
            audio_play_sound(snd_hammer,0,0);
        }
        
        if global.hand2 = 1 && moving = 0 && global.can = 1  && global.zcan = 1 && global.electrocute = 0
            instance_create(x,y,obj_thunder);
    }
}    

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

if instance_exists(obj_mplayer)
    otro = obj_mplayer;
if instance_exists(obj_mplayer_mini)
    otro = obj_mplayer_mini;

if moving = 1
{
    if instance_exists(obj_mplayer) && global.electrocute = 0
    {
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 340 or point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 20
            dir = 0;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 20 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 70
            dir = 1;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 70 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 110
            dir = 2;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 110 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1 )<= 160
            dir = 3;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 160 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 200
            dir = 4;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 200 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 250
            dir = 5;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 250 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 290
            dir = 6;
        if point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) > 290 && point_direction(x,y,obj_mplayer.x1,obj_mplayer.y1) <= 340
            dir = 7;
    }
    if instance_exists(obj_mplayer_mini)
    {
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 340 or point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 20
            dir = 0;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 20 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 70
            dir = 1;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 70 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 110
            dir = 2;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 110 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 160
            dir = 3;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 160 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 200
            dir = 4;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 200 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1 )<= 250
            dir = 5;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 250 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1 )<= 290
            dir = 6;
        if point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) > 290 && point_direction(x,y,obj_mplayer_mini.x1,obj_mplayer_mini.y1) <= 340
            dir = 7;
    }
}


if global.electrocute = 1 && instance_exists(obj_mplayer)
    electrodir = obj_mplayer.electrodir;

if instance_exists(obj_mplayer_mini)
    global.electrocute = 0;

if moving = 0
{
    if instance_exists(obj_mplayer)
        dir = obj_mplayer.dir;
    if instance_exists(obj_mplayer_mini)
        dir = obj_mplayer_mini.dir;
}

if instance_exists(obj_mplayer) && !instance_exists(obj_mplayer_mini)
{
    if !hammer = 1 && !hand = 1 && !obj_mplayer.hammer = 1 && !obj_mplayer.hand = 1
    && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.electrocute = 0
    {
        if keyboard_check(global.keyLeft)
        or keyboard_check(global.keyRight)
        or keyboard_check(global.keyUp)
        or keyboard_check(global.keyDown)
            moving = 1;
    }
    if global.electrocute = 1
    {
        if keyboard_check(global.keyLeft)
        or keyboard_check(global.keyRight)
        or keyboard_check(global.keyUp)
        or keyboard_check(global.keyDown)
        {
            electromoving = 1;
            moving = 1;
        }
    }
}
if !instance_exists(obj_mplayer) && instance_exists(obj_mplayer_mini)
{
    if !hammer = 1 && !hand = 1 && !obj_mplayer_mini.hammer = 1
    && !obj_mplayer_mini.hand = 1 && !instance_exists(obj_fire)
    && !instance_exists(obj_thunder)
    {
        if keyboard_check(global.keyLeft)
        or keyboard_check(global.keyRight)
        or keyboard_check(global.keyUp)
        or keyboard_check(global.keyDown)
            moving = 1;
    }
}

if global.electrocute = 0 && !hammer = 1 && !hand = 1
{
    if instance_exists(obj_mplayer)
    {
        if !obj_mplayer.hammer = 1 && !obj_mplayer.hand = 1
        {
            if keyboard_check(global.keyLeft)
            && keyboard_check(global.keyRight)
                moving = 0;
            if keyboard_check(global.keyUp)
            && keyboard_check(global.keyDown)
                moving = 0;
        }
    }
    if instance_exists(obj_mplayer_mini)
    {
        if !obj_mplayer_mini.hammer = 1 && !obj_mplayer_mini.hand = 1
        {
            if keyboard_check(global.keyLeft)
            && keyboard_check(global.keyRight)
                moving = 0;
            if keyboard_check(global.keyUp)
            && keyboard_check(global.keyDown)
                moving = 0;
        }
    }
}
if global.electrocute = 1
{
    if keyboard_check(global.keyLeft)
    && keyboard_check(global.keyRight)
    {
        electromoving = 0;
        moving = 0;
    }
    if keyboard_check(global.keyUp)
    && keyboard_check(global.keyDown)
    {
        electromoving = 0;
        moving = 0;
    }
}

if hammer = 0 && hand = 0
{
    if instance_exists(obj_mplayer)
    {
        if obj_mplayer.moving = 1
        {
            if obj_mplayer.dir = 0 && obj_mplayer.dir0c = 0
                moving = 0;
            if obj_mplayer.dir = 1 && obj_mplayer.dir0c = 0 && obj_mplayer.dir2c = 0
                moving = 0;
            if obj_mplayer.dir = 2 && obj_mplayer.dir2c = 0
                moving = 0;
            if obj_mplayer.dir = 3 && obj_mplayer.dir2c = 0 && obj_mplayer.dir4c = 0
                moving = 0;
            if obj_mplayer.dir = 4 && obj_mplayer.dir4c = 0
                moving = 0;
            if obj_mplayer.dir = 5 && obj_mplayer.dir4c = 0 && obj_mplayer.dir6c = 0
                moving = 0;
            if obj_mplayer.dir = 6 && obj_mplayer.dir6c = 0
                moving = 0;
            if obj_mplayer.dir = 7 && obj_mplayer.dir6c = 0 && obj_mplayer.dir0c = 0
                moving = 0;
        }
    }
    if instance_exists(obj_mplayer_mini)
    {
        if obj_mplayer_mini.moving = 1
        {
            if obj_mplayer_mini.dir = 0 && obj_mplayer_mini.dir0c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 1 && obj_mplayer_mini.dir0c = 0 && obj_mplayer_mini.dir2c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 2 && obj_mplayer_mini.dir2c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 3 && obj_mplayer_mini.dir2c = 0 && obj_mplayer_mini.dir4c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 4 && obj_mplayer_mini.dir4c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 5 && obj_mplayer_mini.dir4c = 0 && obj_mplayer_mini.dir6c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 6 && obj_mplayer_mini.dir6c = 0
                moving = 0;
            if obj_mplayer_mini.dir = 7 && obj_mplayer_mini.dir6c = 0 && obj_mplayer_mini.dir0c = 0
                moving = 0;
        }
    }
}

if landing = z && jump = 0 && hammer = 0 && hand = 0 && global.electrocute = 0
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_3;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_4;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_5;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_4;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_3;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_2;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_1;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_2;
            xscale = 1;
        break;
    }
}

if jump = 1 && zspeed >0
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_0;
            image_index = 2;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_0;
            image_index = 3;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_0;
            image_index = 4;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_0;
            image_index = 3;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_0;
            image_index = 2;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_0;
            image_index = 1;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_0;
            image_index = 0;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_0;
            image_index = 1;
            xscale = 1;
        break;
    }
}

if jump = 1 && zspeed <= 0
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_0;
            image_index = 2;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_0;
            image_index = 3;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_0;
            image_index = 4;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_0;
            image_index = 3;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_0;
            image_index = 2;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_0;
            image_index = 1;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_0;
            image_index = 0;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_0;
            image_index = 1;
            xscale = 1;
        break;
    }
}

if landing = z
    jump = 0;

switch (global.spin3)
{
    case 1:
        x = otro.x;
        y = otro.y;
        z = otro.z;
        visible = false;
    break;
    case 0:
        visible = true;
    break;
}

if hammer = 1 && moving = 2
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_8;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_9;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_10;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_9;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_8;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_7;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_6;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_7;
            xscale = 1;
        break;
    }
}
if hammer = 1 && image_index > 11
{
    hammer = 0;
    moving = 0;
}

if hammer = 1 && image_index > 5
{
    if instance_exists (obj_mplayer)
        global.mini = 1;
    if instance_exists (obj_mplayer_mini)
        global.mini = 0;
}

if hand = 1 && keyboard_check(global.keyB)
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_13;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_14;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_15;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_14;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_13;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_12;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_11;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_12;
            xscale = 1;
        break;
    }
}
if hand = 1 && moving = 0 && not keyboard_check(global.keyB)
{
    hand = 1;
    moving = 3;
    global.thunder = 1;
}
if global.thunder = 1 && not keyboard_check(global.keyB)
{
    moving = 3;
    if image_index > 4
    {
        global.thunder = 0;
        moving = 0;
        hand = 0;
    }
}

if landing = z && global.electrocute = 1
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_lplayer_18;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_lplayer_19;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_lplayer_20;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_lplayer_19;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_lplayer_18;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_lplayer_17;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_lplayer_16;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_lplayer_17;
            xscale = 1;
        break;
    }
}

  
if instance_exists(obj_mplayer)
{
    if dir = obj_mplayer.dir
        global.can = 1;
    else
        global.can = 0;
}
if instance_exists(obj_mplayer_mini)
{
    if dir = obj_mplayer_mini.dir
        global.can = 1;
    else
        global.can = 0;
}
if instance_exists(obj_mplayer)
{
    if z = obj_mplayer.z
        global.zcan = 1;
    else
        global.zcan = 0;
}
if instance_exists(obj_mplayer_mini)
{
    if z = obj_mplayer_mini.z
        global.zcan = 1;
    else
        global.zcan = 0;
}

if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight)
&& not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
&& !hammer = 1 && !hand = 1 && global.electrocute = 0
    moving = 0;

if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight)
&& not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
&& global.electrocute = 1
{
    electromoving = 0;
    moving = 0;
}

switch (moving)
{
    case 0:
        image_speed = 0;
        image_index = 0;
    break;
    case 1:
        image_speed = 0.6;
    break;
    case 2:
        image_speed = 0.6;
    break;
    case 3:
        image_speed = 0.5;
    break;
}

//Determine distance to Mario
if instance_exists(obj_mplayer)
{
    if distance_to_object(obj_mplayer) > 19
    {
        dir0c = 0;
        dir4c = 0;
        dir6c = 0;
        dir2c = 0;
    }
}

//Luigi's movements with Mario
if instance_exists(obj_mplayer)
{
    if moving = 1 && hammer = 0 && obj_mplayer.hammer = 0 && hand = 0 && obj_mplayer.hand = 0 && global.electrocute = 0
    {
        scr_overworld_movement();
    }
    
    if global.electrocute = 1 && electromoving = 1
    {
        scr_hand_movement();
        /*if electrodir = 0 && dir0c = 1 {x+=3}    
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
        if dir6c = 0 && dir0c = 1 {x+=3}}}*/
    }
}

//Luigi's movements with Mario when mini
if instance_exists(obj_mplayer_mini)
{
    if moving = 1 && hammer = 0 && obj_mplayer_mini.hammer = 0 && hand = 0 && obj_mplayer_mini.hand = 0 && global.dontmove = 0
    {
        scr_overworld_movement();
    }
}

dir0c = 1;
dir2c = 1;
dir4c = 1;
dir6c = 1;

//Collisions
if not collision_rectangle(x-8,y-4,x+8,y+8,obj_z16,0,1) && z > 0
    landing = 0;
scr_collision_checking();

/* */
/*  */

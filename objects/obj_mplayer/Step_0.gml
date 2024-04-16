//A Button/Key
if (gamepad_button_check(0, global.buttonA) || keyboard_check(global.keyA))
{
    if global.hand = 1 && moving = 0 && !otro.hammer = 1 && !otro.hand = 1
    && !instance_exists(obj_fire) &&  !instance_exists(obj_thunder)
    {
        hand = 1;
        moving = 0;
    }
}
//Press Enter Button/Key
if (gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart))
{
    if !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.electrocute = 0 && global.spin = 0 && jump = 0 && hammer = 0 && hand = 0 && otro.jump = 0 && otro.hammer = 0 && otro.hand = 0
    {
        audio_play_sound(snd_lplayer_okiedokie,0,0);
        instance_change(obj_mplayer_2,false);
    }
}
//Press A Button/Key
if (gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA))
{
    if !otro.hammer = 1 && !otro.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.spin = 0
    {
        if global.jump = 1 && z = landing && jump = 0 && global.electrocute = 0
        {
            zspeed = 6;
            jump = 1;
            audio_play_sound(snd_jump,0,0);
        }
        if global.hammer = 1 && moving = 0
        {
            hammer = 1;
            moving = 2;
            audio_play_sound(snd_hammer,0,0);
            
        }
        if global.hand = 1 && moving = 0
            instance_create(x,y,obj_fire);
    }
}
//Press B Button/Key
if (gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB))
{
    if global.spin = 1 && image_index > 0 && image_index < 8 && landing = z
    {
        zspeed = 9;
        high = 1;
        audio_play_sound(snd_jump_high,0,0);
    }
}

z += zspeed;
zspeed -= zgravity;
if z < landing
{
    z = landing;
    zspeed = 0;
    zgravity = 0;
}
if z > landing
    zgravity = 1;

if instance_exists(obj_lplayer)
    otro = obj_lplayer;

if instance_exists(obj_lplayer_dunk)
    otro = obj_lplayer_dunk;

//If Luigi is present
if instance_exists(obj_lplayer)
{
    //Mario 8-Directional Movement
    if !hammer = 1 && !hand = 1 && !obj_lplayer.hammer = 1 && !obj_lplayer.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.electrocute = 0
    {
        scr_control_movement();
    }
}

if instance_exists(obj_lplayer_dunk)
{
    if !hammer = 1 && !hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
    {
        scr_control_movement();
    }
}

if global.electrocute = 1
    scr_control_movement();

//Without this, Mario does not move
if instance_exists(obj_lplayer)
{
    if !hammer = 1 && !hand = 1 && !obj_lplayer.hammer = 1 && !obj_lplayer.hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder) && global.electrocute = 0 && global.spin = 0
        if keyboard_check(global.keyLeft) or keyboard_check(global.keyRight) or keyboard_check(global.keyUp) or keyboard_check(global.keyDown)
            moving = 1;
}

if instance_exists(obj_lplayer_dunk)
    if !hammer = 1 && !hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
        if keyboard_check(global.keyLeft) or keyboard_check(global.keyRight) or keyboard_check(global.keyUp) or keyboard_check(global.keyDown)
            moving = 1;

if global.electrocute = 1
    if keyboard_check(global.keyLeft) or keyboard_check(global.keyRight) or keyboard_check(global.keyUp) or keyboard_check(global.keyDown)
        electromoving = 1;

//If moving both left and right or up, this will freeze Mario and Luigi in place
if instance_exists(obj_lplayer)
{
    if !hammer = 1 && !hand = 1 && !obj_lplayer.hammer = 1 && !obj_lplayer.hand = 1 && !instance_exists(obj_fire)
    && !instance_exists(obj_thunder) && global.electrocute = 0 && global.spin = 0
    {
        if keyboard_check(global.keyLeft) && keyboard_check(global.keyRight)
            moving = 0;
        if keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
            moving = 0;
    }

    if !hammer = 1 && !hand = 1 && !obj_lplayer.hammer = 1 && !obj_lplayer.hand = 1 && !instance_exists(obj_fire)
    && !instance_exists(obj_thunder) && global.electrocute = 1
    {
        if keyboard_check(global.keyLeft) && keyboard_check(global.keyRight)
            electromoving = 0;
        if keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
            electromoving = 0;
    }
}

if instance_exists(obj_lplayer_dunk)
{
    if !hammer = 1 && !hand = 1 && !instance_exists(obj_fire) && !instance_exists(obj_thunder)
    {
        if keyboard_check(global.keyLeft) && keyboard_check(global.keyRight)
            moving = 0;
        if keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
            moving = 0;
    }
}

if landing = z && jump = 0 && hammer = 0 && hand = 0 && global.electrocute = 0 && global.spin = 0 && high = 0
{
    switch (dir)
    {
        case 0:
            sprite_index =  spr_mplayer_3;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_mplayer_4;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_mplayer_5;
            xscale = 1
        break;
        case 3:
            sprite_index = spr_mplayer_4;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_mplayer_3;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_mplayer_2;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_mplayer_1;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_mplayer_2;
            xscale = 1;
        break;
    }
}
        
if jump = 1 && zspeed >0
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_mplayer_0;
            image_index = 2;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_mplayer_0;
            image_index = 3;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_mplayer_0;
            image_index = 4;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_mplayer_0;
            image_index = 3;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_mplayer_0;
            image_index = 2;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_mplayer_0;
            image_index = 1;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_mplayer_0;
            image_index = 0;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_mplayer_0;
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
            sprite_index = spr_mplayer_0;
            image_index = 2;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_mplayer_0;
            image_index = 3;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_mplayer_0;
            image_index = 4;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_mplayer_0;
            image_index = 3;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_mplayer_0;
            image_index = 2;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_mplayer_0;
            image_index = 1;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_mplayer_0;
            image_index = 0;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_mplayer_0;
            image_index = 1;
            xscale = 1;
        break;
    }
}

if landing = z
    jump = 0;

if global.spin = 1
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_hightjump_3;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_hightjump_4;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_hightjump_5;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_hightjump_4;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_hightjump_3;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_hightjump_2;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_hightjump_1;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_hightjump_2;
            xscale = 1;
        break;
    }
    moving = 2;
}

if global.spin = 1 && z > landing
    global.spin = 0;

if global.spin = 0 && high = 1
{
    moving = 1;
    switch (dir)
    {
        case 0:
            sprite_index = spr_hightjump_6;
            image_index = 2;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_hightjump_6;
            image_index = 3;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_hightjump_6;
            image_index = 4;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_hightjump_6;
            image_index = 3;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_hightjump_6;
            image_index = 2;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_hightjump_6;
            image_index = 1;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_hightjump_6;
            image_index = 0;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_hightjump_6;
            image_index = 1;
            xscale = 1;
        break;
    }
}

if high = 1 && landing = z
{
    global.spin = 0;
    high = 0;
}

switch (sprite_index)
{
    case spr_hightjump_1:
        global.spin3 = 1;
    break;
    case spr_hightjump_2:
        global.spin3 = 1;
    break;
    case spr_hightjump_3:
        global.spin3 = 1;
    break;
    case spr_hightjump_4:
        global.spin3 = 1;
    break;
    case spr_hightjump_5:
        global.spin3 = 1;
    break;
    case spr_hightjump_6:
        global.spin3 = 1;
    break;
    default:
        global.spin3 = 0;
}

if hammer = 1 && moving = 2
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_mplayer_8;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_mplayer_9;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_mplayer_10;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_mplayer_9;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_mplayer_8;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_mplayer_7;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_mplayer_6;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_mplayer_7;
            xscale = 1;
        break;
    }
}

if hammer = 1 && image_index > 11
{
    hammer = 0;
    moving = 0;
}

if hand = 1 && keyboard_check(global.keyA)
{
    switch (dir)
    {
        case 0:
            sprite_index = spr_mplayer_13;
            xscale = 1;
        break;
        case 1:
            sprite_index = spr_mplayer_14;
            xscale = 1;
        break;
        case 2:
            sprite_index = spr_mplayer_15;
            xscale = 1;
        break;
        case 3:
            sprite_index = spr_mplayer_14;
            xscale = -1;
        break;
        case 4:
            sprite_index = spr_mplayer_13;
            xscale = -1;
        break;
        case 5:
            sprite_index = spr_mplayer_12;
            xscale = -1;
        break;
        case 6:
            sprite_index = spr_mplayer_11;
            xscale = 1;
        break;
        case 7:
            sprite_index = spr_mplayer_12;
            xscale = 1;
        break;
    }
}

if hand = 1 && moving = 0 && not keyboard_check(global.keyA)
{
    hand = 1;
    moving = 3;
    global.fire = 1;
}

if global.fire = 1 && not keyboard_check(global.keyA)
{
    moving = 3;
    if image_index > 4 
    {
        global.fire = 0;
        moving = 0;
        hand = 0;
    }
}

if instance_exists(obj_lplayer)
{
    if obj_lplayer.hand = 1
    {
        moving = 3;
        switch (dir)
        {
            case 0:
                sprite_index = spr_mplayer_34;
                xscale = 1;
            break;
            case 1:
                sprite_index = spr_mplayer_35;
                xscale = 1;
            break;
            case 2:
                sprite_index = spr_mplayer_36;
                xscale = 1;
            break;
            case 3:
                sprite_index = spr_mplayer_35;
                xscale = -1;
            break;
            case 4:
                sprite_index = spr_mplayer_34;
                xscale = -1;
            break;
            case 5:
                sprite_index = spr_mplayer_33;
                xscale = -1;
            break;
            case 6:
                sprite_index = spr_mplayer_32;
                xscale = 1;
            break;
            case 7:
                sprite_index = spr_mplayer_33;
                xscale = 1;
            break;
        }
    }
    
    if global.electrocute = 1
    {
        electromoving = 1;
        switch (dir)
        {
            case 0:
                sprite_index = spr_mplayer_39;
                xscale = 1;
            break;
            case 1:
                sprite_index = spr_mplayer_40;
                xscale = 1;
            break;
            case 2:
                sprite_index = spr_mplayer_41;
                xscale = 1;
            break;
            case 3:
                sprite_index = spr_mplayer_40;
                xscale = -1;
            break;
            case 4:
                sprite_index = spr_mplayer_39;
                xscale = -1;
            break;
            case 5:
                sprite_index = spr_mplayer_38;
                xscale = -1;
            break;
            case 6:
                sprite_index = spr_mplayer_37;
                xscale = 1;
            break;
            case 7:
                sprite_index =spr_mplayer_38;
                xscale = 1;
            break;
        }
    }
}

if global.electrocute = 0
    audio_stop_sound(snd_thunder_shocking);

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

//If Mario is standing still
if instance_exists(obj_lplayer)
{
    if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight) && not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown) && hammer = 0 && hand = 0 && obj_lplayer.hand = 0 && global.electrocute = 0 && global.spin = 0
        moving = 0;
}

if instance_exists(obj_lplayer_dunk)
{
    if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight) && not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown) && hammer = 0 && hand = 0
        moving = 0;
}

if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight) && not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown) && global.electrocute = 1
    electromoving = 0;

if !instance_exists(obj_fire) && instance_exists(obj_lplayer) && hammer = 0 && global.dontmove = 0
{
    if obj_lplayer.x-x < -48
        dir0c = 0;
    if obj_lplayer.x-x > 24
        dir4c = 0;
    if obj_lplayer.y-y < -48
        dir6c = 0;
    if obj_lplayer.y-y > 24
        dir2c = 0;
}

//THIS SECTION HAS A GLITCH WHERE MARIO SEPARATES FROM LUIGI IF MARIO IS ON A PLATFORM, BUT ONLY WHEN GOING RIGHT OR DOWN (OCCURS IN ALL OBJECTS AND STATES LIKE THIS)
if instance_exists(obj_lplayer)
{
    if moving = 1 && hammer = 0 && hand = 0 && obj_lplayer.hammer = 0 && global.electrocute = 0
    {
        scr_overworld_movement();
    }
}

if instance_exists(obj_lplayer_dunk)
{
    if moving = 1 && hammer = 0 && hand = 0
    {
        scr_overworld_movement();
    }
}

if electromoving = 1 && global.electrocute = 1
{
    scr_hand_movement();
}

if moving = 1 or electromoving = 1
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

scr_collision_checking();

if instance_exists(obj_lplayer)
{
    if obj_lplayer.hammer = 1 && obj_lplayer.image_index > 4 && obj_lplayer.image_index < 5 && global.mini = 1 && global.can = 1  && global.zcan = 1
        instance_change(obj_mplayer_mini,false);
}

//Determines distance between Mario and Luigi
if distance_to_object(obj_lplayer) > 24
    global.dontmove = 1;
if distance_to_object(obj_lplayer) < 24
    global.dontmove = 0;

if global.electrocute = 1
    instance_create(x,y,obj_mplayer_electrocute);


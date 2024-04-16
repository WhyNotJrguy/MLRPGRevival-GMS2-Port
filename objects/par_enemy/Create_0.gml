z = 0;
landing = 0;
zspeed = 0;
zgravity = 0;
stunned = false;
name = noone;
image_single = 0 ;
if place_meeting(x,y,obj_h16) or place_meeting(x,y,obj_z16)
{
    z = 16;
    exit;
}
if place_meeting(x,y,obj_h32) or place_meeting(x,y,obj_z32)
{
    z = 32;
    exit;
}
if place_meeting(x,y,obj_h48) or place_meeting(x,y,obj_z48)
{
    z = 48;
    exit;
}
if place_meeting(x,y,obj_h64) or place_meeting(x,y,obj_z64)
{
    z = 64;
    exit;
}
if place_meeting(x,y,obj_h80) or place_meeting(x,y,obj_z80)
{
    z = 80;
    exit;
}
if place_meeting(x,y,obj_h96) or place_meeting(x,y,obj_z96)
{
    z = 96;
    exit;
}
if place_meeting(x,y,obj_h112) or place_meeting(x,y,obj_z112)
{
    z = 112;
    exit;
}


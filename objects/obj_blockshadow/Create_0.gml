depth = -y;
image_alpha = 0.7;
landing = 0;
if place_meeting(x,y,obj_h16) or place_meeting(x,y,obj_z16)
{
    landing+= 16;
    depth = -y-landing/16+32;
    y-= 16;
    exit;
}
if place_meeting(x,y,obj_h32) or place_meeting(x,y,obj_z32)
{
    landing+= 32;
    depth = -y-landing/16+32;
    y-= 32;
    exit;
}
if place_meeting(x,y,obj_h48) or place_meeting(x,y,obj_z48)
{
    landing+= 48;
    depth = -y-landing/16+32;
    y-= 48;
    exit;
}
if place_meeting(x,y,obj_h64) or place_meeting(x,y,obj_z64)
{
    landing+= 64;
    depth = -y-landing/16+32;
    y-= 64;
    exit;
}
if place_meeting(x,y,obj_h80) or place_meeting(x,y,obj_z80)
{
    landing+= 80;
    depth = -y-landing/16+32;
    y-= 80;
    exit;
}
if place_meeting(x,y,obj_h96) or place_meeting(x,y,obj_z96)
{
    landing+= 96;
    depth = -y-landing/16+32;
    y-= 96;
    exit;
}
depth = -y-landing/16+32;


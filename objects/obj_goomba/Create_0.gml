//Place these in the object creation code
//battletype = The enemy type to battle
//z = 0;

z = 0; //Default
battletype = 2; //Default

landing = 0;
zspeed = 0;
zgravity = 0;

image_speed = 0;
active = true;
encounter = false;

if place_meeting(x,y,obj_h16) or place_meeting(x,y,obj_z16)
{
    z = 16;
    landing = 16;
}
if place_meeting(x,y,obj_h32) or place_meeting(x,y,obj_z32)
{
    z = 32;
    landing = 32;
}
if place_meeting(x,y,obj_h48) or place_meeting(x,y,obj_z48)
{
    z = 48;
    landing = 48;
}
if place_meeting(x,y,obj_h64) or place_meeting(x,y,obj_z64)
{
    z = 64;
    landing = 64;
}
if place_meeting(x,y,obj_h80) or place_meeting(x,y,obj_z80)
{
    z = 80;
    landing = 80;
}
if place_meeting(x,y,obj_h96) or place_meeting(x,y,obj_z96)
{
    z = 96;
    landing = 96;
}
if place_meeting(x,y,obj_h112) or place_meeting(x,y,obj_z112)
{
    z = 112;
    landing = 112;
}
status = "ok"; //The Goomba's Status
//instance_destroy(); //for now
timer = 0;
dead = false;
alarm[2] = 1;


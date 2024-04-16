/*Item can contain any of the following:
0 - Coin (Default)
1 - Mushroom
2 - etc...
*/
item = 0;
z = 32;
dead = false;
image_speed = 0.15;
if place_meeting(x,y,obj_h16) or place_meeting(x,y,obj_z16)
{
    z+= 16;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h32) or place_meeting(x,y,obj_z32)
{
    z+= 32;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h48) or place_meeting(x,y,obj_z48)
{
    z+= 48;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h64) or place_meeting(x,y,obj_z64)
{
    z+= 64;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h80) or place_meeting(x,y,obj_z80)
{
    z+= 80;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h96) or place_meeting(x,y,obj_z96)
{
    z+= 96;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
if place_meeting(x,y,obj_h112) or place_meeting(x,y,obj_z112)
{
    z+= 112;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
else
{
    z+= 0;
    instance_create(x,y,obj_blockshadow);
    depth = -y-z/10+20;
    exit;
}
instance_create(x,y,obj_blockshadow);
depth = -y-z/24+20;

/* */
/*  */

if place_meeting(x,y,obj_z16)
    fire = 32;
if place_meeting(x,y,obj_z32)
    fire = 48;
if place_meeting(x,y,obj_z48)
    fire = 64;
if place_meeting(x,y,obj_z64)
    fire = 80;
if place_meeting(x,y,obj_z80)
    fire = 96;
if place_meeting(x,y,obj_z96)
    fire = 112;
if place_meeting(x,y,obj_z112)
    fire = 128;
if place_meeting(x,y,obj_z128)
    fire = 144;
if place_meeting(x,y,obj_z144)
    fire = 160;
if place_meeting(x,y,obj_z160)
    fire = 176;
if place_meeting(x,y,obj_z176)
    fire = 192;
if place_meeting(x,y,obj_z192)
    fire = 208;
if place_meeting(x,y,obj_z208)
    fire = 224;
if place_meeting(x,y,obj_z224)
    fire = 240;
if place_meeting(x,y,obj_z240)
    fire = 256;
if place_meeting(x,y,obj_z256)
    fire = 272;
if place_meeting(x,y,obj_h16)
    fire = 32;
if place_meeting(x,y,obj_h32)
    fire = 48;
if place_meeting(x,y,obj_h48)
    fire = 64;
if place_meeting(x,y,obj_h64)
    fire = 80;
if place_meeting(x,y,obj_h80)
    fire = 96;
if place_meeting(x,y,obj_h96)
    fire = 112;
if place_meeting(x,y,obj_h112)
    fire = 128;
if place_meeting(x,y,obj_h128)
    fire = 144;
if place_meeting(x,y,obj_h144)
    fire = 160;
if place_meeting(x,y,obj_h160)
    fire = 176;
if place_meeting(x,y,obj_h176)
    fire = 192;
if place_meeting(x,y,obj_h192)
    fire = 208;
if place_meeting(x,y,obj_h208)
    fire = 224;
if place_meeting(x,y,obj_h224)
    fire = 240;
if place_meeting(x,y,obj_h240)
    fire = 256;
if place_meeting(x,y,obj_h256)
    fire = 272;
if instance_exists(obj_fire)
{
    if place_meeting(x,y-fire,obj_fire) && global.fire = 1
    {
        sprite_index = spr_torch_2;
        image_speed = 0.6;
    }
}


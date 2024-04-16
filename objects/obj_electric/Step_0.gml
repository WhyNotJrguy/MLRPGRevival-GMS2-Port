if place_meeting(x,y,obj_z16)
    thunder = 32;
if place_meeting(x,y,obj_z32)
    thunder = 48;
if place_meeting(x,y,obj_z48)
    thunder = 64;
if place_meeting(x,y,obj_z64)
    thunder = 80;
if place_meeting(x,y,obj_z80)
    thunder = 96;
if place_meeting(x,y,obj_z96)
    thunder = 112;
if place_meeting(x,y,obj_z112)
    thunder = 128;
if place_meeting(x,y,obj_z128)
    thunder = 144;
if place_meeting(x,y,obj_z144)
    thunder = 160;
if place_meeting(x,y,obj_z160)
    thunder = 176;
if place_meeting(x,y,obj_z176)
    thunder = 192;
if place_meeting(x,y,obj_z192)
    thunder = 208;
if place_meeting(x,y,obj_z208)
    thunder = 224;
if place_meeting(x,y,obj_z224)
    thunder = 240;
if place_meeting(x,y,obj_z240)
    thunder = 256;
if place_meeting(x,y,obj_z256)
    thunder = 272;
if place_meeting(x,y,obj_h16)
    thunder = 32;
if place_meeting(x,y,obj_h32)
    thunder = 48;
if place_meeting(x,y,obj_h48)
    thunder = 64;
if place_meeting(x,y,obj_h64)
    thunder = 80;
if place_meeting(x,y,obj_h80)
    thunder = 96;
if place_meeting(x,y,obj_h96)
    thunder = 112;
if place_meeting(x,y,obj_h112)
    thunder = 128;
if place_meeting(x,y,obj_h128)
    thunder = 144;
if place_meeting(x,y,obj_h144)
    thunder = 160;
if place_meeting(x,y,obj_h160)
    thunder = 176;
if place_meeting(x,y,obj_h176)
    thunder = 192;
if place_meeting(x,y,obj_h192)
    thunder = 208;
if place_meeting(x,y,obj_h208)
    thunder = 224;
if place_meeting(x,y,obj_h224)
    thunder = 240;
if place_meeting(x,y,obj_h240)
    thunder = 256;
if place_meeting(x,y,obj_h256)
    thunder = 272;
if instance_exists(obj_thunder)
{
    if place_meeting(x,y-thunder,obj_thunder) && global.thunder = 1
    {
        sprite_index = spr_electrocute_2;
        image_speed = 0.6;
    }
}


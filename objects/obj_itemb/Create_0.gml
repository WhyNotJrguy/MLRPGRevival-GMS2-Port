//Item used in battle
if global.turn = 0 //Mario is getting the item
{
    if obj_mariob.itemid = 0 //Mushroom
        image_single = 0;
    if obj_mariob.itemid = 1 //Super Mushroom
        image_single = 1;
    if obj_mariob.itemid = 2 //Ultra Mushroom
        image_single = 2;
    if obj_mariob.itemid = 3 //Max Mushroom
        image_single = 3;
    if obj_mariob.itemid = 4 //Nut
        image_single = 4;
    if obj_mariob.itemid = 5 //Super Nut
        image_single = 5;
    if obj_mariob.itemid = 6 //Ultra Nut
        image_single = 6;
    if obj_mariob.itemid = 7 //Max Nut
        image_single = 7;
    if obj_mariob.itemid = 8 //Star Candy
        image_single = 8;     
    if obj_mariob.itemid = 9 //Syrup
        image_single = 9;   
    if obj_mariob.itemid = 10 //Super Syrup
        image_single = 10;   
    if obj_mariob.itemid = 11 //Ultra Syrup
        image_single = 11;   
    if obj_mariob.itemid = 12 //Max Syrup
        image_single = 12;   
    if obj_mariob.itemid = 13 //1-Up Mushroom
        image_single = 13;    
    if obj_mariob.itemid = 14 //1-Up Super
        image_single = 14;     
    if obj_mariob.itemid = 15 //Refreshing Herb
        image_single = 15;  
    if obj_mariob.itemid = 16 //Red Pepper
        image_single = 16; 
    if obj_mariob.itemid = 17 //Green Pepper
        image_single = 17; 
    if obj_mariob.itemid = 18 //Boo Biscuit
        image_single = 18; 
    if obj_mariob.itemid = 19 //Retry Clock
        image_single = 19; 
}
else if global.turn = 1 //Luigi is getting the item
{
    if obj_luigib.itemid = 0 //Mushroom
        image_single = 0;
    if obj_luigib.itemid = 1 //Super Mushroom
        image_single = 1;
    if obj_luigib.itemid = 2 //Ultra Mushroom
        image_single = 2;
    if obj_luigib.itemid = 3 //Max Mushroom
        image_single = 3;
    if obj_luigib.itemid = 4 //Nut
        image_single = 4;
    if obj_luigib.itemid = 5 //Super Nut
        image_single = 5;
    if obj_luigib.itemid = 6 //Ultra Nut
        image_single = 6;
    if obj_luigib.itemid = 7 //Max Nut
        image_single = 7;
    if obj_luigib.itemid = 8 //Star Candy
        image_single = 8;     
    if obj_luigib.itemid = 9 //Syrup
        image_single = 9;   
    if obj_luigib.itemid = 10 //Super Syrup
        image_single = 10;   
    if obj_luigib.itemid = 11 //Ultra Syrup
        image_single = 11;   
    if obj_luigib.itemid = 12 //Max Syrup
        image_single = 12;   
    if obj_luigib.itemid = 13 //1-Up Mushroom
        image_single = 13;    
    if obj_luigib.itemid = 14 //1-Up Super
        image_single = 14;     
    if obj_luigib.itemid = 15 //Refreshing Herb
        image_single = 15;  
    if obj_luigib.itemid = 16 //Red Pepper
        image_single = 16; 
    if obj_luigib.itemid = 17 //Green Pepper
        image_single = 17; 
    if obj_luigib.itemid = 18 //Boo Biscuit
        image_single = 18; 
    if obj_luigib.itemid = 19 //Retry Clock
        image_single = 19; 
}

//Grow item
image_xscale = 0;
image_yscale = 0;
alarm[0] = 50;

z = 0;
ground = 1;
zspeed = 0;
zgravity = -1;
zgravityon = 0;
falling = 0;
amount = 0;
ID = 0;


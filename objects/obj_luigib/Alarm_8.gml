//Bros Attacks Selection
if battleblock = 1
{
    //Subtract BP
    if movechoose = 1 //or Green Shells
        global.LBP -= 4;
    if movechoose = 2 //or Fire Flower
        global.LBP -= 6;
    if movechoose = 3 //or Jump Helmet
        global.LBP -= 10;
    if movechoose = 4 //or Broken Heart
        global.LBP -= 14;
    //Take out Bros Attack Item
    moveto = 5;
    phase = 5;
    image_index = 0;
    sprite_index = spr_luigibtakeout;
    ID = instance_create(x+20,y-24,obj_brosattack);
    with ID attacknum = attacknum;
}
else
{
    //Item Index 
    if pagenext = 1
        itemid = 0;
    else if pagenext = 2
        itemid = 1;
    else if pagenext = 3
        itemid = 2;
    else if pagenext = 4
        itemid = 3;
    else if pagenext = 5
        itemid = 4;
    else if pagenext = 6
        itemid = 5;
    else if pagenext = 7
        itemid = 6;
    else if pagenext = 8
        itemid = 7;
    else if pagenext = 9
        itemid = 8;
    else if pagenext = 10
        itemid = 9;
    else if pagenext = 11
        itemid = 10;
    else if pagenext = 12
        itemid = 11;
    else if pagenext = 13
        itemid = 12;
    else if pagenext = 14
        itemid = 13;
    else if pagenext = 15
        itemid = 14;
    else if pagenext = 16
        itemid = 15;
    else if pagenext = 17
        itemid = 16;
    else if pagenext = 18
        itemid = 17;
    else if pagenext = 19
        itemid = 18;
    else if pagenext = 20
        itemid = 19;
    //Item Selection
    moveto = 6;
    phase = 5;
    image_index = 0;
    sprite_index = spr_luigibtakeout;
    instance_create(x+20,y-32,obj_itemb);
}

/*Item Selection
if battleblock = 3
{
    /*
    moveto = 6;
    phase = 5;
    image_index = 0;
    sprite_index = spr_luigibtakeout;
    instance_create(x+20,y-32,obj_itemb);
    */
    /*Item Index 
    if movechoose = 1 && page = 1 //Slot 1/5 on Page 1/4
    {
        //Mushroom
        if itemindex[page,0] = true 
            itemid = 0;
        //Super Mushroom
        else if itemindex[page,1] = true 
            itemid = 1;
        //Ultra Mushroom
        else if itemindex[page,2] = true 
            itemid = 2;
        //Max Mushroom
        else if itemindex[page,3] = true 
            itemid = 3;
        //Nut
        else if itemindex[page,4] = true 
            itemid = 4;
        //Super Nut
        else if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 2 && page = 1 //Slot 2/5 on Page 1/4
    {
        //Super Mushroom
        if itemindex[page,1] = true 
            itemid = 1;
        //Ultra Mushroom
        else if itemindex[page,2] = true 
            itemid = 2;
        //Max Mushroom
        else if itemindex[page,3] = true 
            itemid = 3;
        //Nut
        else if itemindex[page,4] = true 
            itemid = 4;
        //Super Nut
        else if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 3 && page = 1 //Slot 3/5 on Page 1/4
    {
        //Ultra Mushroom
        if itemindex[page,2] = true 
            itemid = 2;
        //Max Mushroom
        else if itemindex[page,3] = true 
            itemid = 3;
        //Nut
        else if itemindex[page,4] = true 
            itemid = 4;
        //Super Nut
        else if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 4 && page = 1 //Slot 4/5 on Page 1/4
    {
        //Max Mushroom
        if itemindex[page,3] = true 
            itemid = 3;
        //Nut
        else if itemindex[page,4] = true 
            itemid = 4;
        //Super Nut
        else if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 5 && page = 1 //Slot 5/5 on Page 1/4
    {
        //Nut
        if itemindex[page,4] = true 
            itemid = 4;
        //Super Nut
        else if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 1 && page = 2 //Slot 1/5 on Page 2/4
    {
        //Super Nut
        if itemindex[page,5] = true 
            itemid = 5;
        //Ultra Nut
        else if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 2 && page = 2 //Slot 2/5 on Page 2/4
    {
        //Ultra Nut
        if itemindex[page,6] = true 
            itemid = 6;
        //Max Nut
        else if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 3 && page = 2 //Slot 3/5 on Page 2/4
    {
        //Max Nut
        if itemindex[page,7] = true 
            itemid = 7;
        //Star Candy
        else if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 4 && page = 2 //Slot 4/5 on Page 2/4
    {
        //Star Candy
        if itemindex[page,8] = true 
            itemid = 8;
        //Syrup
        else if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 5 && page = 2 //Slot 5/5 on Page 2/4
    {
        //Syrup
        if itemindex[page,9] = true 
            itemid = 9;
        //Super Syrup
        else if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 1 && page = 3 //Slot 1/5 on Page 3/4
    {
        //Super Syrup
        if itemindex[page,10] = true 
            itemid = 10;
        //Ultra Syrup
        else if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 2 && page = 3 //Slot 2/5 on Page 3/4
    {
        //Ultra Syrup
        if itemindex[page,11] = true 
            itemid = 11;
        //Max Syrup
        else if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 3 && page = 3 //Slot 3/5 on Page 3/4
    {
        //Max Syrup
        if itemindex[page,12] = true 
            itemid = 12;
        //1-Up Mushroom
        else if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 4 && page = 3 //Slot 4/5 on Page 3/4
    {
        //1-Up Mushroom
        if itemindex[page,13] = true 
            itemid = 13;
        //1-Up Super
        else if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 5 && page = 3 //Slot 5/5 on Page 3/4
    {
        //1-Up Super
        if itemindex[page,14] = true 
            itemid = 14;
        //Refreshing Herb
        else if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 1 && page = 4 //Slot 1/5 on Page 4/4
    {
        //Refreshing Herb
        if itemindex[page,15] = true 
            itemid = 15;
        //Red Pepper
        else if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 2 && page = 4 //Slot 2/5 on Page 4/4
    {
        //Red Pepper
        if itemindex[page,16] = true 
            itemid = 16;
        //Green Pepper
        else if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 3 && page = 4 //Slot 3/5 on Page 4/4
    {
        //Green Pepper
        if itemindex[page,17] = true 
            itemid = 17;
        //Boo Biscuit
        else if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 4 && page = 4 //Slot 4/5 on Page 4/4
    {
        //Boo Biscuit
        if itemindex[page,18] = true 
            itemid = 18;
        //Retry Clock
        else if itemindex[page,19] = true 
            itemid = 19;
    }
    else if movechoose = 5 && page = 4 //Slot 5/5 on Page 4/4
    {
        //Retry Clock
        if itemindex[page,19] = true 
            itemid = 19;
    }
    else
        itemid = 0; //Fail safe
        
    //show_message("itemid = " + string(itemid)); //for now (DEBUG)

}
/*Bros Attacks Selection
else if battleblock = 1
{
    //Subtract BP
    if movechoose = 1 //or Green Shells
        global.LBP -= 4;
    if movechoose = 2 //or Fire Flower
        global.LBP -= 6;
    if movechoose = 3 //or Jump Helmet
        global.LBP -= 10;
    if movechoose = 4 //or Broken Heart
        global.LBP -= 14;
    //Take out Bros Attack Item
    moveto = 5;
    phase = 5;
    image_index = 0;
    sprite_index = spr_luigibtakeout;
    ID = instance_create(x+20,y-24,obj_brosattack);
    with ID attacknum = attacknum;
}

/* */
/*  */

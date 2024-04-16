//Draw Item Selection
draw_sprite(spr_text_box_3,0,x+164,y-84);
draw_sprite(spr_mariochoose2,-1,x+164,y-100+(20*movechoose));
//Page 1
if page = 1
{
    draw_set_color(c_white);
    draw_set_font(fnt_items);
    draw_set_halign(fa_left);
    //Mushrooms
    if global.mushrooms > 0
    {
        draw_sprite_ext(spr_items,0,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Mushrooms"));
        if global.mushrooms < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.mushrooms,1,0.75,0.75,0,c_yellow,1);
        else if global.mushrooms < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.mushrooms,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,0] = true;
    }
    //Super Mushrooms
    if global.supermushrooms > 0
    {
        draw_sprite_ext(spr_items,1,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Mushrooms"));
        if global.supermushrooms < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supermushrooms,1,0.75,0.75,0,c_yellow,1);
        else if global.supermushrooms < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supermushrooms,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,1] = true;
    }
    //Ultra Mushrooms
    if global.ultramushrooms > 0
    {
        draw_sprite_ext(spr_items,2,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Mushrooms"));
        if global.ultramushrooms < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultramushrooms,1,0.75,0.75,0,c_yellow,1);
        else if global.ultramushrooms < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultramushrooms,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,2] = true;
    }   
    //Max Mushrooms
    if global.maxmushrooms > 0
    {
        draw_sprite_ext(spr_items,3,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Mushrooms"));
        if global.maxmushrooms < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxmushrooms,1,0.75,0.75,0,c_yellow,1);
        else if global.maxmushrooms < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxmushrooms,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,3] = true;
    }
    //Nuts
    if global.nuts > 0
    {
        draw_sprite_ext(spr_items,4,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Nuts"));
        if global.nuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.nuts,1,0.75,0.75,0,c_yellow,1);
        else if global.nuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.nuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,4] = true;
    }
    //Super Nuts
    if global.supernuts > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,5,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Nuts"));
        if global.supernuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supernuts,1,0.75,0.75,0,c_yellow,1);
        else if global.supernuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supernuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,5] = true;
    }
    //Ultra Nuts
    if global.ultranuts > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,6,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Nuts"));
        if global.ultranuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultranuts,1,0.75,0.75,0,c_yellow,1);
        else if global.ultranuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultranuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,6] = true;
    }
    //Max Nuts
    if global.maxnuts > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,7,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Nuts"));
        if global.maxnuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxnuts,1,0.75,0.75,0,c_yellow,1);
        else if global.maxnuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxnuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,7] = true;
    }
    //Star Candies
    if global.starcandies > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,8,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Star Candies"));
        if global.starcandies < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.starcandies,1,0.75,0.75,0,c_yellow,1);
        else if global.starcandies < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.starcandies,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,8] = true;
    }
    //Syrups
    if global.syrups > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,9,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Syrups"));
        if global.syrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.syrups,1,0.75,0.75,0,c_yellow,1);
        else if global.syrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.syrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;   
        itemnum += 1;
        itemindex[1,9] = true;
    }
    //Super Syrups
    if global.supersyrups > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,10,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Syrups"));
        if global.supersyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supersyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.supersyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supersyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,10] = true;
    }
    //Ultra Syrups
    if global.ultrasyrups > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,11,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Syrups"));
        if global.ultrasyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultrasyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.ultrasyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultrasyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,11] = true;
    }   
    //Max Syrups
    if global.maxsyrups > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,12,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Syrups"));
        if global.maxsyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxsyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.maxsyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxsyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,12] = true;
    }
    //1-Up Mushrooms    
    if global.oneups > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,13,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Mushrooms"));
        if global.oneups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneups,1,0.75,0.75,0,c_yellow,1);
        else if global.oneups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,13] = true;
    }
    //1-Up Supers 
    if global.oneupsupers > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,14,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Supers"));
        if global.oneupsupers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneupsupers,1,0.75,0.75,0,c_yellow,1);
        else if global.oneupsupers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneupsupers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,14] = true;
    }  
    //Refreshing Herbs
    if global.herbs > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,15,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Refreshing Herbs"));
        if global.herbs < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.herbs,1,0.75,0.75,0,c_yellow,1);
        else if global.herbs < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.herbs,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,15] = true;
    }
    //Red Peppers
    if global.redpeppers > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,16,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Red Peppers"));
        if global.redpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.redpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.redpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.redpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,16] = true;
    }    
    //Green Peppers 
    if global.greenpeppers > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,17,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Green Peppers"));
        if global.greenpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.greenpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.greenpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.greenpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,17] = true;
    }    
    //Boo Biscuits
    if global.boobiscuits > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,18,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Boo Biscuits"));
        if global.boobiscuits < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.boobiscuits,1,0.75,0.75,0,c_yellow,1);
        else if global.boobiscuits < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.boobiscuits,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,18] = true;
    }
    //Retry Clocks
    if global.retryclocks > 0 && itemnum < 5
    {
        draw_sprite_ext(spr_items,19,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Retry Clocks"));
        if global.retryclocks < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.retryclocks,1,0.75,0.75,0,c_yellow,1);
        else if global.retryclocks < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.retryclocks,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[1,19] = true;
    }    
}
//Page 2
if page = 2
{
    draw_set_color(c_white);
    draw_set_font(fnt_items);
    draw_set_halign(fa_left);
    //Super Nuts
    if global.supernuts > 0 && itemindex[1,5] = false
    {
        draw_sprite_ext(spr_items,5,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Nuts"));
        if global.supernuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supernuts,1,0.75,0.75,0,c_yellow,1);
        else if global.supernuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supernuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,5] = true;
    }
    //Ultra Nuts
    if global.ultranuts > 0 && itemindex[1,6] = false
    {
        draw_sprite_ext(spr_items,6,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Nuts"));
        if global.ultranuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultranuts,1,0.75,0.75,0,c_yellow,1);
        else if global.ultranuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultranuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,6] = true;
    }
    //Max Nuts
    if global.maxnuts > 0 && itemindex[1,7] = false
    {
        draw_sprite_ext(spr_items,7,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Nuts"));
        if global.maxnuts < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxnuts,1,0.75,0.75,0,c_yellow,1);
        else if global.maxnuts < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxnuts,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,7] = true;
    }
    //Star Candies
    if global.starcandies > 0 && itemindex[1,8] = false
    {
        draw_sprite_ext(spr_items,8,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Star Candies"));
        if global.starcandies < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.starcandies,1,0.75,0.75,0,c_yellow,1);
        else if global.starcandies < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.starcandies,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,8] = true;
    }
    //Syrups
    if global.syrups > 0 && itemindex[1,9] = false
    {
        draw_sprite_ext(spr_items,9,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Syrups"));
        if global.syrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.syrups,1,0.75,0.75,0,c_yellow,1);
        else if global.syrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.syrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1; 
        itemnum += 1;
        itemindex[2,9] = true;  
    }
    //Super Syrups
    if global.supersyrups > 0 && itemnum < 10 && itemindex[1,10] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,10,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Syrups"));
        if global.supersyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supersyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.supersyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supersyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,10] = true;
    }
    //Ultra Syrups
    if global.ultrasyrups > 0 && itemnum < 10 && itemindex[1,11] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,11,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Syrups"));
        if global.ultrasyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultrasyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.ultrasyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultrasyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,11] = true;
    }   
    //Max Syrups
    if global.maxsyrups > 0 && itemnum < 10 && itemindex[1,12] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,12,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Syrups"));
        if global.maxsyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxsyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.maxsyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxsyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,12] = true;
    }
    //1-Up Mushrooms    
    if global.oneups > 0 && itemnum < 10 && itemindex[1,13] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,13,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Mushrooms"));
        if global.oneups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneups,1,0.75,0.75,0,c_yellow,1);
        else if global.oneups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,13] = true;
    }
    //1-Up Supers 
    if global.oneupsupers > 0 && itemnum < 10 && itemindex[1,14] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,14,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Supers"));
        if global.oneupsupers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneupsupers,1,0.75,0.75,0,c_yellow,1);
        else if global.oneupsupers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneupsupers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,14] = true;
    }  
    //Refreshing Herbs
    if global.herbs > 0 && itemnum < 10 && itemindex[1,15] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,15,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Refreshing Herbs"));
        if global.herbs < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.herbs,1,0.75,0.75,0,c_yellow,1);
        else if global.herbs < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.herbs,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,15] = true;
    }
    //Red Peppers
    if global.redpeppers > 0 && itemnum < 10 && itemindex[1,16] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,16,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Red Peppers"));
        if global.redpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.redpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.redpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.redpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,16] = true;
    }    
    //Green Peppers 
    if global.greenpeppers > 0 && itemnum < 10 && itemindex[1,17] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,17,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Green Peppers"));
        if global.greenpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.greenpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.greenpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.greenpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,17] = true;
    }    
    //Boo Biscuits
    if global.boobiscuits > 0 && itemnum < 10 && itemindex[1,18] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,18,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Boo Biscuits"));
        if global.boobiscuits < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.boobiscuits,1,0.75,0.75,0,c_yellow,1);
        else if global.boobiscuits < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.boobiscuits,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,18] = true;
    }
    //Retry Clocks
    if global.retryclocks > 0 && itemnum < 10 && itemindex[1,19] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,19,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Retry Clocks"));
        if global.retryclocks < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.retryclocks,1,0.75,0.75,0,c_yellow,1);
        else if global.retryclocks < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.retryclocks,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[2,19] = true;
    }    
}
//Page 3
if page = 3
{
    draw_set_color(c_white);
    draw_set_font(fnt_items);
    draw_set_halign(fa_left);
    //Super Syrups
    if global.supersyrups > 0 && itemindex[1,10] = false && itemindex[2,10] = false
    {
        draw_sprite_ext(spr_items,10,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Super Syrups"));
        if global.supersyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.supersyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.supersyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.supersyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,10] = true;
    }
    //Ultra Syrups
    if global.ultrasyrups > 0 && itemindex[1,11] = false && itemindex[2,11] = false
    {
        draw_sprite_ext(spr_items,11,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Ultra Syrups"));
        if global.ultrasyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.ultrasyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.ultrasyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.ultrasyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,11] = true;
    }   
    //Max Syrups
    if global.maxsyrups > 0 && itemindex[1,12] = false && itemindex[2,12] = false
    {
        draw_sprite_ext(spr_items,12,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Max Syrups"));
        if global.maxsyrups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.maxsyrups,1,0.75,0.75,0,c_yellow,1);
        else if global.maxsyrups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.maxsyrups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,12] = true;
    }
    //1-Up Mushrooms    
    if global.oneups > 0 && itemindex[1,13] = false && itemindex[2,13] = false
    {
        draw_sprite_ext(spr_items,13,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Mushrooms"));
        if global.oneups < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneups,1,0.75,0.75,0,c_yellow,1);
        else if global.oneups < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneups,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,13] = true;
    }
    //1-Up Supers 
    if global.oneupsupers > 0 && itemindex[1,14] = false && itemindex[2,14] = false
    {
        draw_sprite_ext(spr_items,14,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("1-Up Supers"));
        if global.oneupsupers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.oneupsupers,1,0.75,0.75,0,c_yellow,1);
        else if global.oneupsupers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.oneupsupers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,14] = true;
    }  
    //Refreshing Herbs
    if global.herbs > 0 && itemnum < 15 && itemindex[1,15] = false && itemindex[2,15] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,15,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Refreshing Herbs"));
        if global.herbs < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.herbs,1,0.75,0.75,0,c_yellow,1);
        else if global.herbs < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.herbs,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,15] = true;
    }
    //Red Peppers
    if global.redpeppers > 0 && itemnum < 15 && itemindex[1,16] = false && itemindex[2,16] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,16,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Red Peppers"));
        if global.redpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.redpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.redpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.redpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,16] = true;
    }    
    //Green Peppers 
    if global.greenpeppers > 0 && itemnum < 15 && itemindex[1,17] = false && itemindex[2,17] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,17,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Green Peppers"));
        if global.greenpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.greenpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.greenpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.greenpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,17] = true;
    }    
    //Boo Biscuits
    if global.boobiscuits > 0 && itemnum < 15 && itemindex[1,18] = false && itemindex[2,18] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,18,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Boo Biscuits"));
        if global.boobiscuits < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.boobiscuits,1,0.75,0.75,0,c_yellow,1);
        else if global.boobiscuits < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.boobiscuits,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,18] = true;
    }
    //Retry Clocks
    if global.retryclocks > 0 && itemnum < 15 && itemindex[1,19] = false && itemindex[2,19] = false && drawat < 5
    {
        draw_sprite_ext(spr_items,19,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Retry Clocks"));
        if global.retryclocks < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.retryclocks,1,0.75,0.75,0,c_yellow,1);
        else if global.retryclocks < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.retryclocks,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
        itemindex[3,19] = true;
    }
}
//Page 4
if page = 4
{
    draw_set_color(c_white);
    draw_set_font(fnt_items);
    draw_set_halign(fa_left);
    //Refreshing Herbs
    if global.herbs > 0 && itemindex[1,15] = false && itemindex[2,15] = false && itemindex[3,15] = false
    {
        draw_sprite_ext(spr_items,15,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Refreshing Herbs"));
        if global.herbs < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.herbs,1,0.75,0.75,0,c_yellow,1);
        else if global.herbs < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.herbs,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
    }
    //Red Peppers
    if global.redpeppers > 0 && itemindex[1,16] = false && itemindex[2,16] = false && itemindex[3,16] = false
    {
        draw_sprite_ext(spr_items,16,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Red Peppers"));
        if global.redpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.redpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.redpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.redpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
    }    
    //Green Peppers 
    if global.greenpeppers > 0 && itemindex[1,17] = false && itemindex[2,17] = false && itemindex[3,17] = false
    {
        draw_sprite_ext(spr_items,17,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Green Peppers"));
        if global.greenpeppers < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.greenpeppers,1,0.75,0.75,0,c_yellow,1);
        else if global.greenpeppers < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.greenpeppers,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
    }    
    //Boo Biscuits
    if global.boobiscuits > 0 && itemindex[1,18] = false && itemindex[2,18] = false && itemindex[3,18] = false
    {
        draw_sprite_ext(spr_items,18,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Boo Biscuits"));
        if global.boobiscuits < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.boobiscuits,1,0.75,0.75,0,c_yellow,1);
        else if global.boobiscuits < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.boobiscuits,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
    }
    //Retry Clocks
    if global.retryclocks > 0 && itemindex[1,19] = false && itemindex[2,19] = false && itemindex[3,19] = false
    {
        draw_sprite_ext(spr_items,19,x+158,y-84+(20*drawat),0.75,0.75,0,-1,1); //Draw item
        draw_text(x+181,y-84+(20*drawat),string_hash_to_newline("Retry Clocks"));
        if global.retryclocks < 10
            scr_draw_numbers_empty(x+314,y-82+(20*drawat),global.retryclocks,1,0.75,0.75,0,c_yellow,1);
        else if global.retryclocks < 100
            scr_draw_numbers_empty(x+308,y-82+(20*drawat),global.retryclocks,2,0.75,0.75,0,c_yellow,1);
        drawat += 1;
        itemnum += 1;
    }
}

draw_sprite(spr_uparrow,-1,x+241,y-100);
draw_sprite(spr_downarrow,-1,x+241,y+18);


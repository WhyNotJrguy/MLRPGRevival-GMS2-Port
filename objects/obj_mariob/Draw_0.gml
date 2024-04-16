//draw_sprite(mask_index,image_index,x,y); //For debugging

//Draw shadow
if ground = 0
{
    if z < 10
        draw_sprite(spr_shadow1,image_index,x,y);
    if z >= 10 && z < 20
        draw_sprite(spr_shadow2,image_index,x,y);
    if z >= 20
        draw_sprite(spr_shadow3,image_index,x,y);
}
/*if ground = 1
    draw_sprite(spr_shadow2,image_index,x,y-2);*/
    
//Draw Battle Block Shadows
if global.turn = 0 && phase = 1 or phase = 2
{
    draw_sprite_ext(spr_battleblock_shadow,1,x,y+8,1,1,0,-1,1);
    draw_sprite_ext(spr_battleblock_shadow,-1,x,y-24,0.75,0.75,0,-1,1);
    draw_sprite_ext(spr_battleblock_shadow,1,x-32,y-8,0.85,0.85,0,-1,1);
    draw_sprite_ext(spr_battleblock_shadow,1,x+32,y-8,0.85,0.85,0,-1,1);
}

//Draw Mario without moving his mask
draw_sprite(sprite_index,image_index,x,y-z);
    
//Draws Battle Blocks
if global.turn = 0 && phase = 1 or phase = 2
{
    if battleblock = 0 //Solo Block
    {
        if global.runaway = 0
            draw_sprite_ext(spr_runblock2,0,x,y-83,0.75,0.75,0,-1,1);
        else
            draw_sprite_ext(spr_runblock,0,x,y-83,0.75,0.75,0,-1,1);
        if phase = 1
            draw_sprite(spr_soloblock,-1,x,y-67); //Solo
        else if phase = 2
        {
            if movechoose = 1
                draw_sprite(spr_jumpblock,-1,x,y-67); //Jump
            else if movechoose = 2
                draw_sprite(spr_hammerblock,-1,x,y-67); //Hammer
            else if movechoose = 3
                draw_sprite(spr_handblock,-1,x,y-67); //Hand
        }
        if itemdifmax = 0
            draw_sprite_ext(spr_itemblock2,0,x-32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_itemblock,0,x-32,y-72,0.85,0.85,0,-1,1);
        if brositemdifmax = 0 or global.MBP < 4 or global.Ldead > 0
            draw_sprite_ext(spr_brosblock2,0,x+32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_brosblock,0,x+32,y-72,0.85,0.85,0,-1,1);
    }
    if battleblock = 1 //Bros Block
    {
        if itemdifmax = 0
            draw_sprite_ext(spr_itemblock2,0,x,y-83,0.75,0.75,0,-1,1);
        else
            draw_sprite_ext(spr_itemblock,0,x,y-83,0.75,0.75,0,-1,1);
        if brositemdifmax = 0 or global.MBP < 4 or global.Ldead > 0
            draw_sprite(spr_brosblock2,-1,x,y-67); //Bros
        else
            draw_sprite(spr_brosblock,-1,x,y-67); //Bros
        draw_sprite_ext(spr_soloblock,0,x-32,y-72,0.85,0.85,0,-1,1);
        if global.runaway = 0
            draw_sprite_ext(spr_runblock2,0,x+32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_runblock,0,x+32,y-72,0.85,0.85,0,-1,1);
    }
    if battleblock = 2 //Run Block
    {
        draw_sprite_ext(spr_soloblock,0,x,y-83,0.75,0.75,0,-1,1);
        if global.runaway = 0
            draw_sprite(spr_runblock2,-1,x,y-67);
        else
            draw_sprite(spr_runblock,-1,x,y-67); //Run
        if brositemdifmax = 0 or global.MBP < 4 or global.Ldead > 0
            draw_sprite_ext(spr_brosblock2,0,x-32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_brosblock,0,x-32,y-72,0.85,0.85,0,-1,1);
        if itemdifmax = 0
            draw_sprite_ext(spr_itemblock2,0,x+32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_itemblock,0,x+32,y-72,0.85,0.85,0,-1,1);
    }
    if battleblock = 3 //Item Block
    {
        if brositemdifmax = 0 or global.MBP < 4 or global.Ldead > 0
            draw_sprite_ext(spr_brosblock2,0,x,y-83,0.75,0.75,0,-1,1);
        else
            draw_sprite_ext(spr_brosblock,0,x,y-83,0.75,0.75,0,-1,1);
        if itemdifmax = 0
            draw_sprite(spr_itemblock2,-1,x,y-67);
        else
            draw_sprite(spr_itemblock,-1,x,y-67); //Item
        if global.runaway = 0
            draw_sprite_ext(spr_runblock2,0,x-32,y-72,0.85,0.85,0,-1,1);
        else
            draw_sprite_ext(spr_runblock,0,x-32,y-72,0.85,0.85,0,-1,1);
        draw_sprite_ext(spr_soloblock,0,x+32,y-72,0.85,0.85,0,-1,1);
    }
}

if global.turn = 0 && phase = 3
{
    if targetchoose = 0
        draw_sprite(spr_back1,0,0,8);
    if targetchoose < 0
        draw_sprite(spr_back2,0,0,8);
}

if global.turn = 1
    phase = 0;
if global.turn = 2
{
    if stance = 4
        phase = -2;
    else
        phase = -1;
}

//Create Fireball
if sprite_index = spr_mariobhandstrikestart
    draw_sprite(spr_fireballb,-1,x+20,y-20);
    
//Draws the A symbol
if phase = 1
    draw_sprite(spr_mariochoose,-1,x-12,y-32);

draw_set_font(Mario_font);
draw_set_halign(fa_right);
draw_set_color(c_white);

//Draws second phase choices
if phase = 2
{
    //if someone has an easier way to do this, then change it and send me the file via email
    drawat = 0;
    itemnum = 0;
    //Solo
    if battleblock = 0
    {
        draw_sprite(spr_text_box_2,0,x+64,y-40);
        draw_sprite(spr_mariochoose2,-1,x+64,y-56+(16*movechoose));
        drawat = solonum;
        //itemnum = solonum;
        if solonum > 0
            draw_sprite(spr_jumpcommand,0,x+112,y-30);
        if solonum > 1
            draw_sprite(spr_hammercommand,0,x+112,y-16);
        if solonum > 2
            draw_sprite(spr_handcommand,0,x+112,y);
    }
    //Bros
    if battleblock = 1
    {
        draw_sprite(spr_text_box_4,0,x+64,y-44-24); //Bros Attacks HUD
        //draw_sprite(spr_button_help,0,x+68,y+66-12); //Bros Attacks HELP Button
        //draw_sprite(spr_button_practice,0,x+168,y+66-12); //Bros Attacks PRACTICE Button
        draw_sprite(spr_mariochoose2,-1,x+64,y-64-24+(23*movechoose)); //Selector
        
        draw_set_font(fnt_items);
        draw_set_halign(fa_left);
        draw_set_color(c_white);
        
        drawat = brositemdifmax;
        if brositemdifmax > 0 //Green Shells
        {
            if global.MBP >= 4
            {
                draw_text_transformed(x+92,y-40-24+(23*0),string_hash_to_newline("Green Shell"),0.75,0.75,0);
                draw_sprite_ext(spr_brositems,0,x+64,y-44-24,0.75,0.75,0,-1,1);
                scr_draw_numbers_empty_blue(x+212,y-40-24,4,2,0.75,0.75,0,c_white,1); //Cost of 4 BP
            }
            else
            {
                draw_text_transformed_colour(x+92,y-40-24+(23*0),string_hash_to_newline("Green Shell"),0.75,0.75,0,c_gray,c_gray,c_gray,c_gray,1);
                draw_sprite_ext(spr_brositems,0,x+64,y-44-24,0.75,0.75,0,c_gray,1);
                scr_draw_numbers_empty_blue(x+212,y-40-24,4,2,0.75,0.75,0,c_gray,1); //Not enough BP
            }
        }
        if brositemdifmax > 1 //Fire Flowers
        {
            if global.MBP >= 6
            {
                draw_text_transformed(x+92,y-40-24+(23*1),string_hash_to_newline("Fire Flower"),0.75,0.75,0);
                draw_sprite_ext(spr_brositems,1,x+64,y-22-24,0.75,0.75,0,-1,1);
                scr_draw_numbers_empty_blue(x+212,y-18-24,6,2,0.75,0.75,0,c_white,1); //Cost of 6 BP
            }
            else
            {
                draw_text_transformed_colour(x+92,y-40-24+(23*1),string_hash_to_newline("Fire Flower"),0.75,0.75,0,c_gray,c_gray,c_gray,c_gray,1);
                draw_sprite_ext(spr_brositems,1,x+64,y-22-24,0.75,0.75,0,c_gray,1);
                scr_draw_numbers_empty_blue(x+212,y-18-24,6,2,0.75,0.75,0,c_gray,1); //Not enough BP
            }
        }
        if brositemdifmax > 2 //Jump Helmets
        {
            if global.MBP >= 10
            {
                draw_text_transformed(x+92,y-40-24+(23*2),string_hash_to_newline("Jump Helmet"),0.75,0.75,0);
                draw_sprite_ext(spr_brositems,2,x+64,y+2-24,0.75,0.75,0,-1,1);
                scr_draw_numbers_empty_blue(x+212,y+4-24,10,2,0.75,0.75,0,c_white,1); //Cost of 10 BP
            }
            else
            {
                draw_text_transformed_colour(x+92,y-40-24+(23*2),string_hash_to_newline("Fire Flower"),0.75,0.75,0,c_gray,c_gray,c_gray,c_gray,1);
                draw_sprite_ext(spr_brositems,2,x+64,y+2-24,0.75,0.75,0,c_gray,1);
                scr_draw_numbers_empty_blue(x+212,y+4-24,10,2,0.75,0.75,0,c_gray,1); //Not enough BP
            }
        }
        if brositemdifmax > 3 //Broken Hearts
        {
            if global.MBP >= 14
            {
                draw_text_transformed(x+92,y-40-24+(23*3),string_hash_to_newline("Broken Heart"),0.75,0.75,0);
                draw_sprite_ext(spr_brositems,3,x+64,y+24-24,0.75,0.75,0,-1,1);
                scr_draw_numbers_empty_blue(x+212,y+26-24,14,2,0.75,0.75,0,c_white,1); //Cost of 14 BP
            }
            else
            {
                draw_text_transformed_colour(x+92,y-40-24+(23*3),string_hash_to_newline("Broken Heart"),0.75,0.75,0,c_gray,c_gray,c_gray,c_gray,1);
                draw_sprite_ext(spr_brositems,3,x+64,y+24-24,0.75,0.75,0,c_gray,1);
                scr_draw_numbers_empty_blue(x+212,y+26-24,14,2,0.75,0.75,0,c_gray,1); //Not enough BP
            }
        }        
        if brositemdifmax > 4
        {
            //draw_sprite(spr_uparrow,-1,200,88);
            //draw_sprite(spr_downarrow,-1,304,y+180);
        }
    }
    //Run
    if battleblock = 2
    {
        drawat = 2;
        draw_sprite(spr_text_box_2,0,x+64,y-40);
        draw_sprite(spr_mariochoose2,-1,x+64,y-56+(16*movechoose));
        draw_sprite(spr_runawaycommand,0,x+102,y-30);
        draw_sprite(spr_idlecommand,0,x+102,y-16);
    }
    //Items
    if battleblock = 3
        event_user(3);
}

if phase = 3 && battleblock < 2 && battleblock <> 3 //Choose enemy
{
    if targetchoose != 0
    {
        if instance_exists(obj_battlecontrol.enemyid[targetchoose])
            draw_sprite(spr_mariochoose3,-1,targetidaboutto.x,targetidaboutto.y-targetidaboutto.headz);
    }
    if targetchoose = 0
        draw_sprite(spr_mariochoose,-1,x-12,y-32);
}
if phase = 3 && battleblock = 3 //Choose brother
{
    if targetchoose != 0
    {
        if instance_exists(obj_battlecontrol.broid[targetchoose])
            draw_sprite(spr_mariochoose3,-1,targetidaboutto.x,targetidaboutto.y-targetidaboutto.z-24);
    }
    if targetchoose = 0
        draw_sprite(spr_mariochoose,-1,x-12,y-32);
}

//Show Display
if phase = -3 or phase = 3 or phase = 4 or phase = 0.25 or phase = 0.5 or phase = 0.75
or phase = 5 or obj_luigib.phase = -3 or obj_luigib.phase = 3 or obj_luigib.phase = 4
or obj_luigib.phase = 0.25 or obj_luigib.phase = 0.5 or obj_luigib.phase = 0.75
or obj_luigib.phase = 5 or stance = 7 or obj_luigib.stance = 7 or stance = 8
or obj_luigib.stance = 8
{
    if global.takedamage = 1
    {
        if global.turn = 0 //If it is Mario's turn
        {
            draw_sprite(spr_mariodisplay,0,84,214); //Full Display
            //Show BP
            if global.MBP <= global.maxMBP*0.10 && global.turn = 0 //Show this when BP is less than 10%
                scr_draw_numbers_empty(95,222,global.MBP,3,.75,.75,0,c_red,1);
            else if global.turn = 0
                scr_draw_numbers_empty(95,222,global.MBP,3,.75,.75,0,c_aqua,1);
            //Show HP
            if global.MHP <= global.maxMHP*0.10 //Show this when HP is less than 10%
                scr_draw_numbers_empty(91,222-16,global.MHP,3,.75,.75,0,c_red,1);
            else
                scr_draw_numbers_empty(91,222-16,global.MHP,3,.75,.75,0,c_yellow,1);
            draw_sprite(spr_hpdisplay,-1,76,224-16);
            draw_sprite(spr_bpdisplay,-1,80,224);
        }
        else
        {
            draw_sprite(spr_mariodisplay,0,84,214+16); //Half Display
            //Show HP
            if global.MHP <= global.maxMHP*0.10 //Show this when HP is less than 10%
                scr_draw_numbers_empty(95,222,global.MHP,3,.75,.75,0,c_red,1);
            else
                scr_draw_numbers_empty(95,222,global.MHP,3,.75,.75,0,c_yellow,1);
            draw_sprite(spr_hpdisplay,-1,76,224);
        }
    }
}
else
{
    if global.turn = 0 //If it is Mario's turn
    {
        draw_sprite(spr_mariodisplay,0,84,214); //Full Display
        //Show BP
        if global.MBP <= global.maxMBP*0.10 && global.turn = 0 //Show this when BP is less than 10%
            scr_draw_numbers_empty(95,222,global.MBP,3,.75,.75,0,c_red,1);
        else if global.turn = 0
            scr_draw_numbers_empty(95,222,global.MBP,3,.75,.75,0,c_aqua,1);
        //Show HP
        if global.MHP <= global.maxMHP*0.10 //Show this when HP is less than 10%
            scr_draw_numbers_empty(91,222-16,global.MHP,3,.75,.75,0,c_red,1);
        else
            scr_draw_numbers_empty(91,222-16,global.MHP,3,.75,.75,0,c_yellow,1);
        draw_sprite(spr_hpdisplay,-1,76,224-16);
        draw_sprite(spr_bpdisplay,-1,80,224);
    }
    else
    {
        draw_sprite(spr_mariodisplay,0,84,214+16); //Half Display
        //Show HP
        if global.MHP <= global.maxMHP*0.10 //Show this when HP is less than 10%
            scr_draw_numbers_empty(95,222,global.MHP,3,.75,.75,0,c_red,1);
        else
            scr_draw_numbers_empty(95,222,global.MHP,3,.75,.75,0,c_yellow,1);
        draw_sprite(spr_hpdisplay,-1,76,224);
    }
}
//Show Enemy Bar Display
if phase = 3 && control = 1 && targetchoose > 0 && battleblock <> 2
{
    draw_sprite(spr_enemyhud,0,400,23);
    draw_set_font(fnt_enemyname);
    draw_set_color(c_black);
    if battleblock <> 3
        draw_text(400,12,string_hash_to_newline(obj_battlecontrol.enemyid[targetchoose].name));
    else if battleblock = 3
        draw_text(400,12,string_hash_to_newline(obj_battlecontrol.broid[targetchoose].name));
}

/* */
/*  */

//Draw World Map
draw_sprite_ext(spr_map,0,-6,65,0.7,0.7,0,-1,1);
draw_sprite(spr_filemapbros,0,96,116);

//Draw Back Button
if selection = 0
{
    draw_sprite_ext(spr_fileback,0,0,216,1,1,0,-1,1);
    draw_sprite_ext(spr_filecredits,0,426,216,1,1,0,-1,0.6);
}
else if selection > 0 && selection < 3
{
    draw_sprite_ext(spr_fileback,0,0,216,1,1,0,-1,0.6);
    draw_sprite_ext(spr_filecredits,0,426,216,1,1,0,-1,0.6);
}
else if selection = 3
{
    draw_sprite_ext(spr_fileback,0,0,216,1,1,0,-1,0.6);
    draw_sprite_ext(spr_filecredits,0,426,216,1,1,0,-1,1);
}

//Draw Coin Bar
draw_sprite(spr_filecoinbar,0,0,8);
if selection = 1 && file_exists("ML_RPG_SaveA.sav")
    scr_draw_numbers(24,0,global.coins,5,1,1,0,c_yellow,1);
if selection = 2 && file_exists("ML_RPG_SaveB.sav")
    scr_draw_numbers(24,0,global.coins,5,1,1,0,c_yellow,1);

//Draw Location Bar
draw_sprite(spr_enemyhud,0,416,16);

//Draw Text Bar
draw_sprite_ext(spr_levelupbardisplay,0,68,48,8,1,0,-1,0.7);

//Draw Text
draw_set_font(fnt_enemyname);
draw_set_color(c_white);
event_user(2);
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_text(420,6,string_hash_to_newline("Mushroom Castle Courtyard")); //Draw's Location Name (for now)
draw_set_halign(fa_left);
//Drawing save file text from an ini list?

//Draw L+R
draw_sprite_ext(spr_fileLkey,heldL,10,41,1,1,0,-1,1);
draw_sprite_ext(spr_fileRkey,heldR,400,41,1,1,0,-1,1);

//Draw File Icons
draw_sprite_ext(spr_filebar,0,192,64,1,1,0,-1,alpha[0]); //File A
draw_sprite_ext(spr_filebar,0,192,140,1,1,0,-1,alpha[1]); //File B

//Draw File Stars and Numbers
draw_sprite(spr_filestar,0,192,64); //File A
scr_draw_numbers(197,72,1,1,0.85,0.85,0,c_white,1);
draw_sprite(spr_filestar,0,192,140); //File B
scr_draw_numbers(197,148,2,1,0.85,0.85,0,c_white,1);

//Display File Information
if file_exists("ML_RPG_SaveA.sav") && action = 0
{
    event_user(3);  
    //Draw Mario Levels
    draw_sprite_ext(spr_lvl,0,244,128,1,1,0,-1,alpha[0]);
    scr_draw_numbers_empty(278,116,Mlvl[1],2,1,1,0,-1,alpha[0]);   
    //Draw Luigi Levels 
    draw_sprite_ext(spr_lvl,0,326,128,1,1,0,-1,alpha[0]);
    scr_draw_numbers_empty(360,116,Llvl[1],2,1,1,0,-1,alpha[0]);
    //Draw Red Circle
    draw_sprite_ext(spr_winstrikedisplay,0,282,88,1,1,0,-1,alpha[0]);
    //Draw Green Circle
    draw_sprite_ext(spr_winstrikedisplay,1,360,88,1,1,0,-1,alpha[0]);
    //Draw Mario Sprite
    draw_sprite_ext(spr_mplayer_0,0,282,112,1,1,0,-1,alpha[0]);
    //Draw Luigi Sprite
    draw_sprite_ext(spr_lplayer_0,0,360,112,1,1,0,-1,alpha[0]);
    //Draw Mario Name
    draw_sprite_ext(spr_bronames,0,282,110,1,1,0,-1,alpha[0]);
    //Draw Luigi Name
    draw_sprite_ext(spr_bronames,1,360,110,1,1,0,-1,alpha[0]);
}
if action > 0 && selection = 1
{
    switch (action)
    {
        case 1:
            draw_sprite(spr_dialog_pointer,-1,260,80);
            draw_sprite(spr_fileoptions,0,275,80);
            draw_sprite(spr_fileoptions,1,275,92);
            draw_sprite(spr_fileoptions,2,275,104);
            draw_sprite(spr_fileoptions,3,275,116);
        break;
        case 2:
            draw_sprite(spr_dialog_pointer,-1,260,92);
            draw_sprite(spr_fileoptions,0,275,80);
            draw_sprite(spr_fileoptions,1,275,92);
            draw_sprite(spr_fileoptions,2,275,104);
            draw_sprite(spr_fileoptions,3,275,116);
        break;
        case 3:
            draw_sprite(spr_dialog_pointer,-1,260,104);
            draw_sprite(spr_fileoptions,0,275,80);
            draw_sprite(spr_fileoptions,1,275,92);
            draw_sprite(spr_fileoptions,2,275,104);
            draw_sprite(spr_fileoptions,3,275,116);
        break;
        case 4:
            draw_sprite(spr_dialog_pointer,-1,260,116);
            draw_sprite(spr_fileoptions,0,275,80);
            draw_sprite(spr_fileoptions,1,275,92);
            draw_sprite(spr_fileoptions,2,275,104);
            draw_sprite(spr_fileoptions,3,275,116);
        break;
    }
}
if file_exists("ML_RPG_SaveB.sav") && action = 0
{
    event_user(3);
    //Draw Mario Levels
    draw_sprite_ext(spr_lvl,0,244,128+76,1,1,0,-1,alpha[1]);
    scr_draw_numbers_empty(278,116+76,Mlvl[2],2,1,1,0,-1,alpha[1]);   
    //Draw Luigi Levels 
    draw_sprite_ext(spr_lvl,0,326,128+76,1,1,0,-1,alpha[1]);
    scr_draw_numbers_empty(360,116+76,Llvl[2],2,1,1,0,-1,alpha[1]);   
    //Draw Red Circle
    draw_sprite_ext(spr_winstrikedisplay,0,282,88+76,1,1,0,-1,alpha[1]);
    //Draw Green Circle
    draw_sprite_ext(spr_winstrikedisplay,1,360,88+76,1,1,0,-1,alpha[1]);
    //Draw Mario Sprite
    draw_sprite_ext(spr_mplayer_0,0,282,112+76,1,1,0,-1,alpha[1]);
    //Draw Luigi Sprite
    draw_sprite_ext(spr_lplayer_0,0,360,112+76,1,1,0,-1,alpha[1]);
    //Draw Mario Name
    draw_sprite_ext(spr_bronames,0,282,110+76,1,1,0,-1,alpha[1]);
    //Draw Luigi Name
    draw_sprite_ext(spr_bronames,1,360,110+76,1,1,0,-1,alpha[1]);
}
if action > 0 && selection = 2
{
    switch (action)
    {
        case 1:
            draw_sprite(spr_dialog_pointer,-1,260,80+76);
            draw_sprite(spr_fileoptions,0,275,80+76);
            draw_sprite(spr_fileoptions,1,275,92+76);
            draw_sprite(spr_fileoptions,2,275,104+76);
            draw_sprite(spr_fileoptions,3,275,116+76);
        break;
        case 2:
            draw_sprite(spr_dialog_pointer,-1,260,92+76);
            draw_sprite(spr_fileoptions,0,275,80+76);
            draw_sprite(spr_fileoptions,1,275,92+76);
            draw_sprite(spr_fileoptions,2,275,104+76);
            draw_sprite(spr_fileoptions,3,275,116+76);
        break;
        case 3:
            draw_sprite(spr_dialog_pointer,-1,260,104+76);
            draw_sprite(spr_fileoptions,0,275,80+76);
            draw_sprite(spr_fileoptions,1,275,92+76);
            draw_sprite(spr_fileoptions,2,275,104+76);
            draw_sprite(spr_fileoptions,3,275,116+76);
        break;
        case 4:
            draw_sprite(spr_dialog_pointer,-1,260,116+76);
            draw_sprite(spr_fileoptions,0,275,80+76);
            draw_sprite(spr_fileoptions,1,275,92+76);
            draw_sprite(spr_fileoptions,2,275,104+76);
            draw_sprite(spr_fileoptions,3,275,116+76);
        break;
    }
}
if !file_exists("ML_RPG_SaveA.sav") && action = 0
    draw_sprite_ext(spr_filenewfile,0,308,98,1,1,0,-1,alpha[0]); //NEW FILE
if !file_exists("ML_RPG_SaveB.sav") && action = 0
    draw_sprite_ext(spr_filenewfile,0,308,174,1,1,0,-1,alpha[1]); //NEW FILE
    
if deletion < 180 && deletion > 0
{
    if selection = 1 && file_exists("ML_RPG_SaveA.sav")
    {
        scr_draw_numbers_empty(room_width/2 - 16,room_height/2,deletion,2,1,1,0,c_red,alpha[0]);
        draw_sprite(spr_screenmask,2,0,0);
    }
    if selection = 2 && file_exists("ML_RPG_SaveB.sav")
    {
        scr_draw_numbers_empty(room_width/2 - 16,room_height/2,deletion,2,1,1,0,c_red,alpha[0]);
        draw_sprite(spr_screenmask,2,0,0);
    }    
}
    
//Show A button
//draw_sprite_ext(spr_mariochoose,-1,room_width-16,room_height-8,1,1,0,-1,_alpha);


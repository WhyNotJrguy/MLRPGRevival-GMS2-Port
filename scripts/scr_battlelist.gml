/*List all enemy types and battle positions here:

The types of battles can be predetermined and set in the creation code in the Overworld.
You can also set specific music and backgrounds.

*/

enemyid[0] = instance_create(x,y,obj_enemyallb);

//No enemies
if global.battletype = 0
{
    global.music = mus_Battle;
    enemyid[1] = 0;
    enemyid[2] = 0;
    enemyid[3] = 0;
    enemyid[4] = 0;
    enemyid[5] = 0;
}
//Single Goomba
if global.battletype = 0.5
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_grassland;
    background_y[0] = -475;
    enemyid[1] = noone;
    enemyid[2] = noone;
    enemyid[3] = instance_create(x-24,y,obj_goombab);
    enemyid[4] = noone;
    enemyid[5] = noone;
}
//Pop and Mossy - Beta Testing
if global.battletype = 1
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Boss;
    background_index[0] = bg_battle_grassland;
    background_y[0] = -475;
    global.runaway = 0;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_popb);
    enemyid[3] = noone;
    enemyid[4] = instance_create(x,y+32,obj_mossyb);
    enemyid[5] = noone;
}
//Goomba Group - Variant 1
if global.battletype = 2
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = choose(mus_Battle,mus_Battle2); //for now
    background_index[0] = bg_battle_grassland;
    background_y[0] = -475;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_goombab);
    enemyid[3] = noone;
    enemyid[4] = instance_create(x,y+32,obj_goombab);
    enemyid[5] = noone;
}
//Goomba Group - Variant 2
if global.battletype = 3
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    
    background_index[0] = bg_bowserbox;
    background_y[0] = -100;
    background_hspeed[0] = 0.2;
    background_index[1] = tl_battle_castle_floor;
    background_vtiled[1] = false;
    background_y[1] = 96;
    
    enemyid[1] = noone; //instance_create(x+32,y-48,obj_goombab); //0
    enemyid[2] = instance_create(x,y-32,obj_shyguyb);
    enemyid[3] = noone; //instance_create(x+24,y,obj_spinyb);
    enemyid[4] = instance_create(x,y+32,obj_shyguyb);
    enemyid[5] = noone; //instance_create(x+32,y+48,obj_goombab); //0
    //enemyid[6] = noone;
}
//Spiny Group - Variant 1
if global.battletype = 4
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_makilu_castle;
    background_x[0] = -200;
    background_y[0] = -464;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_spinyb);
    enemyid[3] = noone;
    enemyid[4] = instance_create(x,y+32,obj_spinyb);
    enemyid[5] = noone;
}
//Spiny Group - Variant 2 with Lakitu
if global.battletype = 5
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_makilu_castle;
    background_x[0] = -200;
    background_y[0] = -464;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_spinyb);
    enemyid[3] = instance_create(x+24,y,obj_lakitub);
    enemyid[4] = instance_create(x,y+32,obj_spinyb);
    enemyid[5] = noone;
    enemyid[6] = noone;
}
//Bowser (Fight 1)
if global.battletype = 6
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_BowserBattle; //for now
    background_index[0] = bg_bowserbox;
    background_y[0] = -150;
    background_hspeed[0] = 0.2;
    background_index[1] = bg_battle_bowser_throne;
    background_x[1] = -120; 
    background_y[1] = -166;    
    global.runaway = 0; //Cannot Run from Battle
    enemyid[1] = noone;
    enemyid[2] = noone;
    enemyid[3] = instance_create(x+24,y,obj_bowserb);
    enemyid[4] = noone;
    enemyid[5] = noone;
    enemyid[6] = noone;
}
//Shyguy Group - Variant 1
if global.battletype = 7
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_grassland;
    background_y[0] = -475;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_shyguyb);
    enemyid[3] = noone;
    enemyid[4] = instance_create(x,y+32,obj_shyguyb);
    enemyid[5] = noone;
    enemyid[6] = noone;
}
//Goomba Group - Beta Testing
if global.battletype = 8
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_BadGuyBattle;
    background_index[0] = bg_battle_peach_hall;
    background_x[0] = -12;
    background_y[0] = -126;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_popb);
    enemyid[3] = instance_create(x+24,y,obj_shyguyb);
    enemyid[4] = instance_create(x,y+32,obj_popb);
    enemyid[5] = noone;
}
//Cataquack - Variant 1
if global.battletype = 9
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_beach;
    background_x[0] = -200;
    background_y[0] = -224;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_spinyb);
    enemyid[3] = noone;
    enemyid[4] = instance_create(x,y+32,obj_shyguyb);
    enemyid[5] = noone;
    enemyid[6] = noone;
}
//Goomba Group - Beta Testing
if global.battletype = 10
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_BadGuyBattle;
    background_index[0] = bg_battle_forest;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_popb);
    enemyid[3] = instance_create(x+24,y,obj_shyguyb);
    enemyid[4] = instance_create(x,y+32,obj_popb);
    enemyid[5] = noone;
}
//Shyguy Group - Variant 2 (WIP)
if global.battletype = 11
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_battle_grassland;
    background_y[0] = -475;
    enemyid[1] = noone;
    enemyid[2] = noone;
    enemyid[3] = instance_create(x,y-32,obj_autobombb);
    enemyid[4] = noone;
    enemyid[5] = noone;
    enemyid[6] = noone;
}
//Dry Bones - Variant 1 (WIP)
if global.battletype = 12
{
    global.battleroom = rm_Battle; //Default Battle Room
    global.music = mus_Battle;
    background_index[0] = bg_desert_sky;
    background_index[1] = bg_desert_fg;
    background_index[2] = bg_desert_sands;
    background_x[1] = -120;
    background_y[1] = -100;
    enemyid[1] = noone;
    enemyid[2] = instance_create(x,y-32,obj_spinyb);
    enemyid[3] = instance_create(x+24,y,obj_lakitub);
    enemyid[4] = instance_create(x,y+32,obj_spinyb);
    enemyid[5] = noone;
}

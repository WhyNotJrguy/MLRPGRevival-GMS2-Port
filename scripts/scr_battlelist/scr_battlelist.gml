function scr_battlelist() {
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
	    __background_set( e__BG.Index, 0, bg_battle_grassland );
	    __background_set( e__BG.Y, 0, -475 );
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
	    __background_set( e__BG.Index, 0, bg_battle_grassland );
	    __background_set( e__BG.Y, 0, -475 );
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
	    __background_set( e__BG.Index, 0, bg_battle_grassland );
	    __background_set( e__BG.Y, 0, -475 );
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
    
	    __background_set( e__BG.Index, 0, bg_bowserbox );
	    __background_set( e__BG.Y, 0, -100 );
	    __background_set( e__BG.HSpeed, 0, 0.2 );
	    __background_set( e__BG.Index, 1, tl_battle_castle_floor );
	    __background_set( e__BG.VTiled, 1, false );
	    __background_set( e__BG.Y, 1, 96 );
    
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
	    __background_set( e__BG.Index, 0, bg_battle_makilu_castle );
	    __background_set( e__BG.X, 0, -200 );
	    __background_set( e__BG.Y, 0, -464 );
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
	    __background_set( e__BG.Index, 0, bg_battle_makilu_castle );
	    __background_set( e__BG.X, 0, -200 );
	    __background_set( e__BG.Y, 0, -464 );
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
	    __background_set( e__BG.Index, 0, bg_bowserbox );
	    __background_set( e__BG.Y, 0, -150 );
	    __background_set( e__BG.HSpeed, 0, 0.2 );
	    __background_set( e__BG.Index, 1, bg_battle_bowser_throne );
	    __background_set( e__BG.X, 1, -120 ); 
	    __background_set( e__BG.Y, 1, -166 );    
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
	    __background_set( e__BG.Index, 0, bg_battle_grassland );
	    __background_set( e__BG.Y, 0, -475 );
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
	    __background_set( e__BG.Index, 0, bg_battle_peach_hall );
	    __background_set( e__BG.X, 0, -12 );
	    __background_set( e__BG.Y, 0, -126 );
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
	    __background_set( e__BG.Index, 0, bg_battle_beach );
	    __background_set( e__BG.X, 0, -200 );
	    __background_set( e__BG.Y, 0, -224 );
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
	    __background_set( e__BG.Index, 0, bg_battle_forest );
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
	    __background_set( e__BG.Index, 0, bg_battle_grassland );
	    __background_set( e__BG.Y, 0, -475 );
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
	    __background_set( e__BG.Index, 0, bg_desert_sky );
	    __background_set( e__BG.Index, 1, bg_desert_fg );
	    __background_set( e__BG.Index, 2, bg_desert_sands );
	    __background_set( e__BG.X, 1, -120 );
	    __background_set( e__BG.Y, 1, -100 );
	    enemyid[1] = noone;
	    enemyid[2] = instance_create(x,y-32,obj_spinyb);
	    enemyid[3] = instance_create(x+24,y,obj_lakitub);
	    enemyid[4] = instance_create(x,y+32,obj_spinyb);
	    enemyid[5] = noone;
	}



}

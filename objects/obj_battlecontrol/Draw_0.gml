//Show Counterattack HUD
if global.turn = 2 && obj_mariob.stance <> 7 && obj_luigib.stance <> 7
{
    //Mario Counterattack HUD
    if global.Mdead = 0 or global.Mdead = 0.5 && instance_exists(obj_mariob)
    {
        draw_sprite_ext(spr_defensedisplay,0,52,52,1,1,0,-1,1);
        if obj_mariob.phase = -1
            draw_sprite(spr_jumpdefense,-1,56,50);
        if obj_mariob.phase = -2
            draw_sprite(spr_hammerdefense,-1,56,54); //When counterattacking with the hammer
    }

    //Luigi Counterattack HUD
    if global.Ldead = 0 or global.Ldead = 0.5 && instance_exists(obj_luigib)
    {
        draw_sprite_ext(spr_defensedisplay,1,28,68,1,1,0,-1,1);
        if obj_luigib.phase = -1
            draw_sprite(spr_jumpdefense,-1,32,66);
        if obj_luigib.phase = -2
            draw_sprite(spr_hammerdefense,-1,32,70); //When counterattacking with the hammer
    }
}
//Fade in pad when background fades out
if padvisibility > 0 && global.turn = -1.5
{
    if obj_mariob.visible = true && instance_exists(obj_mariob)
        draw_sprite_ext(spr_winstrikedisplay,0,104,134,1,1,0,-1,padvisibility);
    else if obj_luigib.visible = true && instance_exists(obj_luigib)
        draw_sprite_ext(spr_winstrikedisplay,1,104,134,1,1,0,-1,padvisibility);
}
//Mario's Level Up
if global.turn = -1.25 && global.Mdead = 0 && instance_exists(obj_mariob)
{
    //Draw Level Up Display
    draw_sprite_ext(spr_levelupdisplay,0,146,38,1,1,1,-1,1);
    //Draw Mario's name
    draw_sprite_ext(spr_bronames,0,104,186,1,1,0,-1,1);
    //Draw LVL
     draw_sprite_ext(spr_lvl,0,74,205,1,1,0,-1,1);
    //Draw level number
    if global.Mlvl < 10
        scr_draw_numbers(106,194,global.Mlvl,1,1,1,0,c_yellow,0.8);
    else if global.Mlvl < 100
        scr_draw_numbers(96,194,global.Mlvl,2,1,1,0,c_yellow,0.8);     
    else if global.Mlvl >= 99
        global.Mlvl = 99;
    //Draw pad
    draw_sprite_ext(spr_winstrikedisplay,0,104,134,1,1,0,-1,1);
    //Draw Level Up Bars 
    if instance_exists(obj_levelupbonus) && obj_levelupbonus.moveto = 0
    {
        if obj_levelupbonus.movechoose = 52
            draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,c_blue,1); //HP highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,-1,1); //HP
        if obj_levelupbonus.movechoose = 76
            draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,c_blue,1); //BP highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,-1,1); //BP
        if obj_levelupbonus.movechoose = 100
            draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,c_blue,1); //POW highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,-1,1); //POW
        if obj_levelupbonus.movechoose = 124
            draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,c_blue,1); //DEF highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,-1,1); //DEF
        if obj_levelupbonus.movechoose = 148
            draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,c_blue,1); //SPEED highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,-1,1); //SPEED
        if obj_levelupbonus.movechoose = 172
            draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,c_blue,1); //STACHE highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,-1,1); //STACHE  
    }
    else
    {
        draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,-1,1); //HP
        draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,-1,1); //BP
        draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,-1,1); //POW
        draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,-1,1); //DEF
        draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,-1,1); //SPEED
        draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,-1,1); //STACHE    
    }
    //Draw Level Up Stats
    draw_sprite_ext(spr_levelupstatsdisplay,0,222,76,1,1,0,-1,1); //HP
    draw_sprite_ext(spr_levelupstatsdisplay,1,222,100,1,1,0,-1,1); //BP
    draw_sprite_ext(spr_levelupstatsdisplay,2,222,124,1,1,0,-1,1); //POW
    draw_sprite_ext(spr_levelupstatsdisplay,3,222,148,1,1,0,-1,1); //DEF
    draw_sprite_ext(spr_levelupstatsdisplay,4,222,172,1,1,0,-1,1); //SPEED
    draw_sprite_ext(spr_levelupstatsdisplay,5,222,196,1,1,0,-1,1); //STACHE
    //Draw stats earned
    if hpamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,68,1,1,0,-1,0.8); //HP+
    if bpamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,92,1,1,0,-1,0.8); //BP+
    if powamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,116,1,1,0,-1,0.8); //POW+
    if defamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,140,1,1,0,-1,0.8); //DEF+
    if spdamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,164,1,1,0,-1,0.8); //SPEED+
    if stacheamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,188,1,1,0,-1,0.8); //STACHE+
    //Draw Mario's Stats
    //Draw Mario's HP
    if global.maxMHP < 10
        scr_draw_numbers(328,66,global.maxMHP,1,0.85,0.85,0,c_yellow,0.8);
    else if global.maxMHP < 100
        scr_draw_numbers(314,66,global.maxMHP,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.maxMHP < 1000
        scr_draw_numbers(300,66,global.maxMHP,3,0.85,0.85,0,c_yellow,0.8);  
    if global.maxMHP >= 999
        global.maxMHP = 999;        
    //Mario's HP earned
    if hpamount >= 0
        scr_draw_numbers(376,66,hpamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Mario's BP
    if global.maxMBP < 10
        scr_draw_numbers(328,90,global.maxMBP,1,0.85,0.85,0,c_yellow,0.8);
    else if global.maxMBP < 100
        scr_draw_numbers(314,90,global.maxMBP,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.maxMBP < 1000
        scr_draw_numbers(300,90,global.maxMBP,3,0.85,0.85,0,c_yellow,0.8);  
    if global.maxMBP >= 999
        global.maxMBP = 999;        
    //Mario's BP earned
    if bpamount >= 0
        scr_draw_numbers(376,90,bpamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Mario's POW
    if global.Mpow < 10
        scr_draw_numbers(328,114,global.Mpow,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Mpow < 100
        scr_draw_numbers(314,114,global.Mpow,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Mpow < 1000
        scr_draw_numbers(300,114,global.Mpow,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Mpow >= 999
        global.Mpow = 999;        
    //Mario's POW earned
    if powamount >= 0
        scr_draw_numbers(376,114,powamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Mario's DEF
    if global.Mdef < 10
        scr_draw_numbers(328,138,global.Mdef,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Mdef < 100
        scr_draw_numbers(314,138,global.Mdef,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Mdef < 1000
        scr_draw_numbers(300,138,global.Mdef,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Mdef >= 999
        global.Mdef = 999;        
    //Mario's DEF earned
    if defamount >= 0
        scr_draw_numbers(376,138,defamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Mario's SPEED
    if global.Mspd < 10
        scr_draw_numbers(328,162,global.Mspd,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Mspd < 100
        scr_draw_numbers(314,162,global.Mspd,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Mspd < 1000
        scr_draw_numbers(300,162,global.Mspd,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Mspd >= 999
        global.Mspd = 999;        
    //Mario's SPEED earned
    if spdamount >= 0
        scr_draw_numbers(376,162,spdamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Mario's STACHE
    if global.Mstache < 10
        scr_draw_numbers(328,186,global.Mstache,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Mstache < 100
        scr_draw_numbers(314,186,global.Mstache,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Mstache < 1000
        scr_draw_numbers(300,186,global.Mstache,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Mstache >= 999
        global.Mstache = 999;        
    //Mario's STACHE earned
    if stacheamount >= 0
        scr_draw_numbers(376,186,stacheamount,1,0.85,0.85,0,c_yellow,0.8);
}
//Luigi's Level Up
if global.turn = -1.75 && global.Ldead = 0 && instance_exists(obj_luigib)
{
    //Draw Level Up Display
    draw_sprite_ext(spr_levelupdisplay,0,146,38,1,1,1,-1,1);
    //Draw Luigi's name
    draw_sprite_ext(spr_bronames,1,104,186,1,1,0,-1,1);
    //Draw LVL
     draw_sprite_ext(spr_lvl,0,74,205,1,1,0,-1,1);
    //Draw level number
    if global.Llvl < 10
        scr_draw_numbers(106,194,global.Llvl,1,1,1,0,c_yellow,0.8);
    else if global.Llvl < 100
        scr_draw_numbers(96,194,global.Llvl,2,1,1,0,c_yellow,0.8);     
    else if global.Llvl >= 99
        global.Llvl = 99;
    //Draw pad
    draw_sprite_ext(spr_winstrikedisplay,1,104,134,1,1,0,-1,1);
    //Draw Level Up Bars 
    if instance_exists(obj_levelupbonus) && obj_levelupbonus.moveto = 0
    {
        if obj_levelupbonus.movechoose = 52
            draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,c_blue,1); //HP highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,-1,1); //HP
        if obj_levelupbonus.movechoose = 76
            draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,c_blue,1); //BP highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,-1,1); //BP
        if obj_levelupbonus.movechoose = 100
            draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,c_blue,1); //POW highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,-1,1); //POW
        if obj_levelupbonus.movechoose = 124
            draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,c_blue,1); //DEF highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,-1,1); //DEF
        if obj_levelupbonus.movechoose = 148
            draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,c_blue,1); //SPEED highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,-1,1); //SPEED
        if obj_levelupbonus.movechoose = 172
            draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,c_blue,1); //STACHE highlighted
        else
            draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,-1,1); //STACHE  
    }
    else
    {
        draw_sprite_ext(spr_levelupbardisplay,0,272,76,1,1,0,-1,1); //HP
        draw_sprite_ext(spr_levelupbardisplay,0,272,100,1,1,0,-1,1); //BP
        draw_sprite_ext(spr_levelupbardisplay,0,272,124,1,1,0,-1,1); //POW
        draw_sprite_ext(spr_levelupbardisplay,0,272,148,1,1,0,-1,1); //DEF
        draw_sprite_ext(spr_levelupbardisplay,0,272,172,1,1,0,-1,1); //SPEED
        draw_sprite_ext(spr_levelupbardisplay,0,272,196,1,1,0,-1,1); //STACHE    
    }
    //Draw Level Up Stats
    draw_sprite_ext(spr_levelupstatsdisplay,0,222,76,1,1,0,-1,1); //HP
    draw_sprite_ext(spr_levelupstatsdisplay,1,222,100,1,1,0,-1,1); //BP
    draw_sprite_ext(spr_levelupstatsdisplay,2,222,124,1,1,0,-1,1); //POW
    draw_sprite_ext(spr_levelupstatsdisplay,3,222,148,1,1,0,-1,1); //DEF
    draw_sprite_ext(spr_levelupstatsdisplay,4,222,172,1,1,0,-1,1); //SPEED
    draw_sprite_ext(spr_levelupstatsdisplay,5,222,196,1,1,0,-1,1); //STACHE
    //Draw stats earned
    if hpamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,68,1,1,0,-1,0.8); //HP+
    if bpamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,92,1,1,0,-1,0.8); //BP+
    if powamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,116,1,1,0,-1,0.8); //POW+
    if defamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,140,1,1,0,-1,0.8); //DEF+
    if spdamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,164,1,1,0,-1,0.8); //SPEED+
    if stacheamount >= 0
        draw_sprite_ext(spr_mathmaticalsymbols,0,356,188,1,1,0,-1,0.8); //STACHE+
    //Draw Luigi's Stats
    //Draw Luigi's HP
    if global.maxLHP < 10
        scr_draw_numbers(328,66,global.maxLHP,1,0.85,0.85,0,c_yellow,0.8);
    else if global.maxLHP < 100
        scr_draw_numbers(314,66,global.maxLHP,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.maxLHP < 1000
        scr_draw_numbers(300,66,global.maxLHP,3,0.85,0.85,0,c_yellow,0.8);  
    if global.maxLHP >= 999
        global.maxLHP = 999;        
    //Luigi's HP earned
    if hpamount >= 0
        scr_draw_numbers(376,66,hpamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Luigi's BP
    if global.maxLBP < 10
        scr_draw_numbers(328,90,global.maxLBP,1,0.85,0.85,0,c_yellow,0.8);
    else if global.maxLBP < 100
        scr_draw_numbers(314,90,global.maxLBP,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.maxLBP < 1000
        scr_draw_numbers(300,90,global.maxLBP,3,0.85,0.85,0,c_yellow,0.8);  
    if global.maxLBP >= 999
        global.maxLBP = 999;        
    //Luigi's BP earned
    if bpamount >= 0
        scr_draw_numbers(376,90,bpamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Luigi's POW
    if global.Lpow < 10
        scr_draw_numbers(328,114,global.Lpow,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Lpow < 100
        scr_draw_numbers(314,114,global.Lpow,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Lpow < 1000
        scr_draw_numbers(300,114,global.Lpow,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Lpow >= 999
        global.Lpow = 999;        
    //Luigi's POW earned
    if powamount >= 0
        scr_draw_numbers(376,114,powamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Luigi's DEF
    if global.Ldef < 10
        scr_draw_numbers(328,138,global.Ldef,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Ldef < 100
        scr_draw_numbers(314,138,global.Ldef,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Ldef < 1000
        scr_draw_numbers(300,138,global.Ldef,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Ldef >= 999
        global.Ldef = 999;        
    //Luigi's DEF earned
    if defamount >= 0
        scr_draw_numbers(376,138,defamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Luigi's SPEED
    if global.Lspd < 10
        scr_draw_numbers(328,162,global.Lspd,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Lspd < 100
        scr_draw_numbers(314,162,global.Lspd,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Lspd < 1000
        scr_draw_numbers(300,162,global.Lspd,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Lspd >= 999
        global.Lspd = 999;        
    //Luigi's SPEED earned
    if spdamount >= 0
        scr_draw_numbers(376,162,spdamount,1,0.85,0.85,0,c_yellow,0.8);
    //Draw Luigi's STACHE
    if global.Lstache < 10
        scr_draw_numbers(328,186,global.Lstache,1,0.85,0.85,0,c_yellow,0.8);
    else if global.Lstache < 100
        scr_draw_numbers(314,186,global.Lstache,2,0.85,0.85,0,c_yellow,0.8);     
    else if global.Lstache < 1000
        scr_draw_numbers(300,186,global.Lstache,3,0.85,0.85,0,c_yellow,0.8);  
    if global.Lstache >= 999
        global.Lstache = 999;        
    //Luigi's STACHE earned
    if stacheamount >= 0
        scr_draw_numbers(376,186,stacheamount,1,0.85,0.85,0,c_yellow,0.8);
}
if global.GameOver = true
{
    depth = -999;
    draw_sprite(spr_gameover,-1,room_width/2,room_height/2);
}
//Show Victory Stats
if global.turn = -1
{
    if global.Mdead = 0 && instance_exists(obj_mariob)
    {
        //Draw Win Display
        draw_sprite_ext(spr_mariowindisplay2,2,245,76,1,1,0,-1,0.8);
        draw_sprite_ext(spr_mariowindisplay,0,245,70,1,1,0,-1,1);
        //Show EXP
        draw_sprite_ext(spr_exp,0,158,50,1,1,0,-1,0.8);
        //Draw Mario's name
        draw_sprite_ext(spr_bronames,0,249,62,1,1,0,-1,0.8);
        //Draw EXP earned
        draw_sprite_ext(spr_mathmaticalsymbols,0,212,72,1,1,0,-1,0.8);
        if global.experience < 10
            scr_draw_numbers_empty(266,71,global.experience,1,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 100
            scr_draw_numbers_empty(256,71,global.experience,2,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 1000
            scr_draw_numbers_empty(244,71,global.experience,3,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 10000
            scr_draw_numbers_empty(232,71,global.experience,4,0.75,0.75,0,c_yellow,0.8);
        //Draw total EXP for Mario
        if global.Mexp < 10
            scr_draw_numbers_empty(240,91,global.Mexp,1,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 100
            scr_draw_numbers_empty(234,91,global.Mexp,2,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 1000
            scr_draw_numbers_empty(228,91,global.Mexp,3,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 10000
            scr_draw_numbers_empty(224,91,global.Mexp,4,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 100000
            scr_draw_numbers_empty(218,91,global.Mexp,5,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 1000000
            scr_draw_numbers_empty(210,91,global.Mexp,6,0.85,0.85,0,c_yellow,0.8);
        else if global.Mexp < 10000000
            scr_draw_numbers_empty(206,91,global.Mexp,7,0.85,0.85,0,c_yellow,0.8);
        if global.Mexp >= 9999999
            global.Mexp = 9999999;
    }
    if global.Mdead > 1 && instance_exists(obj_mariob)
    {
        //Draw Win Display
        draw_sprite_ext(spr_mariowindisplay2,2,245,76,1,1,0,-1,0.4);
        draw_sprite_ext(spr_mariowindisplay,0,245,70,1,1,0,-1,0.4);
    }
    if global.Ldead = 0 && instance_exists(obj_luigib)
    {
        //Draw Win Display
        draw_sprite_ext(spr_luigiwindisplay2,2,245,146,1,1,0,-1,0.8);
        draw_sprite_ext(spr_luigiwindisplay,0,245,140,1,1,0,-1,1);
        //Show EXP
        draw_sprite_ext(spr_exp,0,158,120,1,1,0,-1,0.8);
        //Draw Luigi's name
        draw_sprite_ext(spr_bronames,1,249,132,1,1,0,-1,0.8);
        //Draw EXP earned
        draw_sprite_ext(spr_mathmaticalsymbols,0,212,141,1,1,0,-1,0.8);
        if global.experience < 10
            scr_draw_numbers_empty(266,141,global.experience,1,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 100
            scr_draw_numbers_empty(256,141,global.experience,2,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 1000
            scr_draw_numbers_empty(244,141,global.experience,3,0.75,0.75,0,c_yellow,0.8);
        else if global.experience < 10000
            scr_draw_numbers_empty(232,141,global.experience,4,0.75,0.75,0,c_yellow,0.8);
        //Draw total EXP for Luigi
        if global.Lexp < 10
            scr_draw_numbers_empty(240,161,global.Lexp,1,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 100
            scr_draw_numbers_empty(234,161,global.Lexp,2,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 1000
            scr_draw_numbers_empty(228,161,global.Lexp,3,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 10000
            scr_draw_numbers_empty(224,161,global.Lexp,4,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 100000
            scr_draw_numbers_empty(218,161,global.Lexp,5,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 1000000
            scr_draw_numbers_empty(210,161,global.Lexp,6,0.85,0.85,0,c_yellow,0.8);
        else if global.Lexp < 10000000
            scr_draw_numbers_empty(206,161,global.Lexp,7,0.85,0.85,0,c_yellow,0.8);
        if global.Lexp >= 9999999
            global.Lexp = 9999999;
    }
    if global.Ldead > 1 && instance_exists(obj_luigib)
    {
        //Draw Win Display
        draw_sprite_ext(spr_luigiwindisplay2,2,245,146,1,1,0,-1,0.4);
        draw_sprite_ext(spr_luigiwindisplay,0,245,140,1,1,0,-1,0.4);
    }
    //Draw Coins Display
    draw_sprite_ext(spr_coinwindisplay2,0,245,198,1,1,0,-1,1);
    draw_sprite_ext(spr_coinwindisplay,0,245,202,1,1,0,-1,1);
    //Show Coin
    draw_sprite_ext(spr_coins,0,158,202,1,1,0,-1,0.8);
    //Draw Coins earned
    draw_sprite_ext(spr_mathmaticalsymbols,0,212,194,1,1,0,-1,0.8);    
    if global.coinsearned < 10
        scr_draw_numbers_empty(300,193,global.coinsearned,1,0.75,0.75,0,c_yellow,0.8);
    else if global.coinsearned < 100
        scr_draw_numbers_empty(294,193,global.coinsearned,2,0.75,0.75,0,c_yellow,0.8);
    else if global.coinsearned < 1000
        scr_draw_numbers_empty(288,193,global.coinsearned,3,0.75,0.75,0,c_yellow,0.8);
    else if global.coinsearned < 10000
        scr_draw_numbers_empty(284,193,global.coinsearned,4,0.75,0.75,0,c_yellow,0.8);
    //Draw total coins
    if global.coins < 10
        scr_draw_numbers_empty(240,213,global.coins,1,0.85,0.85,0,c_yellow,0.8);
    else if global.coins < 100
        scr_draw_numbers_empty(234,213,global.coins,2,0.85,0.85,0,c_yellow,0.8);
    else if global.coins < 1000
        scr_draw_numbers_empty(228,213,global.coins,3,0.85,0.85,0,c_yellow,0.8);
    else if global.coins < 10000
        scr_draw_numbers_empty(224,213,global.coins,4,0.85,0.85,0,c_yellow,0.8);
    else if global.coins < 100000
        scr_draw_numbers_empty(218,213,global.coins,5,0.85,0.85,0,c_yellow,0.8);
    else if global.coins < 1000000
        scr_draw_numbers_empty(210,213,global.coins,6,0.85,0.85,0,c_yellow,0.8);
    if global.coins >= 999999
        global.coins = 999999;
}

    //Show A button
    if global.turn = -1 && (obj_mariob.stance >= 8 && obj_mariob.stance <= 10) or (obj_luigib.stance >= 8
    && obj_luigib.stance <= 10) && global.experience = 0 && (obj_mariob.x = 108 or obj_luigib.x = 107)
        draw_sprite_ext(spr_mariochoose,-1,room_width-16,room_height-8,1,1,0,-1,_alpha);


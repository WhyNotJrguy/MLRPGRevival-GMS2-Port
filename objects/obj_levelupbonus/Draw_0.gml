//Draw Lakitu
draw_sprite(sprite_index,image_index,x,y);

//Draw Bonus
draw_line(x,y,x+1,y+movechoose);
draw_line(x+1,y,x+2,y+movechoose);
if moveto = 1.5 or moveto = 2
    draw_sprite_ext(spr_bonuschoosedisplay,-1,x+1,y+movechoose,0.85,0.85,0,-1,1);
else if moveto < 2
    draw_sprite_ext(spr_bonusdisplay,-1,x+1,y+movechoose,0.85,0.85,0,-1,1);
//Determine Bonus stats
if moveto = 1.5 or moveto = 2
    scr_draw_numbers(x-9,y+movechoose-10,value,1,0.85,0.85,0,c_yellow,0.8);   
if moveto = 5
    draw_sprite_ext(spr_mariochoose,-1,room_width-16,room_height-8,1,1,0,-1,0.8);


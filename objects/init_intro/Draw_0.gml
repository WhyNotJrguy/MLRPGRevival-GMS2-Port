draw_set_font(fnt_enemyname);
if sprite_index = spr_intro
{
    draw_set_color(c_black);
    draw_text(96,12,string_hash_to_newline("Super Mario is property of Nintendo."));
    draw_sprite(spr_intro,-1,x,y);
}
else
{
    draw_set_color(c_white);
    draw_text(76,12,string_hash_to_newline("For instructions how to play, see the README."));
}


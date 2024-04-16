draw_set_font(fnt_items);
draw_set_halign(fa_left);
draw_set_color(c_white);

draw_text_transformed(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),string_hash_to_newline("Press Y for Debugger"),0.5,0.5,0);


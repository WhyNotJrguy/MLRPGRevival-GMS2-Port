depth = -y+16;
if instance_exists(obj_dark) && sprite_index = spr_torch_2
{
    size = 32;
    draw_set_blend_mode(bm_subtract);
    surface_set_target(global.light);
    draw_ellipse_color(x-size-__view_get( e__VW.XView, 0 )+8,y-size-__view_get( e__VW.YView, 0 )-z,x+size-__view_get( e__VW.XView, 0 )+8,y+size-__view_get( e__VW.YView, 0 )-z,c_white,c_black,false);
    surface_reset_target();
    draw_set_blend_mode(bm_normal);
}


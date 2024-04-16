if instance_exists(obj_dark)
{
    size = 24;
    draw_set_blend_mode(bm_subtract);
    surface_set_target(global.light);
    draw_ellipse_color(x-size-__view_get( e__VW.XView, 0 ),y-size-__view_get( e__VW.YView, 0 ),x+size-__view_get( e__VW.XView, 0 ),y+size-__view_get( e__VW.YView, 0 ),c_white,c_black,false);
    surface_reset_target();
    draw_set_blend_mode(bm_normal);
}


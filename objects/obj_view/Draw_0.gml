/*Debug
if instance_exists(obj_mplayer)
{
    draw_text(view_xview+64,view_yview+90+48,"Mplayer Depth: " + string(obj_mplayer.depth));
    draw_text(view_xview+64,view_yview+90+64,"Mplayer Moving: " + string(obj_mplayer.moving));
    draw_text(view_xview+64,view_yview+90+80,"Mplayer Z: " + string(obj_mplayer.z));
    draw_text(view_xview+64,view_yview+90+96,"GlobalDontMove: " + string(global.dontmove));
    draw_text(view_xview+64,view_yview+90+112,"Jumping: " + string(obj_mplayer.zgravity));
}*/


if instance_exists(obj_mplayer) or instance_exists(obj_mplayer_mini)
{
    if global.jump = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,0,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
    if global.hammer = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,2,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
    if global.hand = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,4,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
    if global.electrocute = 1
        draw_sprite(spr_icon_empty,10,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
}
/*if instance_exists(obj_lplayer_dunk) && !instance_exists(obj_mplayer)
{
    if global.jump = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,0,view_xview+284+84,view_yview+152+48);
    if global.hammer = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,2,view_xview+284+84,view_yview+152+48);
    if global.hand = 1 && global.electrocute = 0
        draw_sprite(spr_icon_empty,4,view_xview+284+84,view_yview+152+48);
    if global.electrocute = 1
        draw_sprite(spr_icon_empty,10,view_xview+284+84,view_yview+152+48);
}*/
if instance_exists(obj_lplayer_2) or instance_exists(obj_lplayer_change)
{
    if !instance_exists(obj_mplayer)
    {
        if global.jump = 1 && global.electrocute = 0
            draw_sprite(spr_icon_empty,1,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.hammer = 1 && global.electrocute = 0
            draw_sprite(spr_icon_empty,3,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.hand = 1 && global.electrocute = 0
            draw_sprite(spr_icon_empty,5,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.electrocute = 1
            draw_sprite(spr_icon_empty,11,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
    }
    if instance_exists(obj_mplayer)
    {
        if global.jump = 1
            draw_sprite(spr_icon_empty,0,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.hammer = 1
            draw_sprite(spr_icon_empty,2,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.hand = 1
            draw_sprite(spr_icon_empty,4,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
    }
}

if instance_exists(obj_lplayer_dunk) && !instance_exists(obj_mplayer)
    draw_sprite(spr_icon_empty,30,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);

if global.dontmove = 0
{
    if instance_exists(obj_lplayer)
    {
        if global.jump2 = 1 && global.electrocute = 0
            draw_sprite(spr_icon_empty,12,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.electrocute = 1
            draw_sprite(spr_icon_empty,24,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.can = 1 or global.zcan = 1
        {
            if global.super = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,14,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hammer2 = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,16,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hand2 = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,18,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        }
        if global.can = 0 or global.zcan = 0
        {
            if global.super = 1
                draw_sprite(spr_icon_empty,26,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hammer2 = 1
                draw_sprite(spr_icon_empty,20,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hand2 = 1
                draw_sprite(spr_icon_empty,22,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        }
    }
    if instance_exists(obj_mplayer_2)
    {
        if global.jump2 = 1 && global.electrocute = 0
            draw_sprite(spr_icon_empty,13,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.electrocute = 1
            draw_sprite(spr_icon_empty,25,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        if global.can = 1 or global.zcan = 1
        {
            if global.super = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,15,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hammer2 = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,17,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hand2 = 1 && global.electrocute = 0
                draw_sprite(spr_icon_empty,19,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        }
        if global.can = 0 or global.zcan = 0
        {
            if global.super = 1
                draw_sprite(spr_icon_empty,27,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hammer2 = 1
                draw_sprite(spr_icon_empty,21,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
            if global.hand2 = 1
                draw_sprite(spr_icon_empty,23,__view_get( e__VW.XView, 0 )+284+84,__view_get( e__VW.YView, 0 )+152+48);
        }
    }
}

/* */
/*  */

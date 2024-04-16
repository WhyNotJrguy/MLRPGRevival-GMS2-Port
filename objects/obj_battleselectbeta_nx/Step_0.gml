if (gamepad_button_check_pressed(0, global.buttonX) || keyboard_check_pressed(global.keyX))
{
    audio_play_sound(snd_select,0,0);
    battle+= 1;
    if battle > 9
        battle = 0;
}
if (gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB))
{
    audio_play_sound(snd_item,0,0);
    ID = instance_create(obj_mplayer.x,obj_mplayer.y,obj_goomba);
    ID.battletype = battle;
}
if (gamepad_button_check_pressed(0, global.buttonStart) || keyboard_check_pressed(global.keyStart))
{
    game_restart();
}
draw_set_color(c_black);
draw_text(__view_get( e__VW.XView, 0 )-32,__view_get( e__VW.YView, 0 )-32,string_hash_to_newline("battletype = " + string(battle)));


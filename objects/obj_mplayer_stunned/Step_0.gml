//For now
if (gamepad_button_check(0, global.buttonA) || keyboard_check(global.keyA))
{
    if not instance_exists(obj_battlestart)
    {
        instance_create(x,y,obj_mplayer);
        if instance_exists(obj_lplayer_stunned)
            with obj_lplayer_stunned instance_destroy();
        instance_destroy();
    }
}


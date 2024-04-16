if gamepad_button_check_pressed(0, global.buttonB) || keyboard_check_pressed(global.keyB) //B
{
    switch (ready)
    {
        case 2:
            ID = instance_create(x,y,obj_fireballprojectile);
            ID.pow = 2;
            ID.turn = 1;
            break;
        case 1:
            if instance_exists(obj_fireballprojectile.pow = 1)
            {
                with obj_fireballprojectile if pow = 1 && turn = 1
                {}
            }
            else
            {
                ID = instance_create(x,y,obj_fireballprojectile);
                ID.pow = 1;
                ID.turn = 1;
            }
            break;
    }
}


if gamepad_button_check_pressed(0, global.buttonA) || keyboard_check_pressed(global.keyA) //A
{
    switch (ready)
    {
        case 1:
            ID = instance_create(x,y,obj_fireballprojectile);
            ID.pow = 2;
            ID.turn = 0;
            break;
        case 2:
            if instance_exists(obj_fireballprojectile)
            {
                with obj_fireballprojectile if pow = 1 && turn = 0
                {}
            }
            else
            {
                ID = instance_create(x,y,obj_fireballprojectile);
                ID.pow = 1;
                ID.turn = 0;
            }
            break;
    }
}


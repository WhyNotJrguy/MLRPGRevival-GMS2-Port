function scr_Lbrosattack() {
	/*Luigi's Bros Attack

	Additional Bros Attacks can be coded here.

	*/

	if (obj_mariob.battleblock = 1 or obj_luigib.battleblock = 1) && global.turn = 1 && ready = 1
	{
	    audio_play_sound(snd_confirm,0,0);
	    ready = 2;
	    switch (attacknum)
	    {
	        case 0: //Green Shells
	            phase = 3;
	            alarm[1] = 10;
	            break;
	        case 1: //Fire Flowers
	            phase = 2;
	            alarm[1] = 10;
	            break;
	    }
	}
	else
	{
	    switch (attacknum)
	    {
	        case 0: //Green Shells
	            obj_luigib.sprite_index = spr_luigibgreenshellkick;
	            break;
	        case 1: //Fire Flower
	            if ready = 2 && obj_luigib.moveto = 5.2
	            {
	                if phase = 2 or phase = 3 //Luigi's turn
	                {
	                    obj_luigib.sprite_index = spr_luigibfireflowershoot;
	                    audio_play_sound(snd_fireball,0,0);
	                    if instance_exists(obj_fireballl)
	                        obj_fireballl.visible = false;
	                    ready = 3;
	                    alarm[5] = 5;
	                }
	                else if phase = 1 && sprite_index != spr_luigibfireflowershoot2 //Mario's turn
	                {
	                    obj_luigib.sprite_index = spr_luigibfireflowershoot2;
	                    audio_play_sound(snd_fireball,0,0);
	                    if instance_exists(obj_fireballl)
	                        obj_fireballl.visible = false;
	                }
	            }
	            break;
	    }
	}



}

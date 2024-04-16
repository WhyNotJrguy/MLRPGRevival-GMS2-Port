function scr_Mbrosattack() {
	/*Mario's Bros Attack

	Additional Bros Attacks can be coded here.

	*/

	if (obj_mariob.battleblock = 1 or obj_luigib.battleblock = 1) && global.turn = 0 && ready = 1
	{
	    audio_play_sound(snd_confirm,0,0);
	    ready = 2;
	    switch (attacknum)
	    {
	        case 0: //Green Shells
	            phase = 1;
	            alarm[1] = 10;
	            break;
	        case 1: //Fire Flowers
	            phase = 1;
	            alarm[1] = 10;
	            break;
	    }
	}
	else
	{
	    switch (attacknum)
	    {
	        case 0: //Green Shells
	            obj_mariob.sprite_index = spr_mariobgreenshellkick;
	            break;
	        case 1: //Fire Flower
	            if ready = 2 && obj_mariob.moveto = 5.2
	            {
	                if phase = 1 or phase = 3 //Mario's turn
	                {
	                    obj_mariob.sprite_index = spr_mariobfireflowershoot;
	                    audio_play_sound(snd_fireball,0,0);
	                    if instance_exists(obj_fireballm)
	                        obj_fireballm.visible = false;
	                    ready = 3;
	                    alarm[5] = 5;
	                }
	                else if phase = 2 && sprite_index != spr_mariobfireflowershoot2  //Luigi's turn
	                {
	                    obj_mariob.sprite_index = spr_mariobfireflowershoot2;
	                    audio_play_sound(snd_fireball,0,0);
	                    if instance_exists(obj_fireballm)
	                        obj_fireballm.visible = false;
	                }
	            }
	            break;
	    }
	}



}

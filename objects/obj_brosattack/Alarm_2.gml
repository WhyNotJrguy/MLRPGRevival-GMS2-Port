switch(attacknum)
{
    //Begin Green Shell Attack
    case 0:
        obj_mariob.sprite_index = spr_mariobgreenshellstance;
        obj_luigib.sprite_index = spr_luigibgreenshellstance;  
        audio_play_sound(snd_kick,0,0);
        z = 0;
        //Green Shell Attack Phases
        //1 for shell heads to enemy from Mario
        //2 for shell heads to Luigi from enemy
        //3 for shell heads to enemy from Luigi
        //4 for shell heads to Mario from enemy
        obj_mariob.moveto = 5.1;
        obj_luigib.moveto = 5.1;
        obj_mariob.stance = 15;
        obj_luigib.stance = 15;
    break;
    //Begin Fire Flower Attack
    case 1:
        obj_mariob.moveto = 5.2;
        obj_luigib.moveto = 5.2;
        obj_mariob.stance = 0;
        obj_luigib.stance = 0;
        //Fire Flower Attack Phases
        //1 for Mario's firing turn
        //2 for Luigi's firing turn
        //3 for both firing
        with obj_mariob image_index = 0;
        with obj_mariob image_speed = 0.275;
        with obj_mariob sprite_index = spr_mariobfireflowertransform;
        with obj_luigib image_index = 0;
        with obj_luigib image_speed = 0.275;
        with obj_luigib sprite_index = spr_luigibfireflowertransform;
        audio_play_sound(snd_powerup,0,0);
    break;
}


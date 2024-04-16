//Attack to use in battle
switch (global.turn)
{
    case 0:
        switch (obj_mariob.movechoose)
        {
            case 1:
                sprite_index = spr_greenshellb;
                attacknum = 0;
                break;
            case 2:
                sprite_index = spr_fireflowerb;
                attacknum = 1;
                break;
            case 3:
                sprite_index = spr_jumphelmetb;
                attacknum = 2;
                break;
            case 4:
                sprite_index = spr_brokenheartb;
                attacknum = 3;
                break;
            default:
                sprite_index = spr_greenshellb;
                attacknum = 0;
                break;
        }
        break;
    case 1:
        switch (obj_luigib.movechoose)
        {
            case 1:
                sprite_index = spr_greenshellb;
                attacknum = 0;
                break;
            case 2:
                sprite_index = spr_fireflowerb;
                attacknum = 1;
                break;
            case 3:
                sprite_index = spr_jumphelmetb;
                attacknum = 2;
                break;
            case 4:
                sprite_index = spr_brokenheartb;
                attacknum = 3;
                break;
            default:
                sprite_index = spr_greenshellb;
                attacknum = 0;
                break;
        }
        break;
}

//Grow item
image_xscale = 0;
image_yscale = 0;
alarm[0] = 50;

image_speed = .275;
z = 0;
ground = 1;
ready = 0;
zspeed = 0;
zgravity = -1;
zgravityon = 0;
falling = 0;
amount = 0;
ID = 0;

rank = 0; //Rank increments
phase = 0; //Phase of the attack


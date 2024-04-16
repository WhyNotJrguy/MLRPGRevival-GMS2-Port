if instance_exists(obj_battlestart)
    exit;
z += zspeed;
zspeed -= zgravity;
if z < landing
{
    z = landing;
    zspeed = 0;
    zgravity = 0;
}
if z > landing
    zgravity = 1;

if global.stunned = true && active = false
{
    global.stunned = false;
    alarm[0] = 1;
    alarm[1] = 115;
    image_speed = 0.275;
}
if active = true
{
    image_speed = 0.275;
    visible = true;
}
if active = false or instance_exists(obj_battlestart)
    image_single = image_index;
if !instance_exists(obj_battlestart)
    image_speed = 0.275;

if not place_meeting(x,y,obj_h16) && not place_meeting(x,y,obj_h32)
 && not place_meeting(x,y,obj_h48) && not place_meeting(x,y,obj_h64)
  && not place_meeting(x,y,obj_h80) && not place_meeting(x,y,obj_h96)
   && not place_meeting(x,y,obj_h112) && not place_meeting(x,y,obj_h128)
    && not place_meeting(x,y,obj_h144) && not place_meeting(x,y,obj_h160)
     && not place_meeting(x,y,obj_h176) && not place_meeting(x,y,obj_h192)
      && not place_meeting(x,y,obj_h208) && not place_meeting(x,y,obj_h224)
       && not place_meeting(x,y,obj_h240) && not place_meeting(x,y,obj_h256)
    landing = 0;

if not place_meeting(x,y,obj_z16) && not place_meeting(x,y,obj_z32)
 && not place_meeting(x,y,obj_z48) && not place_meeting(x,y,obj_z64)
  && not place_meeting(x,y,obj_z80) && not place_meeting(x,y,obj_z96)
   && not place_meeting(x,y,obj_z112) && not place_meeting(x,y,obj_z128)
    && not place_meeting(x,y,obj_z144) && not place_meeting(x,y,obj_z160)
     && not place_meeting(x,y,obj_z176) && not place_meeting(x,y,obj_z192)
      && not place_meeting(x,y,obj_z208) && not place_meeting(x,y,obj_z224)
       && not place_meeting(x,y,obj_z240) && not place_meeting(x,y,obj_z256)
    landing = 0;

depth = -y+8-z/16;

//The status dead is when mario stomps it but the dead variable is when a shell hits it
if dead = false
{
    /*if status = "dead"
    {
        timer-= 1;
        if timer = 0
            instance_destroy();
    }*/
    if status = "hit" && timer > 0
    {
        timer-= 1;
        if timer = 0
            event_user(0);
    }
    //Ok is just a plain goomba awaiting orders to attack or just move around peacefully
    if status = "ok" && instance_exists(par_player)
    {
        if random(48) < (1)
        {
            if random(4) < (1)
            {
                status = "walking";
                direction = 0;
                sprite_index = spr_goomba_4;
                image_speed = 0.5;
                timer = 32;
                speed = 2;
                exit;
            }
            if random(4) < (1)
            {
                status = "walking";
                direction = 90;
                sprite_index = spr_goomba_3;
                image_speed = 0.5;
                timer = 32;
                speed = 2;
                exit;
            }
            if random(4) < (1)
            {
                status = "walking";
                direction = 180;
                sprite_index = spr_goomba_2;
                image_speed = 0.5;
                timer = 32;
                speed = 2;
                exit;
            }
            if random(4) < (1)
            {
                status = "walking";
                direction = 270;
                sprite_index = spr_goomba_1;
                image_speed = 0.5;
                timer = 32;
                speed = 2;
                exit;
            }
        }
        if par_player.x > x && sprite_index = spr_goomba_4 && instance_exists(par_player)
        {
            if distance_to_object(par_player) < 65
            {
                status = "attacking";
                move_towards_point(par_player.x,par_player.y,3);
                image_speed = 0.75;
                timer = 40;
                exit;
            }
        }
        if par_player.x < x && sprite_index = spr_goomba_2 && instance_exists(par_player)
        {
            if distance_to_object(par_player) < 65
            {
                status = "attacking";
                move_towards_point(par_player.x,par_player.y,3);
                image_speed = 0.75;
                timer = 40;
                exit;
            }
        }
        if par_player.y < y && sprite_index = spr_goomba_3 && instance_exists(par_player)
        {
            if distance_to_object(par_player) < 65
            {
                status = "attacking";
                move_towards_point(par_player.x,par_player.y,3);
                image_speed = 0.75;
                timer = 40;
                exit;
            }
        }
        if par_player.y > y && sprite_index = spr_goomba_1 && instance_exists(par_player)
        {
            if distance_to_object(par_player) < 65
            {
                status = "attacking";
                move_towards_point(par_player.x,par_player.y,3);
                image_speed = 0.75;
                timer = 40;
                exit;
            }
        }
    }

    //Status walking is just general walking, when Mario isn't around.
    if status = "walking"
    {
        timer-= 1;
        if timer = 0
        {
            status = "ok";
            image_single = 0;
            speed = 0;
            exit;
        }
    }

    //Attacking is when the goomba charges at you
    if status = "attacking"
    {
        timer-= 1;
        if timer = 0
        {
            status = "resting";
            timer = 90;
            if direction > 224 && direction < 315
            {
                sprite_index = spr_goomba_1;
                image_single = 0;
                speed = 0;
                exit;
            }
            if direction > 134 && direction < 225
            {
                sprite_index = spr_goomba_2;
                image_single = 0;
                speed = 0;
                exit;
            }
            if direction > 89 && direction < 135
            {
                sprite_index = spr_goomba_3;
                image_single = 0;
                speed = 0;
                exit;
            }
            sprite_index = spr_goomba_4;
            image_single = 0;
            speed = 0;
            exit;
        }
        if direction > 224 && direction < 315
        {
            sprite_index = spr_goomba_1;
            image_speed = 0.75;
            exit;
        }
        if direction > 134 && direction < 225
        {
            sprite_index = spr_goomba_2;
            image_speed = 0.75;
            exit;
        }
        if direction > 89 && direction < 135
        {
            sprite_index = spr_goomba_3;
            image_speed = 0.75;
            exit;
        }
        sprite_index = spr_goomba_4;
        image_speed = 0.75;
        exit;
    }
    //resting is the time after the attack - 3 seconds, so it doesnt constantly attack, this is a good time to jump on it.
    if status = "resting"
    {
        timer-= 1;
        if timer = 0
            status = "ok";
    }
}

/* */
/*  */

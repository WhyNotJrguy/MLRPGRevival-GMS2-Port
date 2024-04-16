if global.hand2 = 1 && !otro.hammer = 1 && !otro.hand = 1
&& moving = 0 && global.can = 1 && global.zcan = 1
&& global.dontmove = 0 && distance_to_object(otro) < 19
&& !instance_exists(obj_fire) && !instance_exists(obj_thunder)
&& !instance_exists(obj_lplayer_change)
{
    hand = 1;
    moving = 0;
}


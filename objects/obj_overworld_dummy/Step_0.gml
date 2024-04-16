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


if instance_exists(obj_mplayer)
{
    if obj_mplayer.hammer = 1 && obj_mplayer.image_index > 4 && distance_to_object(obj_mplayer) < 24 && z = obj_mplayer.z
        image_speed = 0.6;
    if image_index > 8
        instance_destroy();
}

if instance_exists(obj_mplayer_mini)
{
    if obj_mplayer_mini.hammer = 1 && obj_mplayer_mini.image_index > 4 && distance_to_object(obj_mplayer_mini) < 24 && z = obj_mplayer_mini.z
        image_speed = 0.6;
    if image_index > 8
        instance_destroy();
}

if instance_exists(obj_lplayer_2)
{
    if obj_lplayer_2.hammer = 1 && obj_lplayer_2.image_index > 4 && distance_to_object(obj_lplayer_2) < 24 && z = obj_lplayer_2.z
        image_speed = 0.6;
    if image_index > 8
        instance_destroy();
}


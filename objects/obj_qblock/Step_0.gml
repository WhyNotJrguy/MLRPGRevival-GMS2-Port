if instance_exists(par_player)
{
    if par_player.z > z+15
        depth = -y-z/24+24;
    if par_player.z < z+16
        depth = -y-z/24+16;
    if par_player.z > z-16 && par_player.z <= z+15
    {
        solid = true;
        exit;
    }
    solid = false;
}


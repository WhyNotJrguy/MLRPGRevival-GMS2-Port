z+= zspeed;
zspeed-= zgravity;
if z < landing
{
    z = landing;
    zspeed = 0;
    zgravity = 0;
}
if z > landing
    zgravity = 1;


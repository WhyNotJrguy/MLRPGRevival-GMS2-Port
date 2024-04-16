if ready > 0
    scale += 0.075;
    
//This makes it stick in the center of the screen.
if global.finalboss = true
{
    x = __view_get( e__VW.XView, 0 )+160;
    y = __view_get( e__VW.YView, 0 )+136;
}
else
{
    x = __view_get( e__VW.XView, 0 )+160;
    y = __view_get( e__VW.YView, 0 )+120;
}

//Make image_xscale and image_yscale equal "scale"
//This is so that the sprite's bounding box will grow/shrink too
image_xscale = scale;
image_yscale = scale;

if scale > 18
    instance_destroy();


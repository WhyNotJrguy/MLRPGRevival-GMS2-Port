/// @description Destroy after fading out completely.

//Fade in
alpha -= 0.1;

//Destroy the object
if (alpha < 0)
    instance_destroy();


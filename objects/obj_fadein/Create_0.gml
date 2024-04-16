/// @description Fade the screen in.

//Default variables
newroom = noone;
fadeto = 0; //0 for Black, 1 for White

//Take a screenshot.
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Set the alpha.
alpha = 0;


/// @description Increment alpha until the screen is faded completely

//Fade in
alpha += 0.05;

//Go to the destination room.
if (alpha > 1) {

    //Set up the alpha.
    alpha = 1;
    
    //Go to the destination room
    room_goto(newroom);
}


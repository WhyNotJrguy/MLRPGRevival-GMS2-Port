obj_mariob.targetx = 0;
obj_mariob.targety = 0;
obj_luigib.targetx = 0;
obj_luigib.targety = 0;
obj_mariob.moveto = 0;
obj_luigib.moveto = 0;
obj_mariob.stance = 1;
obj_luigib.stance = 1;

//Excellent Hit
if __background_get( e__BG.Visible, 7 ) = true
    __background_set( e__BG.Visible, 7, false );
    
with obj_battlecontrol alarm[2] = 40;


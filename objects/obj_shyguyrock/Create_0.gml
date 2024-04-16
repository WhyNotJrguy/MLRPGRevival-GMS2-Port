image_speed = .275;
stance = 1;
headz = 10; //Height that player will land on
hurt = 0;
hurttime = 20;
turndone = 0;
moveto = 0;
stancex = x;
stancey = y;
target = 0;

z = 0;
ground = 1;
zspeed = 0;
zgravity = -1;
zgravityon = 0;
falling = 0;
amount = 0;
ID = 0;
ready = 0;
alarm[1] = 5;
alarm[2] = 10;

lvl = 1; //Level
experience = 0; //Experience recieved after the battle
coins = 0; //Coins recieved after the battle

hp = 1; //HP left
pow = obj_shyguyb.pow; //Damage dealt (this can be the maximum damage recieved by this enemy)
def = obj_shyguyb.def; //Defense to damage
spd = obj_shyguyb.spd; //Speed for turns

floating = 1; //Whether the enemy is floating or on ground

//Uninitialized variables
enemynum = 0;
enemyid = 0;
nextid = 0;
enemyahead = 0;
depth = 0;
enemyid[1] = 0;
enemyid[2] = 0;
enemyid[3] = 0;
enemyid[4] = 0;
enemyid[5] = 0;
stance = 0;
enemyahead = 0;
dead = 0;
image_alpha = 1;


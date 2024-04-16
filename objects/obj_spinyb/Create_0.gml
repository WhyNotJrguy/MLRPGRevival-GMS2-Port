image_speed = .275;
stance = 1;
headz = 20; //Height that player will land on
hurt = 0;
hurttime = 10;
turndone = 0;
moveto = 0;
stancex = x;
stancey = y;
target = 0;

name = "Spiny (LV 4)"; //Name of the enemy

lvl = 4; //Level
experience = 10; //Experience recieved after the battle
coins = 15; //Coins recieved after the battle

hp = 80; //HP left
pow = 22; //Damage dealt (this can be the maximum damage recieved by this enemy)
def = 14; //Defense to damage
spd = 5; //Speed for turns
luck = 6; //Luck

floating = 0; //Whether the enemy is floating or on ground

//NOTE: Critical hits are only effective during Excellent Hits
firebrand = 1; //Effect Firebrand has (0 is Normal, 1 is Critical, 2 is Heal)
thunderbrand = 1; //Effect Thunderbrand has (0 is Normal, 1 is Critical, 2 is Heal)

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


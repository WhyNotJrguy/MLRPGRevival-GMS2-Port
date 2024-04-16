//Add item to inventory
if sprite_index = spr_brositems
{
    if image_single = 0 && global.brosattacks < 1
        global.brosattacks = 1;
    if image_single = 1 && global.brosattacks < 2
        global.brosattacks = 2;
    if image_single = 2 && global.brosattacks < 3
        global.brosattacks = 3;
    if image_single = 3 && global.brosattacks < 4
        global.brosattacks = 4;
    if image_single = 4 && global.brosattacks < 5
        global.brosattacks = 5;
}
else
{
    if image_single = 0
        global.mushrooms += 1;
    if image_single = 1
        global.supermushrooms += 1;    
    if image_single = 2
        global.ultramushrooms += 1;
    if image_single = 3
        global.maxmushrooms += 1;
    if image_single = 4
        global.nuts += 1;    
    if image_single = 5
        global.supernuts += 1;   
    if image_single = 6
        global.ultranuts += 1;
    if image_single = 7
        global.maxnuts += 1;
    if image_single = 8
        global.starcandies += 1;
    if image_single = 9
        global.syrups += 1;
    if image_single = 10
        global.supersyrups += 1;
    if image_single = 11
        global.ultrasyrups += 1;
    if image_single = 12
        global.maxsyrups += 1;
    if image_single = 13
        global.oneups += 1;
    if image_single = 14
        global.oneupsupers += 1;
    if image_single = 15
        global.herbs += 1;
    if image_single = 16
        global.redpeppers += 1;
    if image_single = 17
        global.greenpeppers += 1;
    if image_single = 18
        global.boobiscuits += 1;
    if image_single = 19
        global.retryclocks += 1;
}
audio_play_sound(snd_item,0,0);
instance_destroy();


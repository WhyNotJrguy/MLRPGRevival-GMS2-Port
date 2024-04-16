//sets that at the end of certain animations, to change to the next
if sprite_index = spr_mhurt && global.turn = 0
{
    image_speed = 0;
    image_single = 0;
}
else
{
    if sprite_index = spr_mariobjumpstart
        sprite_index = spr_mariobjumpup;
    if sprite_index = spr_mariobhammerstart && hurt = 0
    {
        image_index = 0;
        sprite_index = spr_mariobhammer;
        mask_index = spr_mask;
    }
    if sprite_index = spr_mariobhammerhit && hurt = 0
    {
        hammeringdodge = 0;
        hammerdodgewait = 1;
        hammering = 0;
        hammerdodgego = 0;
        control = 1;
        hammeringdodge = 0;
        sprite_index = spr_stance4;
        mask_index = spr_mask;
    }
    if sprite_index = spr_mariobjumpdown1
        sprite_index = spr_mariobjumpdown2;
    if sprite_index = spr_mariobjumpland2 
    {
        stance = 1;
        if moveto = 5 
        {
            stance = 0;
            if obj_luigib.fluddthunderon = 1
                sprite_index = spr_fluddstand;
       }
    }
}

if sprite_index = spr_mariobjumpland2 && phase = 1
    sprite_index = spr_stance2;
if sprite_index = spr_mhurt && global.turn = 2 //Counterattacking
{
    if phase = -2
    {
        hammeringdodge = 0;
        sprite_index = spr_stance4;
    }
    else
        sprite_index = spr_stance3;
    hurt = 0;
}
if sprite_index = spr_mariobhammerstrikehit or sprite_index = spr_mariobhammerstrikefail
{
    sprite_index = spr_mariobwalkingback;
    moveto = 0;
}
if sprite_index = spr_mariobhammerstrikestart
    sprite_index = spr_mariobhammerstrikefail;
if sprite_index = spr_mariobhammerstrike
    sprite_index = spr_mariobhammerstrikehit;
if sprite_index = spr_mariobhandstrikehit or sprite_index = spr_mariobhandstrikefail
{
    sprite_index = spr_mariobwalkingback;
    moveto = 0;
}
if sprite_index = spr_mariobhandstrikestart
    sprite_index = spr_mariobhandstrikefail;
if sprite_index = spr_fluddshoot
{
    moveto = 0;
    sprite_index = spr_mariobwalkingback;
    obj_luigib.moveto = 0;
    obj_luigib.sprite_index = spr_luigibwalkingback;
}
if sprite_index = spr_mariobthrow or sprite_index = spr_mariobheal
{
    sprite_index = spr_stance1;
    stance = 1;
}
if sprite_index = spr_mariobswallow
{
    moveto = 9;
}
if sprite_index = spr_mariobthrowup
    moveto = 8;
if sprite_index = spr_mariobthrow
    moveto = 11;
if sprite_index = spr_mariopanic
{
    phase = 1;
    stance = 2;
    control = 1;
    reaction = 1;
}
if sprite_index = spr_mariopickupluigi && global.Ldead = 1 && stance <> 6 //Run with Luigi
{
    if battleblock = 2 //Run from Battle
    {
        phase = -3;
        stance = 6;
        sprite_index = spr_mariobwalkingbackluigi;
    }
    else if battleblock <> 2 //Enemy Attacks
    {
        sprite_index = spr_stance1b;
        global.turn = 2;
    }
}

//Green Shell
if sprite_index = spr_mariobgreenshellkick && stance = 16
{
    image_index = 0;
    sprite_index = spr_mariobgreenshellstance;
    stance = 15;
}
if sprite_index = spr_mariobgreenshellfall
{
    var i;
    for (i = 0; i < 10; i++) //Repeat animation
        image_index = 0;
    stance = 1;
}
//Fire Flower
if sprite_index = spr_mariobfireflowertransform
{
    instance_create(x-16,y-24,obj_fireballm);
    instance_create(obj_luigib.x-16,obj_luigib.y-24,obj_fireballl);
    sprite_index = spr_mariobfireflowerstance2;
}
if sprite_index = spr_mariobfireflowerstance2
{
    stance = 18;
    sprite_index = spr_mariobfireflowerstance;
}
if sprite_index = spr_mariobfireflowertransform2
{
    stance = 1;
    if instance_exists(obj_brosattack)
        with obj_brosattack instance_destroy();
    if instance_exists(obj_fireballprojectile)
        with obj_fireballprojectile instance_destroy();
}
if sprite_index = spr_mariobfireflowershoot or sprite_index = spr_mariobfireflowershoot2
{
    if instance_exists(obj_fireballm)
        obj_fireballm.visible = true;
    sprite_index = spr_mariobfireflowerstance;
}

//Win
if sprite_index = spr_mariobwinspin_jump or sprite_index = spr_mariobwinspin_hammer or sprite_index = spr_mariobwinspin_hand
    image_single = 3;
//Lose
if sprite_index = spr_mariodie
    global.Mdead = 1;


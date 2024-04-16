//Check for item which will heal Mario
if global.turn = 0
{
    if obj_mariob.itemid = 0 //Mushroom
    {
        amount = 20;
        global.MHP += amount;
        global.mushrooms -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 1 //Super Mushroom
    {
        amount = 40;
        global.MHP += amount;
        global.supermushrooms -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 2 //Ultra Mushroom
    {
        amount = 80;
        global.MHP += amount;
        global.ultramushrooms -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 3 //Max Mushroom
    {
        amount = global.maxMHP;
        global.MHP += amount;
        global.maxmushrooms -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 4 //Nut
    {
        amount = 20;
        global.MHP += amount;
        global.LHP += amount;
        if global.MHP > global.maxMHP
            global.MHP = global.maxMHP;
        if global.LHP > global.maxLHP
            global.MLP = global.maxLHP;
        global.nuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        ID = instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
        with ID pos = 1;
    }
    if obj_mariob.itemid = 5 //Super Nut
    {
        amount = 40;
        global.MHP += amount;
        global.LHP += amount;
        if global.MHP > global.maxMHP
            global.MHP = global.maxMHP;
        if global.LHP > global.maxLHP
            global.MLP = global.maxLHP;
        global.supernuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        ID = instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
        with ID pos = 1;
    }
    if obj_mariob.itemid = 6 //Ultra Nut
    {
        amount = 80;
        global.MHP += amount;
        global.LHP += amount;
        if global.MHP > global.maxMHP
            global.MHP = global.maxMHP;
        if global.LHP > global.maxLHP
            global.MLP = global.maxLHP;
        global.ultranuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        ID = instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
        with ID pos = 1;
    }
    if obj_mariob.itemid = 7 //Max Nut
    {
        global.MHP += global.maxMHP;
        global.LHP += global.maxLHP;
        if global.MHP > global.maxMHP
            global.MHP = global.maxMHP;
        if global.LHP > global.maxLHP
            global.MLP = global.maxLHP;
        global.maxnuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        ID = instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
        with ID pos = 1;
    }
    if obj_mariob.itemid = 8 //Star Candies
    {
        global.MHP = global.maxMHP;
        global.MBP = global.maxMBP
        global.starcandies -= 1;
    }
    if obj_mariob.itemid = 9 //Syrup
    {
        amount = 20;
        global.MBP += amount;
        global.syrups -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 10 //Super Syrup
    {
        amount = 40;
        global.MBP += amount;
        global.supersyrups -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 11 //Ultra Syrup
    {
        amount = 80;
        global.MBP += amount;
        global.ultrasyrups -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 12 //Max Syrup
    {
        amount = global.maxMBP;
        global.MBP += amount;
        global.maxsyrups -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
    }
    if obj_mariob.itemid = 13 //1-Up Mushroom
    {
        global.MHP += round(global.maxMHP/2);
        global.oneups -= 1;
    }
    if obj_mariob.itemid = 14 //1-Up Super
    {
        global.MHP += global.maxMHP;
        global.MBP += global.maxMBP;
        global.oneupsupers -= 1;
    }
    if obj_mariob.itemid = 15 //Refreshing Herb
    {
        //IF POISONED, THEN HEAL
        global.herbs -= 1;
    }
    if obj_mariob.itemid = 16 //Red Pepper
    {
        //global.Mpow *= 2;
        global.redpeppers -= 1;
    }
    if obj_mariob.itemid = 17 //Green Pepper
    {
        //global.Mdef *= 2;
        global.greenpeppers -= 1;
    }
    if obj_mariob.itemid = 18 //Boo Biscuit
    {
        //global.Minvincible = true;
        global.boobiscuits -= 1;
    }
}
//Check for item which will heal Luigi
if global.turn = 1
{
    if obj_luigib.itemid = 0 //Mushroom
    {
        amount = 20;
        global.LHP += amount;
        global.mushrooms -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 1 //Super Mushroom
    {
        amount = 40;
        global.LHP += amount;
        global.supermushrooms -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 2 //Ultra Mushroom
    {
        amount = 80;
        global.LHP += amount;
        global.ultramushrooms -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 3 //Max Mushroom
    {
        amount = global.maxLHP;
        global.LHP += amount;
        global.maxmushrooms -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 4 //Nut
    {
        amount = 20;
        global.LHP += amount;
        global.LHP += amount;
        if global.LHP > global.maxLHP
            global.LHP = global.maxLHP;
        if global.LHP > global.maxLHP
            global.LLP = global.maxLHP;
        global.nuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 5 //Super Nut
    {
        amount = 40;
        global.LHP += amount;
        global.LHP += amount;
        if global.LHP > global.maxLHP
            global.LHP = global.maxLHP;
        if global.LHP > global.maxLHP
            global.LLP = global.maxLHP;
        global.supernuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 6 //Ultra Nut
    {
        amount = 80;
        global.LHP += amount;
        global.LHP += amount;
        if global.LHP > global.maxLHP
            global.LHP = global.maxLHP;
        if global.LHP > global.maxLHP
            global.LLP = global.maxLHP;
        global.ultranuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 7 //Max Nut
    {
        global.LHP += global.maxLHP;
        global.LHP += global.maxLHP;
        if global.LHP > global.maxLHP
            global.LHP = global.maxLHP;
        if global.LHP > global.maxLHP
            global.LHP = global.maxLHP;
        global.maxnuts -= 1;
        instance_create(obj_mariob.xstart,obj_mariob.ystart,obj_healpointsbattle);
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 8 //Star Candies
    {
        global.LHP += global.maxLHP;
        global.LBP += global.maxLBP
        global.starcandies -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
        ID = instance_create(obj_luigib.xstart+32,obj_luigib.ystart+32,obj_healpointsbattle);
        with ID showbp = 1;
    }
    if obj_luigib.itemid = 9 //Syrup
    {
        amount = 20;
        global.LBP += amount;
        global.syrups -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 10 //Super Syrup
    {
        amount = 40;
        global.LBP += amount;
        global.supersyrups -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 11 //Ultra Syrup
    {
        amount = 80;
        global.LBP += amount;
        global.ultrasyrups -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 12 //Max Syrup
    {
        amount = global.maxLBP;
        global.LBP += amount;
        global.maxsyrups -= 1;
        instance_create(obj_luigib.xstart,obj_luigib.ystart,obj_healpointsbattle);
    }
    if obj_luigib.itemid = 13 //1-Up Mushroom
    {
        global.LHP += round(global.maxLHP/2);
        global.oneups -= 1;
    }
    if obj_luigib.itemid = 14 //1-Up Super
    {
        global.LHP += global.maxLHP;
        global.LBP += global.maxLBP;
        global.oneupsupers -= 1;
    }
    if obj_luigib.itemid = 15 //Refreshing Herb
    {
        //IF POISONED, THEN HEAL
        global.herbs -= 1;
    }
    if obj_luigib.itemid = 16 //Red Pepper
    {
        //global.Lpow *= 2;
        global.redpeppers -= 1;
    }
    if obj_luigib.itemid = 17 //Green Pepper
    {
        //global.Ldef *= 2;
        global.greenpeppers -= 1;
    }
    if obj_luigib.itemid = 18 //Boo Biscuit
    {
        //global.Linvincible = true;
        global.boobiscuits -= 1;
    }
}


if other.attacknum = 0 && sprite_index = spr_luigibgreenshellkick
{ 
    switch (global.turn)
    {
        case 0:
            if !instance_exists(obj_battlecontrol.enemyid[obj_mariob.targetchoose])
            {
                do
                {
                    obj_mariob.targetchoose += 1;
                    if obj_mariob.targetchoose > 5
                        obj_mariob.targetchoose = 0;
                }
                until (instance_exists(obj_battlecontrol.enemyid[obj_mariob.targetchoose]) or obj_mariob.targetchoose = 0);

                if obj_mariob.targetchoose = 0
                {
                    if instance_exists(obj_battlecontrol.enemyid[5])
                        obj_mariob.targetchoose = 5;
                    else if instance_exists(obj_battlecontrol.enemyid[4])
                        obj_mariob.targetchoose = 4;
                    else if instance_exists(obj_battlecontrol.enemyid[3])
                        obj_mariob.targetchoose = 3;
                    else if instance_exists(obj_battlecontrol.enemyid[2])
                        obj_mariob.targetchoose = 2;
                    else if instance_exists(obj_battlecontrol.enemyid[1])
                        obj_mariob.targetchoose = 1;
                }                 
                                
                obj_mariob.targetx = obj_battlecontrol.enemyid[obj_mariob.targetchoose].x;  
                obj_mariob.targety = obj_battlecontrol.enemyid[obj_mariob.targetchoose].y;
            }            
            break;
        case 1:
            if !instance_exists(obj_battlecontrol.enemyid[targetchoose])
            {
                do
                {
                    targetchoose += 1;
                    if targetchoose > 5
                        targetchoose = 0;
                }
                until (instance_exists(obj_battlecontrol.enemyid[targetchoose]) or targetchoose = 0);

                if targetchoose = 0
                {
                    if instance_exists(obj_battlecontrol.enemyid[5])
                        targetchoose = 5;
                    else if instance_exists(obj_battlecontrol.enemyid[4])
                        targetchoose = 4;
                    else if instance_exists(obj_battlecontrol.enemyid[3])
                        targetchoose = 3;
                    else if instance_exists(obj_battlecontrol.enemyid[2])
                        targetchoose = 2;
                    else if instance_exists(obj_battlecontrol.enemyid[1])
                        targetchoose = 1;
                }                
                                
                targetx = obj_battlecontrol.enemyid[targetchoose].x;  
                targety = obj_battlecontrol.enemyid[targetchoose].y;
            }            
            break;            
    }
    
    audio_play_sound(snd_kick,0,0);
    other.phase = 3;
}


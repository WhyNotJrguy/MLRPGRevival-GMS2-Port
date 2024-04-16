phase = 6;
if instance_exists(obj_rankbattle)
    with obj_rankbattle instance_destroy();
instance_create(x-48,y-48,obj_rankbattle);
with obj_rankbattle image_single = 4;


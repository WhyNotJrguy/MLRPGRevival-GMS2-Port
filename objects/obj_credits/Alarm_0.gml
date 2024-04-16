if (numb = limit) {
    alarm[2] = 1;
}
else if (numb = 50)
{
    numb = 51;
    alarm[10] = 1;
    ID = instance_create(x+160,room_height+8,obj_creditstext);
        ID.text = text[numb];
}
else if (numb = 92)
{
    numb = 93;
    alarm[11] = 1;
    ID = instance_create(x+160,room_height+8,obj_creditstext);
        ID.text = text[numb];
}
else
{
    numb += 1;
    ID = instance_create(x+160,room_height+8,obj_creditstext);
        ID.text = text[numb];
}
alarm[0] = 64;


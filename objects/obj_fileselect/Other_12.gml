//Draw Save Album Messages if File Exists
if selection = 1 && file_exists("ML_RPG_SaveA.sav")
{
    var file = file_text_open_read("ML_RPG_SaveA.sav");
    global.saveMessage = real(base64_decode(file_text_read_string(file)));
    draw_text(textspeed + 204,42,string_hash_to_newline(message[global.saveMessage]));
    file_text_readln(file);
    file_text_readln(file);
    file_text_readln(file);
    global.coins = real(base64_decode(file_text_read_string(file)));
    file_text_close(file);
}
if selection = 2 && file_exists("ML_RPG_SaveB.sav")
{
    var file = file_text_open_read("ML_RPG_SaveB.sav");
    global.saveMessage = real(base64_decode(file_text_read_string(file)));
    draw_text(textspeed + 204,42,string_hash_to_newline(message[global.saveMessage]));
    file_text_readln(file);
    file_text_readln(file);
    file_text_readln(file);
    global.coins = real(base64_decode(file_text_read_string(file)));
    file_text_close(file);
}


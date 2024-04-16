//Draw Level of Bros if File Exists
if file_exists("ML_RPG_SaveA.sav")
{
    var file = file_text_open_read("ML_RPG_SaveA.sav");
    repeat(70)
    {
        file_text_readln(file);
    }
    Mlvl[1] = real(base64_decode(file_text_read_string(file)));
    repeat(12)
    {
        file_text_readln(file);
    }
    Llvl[1] = real(base64_decode(file_text_read_string(file)));
    file_text_close(file);
}
if file_exists("ML_RPG_SaveB.sav")
{
    var file = file_text_open_read("ML_RPG_SaveB.sav");
    repeat(70)
    {
        file_text_readln(file);
    }
    Mlvl[2] = real(base64_decode(file_text_read_string(file)));
    repeat(12)
    {
        file_text_readln(file);
    }
    Llvl[2] = real(base64_decode(file_text_read_string(file)));
    file_text_close(file);
}


var GetDesc = file_text_open_read("Descriptions.txt");
Description = "";
StopRead = false;

while (!file_text_eof(GetDesc) && !StopRead) {
    var Line = file_text_readln(GetDesc);
    

    var pos = string_pos("&", Line);
    if (pos > 0) {

        Description += string_copy(Line, 1, pos - 1);
        StopRead = true;
    } else {
        Description += Line + "\n";
    }
}

Description = string_replace_all(Description, "#", chr(10));

file_text_close(file);


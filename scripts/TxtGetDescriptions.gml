var GetDesc = file_text_open_read("Descriptions.txt");
Description = "";
StopRead = false;

while (!file_text_eof(GetDesc) && !StopRead) {
    var Line = file_text_readln(GetDesc);
    
    // Buscar si la línea contiene el símbolo '&'
    var pos = string_pos("&", linea);
    if (pos > 0) {
        // Agregar solo la parte antes de '&'
        Description += string_copy(Line, 1, pos - 1);
        StopRead = true; // Para salir del bucle
    } else {
        Description += linea + "\n";
    }
}

Description = string_replace_all(Description, "#", chr(10));

file_text_close(file);


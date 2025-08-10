/// scr_load_all_mods()

var dir = "mods/";
var file = file_find_first(dir + "*.ini", fa_readonly);

while (file != "") {
    LoadPlant(dir + file);
    file = file_find_next();
}

file_find_close();


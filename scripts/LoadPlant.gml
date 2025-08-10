/// scr_load_mod_plants(path)

var path = argument0;
ini_open(path);

var i = 0;
while (ini_key_exists("Plant" + string(i), "Name")) {
    RegisterPlant(path, "Plant" + string(i));
    i += 1;
}

ini_close();


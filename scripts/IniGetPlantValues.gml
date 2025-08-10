ini_open("PlantStats.ini");

Health = "Health: " + ini_read_string(PlantID[global.PlantShowImage],"Health", 0);
SunCost = "Sun Cost: " + ini_read_string(PlantID[global.PlantShowImage],"Sun", 0);
Damage = "Damage: " + ini_read_string(PlantID[global.PlantShowImage],"Damage",0);
Special = "Special: " + ini_read_string(PlantID[global.PlantShowImage],"Special"," ");
Type = "Plant Type: " + ini_read_string(PlantID[global.PlantShowImage],"Type"," ");
//Description = ini_read_string(PlantID[global.PlantShowImage],"Desc"," ");
//Description = string_replace_all(Description, "#", chr(10));

ini_close();

/// scr_register_mod_plant(ini, section)

var _ini = argument0;
var _sec = argument1;

var index = global.LastPlant;
global.LastPlant += 1;

// Datos generales
global.PlantID[index]        = ini_read_string(_sec, "Name", "ModPlant" + string(index));
global.SunCost[index]        = ini_read_real(_sec, "SunCost", 100);
global.CoolDown[index]       = ini_read_real(_sec, "Cooldown", 5);

// Sprites
global.PlantSprites[index]   = sprite_add(ini_read_string(_sec, "Sprite", ""), 0, false, false, 0, 0);
global.BulletType[index]     = sprite_add(ini_read_string(_sec, "BulletSprite", ""), 0, false, false, 0, 0);
global.DestroySprites[index] = sprite_add(ini_read_string(_sec, "BulletDestroy", ""), 0, false, false, 0, 0);

// Disparo y clasificación
global.ShotsPerCycle[index] = ini_read_real(_sec, "ShotsPerCycle", 1);

if (global.ShotsPerCycle[index] > 1) {
    global.PlantTypes[index] = 1; // Repetidora
}
else {
    if (global.ShotsPerCycle[index] == 1) {
        global.PlantTypes[index] = 0; // Lanzaguisantes
    } else {
        var manualType = ini_read_real(_sec, "Type", 2); // Girasol por defecto
        if (manualType == 2 || manualType == 3) {
            global.PlantTypes[index] = manualType;
        } else {
            global.PlantTypes[index] = 2; // fallback a girasol
        }
    }
}


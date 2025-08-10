Get = argument0;

var EVBGType;
//Pea Evos BG
EVBGType[0] = 7 - (Get == 1);

//Sunflower Evos BG
EVBGType[1] = 1;

//Potato Mine Evos BG
EVBGType[2] = 2;

//Wallnut Evos BG
EVBGType[3] = 3;
//CherryBomb Evos BG
EVBGType[4] = 2;
//Repeater Evos BG
EVBGType[5] = 0;
//Smoll Evos BG
EVBGType[6] = 5;
//ChompBoy Evos BG
EVBGType[7] = 1;
//Fume
EVBGType[8] = 5;
//Spike
EVBGType[9] = 0;

return EVBGType[ActualPlant];

var ColumnMax = 6;
var RowMax = 7;
var PlantIDS = 0;

for (var j = 0; j < ColumnMax;j++)
{
CYSSeedPositionY[j] = y+11+(sprite_get_height(global.SeedSlotSprite) * j)+4;
for (var i = 0; i < RowMax;i++)
{
CYSSeedPositionX[i] = x+5+(sprite_get_width(global.SeedSlotSprite) * i) + 4;
if (global.SeedsObtained < (ColumnMax*RowMax) && global.SeedsSpawned < global.SeedsObtained){
with instance_create(CYSSeedPositionX[i],CYSSeedPositionY[j],objSeeds){PlantsIDDefiner();ActualPlant = PlantIDS;MinPlant(5);};PlantIDS++;global.SeedsSpawned++;}
}
}

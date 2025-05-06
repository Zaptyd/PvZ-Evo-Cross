///AttackScriptExt(Audio,Sprite,DestroyedSprite,CD1,CD2,Damage,IsFire)
Elevation = argument7;
if (argument7 == ""){Elevation = -4;}
if sprite_index == asset_get_index(BaseSpr + "Attack") && image_index > random_range(MinFrameAttack,MaxFrameAttack) && CoolDown <= 0 && !Sleep{with instance_create(x+10,y+Elevation,objPea){SoundManagement(argument0,0,global.SoundVolume);Lane = other.Lane;sprite_index = argument1;DestroySprite = argument2;angle = 0;image_speed = 0.2;Damage = argument5;IsFire = argument6;};Attack--;CoolDown = ((Attack == 0) * argument3) + ((Attack > 0) * argument4) + SleepNessNerf;}

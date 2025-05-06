if !Visual{global.DayAlphaTimer += Tim;global.ShadeAlpha= global.DayAlphaTimer/(DT+NT/2);}else{global.DayAlphaTimer -= Tim;global.ShadeAlpha= global.DayAlphaTimer/(NT);}

if global.ShadeAlpha>= 1 && !Visual && global.DayTime == 2{Visual = true;global.DayAlphaTimer = NT;}
if global.ShadeAlpha<= 0 && Visual && global.DayTime == 0{Visual = false;global.DayAlphaTimer = 0;}

return global.ShadeAlpha;

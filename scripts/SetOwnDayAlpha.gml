DayTimeReferenced();

Visual = false;
DayColour = c_gray;
DayStart = global.DayTime;
DT = (DayTimeLimit[DayStart] * (DayStart == 0) + DayTimeLimit[(DayStart+1)])*45;
NT = DayTimeLimit[2] * 45;
Tim = 1;
MoveShape = 0;


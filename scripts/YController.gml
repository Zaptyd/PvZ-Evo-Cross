//
if State != "Climb" && State != "ClimbShoot" && ((vspeed > 0 && gravdir == 1) or (vspeed < 0 && gravdir == -1)) && (((collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top-2,objSolid,0,0) or collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top-1,objSlopeParent,0,0)) && gravdir == -1) or((collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+2,objSolid,0,0) or collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,objSlopeParent,0,0)) && gravdir == 1)){gravity = 0.5 * gravdir;}
  
if ((vspeed > 0 && gravdir == 1) or (vspeed < 0 && gravdir == -1))
{
Slide = false;
    //Check for a solidtop below Mario
var solidtop = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,objSolidtop,0,0)
  
    //If Mario is above a solidtop
    if solidtop
    and ((bbox_bottom < solidtop.yprevious+4 && gravdir == 1))
    and ((not collision_rectangle(bbox_left,bbox_top+4,bbox_right,solidtop.y-1,objSolid,1,0) && gravdir == 1))
    {

        //Snap to position
        y = solidtop.y-16;

        //Stop vertical movement
        vspeed = 0;
        if State == "Climb" or State == "ClimbShoot"{State = "Idle"}
        CActive = false;
        Floating = false;
        gravity = 0;
        SCharge = 0;

        //Allow Mario to jump
        //if jumpnow = 2
            //jumpnow = 0

    }

}


//If Mario's head is bumping the ceiling
if (vspeed < 0 && gravdir == 1) && State != "Climb" && State != "ClimbShoot" //or (vspeed > 0 && gravdir == -1)
and ((collision_rectangle(bbox_left+1,bbox_top-1,bbox_right-1,bbox_top-1,objSolid,1,0) && gravdir == 1) or (collision_rectangle(bbox_left+1,bbox_bottom+1,bbox_right-1,bbox_bottom+1,objSolid,1,0) && gravdir == -1))
{

    //Prevent Mario's head from getting embed in the ceiling
        while (gravdir == 1 && collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,objSolid,1,0))
            y++
        while (gravdir == -1 && collision_rectangle(bbox_left,bbox_bottom-1,bbox_right,bbox_bottom-1,objSolid,1,0))
            y-- 
       //Stop vertical movement
    vspeed = 0;
    CActive = false;
}

if State != "Climb" && State != "ClimbShoot" && keyboard_check_released(global.Jump) && ((vspeed < -1 && gravdir == 1) or (vspeed > 1 && gravdir == -1)) && !place_meeting(x,y,objCameraMove){vspeed += gravdir;}

if State != "Climb" && State != "ClimbShoot" && (not collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,objSolid,0,0) and not collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+4,objSlopeParent,0,0) and gravdir == 1) or (not collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top-1,objSolid,0,0) and not collision_rectangle(bbox_left,bbox_top-4,bbox_right,bbox_top-4,objSlopeParent,0,0) and gravdir == -1) && !CameraCY
{
gravity = (0.5 - (0.2 * ((vspeed < 0 && gravdir == 1) or (vspeed > 0 && gravdir == -1)) * (keyboard_check(global.Jump))) * !place_meeting(x,y,objCameraMove))* gravdir;
if (vspeed > 5 && gravdir == 1) or (vspeed < -5 && gravdir == -1){vspeed = 5 * gravdir;}
}



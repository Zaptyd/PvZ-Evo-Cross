//Peaptr = collision_rectangle(bbox_left-1,bbox_top,bbox_right,bbox_bottom,objPea,1,0);
HitSndList();

if (!SNDHitActivate) 
{
SoundManagement(HitSND,0,global.SoundVolume);audio_sound_pitch(global.SoundA[HitSND],1 - (!IsNormal * 0.2));
SNDHitActivate = true;
if (HP > global.BasicHealth)
{var SNDDif = (MaxHP >= global.BasicHealth+global.ShieldHealth) * 2;
SoundManagement(ConeSND+SNDDif,0,global.SoundVolume);SNDHitActivate = true;}
}

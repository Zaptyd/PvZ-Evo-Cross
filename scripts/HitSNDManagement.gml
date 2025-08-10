if !IsFire && !SNDActived{
SoundManagement(HitSND,0,global.SoundVolume);audio_sound_pitch(global.SoundA[HitSND],1 - (IsIce * 0.2));
SNDActived = true;
if other.HP > global.BasicHealth
{var SNDDif = (other.MaxHP >= global.BasicHealth+global.ShieldHealth) * 2;
SoundManagement(ConeSND+SNDDif,0,global.SoundVolume);SNDActived = true;}
};

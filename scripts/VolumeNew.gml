
for(i = 0;i <= global.LastSound;i++)
{if audio_exists(global.SoundA[i])
audio_sound_gain(global.SoundA[i],global.SoundVolume,0);}

if global.Song > -1{audio_sound_gain(global.MusicSA[global.Song],global.MusicVolume,0)};

VoidSome = 0 + argument2;

if (VoidSome > 0){
//audio_stop_sound(global.MusicSA[argument0]);
audio_stop_all();
}
audio_play_sound(global.MusicSA[argument0],1,1);
audio_sound_gain(global.MusicSA[argument0],argument1,0);

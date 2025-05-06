Pause = !Pause;
visible = Pause;
objVar.depth = -100 * !BK;
objVar.visible = Pause;
if Pause{audio_pause_all();audio_play_sound(SND_Pause,1,0);screen_save("Pause.png");instance_deactivate_all(true);instance_activate_object(objVar)}else{
sprite_delete(CurrentScreen);
instance_activate_all();
audio_resume_all();
VolumeNew();
CurrentScreen = -1}

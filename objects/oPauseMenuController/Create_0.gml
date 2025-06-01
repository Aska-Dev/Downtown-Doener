seq = layer_sequence_create("SeqUI", 0, 0, seqPauseMenu);

instance_deactivate_all(true);
audio_pause_all();

instance_activate_object(oGameController);
instance_activate_object(oButtonSettingsMenu);
instance_activate_object(oButtonSettingsExit);

returnToGame = function ()
{
    instance_activate_all();
    instance_destroy(self);
    audio_resume_all();
}
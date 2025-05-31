seq = layer_sequence_create("SeqUI", 0, 0, seqPauseMenu);

instance_deactivate_all(true);

instance_activate_object(oGameController);
instance_activate_object(oButtonSettingsMenu);
instance_activate_object(oButtonSettingsExit);

gotoMenu = function ()
{
    game_restart();
}

returnToGame = function ()
{
    instance_activate_all();
    instance_destroy(self);
}
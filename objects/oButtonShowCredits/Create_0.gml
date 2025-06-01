credits = undefined;

close = function ()
{
    layer_set_visible("Menu", true);
    layer_sequence_destroy(credits);
    instance_activate_all();
    credits = undefined;
    visible = true;
}
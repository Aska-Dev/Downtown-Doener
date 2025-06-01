if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    visible = false;
    layer_set_visible("Menu", false);
    instance_deactivate_all(true);
    credits = layer_sequence_create("SeqUI", room_width / 2, room_height / 2, seqCredits);
}
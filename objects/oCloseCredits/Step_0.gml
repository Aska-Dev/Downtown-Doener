if(position_meeting(mouse_x, mouse_y, id))
{
    image_index = 1;
}
else
{
    image_index = 0;
}

if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    instance_destroy(self);
}

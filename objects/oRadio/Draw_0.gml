if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprRadioSelected;
}
else
{
    sprite_index = sprRadio;
}

draw_self();
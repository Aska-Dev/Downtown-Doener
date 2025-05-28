if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprBellSelected;
}
else
{
    sprite_index = sprBell;
}

draw_self();
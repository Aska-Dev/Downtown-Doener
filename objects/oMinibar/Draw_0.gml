if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprMinibarSelected;
}
else
{
    sprite_index = sprMinibar;
}

draw_self();
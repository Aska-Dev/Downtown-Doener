if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprGotoArrow_selected;
}
else
{
    sprite_index = sprGotoArrow;
}

draw_self();
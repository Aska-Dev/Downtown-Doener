if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprBreadBagSelected;
}
else
{
    sprite_index = sprBreadBag;
}

draw_self();
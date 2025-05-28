if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprBoxShelfSelected;
}
else
{
    sprite_index = sprBoxShelf;
}

draw_self();
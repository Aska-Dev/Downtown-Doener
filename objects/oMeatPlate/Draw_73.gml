if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprMeatPlate_empty_selected;
}
else
{
    sprite_index = sprMeatPlate_empty;
}

draw_self();

if(full)
{
    draw_sprite(sprMeatPlate_meat, 0, x, y);
}

if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprTraySelected;
}
else
{
    sprite_index = sprTray;
}

if(room == roomKitchen)
{
    draw_self();
}
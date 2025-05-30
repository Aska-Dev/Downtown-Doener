
if(position_meeting(mouse_x, mouse_y, id))
{
    if(empty)
    {
         sprite_index = sprMicrowaveOpenSelected;
    }
    else
    {
        sprite_index = sprMicrowaveSelected;
    }
}
else
{
    if(empty)
    {
         sprite_index = sprMicrowaveOpen;
    }
    else
    {
        sprite_index = sprMicrowave;
    }
}

if(room == roomKitchen)
{
    draw_self();
}

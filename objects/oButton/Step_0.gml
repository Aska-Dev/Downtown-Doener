if(position_meeting(mouse_x, mouse_y, id))
{
    if(!hasSwung)
    {
        sprite_index = swingSprite;
        hasSwung = true;
    }
}
else
{
    hasSwung = false;
}
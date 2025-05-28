if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprInteractableFriesBowlSelected;
}
else
{
    sprite_index = sprInteractableFriesBowl;
}

draw_self();

if(fries > 0)
{
    draw_sprite_ext(sprInteractableFriesBowlFries, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
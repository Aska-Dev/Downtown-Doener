if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprFryerSelected;
}
else
{
    sprite_index = sprFryer;
}

draw_self();

if(hasFries)
{
    draw_sprite_ext(sprFryerFries, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprTraySelected;
}
else
{
    sprite_index = sprTray;
}

draw_self();

if(holding != noone)
{
    draw_sprite_ext(holding.sprite_index, holding.image_index, x, y, holding.image_xscale, holding.image_yscale, 0, c_white, 1);
}
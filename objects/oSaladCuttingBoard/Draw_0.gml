if(position_meeting(mouse_x, mouse_y, id))
{
    sprite_index = sprSaladCuttingBoardSelected;
}
else
{
    sprite_index = sprSaladCuttingBoard;
}

draw_self();

if(global.cuttingBoardSalad > 0)
{
    draw_sprite_ext(sprSaladCuttingBoardSalad, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}


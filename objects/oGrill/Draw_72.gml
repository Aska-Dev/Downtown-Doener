if(!position_meeting(mouse_x, mouse_y, id) || instance_exists(oMinigameController_CutMeat))
{
    sprite_index = sprInteractableDoenerEmpty;
}
else
{
    sprite_index = sprInteractableDoenerSelected;
}

draw_self();
if(position_meeting(mouse_x, mouse_y, id))
{
    if(mouse_check_button_pressed(mb_left) && !instance_exists(oMinigameController_CutMeat) && oHandController.holding == noone)
    { 
        instance_create_layer(-64, -61, "Minigames", oMinigameController_CutMeat);
    }
}
else
{
    if(instance_exists(oMinigameController_CutMeat))
    {
        oMinigameController_CutMeat.endGame();
    }
}
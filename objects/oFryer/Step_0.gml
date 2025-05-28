if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if(oHandController.holding == noone && !hasFries)
    {
        startGame();
    }
}

if(position_meeting(mouse_x, mouse_y, id) && hasFries && mouse_check_button_pressed(mb_left) && oHandController.holding != noone && oHandController.holding.elId == ELEMENT.BOWL)
{
    global.fryerHasFries = false;
    oHandController.trashHoldingItem();
    oFriesBowl.fillFries();
}

hasFries = global.fryerHasFries;
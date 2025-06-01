if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if(oHandController.holding == noone && global.cuttingBoardSalad <= 0)
    {
        // START GAME
        room_goto(roomSaladMinigame);
    }
}

if(position_meeting(mouse_x, mouse_y, id) && global.cuttingBoardSalad > 0 && mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
{
    if(oHandController.holding.elId == ELEMENT.BOX || oHandController.holding.elId == ELEMENT.BREAD)
    {
        global.cuttingBoardSalad--;
        oHandController.holding.addIngredient(INGREDIENT.SALAD);
    }
}

if(position_meeting(mouse_x, mouse_y, id) && full && mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
{
    if(oHandController.holding.elId == ELEMENT.BOX || oHandController.holding.elId == ELEMENT.BREAD)
    {
        full = false;
        oHandController.holding.addIngredient(INGREDIENT.MEAT);
    }
}
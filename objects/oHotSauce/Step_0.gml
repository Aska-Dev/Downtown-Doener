if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
{
    if(oHandController.holding.elId == ELEMENT.BOX || oHandController.holding.elId == ELEMENT.BREAD)
    {
        if(!array_contains(oHandController.holding.ingredients, INGREDIENT.COCKTAIL_SAUCE))
        {
             oHandController.holding.addIngredient(INGREDIENT.HOT_SAUCE);
        }
    }
}
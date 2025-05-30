if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if(fries == 0 && oHandController.holding == noone)
    {
        visible = false;
        var bowlEL = instance_create_layer(mouse_x, mouse_y, "Minigames", oFriesBowlElement);
        oHandController.holding = bowlEL;
    }
}

if(position_meeting(mouse_x, mouse_y, id) && fries > 0 && mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
{
    if(oHandController.holding.elId == ELEMENT.BOX || oHandController.holding.elId == ELEMENT.BREAD)
    {
        fries--;
        oHandController.holding.addIngredient(INGREDIENT.FRIES);
    }
}
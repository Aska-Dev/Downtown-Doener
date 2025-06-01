if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
{
    if(oHandController.holding.elId == ELEMENT.BOX || oHandController.holding.elId == ELEMENT.BREAD)
    {
        if(!array_contains(oHandController.holding.ingredients, INGREDIENT.HOT_SAUCE))
        {
            audio_play_sound(sndSauceSquish, 150, false, global.soundVolume);
            oHandController.holding.addIngredient(INGREDIENT.COCKTAIL_SAUCE);
        }
    }
}
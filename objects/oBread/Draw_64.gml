draw_self();

if(array_contains(ingredients, INGREDIENT.HOT_SAUCE))
{
    draw_sprite_ext(sprBreadHotSauce, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
else if(array_contains(ingredients, INGREDIENT.COCKTAIL_SAUCE))
{
    draw_sprite_ext(sprBreadCocktailSauce, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

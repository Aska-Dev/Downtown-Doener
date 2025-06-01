image_xscale = 2;
image_yscale = 2;

type = DISH.BREAD;
ingredients = [];
elId = ELEMENT.BREAD;

warm = false;
steamObj = undefined;
coolDownTimer = game_get_speed(gamespeed_fps) * 20;

// Functions
addIngredient = function (ingredient)
{
    if(array_contains(ingredients, ingredient))
    {
        return;
    }
    
    array_push(ingredients, ingredient);
    sprite_index = getIngredientSprite(ingredient);
}

getIngredientSprite = function (ingredient)
{
    switch (ingredient) {
    	
        case INGREDIENT.MEAT:
            return sprBreadMeat;
        case INGREDIENT.FRIES:
            return sprBreadFries;
        case INGREDIENT.SALAD:
            return sprBreadSalad;
        default:
            return sprite_index;
        
    }
}

warmup = function ()
{
    warm = true;
    steamObj = instance_create_layer(x, y, "Minigames", oHotSteam);
    alarm[0] = coolDownTimer;
}

coolDown = function ()
{
    warm = false;
    instance_destroy(steamObj);
    steamObj = undefined;
}
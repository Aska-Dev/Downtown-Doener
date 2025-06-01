image_xscale = 2;
image_yscale = 2;

type = DISH.BOX;
ingredients = [];
elId = ELEMENT.BOX;

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
            return sprBoxMeat;
        case INGREDIENT.FRIES:
            return sprBoxFries;
        case INGREDIENT.SALAD:
            return sprBoxSalad;
        default:
            return sprite_index;
        
    }
}
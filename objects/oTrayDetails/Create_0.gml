image_xscale = 1.2;
image_yscale = 1.2;

dish = oInteractableTray.holding;

getIngredientSprite = function (ingredient)
{
    switch (ingredient) {
    	
        case INGREDIENT.MEAT:
            return sprIngredientMeat;
        
        case INGREDIENT.FRIES:
            return sprIngredientFries;
        
        case INGREDIENT.HOT_SAUCE:
            return sprIngredientHotSauce;
        
        case INGREDIENT.COCKTAIL_SAUCE:
            return sprIngredientCocktailSauce;
        
        case INGREDIENT.SALAD:
            return sprIngredientSalad;
        
        default:
            return undefined;
    }
}

getIngredientSprites = function ()
{
    var orderIngredients = dish.ingredients;
    
    var ingredientSprites = [];
    
    for(var i = 0; i < array_length(orderIngredients); i++)
    {
        array_push(ingredientSprites, getIngredientSprite(orderIngredients[i]));
    }
    
    return ingredientSprites;
}

// Positions
pos1 = {x: x - 100, y: y - 220}
pos2 = {x: x, y: y - 190}
pos3 = {x: x + 100, y: y - 220}
pos4 = {x: x - 100, y: y - 110}
pos5 = {x: x, y: y - 100}
pos6 = {x: x + 100, y: y -110}

pos = [pos1, pos2, pos3, pos4, pos5, pos6];
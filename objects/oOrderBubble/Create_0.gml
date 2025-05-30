image_xscale = 1.35;
image_yscale = 1.35;

// Functions

getDishTypeSprite = function ()
{
    var type = order.dish.type;
    
    if(type == DISH.BOX)
    {
        return sprBoxEmpty;
    }
    
    if(type == DISH.BREAD)
    {
        return sprBread;
    }
}

getIngredientSprite = function (ingredient)
{
    switch (ingredient) {
    	
        case INGREDIENT.MEAT:
            return sprIngredientMeat;
        
        case INGREDIENT.FRIES:
            return sprIngredientFries;
        
        default:
            return undefined;
    }
}

getIngredientSprites = function ()
{
    var orderIngredients = order.dish.ingredients;
    
    var ingredientSprites = [];
    
    for(var i = 0; i < array_length(orderIngredients); i++)
    {
        array_push(ingredientSprites, getIngredientSprite(orderIngredients[i]));
    }
    
    return ingredientSprites;
}


// Properties
dishTypeSprite = getDishTypeSprite();
ingredients = getIngredientSprites();

// Positions
pos1 = {x: x + 30, y: y - 190}
pos2 = {x: x + 130, y: y - 190}
pos3 = {x: x + 230, y: y - 190}
pos4 = {x: x + 30, y: y - 190}
pos5 = {x: x + 130, y: y - 190}
pos6 = {x: x + 230, y: y - 190}

pos = [pos1, pos2, pos3, pos4, pos5, pos6];
function Order() constructor 
{
    static setDish = function ()
    {
        var dishRoll = round(random_range(0, AMOUNT_DISH - 1));
        var ingredientAmountRoll = round(random_range(1, 2));
        
        var ingredients = [];
        
        for(var i = 0; i < ingredientAmountRoll; i++)
        {
            var ingredientRoll = undefined;
            
            do
            {
                ingredientRoll = round(random_range(0, AMOUNT_INGREDIENT -1));
            }
            until (!array_contains(ingredients, ingredientRoll));
            
            array_push(ingredients, ingredientRoll);
        }
        
        var sauceRoll = irandom_range(INGREDIENT.NO_SAUCE, INGREDIENT.NO_SAUCE + AMOUNT_SAUCES - 1);
        if(sauceRoll > INGREDIENT.NO_SAUCE)
        {
            array_push(ingredients, sauceRoll);
        }
        
        return 
        {
            type: dishRoll,
            ingredients: ingredients,
        }
    }
    
    static setDrink = function ()
    {
        return undefined;
    }
    
    dish = Order.setDish();
    drink = Order.setDrink();
}

enum DISH
{
    BOX,
    BREAD
}
#macro AMOUNT_DISH 2

enum INGREDIENT
{
    MEAT = 0,
    FRIES = 1,
    
    NO_SAUCE = 10,
    HOT_SAUCE = 11,
    COCKTAIL_SAUCE = 12
}
#macro AMOUNT_INGREDIENT 2
#macro AMOUNT_SAUCES 3
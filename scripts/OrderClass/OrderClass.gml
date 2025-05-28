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
        
        return 
        {
            type: dishRoll,
            ingredients: ingredients
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
    BOX
}
#macro AMOUNT_DISH 1

enum INGREDIENT
{
    MEAT,
    FRIES,
}
#macro AMOUNT_INGREDIENT 2
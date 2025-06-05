// Properties

if(order == undefined)
{
    order = new Order();
}

selectArrow = undefined;
bubble = undefined;

image_index = irandom_range(0, image_number -1);
slot = undefined;

// Functiom

setGameOverMessage = function (isMissing, ingredient)
{
    var message = lexicon_text("gameoverMessage.default");
    
    if(isMissing)
    {
        switch (ingredient) {
        	
            case INGREDIENT.FRIES:
                message = lexicon_text("gameoverMessage.missing.fries");
                break;
            
            case INGREDIENT.MEAT:
                message = lexicon_text("gameoverMessage.missing.meat");
                break;
            
            case INGREDIENT.COCKTAIL_SAUCE:
                message = lexicon_text("gameoverMessage.missing.whiteSauce");
                break;
            
            case INGREDIENT.HOT_SAUCE:
                message = lexicon_text("gameoverMessage.missing.redSauce");
                break;
            
            case INGREDIENT.SALAD:
                message = lexicon_text("gameoverMessage.missing.salad");
                break;
        }
    }
    else
    {
        switch (ingredient) {
        	
            case INGREDIENT.FRIES:
                message = lexicon_text("gameoverMessage.notOrdered.fries");
                break;
            
            case INGREDIENT.MEAT:
                message = lexicon_text("gameoverMessage.notOrdered.meat");
                break;
            
            case INGREDIENT.COCKTAIL_SAUCE:
                message = lexicon_text("gameoverMessage.notOrdered.whiteSauce");
                break;
            
            case INGREDIENT.HOT_SAUCE:
                message = lexicon_text("gameoverMessage.notOrdered.redSauce");
                break;
            
            case INGREDIENT.SALAD:
                message = lexicon_text("gameoverMessage.notOrdered.salad");
                break;
        }
    }
    
    global.gameOverMessage = message;
}

createOrderBubble = function ()
{
    bubble = instance_create_layer(x + 50, 350, "Interactables", oOrderBubble, {order: order});
}

checkDish = function (dish)
{
    if(order.dish.type != dish.type)
    {
        return false;
    }
    
    var allRequestedIngredients = true;
    for(var i = 0; i < array_length(order.dish.ingredients); i++)
    {
        if(!array_contains(dish.ingredients, order.dish.ingredients[i]))
        {
            allRequestedIngredients = false;
            setGameOverMessage(true, order.dish.ingredients[i]);
            break;
        }
    }
    
    if(!allRequestedIngredients)
    {
        return false;
    }
    
    var notRequestIngredient = false;
    for(var i = 0; i < array_length(dish.ingredients); i++)
    {
        if(!array_contains(order.dish.ingredients, dish.ingredients[i]))
        {
            notRequestIngredient = true;
            setGameOverMessage(false, dish.ingredients[i]);
            break;
        }
    }
    
    if(notRequestIngredient)
    {
        return false;
    }
    
    if(order.dish.type == DISH.BREAD && dish.warm == false)
    {
        global.gameOverMessage = lexicon_text("gameoverMessage.coldBread");
        return false;
    }
    
    return true;
}
// Properties

if(order == undefined)
{
    order = new Order();
}

selectArrow = undefined;
bubble = undefined;

slot = undefined;

// Functiom

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
            break;
        }
    }
    
    if(notRequestIngredient)
    {
        return false;
    }
    
    if(order.dish.type == DISH.BREAD && dish.warm == false)
    {
        return false;
    }
    
    return true;
}
if(oInteractableTray.holding == noone)
{
    instance_destroy(self);
}

if(array_length(dish.ingredients) <= 0)
{
    exit;
}

draw_self();

var ingredients = getIngredientSprites();

for(var i = 0; i < array_length(ingredients); i++)
{
    draw_sprite(ingredients[i], 0, pos[i].x, pos[i].y);
}

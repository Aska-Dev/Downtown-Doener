draw_self();

draw_sprite(dishTypeSprite, 0, pos[0].x, pos[0].y);

for(var i = 0; i < array_length(ingredients); i++)
{
    draw_sprite(ingredients[i], 0, pos[i+1].x, pos[i+1].y);
}
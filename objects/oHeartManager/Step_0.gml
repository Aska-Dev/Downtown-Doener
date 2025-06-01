if(global.lifes < 3)
{
    layer_sprite_change(life3, sprHeartEmpty)
}
else
{
    layer_sprite_change(life3, sprHeart);
}

if(global.lifes < 2)
{
    layer_sprite_change(life2, sprHeartEmpty)
}
else
{
    layer_sprite_change(life2, sprHeart);
}
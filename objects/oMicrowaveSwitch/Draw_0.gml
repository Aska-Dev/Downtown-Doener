if(active)
{
    sprite_index = sprMicrowaveSwitchOn;
}
else
{
     sprite_index = sprMicrowaveSwitchOff;
}

if(room == roomKitchen)
{
    draw_self();
}
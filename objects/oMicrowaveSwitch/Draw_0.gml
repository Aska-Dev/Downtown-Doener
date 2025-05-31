if(active)
{
    sprite_index = sprMicrowaveSwitchOff;
}
else
{
     sprite_index = sprMicrowaveSwitchOn;
}

if(room == roomKitchen)
{
    draw_self();
}
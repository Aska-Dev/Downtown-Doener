if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && room == roomKitchen)
{
    if(holding == noone && oHandController.holding != noone)
    {
        holding = oHandController.holding;
        oHandController.holding = noone;
        
        holding.x = x;
        holding.y = y;
        
        instance_create_layer(x, y - 140, "Interactables", oTrayDetails);
    }
    else if(oHandController.holding == noone && holding != noone)
    {
        oHandController.hold(holding);
        holding = noone;
    }
}

if(room != roomKitchen && holding != noone)
{
    holding.visible = false;
}
else if(holding != noone)
{
    holding.visible = true;
}
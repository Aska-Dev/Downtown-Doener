if(position_meeting(mouse_x, mouse_y, id))
{
    if(selectArrow == undefined)
    {
        selectArrow = instance_create_layer(x, 250, "Minigames", oSelectArrow);
    }
    
    if(mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
    {
        var checkResult = checkDish(oHandController.holding);
        
        if(checkResult)
        { 
            oHandController.trashHoldingItem();
            oCustomerController.customerLeaves(slot);
        }
    }
}
else
{
    if(selectArrow != undefined)
    {
        instance_destroy(selectArrow);
        selectArrow = undefined;
    }
}
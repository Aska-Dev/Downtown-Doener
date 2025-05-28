if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if(holding == noone && oHandController.holding != noone)
    {
        holding = oHandController.holding;
        oHandController.holding = noone;
        
        holding.visible = false;
    }
    else if(oHandController.holding == noone && holding != noone)
    {
        oHandController.hold(holding);
        holding = noone;
    }
}
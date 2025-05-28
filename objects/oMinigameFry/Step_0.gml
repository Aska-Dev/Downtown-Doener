if(!frying)
{
    alarm[0] = fryTimer;
    frying = true;
}

if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    if(fryState == 2 || fryState == 3)
    {
        oFryerPanel.collectedFries++;
    }
    
    instance_destroy(self);
}
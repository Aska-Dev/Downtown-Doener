if(position_meeting(mouse_x, mouse_y, id))
{
    if(selectArrow == undefined)
    {
        selectArrow = instance_create_layer(x, 250, "Minigames", oSelectArrow);
    }
    
    if(mouse_check_button_pressed(mb_left) && oHandController.holding != noone)
    {
        var checkResult = checkDish(oHandController.holding);
        
        if(!checkResult)
        { 
            global.lifes--;
            audio_play_sound(sndFeedbackNegative, 150, false, global.soundVolume / 2);
        }
        else
        {    
            global.highscore++;
            audio_play_sound(sndFeedbackPositive, 150, false, global.soundVolume / 5);
        }
        
        oHandController.trashHoldingItem();
        oCustomerController.customerLeaves(slot);
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
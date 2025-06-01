if(loadingScreenSeq != undefined && layer_sequence_is_finished(loadingScreenSeq))
{
    if(gotoRoomAfterLoad == roomHomemenu)
    {
        game_restart();
    }
    
    room_goto(gotoRoomAfterLoad);
}

if(room != roomHomemenu && keyboard_check_pressed(vk_escape) && !instance_exists(oPauseMenuController))
{
    instance_create_layer(-200, -200, "System", oPauseMenuController);
}

if(keyboard_check_pressed(vk_control))
{
    showLoadingScreen(roomSaladMinigame);
}

if(global.lifes <= 0)
{
    gameOver();
}
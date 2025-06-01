if(cuttingProgress >= cuttingGoal)
{
    global.cuttingBoardSalad = 2;
    room_goto(roomCounter);
}

if(place_meeting(x, y, oSaladMinigameKnife) && mouse_check_button_pressed(mb_left))
{
    cuttingProgress += 25;
}

if(cuttingProgress > 0)
{
    cuttingProgress -= 1;
}
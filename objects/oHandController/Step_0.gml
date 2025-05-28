if(mouse_check_button(mb_right) && holding != noone)
{
    trashProgress += trashStep;
}
else
{
    trashProgress = 0;
}

if(trashProgress >= trashGoal)
{
    trashHoldingItem();
    trashProgress = 0;
}

if(holding != noone)
{
    holding.x = mouse_x;
    holding.y = mouse_y;
}
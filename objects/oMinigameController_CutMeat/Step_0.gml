if(!cuttingTopToBottom && position_meeting(mouse_x, mouse_y, topBorder))
{
    alarm[0] = resetTimer;
    cuttingTopToBottom = true;
}

if(!cuttingBottomToTop && position_meeting(mouse_x, mouse_y, botBorder))
{
    alarm[0] = resetTimer;
    cuttingBottomToTop = true;
}

if(cuttingTopToBottom && position_meeting(mouse_x, mouse_y, botBorder))
{
    createParticle();
    
    cuttingProgress += 25;
    cuttingTopToBottom = false;
}

if(cuttingBottomToTop && position_meeting(mouse_x, mouse_y, topBorder))
{
    createParticle();
    
    cuttingProgress += 25;
    cuttingBottomToTop = false;
}

if(cuttingProgress >= cuttingGoal)
{
    oMeatPlate.full = true;
    endGame();
}

if(cuttingProgress > 0)
{
    cuttingProgress -= 1;
}

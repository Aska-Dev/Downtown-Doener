if(mover.x >= x2 && moverDirection == 1)
{
    moverDirection = -1;
}
else if(mover.x <= x1 && moverDirection == -1)
{
    moverDirection = 1;
}

var moverStep = moverStepSize * moverDirection;
mover.x += moverStep;

if(mouse_check_button_pressed(mb_left))
{
    if(mover.isMeetingTarget())
    {
        // SUCCESS
        oMicrowave.run();
    }
    else
    {
        // FAIL
        oMicrowave.reset();
    }
}
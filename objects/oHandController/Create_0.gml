// Properties

trashGoal = 300;
trashProgress = 0;
trashStep = 5;

holding = noone;

// Functions

hold = function (element)
{
    if(holding == noone)
    {
        holding = element;
        element.visible = true;
    }
};

trashHoldingItem = function ()
{
    if(holding != noone)
    {
        instance_destroy(holding);
        holding = noone;
    }
}
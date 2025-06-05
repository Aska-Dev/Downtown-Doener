if(global.customerQ >= 1 && !array_contains(customerSlots, undefined))
{
    global.gameOverMessage = lexicon_text("gameoverMessage.waiting");
    oGameController.gameOver();
}

if(global.customerQ > 0 && array_contains(customerSlots, undefined) && room == roomCounter)
{
    var freeSlot = undefined;
    
    for(var i = 0; i < maxCustomers; i++)
    {
        if(customerSlots[i] == undefined)
        {
            freeSlot = i;
            break;
        }
    }
    
    if(freeSlot != undefined)
    {
        customerArrives(freeSlot);
    }
}
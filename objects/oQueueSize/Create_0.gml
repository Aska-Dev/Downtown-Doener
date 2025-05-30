getCustomerAmount = function ()
{
    var q = global.customerQ;
    var activeWaiting = 0;
    
    for(var i = 0; i < array_length(oCustomerController.customerSlots); i++)
    {
        if(oCustomerController.customerSlots[i] != undefined)
        {
            activeWaiting++;
        }
    }
    
    return q + activeWaiting;
}
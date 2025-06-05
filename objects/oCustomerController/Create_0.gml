// Properties

newCustomerTimer = function ()
{
    var currentScore = global.highscore;
    
    var multiplier = currentScore / 5;
    var timeReducer = floor(2 * multiplier); 
    
    var base = game_get_speed(gamespeed_fps);
    return base * (30 - timeReducer);
}

maxCustomers = 3;
customerSlots = [undefined, undefined, undefined];
slotPositions = [{x: 546, y: 560}, {x: 896, y: 560}, {x: 1247, y: 560}]

// Functions

customerArrives = function (customerSlot)
{
    // Create new customer
    var customer = new Customer();
    assignCustomerToSlot(customerSlot, customer);
    
    global.customerQ--;
    
}

customerAddToQ = function ()
{
    global.customerQ++; 
    audio_play_sound(snd_bell, 100, false);
}

assignCustomerToSlot = function (customerSlot, customer)
{
    customerSlots[customerSlot] = customer;
    var slotPos = slotPositions[customerSlot];
    
    customer.obj.x = slotPos.x;
    customer.obj.y = slotPos.y;
    
    customer.obj.slot = customerSlot;
    
    customer.obj.createOrderBubble();
}

customerLeaves = function (customerSlot)
{
    var leavingCustomer = customerSlots[customerSlot];
    
    instance_destroy(leavingCustomer.obj);
    customerSlots[customerSlot] = undefined;
}


// Run at startup
if(!global.IsTraining)
{ 
    alarm[0] = newCustomerTimer();   
}
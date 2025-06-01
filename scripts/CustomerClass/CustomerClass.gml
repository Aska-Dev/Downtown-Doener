function Customer() constructor
{
    order = new Order();
    sprite = sprCustomers;
    
    obj = instance_create_layer(-200, -200, "Interactables", oCustomer, {order: order, sprite_index: sprite})
}
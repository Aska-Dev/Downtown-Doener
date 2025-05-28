function Customer() constructor
{
    order = new Order();
    sprite = sprCustomer_1;
    
    obj = instance_create_layer(-200, -200, "Interactables", oCustomer, {order: order, sprite_index: sprite})
}
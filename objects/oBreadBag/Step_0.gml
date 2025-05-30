if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && oHandController.holding == noone)
{
    var bread = instance_create_layer(mouse_x, mouse_y, "Interactables", oBread);
    oHandController.hold(bread);
}
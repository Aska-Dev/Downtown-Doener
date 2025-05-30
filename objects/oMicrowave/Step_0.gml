if(position_meeting(mouse_x, mouse_y, id) && empty && !running && mouse_check_button_pressed(mb_left) && oHandController.holding != noone && oHandController.holding.elId == ELEMENT.BREAD && room == roomKitchen)
{
    empty = false;
    running = true;
    content = oHandController.holding;
    content.visible = false;
    oHandController.holding = noone;
    minigame = instance_create_layer(-200, -200, "Minigames", oHeatBreadMinigame);
}

if(empty)
{
    running = false;
}

oMicrowaveSwitch.active = running;

if(running && finished)
{
    running = false;
}

if(position_meeting(mouse_x, mouse_y, id) && finished && !running && mouse_check_button_pressed(mb_left) && oHandController.holding == noone && room == roomKitchen)
{
    content.warmup();
    oHandController.hold(content);
    content = noone;
    empty = true;
    finished = false;
}
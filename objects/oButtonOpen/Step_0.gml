/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();

if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    //room_goto(roomCounter);
    oGameController.showLoadingScreen(roomCounter);
    layer_set_visible("Menu", false);
    audio_stop_all();
}
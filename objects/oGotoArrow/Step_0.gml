if((keyboard_check_pressed(vk_tab)) || position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    room_goto(gotoRoom);
}
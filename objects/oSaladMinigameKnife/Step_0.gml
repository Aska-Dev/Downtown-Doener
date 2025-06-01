var knifeX = clamp(mouse_x, 0, room_width);
var knifeY = clamp(mouse_y, room_height - 300, room_height);

x = knifeX;
y = knifeY;

if(mouse_check_button_pressed(mb_left))
{
    audio_play_sound(sndKnifeChop, 150, false, global.soundVolume)
}

if(mouse_check_button(mb_left))
{
    size = 0.8;
}
else
{
    size = 1;
    image_blend = c_white;
}

image_xscale = size;
image_yscale = size;
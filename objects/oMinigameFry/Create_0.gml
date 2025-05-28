size = random_range(4, 6);

image_xscale = size;
image_yscale = size;

angle = random_range(0, 270);
image_angle = angle;

fryState = 0;
fryTimer = game_get_speed(gamespeed_fps) * random_range(2, 5);

frying = false;
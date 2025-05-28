draw_sprite_ext(sprKnife, 0, mouse_x, mouse_y, 2, 2, 0, c_white, 1);

var amount = (cuttingProgress / cuttingGoal) * 100;
var width = 50;
var _x = 400;
draw_healthbar(_x, 175, _x + width, oDoener.sprite_height - 175, amount, c_dkgray, c_yellow, c_yellow, 3, true, true);
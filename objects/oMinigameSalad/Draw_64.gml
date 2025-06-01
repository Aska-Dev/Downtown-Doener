var amount = (cuttingProgress / cuttingGoal) * 100;
var width = 50;
var _x = 400; 
draw_healthbar(_x, 150, _x + width, oMinigameSalad.sprite_height - 100, amount, c_dkgray, c_yellow, c_yellow, 3, true, true);
barWidth = 100;
barHeigth = 30;

targetMod = irandom_range(0, 400);

getMicrowaveCenter = function ()
{
    var microwaveWidth = oMicrowave.sprite_width * oMicrowave.image_xscale;
    var microwaveHeight = oMicrowave.sprite_height * oMicrowave.image_yscale;
    
    var microwaveCenterX = oMicrowave.x + microwaveWidth / 2;
    var microwaveCenterY = oMicrowave.y + microwaveHeight / 2;
    
    return {x: microwaveCenterX, y: microwaveCenterY - 60};
}

microwaveCenter = getMicrowaveCenter();

x1 = microwaveCenter.x - barWidth * 4;
x2 = microwaveCenter.x + barWidth / 2;
y1 = microwaveCenter.y - barHeigth / 2;
y2 = microwaveCenter.y + barHeigth / 2;

var Tx = x1 + targetMod;
var Ty = y1;
target = instance_create_layer(Tx, Ty, "Minigames", oHeatBreadMinigameTarget);

moverStepSize = 9;
moverDirection = 1;
mover = instance_create_layer(x1, y1 + barHeigth / 2, "Minigames", oHeatBreadMinigameMover);
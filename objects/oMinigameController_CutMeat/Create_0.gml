endGame = function ()
{
    instance_destroy(self);
    exit;
}

createParticle = function ()
{
    if(knifeParticle == undefined)
    {
        knifeParticle = part_system_create_layer("Minigames", false, particleFallingMeat);
        part_system_position(knifeParticle, oDoener.x + oDoener.sprite_width / 2, oDoener.y + oDoener.sprite_height / 2);
    }
}

destroyParticle = function ()
{
    if(knifeParticle != undefined)
    {
        part_system_destroy(knifeParticle);
        knifeParticle = undefined;
    }
}

topBorder = instance_create_layer(oDoener.x + oDoener.sprite_width / 2 + 35, 225, "Minigames", oCutMeat_TopBorder);
botBorder = instance_create_layer(oDoener.x + oDoener.sprite_width / 2 + 35, oDoener.sprite_height - 225, "Minigames", oCutMeat_BotBorder);

cuttingProgress = 0;
cuttingGoal = 150;

resetTimer = game_get_speed(gamespeed_fps) * 0.5;

cuttingTopToBottom = false;
cuttingBottomToTop = false;

knifeParticle = undefined;
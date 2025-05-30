running = false;
empty = true;
finished = false;

warmupTime = game_get_speed(gamespeed_fps) * 4;

content = noone;

reset = function ()
{
    empty = true;
    oHandController.hold(content);
    content = noone;
    instance_destroy(minigame);
}

run = function ()
{
    audio_play_sound(sndMicrowaveRunning, 150, false);
    instance_destroy(minigame);
    running = true;
    alarm[0] = warmupTime;
}

minigame = undefined;
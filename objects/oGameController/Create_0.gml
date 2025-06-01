global.fryerHasFries = false;
global.cuttingBoardSalad = 0;
global.customerQ = 0;

global.highscore = 0;
global.IsTraining = false;

global.lifes = 3;

show_debug_overlay(true);
//game_set_speed(60, gamespeed_fps);

uiLayer = layer_get_id("SeqUI");

loadingScreenSeq = undefined;
gotoRoomAfterLoad = undefined;

function showLoadingScreen(gotoRoom)
{
    instance_deactivate_all(true);
    
    audio_stop_all();
    loadingScreenSeq = layer_sequence_create(uiLayer, 0, 0, seqLoadingScreen);
    gotoRoomAfterLoad = gotoRoom;
}

gameOver = function ()
{
    instance_deactivate_all(true);
    audio_stop_all();
    audio_play_sound(musicMenu, 100, true, global.musicVolume);
    layer_sequence_create(uiLayer, 0, 0, seqGameover);
}

global.musicVolume = 0.5;
global.soundVolume = 1;
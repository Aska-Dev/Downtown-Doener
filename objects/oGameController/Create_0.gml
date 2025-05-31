global.fryerHasFries = true;
global.customerQ = 0;

global.highscore = 0;
global.IsTraining = false;

//show_debug_overlay(true);

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

global.musicVolume = 0;
global.soundVolume = 0;
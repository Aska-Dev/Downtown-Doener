// Setup Lexicon
lexicon_index_declare_from_json("localization/de.json")
lexicon_index_declare_from_json("localization/en.json")

lexicon_locale_set("de");

global.fryerHasFries = false;
global.cuttingBoardSalad = 0;
global.customerQ = 0;

global.highscore = 0;
global.IsTraining = false;

global.lifes = 3;
global.gameOverMessage = "";

//show_debug_overlay(true);
//game_set_speed(60, gamespeed_fps);

loadingScreenSeq = undefined;
gotoRoomAfterLoad = undefined;

function showLoadingScreen(gotoRoom)
{
    instance_deactivate_all(true);
    
    audio_stop_all();
    loadingScreenSeq = layer_sequence_create("SeqUI", 0, 0, seqLoadingScreen);
    gotoRoomAfterLoad = gotoRoom;
}

gameOver = function ()
{
    global.lifes = -1;
    instance_deactivate_all(true);
    audio_stop_all();
    audio_play_sound(musicMenu, 100, true, global.musicVolume);
    layer_sequence_create("SeqUI", 0, 0, seqGameover);
}

global.musicVolume = 0.5;
global.soundVolume = 1;
loadingScreenSeq = undefined; 
gotoRoomAfterLoad = roomKitchen;

uiLayer = layer_get_id("SeqUI");

layer_set_visible("Menu", true);

function showLoadingScreen(gotoRoom)
{
    loadingScreenSeq = layer_sequence_create(uiLayer, 0, 0, seqLoadingScreen);
    gotoRoomAfterLoad = gotoRoom;
}
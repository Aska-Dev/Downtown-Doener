if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    playRandomSong();
}

if(!audio_is_playing(currentSong))
{
    if(!layer_sequence_exists("SeqUI", oGameController.loadingScreenSeq) ||  oGameController.loadingScreenSeq == undefined)
    
    playRandomSong();
}
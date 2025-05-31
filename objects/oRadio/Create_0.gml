playlist = [musicGame1, musicGame2, musicGame3, musicGame4];
currentSong = musicGame1;

manualStop = false;

playRandomSong = function ()
{
    var currentSongId = array_get_index(playlist, currentSong);
    var playlistLength = array_length(playlist);
    var randomSongId = undefined;
    
    do
    {
        randomSongId = irandom_range(0, playlistLength-1);
    }
    until (randomSongId != currentSongId);
    
    var randomSong = playlist[randomSongId];
    
    manualStop = true;
    audio_stop_sound(currentSong);
    
    currentSong = randomSong;
    audio_play_sound(randomSong, 100, false, global.musicVolume);
    manualStop = false;
}

playRandomSong();
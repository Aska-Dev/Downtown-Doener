// Properties

friesToCollect = 5;
spawningFries = 10;

collectedFries = 0;

// Functions

createFries = function ()
{
    for(var i = 0; i < spawningFries; i++)
    {
        var rollX = 0;
        var rollY = 0;
        
        var dist = 0;
        var nearestInst = undefined;
        
        do
        {
            rollX = round(random_range(x + 150, x+sprite_width-150));
            rollY = round(random_range(y + 150, y+sprite_height-150));
            
            nearestInst = instance_nearest(rollX, rollY, oMinigameFry)
            if(nearestInst != noone)
            {
                dist = point_distance(rollX, rollY, nearestInst.x, nearestInst.y);
            }
        }
        until (nearestInst == noone || dist >= 150);
        
        instance_create_layer(rollX, rollY, "Fries", oMinigameFry);
    }
}

audio_play_sound(sndFrying, 150, true, global.soundVolume)
createFries();
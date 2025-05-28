fryState++;
frying = false;

switch (fryState) {
	
    case 1:
        sprite_index = sprMinigameFry2;
        break;
    
    case 2:
        sprite_index = sprMinigameFry3;
        break;
    
    case 3:
        sprite_index = sprMinigameFry3;
        break;
    
    case 4:
        sprite_index = sprMinigameFry4;
        break;
    
    case 5:
        instance_destroy(self);
    break;
}
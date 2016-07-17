//this script is run if the player collects a sub item increase pick up
if (instance_exists(objPlayer))//make sure the player object exists
{
     objPlayer.imageSpeedToStore = objPlayer.image_speed;//lock in the current frame of the sprite
     objPlayer.image_speed = 0;//prevent any cycling of the sprite
     var textObj;//used for creating a new pop up text object
    textObj = instance_create(objPlayer.x,objPlayer.y-16, objPopupText);
    textObj.sprite_index = sprMaxHeartsUp;
}
global.paused = true;//pause everything else as well
global.playerMaxHearts += 5;//increase the player's max sub item counter

//You can also add code here such as global.playerHearts = global.playerMaxHearts if you want to fill the sub item counter

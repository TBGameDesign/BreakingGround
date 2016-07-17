//This script is run if the player collects a LIFE UP item from the play area
if (instance_exists(objPlayer))//make sure the player exists before working with it
{
     objPlayer.imageSpeedToStore = objPlayer.image_speed;//lock in the player's sprite
     objPlayer.image_speed = 0;//make sure the sprite doest cycle
     var textObj;//this is going to be our pop up text object
    textObj = instance_create(objPlayer.x,objPlayer.y-16, objPopupText);
    textObj.sprite_index = sprLifeMaxUp;
}
global.paused = true;//pause everything else such as enemies
global.playerBaseHealth += 5;//LIFE UP items have a base increase of 5, change to your liking
global.playerBonusHealth = 0;//the player should not get constitution bonuses from the item
global.playerMaxHealth = global.playerBaseHealth + global.playerBonusHealth;
global.playerHealth = global.playerMaxHealth;//fully replenish the player's health

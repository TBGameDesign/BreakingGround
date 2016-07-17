//Run this script whenever the global.playerXP is >= global.playerXPnext
//Usually checked after each enemy death 

if (instance_exists(objPlayer))//make sure there player exists before doing anything with it
{
     objPlayer.imageSpeedToStore = objPlayer.image_speed;//essentially pauses their sprite
     objPlayer.image_speed = 0;//makes sure they player isn't cycling through images
     var textObj;//we need a variable to make our lives easier for when we create a pop up
    textObj = instance_create(objPlayer.x,objPlayer.y-16, objPopupText);//create the pop up text
    textObj.sprite_index = sprLEVELUP;//this sprite is not in the resources
    //feel free to add your own sprite
}
global.paused = true;//pause the game so enemies and such aren't still active
global.playerLevel += 1;//increase the player's level
global.playerXPNext = ini_read_real(string(global.playerLevel + 1),"xp",100);//grab our next amount of XP needed from our ini file based on the new level
var strIncrease,conIncrease,luckIncrease,intIncrease;
//this current level up system randomly chooses how to increase stats
// 0 = no increase, 1 = increase by 1, 2 = only this stat gets an increase
//strength gets priority, but code could easily be written to randomly choose from the stats that rolled a 2
strIncrease = choose(0,1,2);
intIncrease = choose(0,1,2);
conIncrease = choose(0,1,2);
luckIncrease = choose(0,1,2);

global.playerMagicMax += choose(4,5);//increase our max magic, you can change this to an irandom_range as well
global.playerMaxHearts += 2;//sub item counter usually increases by 2, but change to your liking

//add more else if statements for other level ranges
if (global.playerLevel > 1 && global.playerLevel < 10)
{
    global.playerBonusHealth = 1;//this gaurantees that the player always gets +1 max HP on level up
}

//before you perform the next line, you may want to add some code for global.playerBaseHealth based on how much constitution the player has
//example 
//global.playerBaseHealth = global.playerConstitution;
//then, increase the player's max health by adding the two variables together
global.playerMaxHealth = global.playerBaseHealth + global.playerBonusHealth;

//add our new stats
if (strIncrease != 2 && conIncrease != 2 && intIncrease != 2 && luckIncrease != 2)
{
    global.playerStrength += strIncrease;
    global.playerIntelligence += intIncrease;
    global.playerConstitution += conIncrease;
    global.playerLuck += luckIncrease;
}
else if (strIncrease == 2)
{
    global.playerStrength += strIncrease;
}
else if (conIncrease == 2)
{
    global.playerConstitution += conIncrease;
}
else if (intIncrease == 2)
{
    global.playerIntelligence += intIncrease;
}
else if (luckIncrease == 2)
{
    global.playerLuck += luckIncrease;
}

//Note, you will need the sprite for the pop up text for this to work.  It was tested to work just fine with a sprite.

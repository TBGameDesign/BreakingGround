global.playerWeapon = "sword";//player starts with a basic sword
global.playerHealth = 50;//testing purposes, change to whatever you need
global.playerBaseHealth = 50;//this is used to set a base health before modifiers when you level up
global.playerBonusHealth = 0;//this is a bonus(usually based on how much stamina) that gets added on level up
global.playerMaxHealth = global.playerBaseHealth + global.playerBonusHealth;//combine both at startup
global.playerMagic = 50;//current magic
global.playerMagicMax = 50;//maximum amount
global.playerMaxHearts = 50;//maximum sub item counter
global.playerHearts = 0;//player starts without any sub item counters
global.playerSubItem = 0;//knife NOTE set this to -1 for no sub item because this value directly determines what is drawn on the hud
global.playerLevel = 1;//start the player at level 1
global.playerStatus = "GOOD";//can be useful if you wan to add "SLOW", "POISON", "CURSED", etc
global.playerXP = 0;//player starts without XP
global.playerXPNext = 15;//xp needed for next level
global.playerStrength = 8;//used for determining damage --- use own system if needed
global.playerIntelligence = 8;//used for determining magic gained on level up
global.playerConstitution = 5;//used for determining bonus HP on level up
global.playerWeaponDamage = 5;//base weapon damage, gets added with strength on hit to an enemy for end damage
global.rooms = 0;
global.kills = 0;
global.drawcolor = c_fuchsia;//used for coloring the player's ghost trail

//next set used for room transitions
global.playerState = "idle";// the player's state which is used when moving from one area to another
global.playerX =224;//testing
global.playerY =64;//testing
global.playerXscale = 1;//facing Right or 0degree angle
global.viewX = 0;//x coordinate of the camera/view that changes during transitions
global.viewY = 0;//see above but Y

global.gameData = ini_open("gamedata.ini");//just stores some xp needed for level ups

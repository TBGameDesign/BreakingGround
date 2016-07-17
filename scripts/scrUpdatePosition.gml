//This script is ran whenever an object has an acceleration greater than 0
//This means the script runs while accelerating or decelerating.
//The premise behind this logic is to only move the player(or anything else you want to use this script for
//by increments of 1.  THis prevents having coordinates with decimals which makes life easier.
//The idea came from how many NES games handled acceleration.
//frames are literally how many ticks(begin step, step, and end step are each a tick) until you move the object by 1
//you get frames from the scrAccelerate scripts by taking the room_speed and dividing it by the object's acceleration
//thus, the higher the acceleration, the faster the object moves by 1
//frameCounter is the check to see if the object has reached the number of frames needed to move by 1


if (frames > 0)
{
    if (frameCounter < frames)
    {
        frameCounter += 1;
    }
    if (frameCounter >= frames)
    {   
        if (!place_meeting(x+1,y,objSolidParent))//is the object colliding with any solids?
            x = x + 1;
        frameCounter = 0;
        
    }
}
if (frames < 0)
{
    if (frameCounter > frames)
    {
        frameCounter -= 1;
    }
    if (frameCounter <= frames)
    {
        if (!place_meeting(x-1,y,objSolidParent))//is the object colliding with any solids?
            x = x - 1;
        frameCounter = 0;
        
    }
}

if (place_meeting(x,y,objSlopesParent))//is the object stuck in a slope? move it 1 pixel up
{
    y = y - 1;
}

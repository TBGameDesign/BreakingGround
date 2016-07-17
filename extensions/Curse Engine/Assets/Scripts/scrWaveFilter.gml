//this is jsut a fun little filter that makes the screen look like waves are rolling through quickly

if (surface_exists(application_surface))
{
    var surface = surface_create(320,240);
    surface_copy(surface,0,0,application_surface);
    //application_surface_draw_enable(false);
    for (i = 0; i < 240; i += 2)
    {
        if (xPixels > -6 && xDirection == "left")
        {
            xPixels -= .1;
        }
        else
        {
            xDirection = "right";
        }
        if (xPixels < 6 && xDirection == "right")
        {
            xPixels += .1;
        }
        else
        {
            xDirection = "left";
        }
        draw_surface_part( surface, 0,i, 320, 2, xPixels, i );
    }
    //application_surface_draw_enable(true);
}



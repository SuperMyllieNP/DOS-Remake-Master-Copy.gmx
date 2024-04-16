//Thanks to j8bit_forager#1861 for the code!
if (entityCanStep())
{
    if (canDamage)
    { 
        
            if ground//(sign(ycoll) == sign(yspeed))
        {
            if (grav == 0)
            {
                grav = image_yscale * 0.3; // make sure to multiply by yscale to account for mario's gravity
            }
            yspeed = -3 * image_yscale;
        }
                
        if (xcoll != 0)
        { //no need to check for the ground
            event_user(EV_DEATH);
        }
    }
    imgIndex += (1 / 3);  
    image_index = floor(imgIndex);
}

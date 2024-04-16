var bulletLimit = 2;
var weaponCost = 0;
var action = 2; // 0 - no frame; 1 - shoot; 2 - throw
var willStop = 0; // If this is 1, the player will halt on shooting ala Metal Blade.

if (!global.lockBuster)
{
    if (global.keyShootPressed[playerID] && !playerIsLocked(PL_LOCK_SHOOT))
    {
        i = fireWeapon(16, -8, objFireBall, 3, weaponCost, action, willStop);
        if (i)
        {
            i.xspeed = image_xscale * 2.5; // zoom
        }
    }
}

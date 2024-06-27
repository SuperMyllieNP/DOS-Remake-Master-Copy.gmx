/// playerHandlePausing();
// Pausing
if (!playerIsLocked(PL_LOCK_PAUSE))
{
    if (global.keyPausePressed[0])
    {
        if (global.playerHealth[playerID] > 0)
        {
            global.frozen = true;
            var menu = instance_create(x, y, objPauseMenu);
            // SECRET CODE
            if(global.keySlide[playerID] && global.keyWeaponSwitchRight[playerID]
                && xDir == 0 && yDir == -1 && !global.keyShoot[playerID]
                && !global.keyWeaponSwitchLeft[playerID] && global.keyJump[playerID])
                menu.allowExtraOptions = true;
            playSFX(sfxPause);
        }
    }
}

@echo off
if not "%1" == "-wrapper" (
echo genSounds.bat -wrapper ^> sounds.json > wrapper.bat
echo exit >> wrapper.bat
start /b wrapper.bat > nul
ping localhost -n 2 >nul
del wrapper.bat
echo Finished! ^(You can now close this window^)
exit
)

echo {
echo   "scream.death": {
echo     "sounds": [
echo       "scream/screamlong1",
echo       "scream/screamlong2",
echo       "scream/screammedium1",
echo       "scream/screammedium2"
echo     ]
echo   },
echo   "scream.hurt": {
echo     "sounds": [
echo       "scream/scream1",
echo       "scream/scream2",
echo       "scream/scream3",
echo       "scream/screammedium1",
echo       "scream/screammedium2"
echo     ]
echo   },
FOR %%G IN (bat, bee, blaze, cat, chicken, cod, cow, creeper, dolphin, donkey, drowned, elder_guardian, ender_dragon, enderman, endermite, evoker, fox, ghast, guardian, horse, husk, illusioner, iron_golem, llama, magma_cube, mule, ocelot, panda, parrot, phantom, pig, pillager, polar_bear, puffer_fish, rabbit, ravager, salmon, sheep, shulker, silverfish, skeleton, skeleton_horse, slime, snow_golem, spider, squid, tropical_fish, turtle, vex, villager, vindicator, wandering_trader, witch, wither, wither_skeleton, wolf, zombie, zombie_horse, zombie_pigman, zombie_villager) DO (
echo   "entity.%%G.death": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.death"
echo       }
echo     ]
echo   },
echo   "entity.%%G.hurt": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
)

echo   "entity.drowned.death_water": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.death"
echo       }
echo     ]
echo   },
echo   "entity.drowned.hurt_water": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.elder_guardian.hurt_land": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.guardian.hurt_land": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.magma_cube.hurt_small": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.magma_cube.death_small": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.death"
echo       }
echo     ]
echo   },
echo   "entity.shulker.hurt_closed": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.slime.hurt_small": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.turtle.hurt_baby": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.hurt"
echo       }
echo     ]
echo   },
echo   "entity.turtle.death_baby": {
echo     "replace": true,
echo     "sounds": [
echo       {
echo         "type": "event",
echo         "volume": 0.1,
echo         "name": "scream.death"
echo       }
echo     ]
echo   }
echo }
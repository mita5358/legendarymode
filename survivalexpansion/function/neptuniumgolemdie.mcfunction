stopsound @a
schedule clear survivalexpansion:ngloop
execute at @e[type=vindicator,team=neptuniumgolem] run playsound minecraft:entity.iron_golem.death master @a[tag=ngrange] ~ ~ ~ 10 0.5
execute at @e[type=vindicator,team=neptuniumgolem] run playsound minecraft:block.beacon.deactivate master @a[tag=ngrange] ~ ~ ~ 10 0.5
execute at @e[type=vindicator,team=neptuniumgolem] run playsound entity.lightning_bolt.impact master @a[tag=ngrange] ~ ~ ~ 10 0.5
kill @e[type=vindicator,team=neptuniumgolem]
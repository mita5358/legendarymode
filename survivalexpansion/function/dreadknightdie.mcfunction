stopsound @a
schedule clear survivalexpansion:dkloop
scoreboard players reset !Timer dk1
execute at @e[type=armor_stand,tag=dreadknightdetect] run playsound minecraft:entity.zombie.death master @a[tag=dkrange] ~ ~-10 ~ 10 0.5
execute at @e[type=armor_stand,tag=dreadknightdetect] run playsound minecraft:block.anvil.land master @a[tag=dkrange] ~ ~-10 ~ 10 0
execute at @e[type=armor_stand,tag=dreadknightdetect] run playsound entity.lightning_bolt.impact master @a[tag=dkrange] ~ ~-10 ~ 10 0.5
kill @e[type=armor_stand,tag=dreadknightdetect]
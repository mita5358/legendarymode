tp @s ~ ~-1000 ~
stopsound @a
schedule clear survivalexpansion:haloop
scoreboard players reset !Timer ha2
execute at @e[type=armor_stand,team=havenangel] run playsound minecraft:block.beacon.deactivate master @a[tag=harange] ~ ~ ~ 10 0.5
execute at @e[type=armor_stand,team=havenangel] run playsound entity.lightning_bolt.impact master @a[tag=harange] ~ ~ ~ 10 0.5
kill @e[type=armor_stand,team=havenangel]
kill @e[type=marker,tag=ha2]
kill @s
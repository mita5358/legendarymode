scoreboard players reset !Timer hero3

setblock 0 3 0 air
kill @e[distance=0..]
tp @e[distance=0..] ~ ~-1000 ~
stopsound @a
schedule clear survivalexpansion:hloop
schedule clear survivalexpansion:hloop2
kill @e[type=armor_stand,distance=0..]
bossbar set minecraft:herobrineg visible false
bossbar set minecraft:herobrine visible false
scoreboard players reset !Timer herotimer
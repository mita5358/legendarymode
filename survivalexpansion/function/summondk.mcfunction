summon leash_knot ~ ~-1 ~ {Tags:["particle"]}
playsound minecraft:block.end_portal.spawn ambient @a[distance=..100] ~ ~ ~ 999999 0
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["SummonDK2"]}
execute as @e[type=leash_knot,tag=particle] at @s positioned ~ ~-0.3 ~ run function survivalexpansion:reanimateparticles
execute as @e[type=armor_stand,tag=SummonDK2] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.005 100 normal
kill @s
schedule function survivalexpansion:dreadknight 3s
execute at @a run tag @e[distance=..7,] add unlinked
execute at @a run tag @e[distance=..7,tag=!unlinked] add linked

execute at @a as @e[type=!player,tag=unlinked,distance=..7] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:999999,Tags:["linked"],CustomName:'[{"text":"♥ 0","color":"red"}]'}
execute as @e[distance=..7,type=area_effect_cloud,tag=linked,tag=!interlinked,tag=!tntDi] on vehicle run function qol:datamerge

execute as @e[distance=..7,type=area_effect_cloud,tag=linked] at @s at @a run ride @s mount @e[distance=..7,tag=!linked,sort=nearest,limit=1]
execute as @e[distance=..7,type=area_effect_cloud,tag=linked] on vehicle run tag @s add linked
execute at @a run execute as @e[distance=..7,type=minecraft:area_effect_cloud,tag=linked] on vehicle on passengers run tag @s add interlinked
execute at @a run execute as @e[distance=..7,type=minecraft:area_effect_cloud,tag=linked,tag=!interlinked] run kill @s
tag @e remove interlinked
execute at @a run execute as @e[type=!item,distance=..7,nbt={HurtTime:9s}] at @s run function qol:datamerge
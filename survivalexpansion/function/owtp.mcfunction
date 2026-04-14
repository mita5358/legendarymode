execute in minecraft:overworld run tp @s ~ ~1 ~1

effect give @s minecraft:nausea 10 50 true
execute at @s run playsound minecraft:block.portal.travel ambient @s
forceload remove ~ ~ ~ ~
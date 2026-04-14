execute at @s run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..20] ~ ~ ~ 3 0
execute at @s run playsound minecraft:ambient.basalt_deltas.mood master @a[distance=..20] ~ ~ ~ 3 0
execute if entity @s[nbt={NoAI:1b}] run data merge entity @s {NoAI:0b,Tags:["not_dreadguardian","dreadspirit"]}
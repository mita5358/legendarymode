
tag @a add exemptchrono
tag @e[type=marker] add exemptchrono
tag @e[type=armor_stand] add exemptchrono
scoreboard players add @s timewarp 1
execute if score @s timewarp matches 1 at @s as @e[tag=!exemptchrono,distance=..30] run data merge entity @s {NoAI:1b,NoGravity:1b,Motion:[0.0,0.0,0.0]}
execute if score @s timewarp matches 1 at @s as @e[tag=!exemptchrono,distance=..30] at @s run particle sculk_soul ~ ~ ~ 0.5 0.75 0.5 0 50 force
execute if score @s timewarp matches 1 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 10 2
execute if score @s timewarp matches 1 at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0
execute if score @s timewarp matches 1 at @s run particle minecraft:enchant ~ ~ ~ 10 10 10 0 10000 force
execute if score @s timewarp matches 1 run scoreboard players set @s timewarp 2
execute if score @s timewarp matches 3 at @s as @e[tag=!exemptchrono,distance=..30] run data merge entity @s {NoAI:0b,NoGravity:0b}
execute if score @s timewarp matches 3 at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10 2
execute if score @s timewarp matches 3 at @s run particle minecraft:enchant ~ ~ ~ 10 10 10 0 10000 force
execute if score @s timewarp matches 3 at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0
execute if score @s timewarp matches 3 at @s as @e[tag=!exemptchrono,distance=..30] at @s run particle sculk_charge_pop ~ ~ ~ 0.5 0.75 0.5 0 50 force
execute if score @s timewarp matches 3.. run scoreboard players set @s timewarp 0
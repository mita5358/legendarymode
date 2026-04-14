execute as @e[type=villager] at @s run execute as @e[type=player,distance=0..3,limit=1,sort=nearest] run tag @s add Pandemic
execute as @e[type=player,limit=1,sort=nearest] at @s run execute as @a at @s as @a[distance=0.1..3] at @s run tag @s add Pandemic
effect give @e[type=player,tag=Pandemic] wither 2 3
tag @a remove Pandemic
scoreboard players add Timer PandemicT 1
scoreboard players set Timer PandemicE 1
execute if score Timer PandemicT matches 1 run title @a title {"text":"Pandemic","bold":true,"color":"dark_red"}
execute if score Timer PandemicT matches 1 run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 9999999 0.5 
execute if score Timer PandemicT matches 48000.. run execute as @a[limit=1] run tellraw @a {"text":"The Wither Virus has been eradicated!","bold":true,"color":"blue"}
execute if score Timer PandemicT matches 48000.. run scoreboard players reset Timer PandemicE
execute if score Timer PandemicT matches 48000.. run scoreboard players reset Timer PandemicT
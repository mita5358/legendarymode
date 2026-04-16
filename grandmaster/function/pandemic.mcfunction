# 1. 玩家靠近村民感染 (让玩家主动检测，大幅降低实体遍历数)
execute as @a at @s if entity @e[type=villager,distance=..3] run tag @s add Pandemic

# 2. 玩家互相传染 (已感染的玩家只寻找周围0.1~3格内没被感染的玩家，防止无限套娃)
execute as @a[tag=Pandemic] at @s run tag @a[distance=0.1..3,tag=!Pandemic] add Pandemic

# 3. 施加药水效果并清理本 Tick 的临时标签
effect give @a[tag=Pandemic] wither 2 3
tag @a remove Pandemic

# 4. 计时器与全服提示优化 (剥离多余的 as @a 判定)
scoreboard players add Timer PandemicT 1
scoreboard players set Timer PandemicE 1

execute if score Timer PandemicT matches 1 run title @a title {"text":"Pandemic","bold":true,"color":"dark_red"}
execute if score Timer PandemicT matches 1 run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 9999999 0.5 

execute if score Timer PandemicT matches 48000.. run tellraw @a {"text":"The Wither Virus has been eradicated!","bold":true,"color":"blue"}
execute if score Timer PandemicT matches 48000.. run scoreboard players reset Timer PandemicE
execute if score Timer PandemicT matches 48000.. run scoreboard players reset Timer PandemicT
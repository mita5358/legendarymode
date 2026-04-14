execute if score spider_count Spider matches 0 run summon zombie ~ ~ ~ {Team:"neptune_no_nametag",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,Tags:["dreadspirit"],CustomName:"Herobrine",attributes:[{id:"minecraft:attack_damage",base:1000},{id:"minecraft:follow_range",base:1000},{id:"minecraft:tempt_range",base:50},{id:"minecraft:movement_speed",base:0.6},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:water_movement_efficiency",base:1}]}
execute if score spider_count Spider matches 0 run tp @s ~ ~-256 ~
tag @s add not_dreadspirit
scoreboard players add spider_count Spider 1
execute if score spider_count Spider matches 10 run scoreboard players set spider_count Spider 0
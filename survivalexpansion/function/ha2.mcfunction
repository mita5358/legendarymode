execute if score !Timer ha2 matches 800..970 run summon marker ~ ~ ~ {Tags:["ha2"]}
execute if score !Timer ha2 matches 970 run execute as @e[type=marker,tag=ha2] run spreadplayers ~ ~ 25 25 false @s 
execute if score !Timer ha2 matches 970..1000 run execute at @e[type=marker,tag=ha2] run particle glow ~ ~ ~ 0 1 0 1 25 force
execute if score !Timer ha2 matches 1000 run execute at @e[type=marker,tag=ha2] run summon area_effect_cloud ~ ~1 ~ {Particle:{type:"crit"},Radius:2f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:1,show_particles:1b,show_icon:0b}]},CustomName:'{"text":"Angel Smite"}'}
execute if score !Timer ha2 matches 1000 run execute at @e[type=marker,tag=ha2] run summon lightning_bolt ~ ~ ~
execute if score !Timer ha2 matches 1000 run kill @e[type=marker,tag=ha2]
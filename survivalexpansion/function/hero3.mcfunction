execute if score !Timer hero3 matches 800..970 run summon marker ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["hero3"]}
execute if score !Timer hero3 matches 970 run execute as @e[type=marker,tag=hero3] run spreadplayers ~ ~ 70 70 false @s 
execute if score !Timer hero3 matches 970..1050 run execute at @e[type=marker,tag=hero3] run particle crimson_spore ~ ~ ~ 0 1 0 1 5 force
execute if score !Timer hero3 matches 970..1050 run execute at @e[type=marker,tag=hero3] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 1 0 1 5 force
execute if score !Timer hero3 matches 1050 run execute at @e[type=marker,tag=hero3] run summon area_effect_cloud ~ ~1 ~ {Particle:{type:"crit"},Radius:7f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:1,show_particles:1b}]},CustomName:'{"text":"Haven Smite"}'}
execute if score !Timer hero3 matches 1050 run execute at @e[type=marker,tag=hero3] run summon lightning_bolt ~ ~ ~
execute if score !Timer hero3 matches 1050.. run kill @e[type=marker,tag=hero3]
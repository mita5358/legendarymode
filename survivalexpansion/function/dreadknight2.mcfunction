scoreboard players add !Timer dk1 1
execute if score !Timer dk1 matches 1..40 run execute at @e[tag=dreadknight] run tp @e[tag=dreadknight] ~ ~0.5 ~
execute if score !Timer dk1 matches 1 run execute as @e[tag=dreadknight] run data merge entity @s {NoGravity:1b}
execute if score !Timer dk1 matches 80 run execute at @e[tag=dreadknight] run summon area_effect_cloud ~ ~-19 ~ {Particle:{type:"crimson_spore"},Radius:100f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20,show_particles:0b,show_icon:0b}]},CustomName:'{"color":"red","text":"Dreadrage"}'}
execute if score !Timer dk1 matches 80 run execute as @e[tag=dreadknight] run data merge entity @s {NoGravity:0b}
execute if score !Timer dk1 matches 80 run execute at @e[tag=dreadknight] run playsound minecraft:entity.ender_dragon.growl master @a[tag=dkrange] ~ ~ ~ 10 2
execute if score !Timer dk1 matches 80 run execute at @e[tag=dreadknight] run playsound minecraft:entity.lightning_bolt.impact master @a[tag=dkrange] ~ ~ ~ 10 2
execute if score !Timer dk1 matches 120.. run execute at @e[tag=dreadknight] as @a[tag=dkrange] run effect give @s blindness 5 1 true
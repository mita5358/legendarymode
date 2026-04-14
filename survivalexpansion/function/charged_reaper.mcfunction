execute if score stray_count Stray3 matches 0 run summon creeper ~ ~ ~ {Silent:1b,Health:30f,powered:1b,Tags:["charged_reaper"],CustomName:'{"text":"Charged Reaper"}',active_effects:[{id:"minecraft:14b",amplifier:1,duration:9999999,show_particles:0b}],attributes:[{id:"minecraft:generic.follow_range",base:120},{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.45}]}
execute if score stray_count Stray3 matches 0 run tp @s ~ ~-256 ~
tag @s add not_charged_reaper
scoreboard players add stray_count Stray3 1
execute if score stray_count Stray3 matches 5 run scoreboard players set stray_count Stray3 0
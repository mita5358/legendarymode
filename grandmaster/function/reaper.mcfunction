execute if score creeper_count Reaper matches 0 run summon creeper ~ ~ ~ {powered:1b,ExplosionRadius:10b,Tags:["not_reaper"],CustomName:'{"text":"Reaper"}',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:9999999,show_particles:0b}]}
execute if score creeper_count Reaper matches 0 run tp @s 0 -200 0
# 如果版本在 1.19+，其实可以直接写 run kill @s
tag @s add not_reaper
scoreboard players add creeper_count Reaper 1
execute if score creeper_count Reaper matches 5 run scoreboard players set creeper_count Reaper 0
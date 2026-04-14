execute if score husk_count Husk matches 0 run summon spider ~ ~ ~ {Silent:1b,Health:40f,Tags:["not_geophantom"],CustomName:'{"text":"Geophantom"}',Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:6}]}
execute if score husk_count Husk matches 0 run tp @s ~ ~-256 ~
tag @s add not_geophantom
scoreboard players add husk_count Husk 1
execute if score husk_count Husk matches 5 run scoreboard players set husk_count Husk 0
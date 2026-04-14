execute if score stray_count Stray2 matches 0 run summon vex ~ ~ ~
execute if score stray_count Stray2 matches 0 run tp @s ~ ~-256 ~
tag @s add not_vex
scoreboard players add stray_count Stray2 1
execute if score stray_count Stray2 matches 5 run scoreboard players set stray_count Stray2 0


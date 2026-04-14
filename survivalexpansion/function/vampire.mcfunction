execute if score husk_count Husk3 matches 0 run summon bat ~ ~ ~ {Silent:1b,CustomName:'{"text":"Vampire Bat"}'}
execute if score husk_count Husk3 matches 0 run tp @s ~ ~-256 ~
tag @s add not_vampire
scoreboard players add husk_count Husk3 1
execute if score husk_count Husk3 matches 5 run scoreboard players set husk_count Husk3 0
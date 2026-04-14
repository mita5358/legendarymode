execute in survivalexpansion:the_void run function survivalexpansion:invoid

#Part 1

bossbar set minecraft:herobrine players @a[tag=void]
execute store result bossbar minecraft:herobrine value run data get entity @e[type=husk,tag=herobrine,limit=1] Health
execute if entity @e[type=minecraft:husk,tag=herobrine] run bossbar set minecraft:herobrine visible true
execute unless entity @e[type=minecraft:husk,tag=herobrine] run bossbar set minecraft:herobrine visible false
execute unless entity @e[type=minecraft:husk,tag=herobrine] run scoreboard players reset !Timer herotimer2

execute if score Herohealth heroh matches 11.. run function survivalexpansion:part1

#Hero1

execute if score !Timer hero1 matches 300 at @e[type=husk,tag=herobrine] run playsound minecraft:entity.enderman.teleport master @a[tag=void] ~ ~ ~ 10 1
execute if score !Timer hero1 matches 300 as @e[type=husk,tag=herobrine] at @r[tag=void] run spreadplayers ~ ~ 7 7 false @s
execute if score !Timer hero1 matches 300.. run scoreboard players reset !Timer hero1

#Hero2

execute if score !Timer hero2 matches 500 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero2 matches 500 run effect give @e[type=husk,tag=herobrine] slowness 3 2 true
execute if score !Timer hero2 matches 500..560 at @e[type=husk,tag=herobrine] anchored feet run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.125 0.5 0.125 1 5 force
execute unless score !Timer hero2 matches 500..560 run effect clear @e[type=husk,tag=herobrine] slowness 
execute if score !Timer hero2 matches 560 run effect give @e[type=husk,tag=herobrine] speed 1 3 true
execute if score !Timer hero2 matches 570 at @e[type=husk,tag=herobrine] anchored feet run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 999999 0
execute if score !Timer hero2 matches 570 at @e[type=husk,tag=herobrine] anchored feet run playsound minecraft:block.anvil.land master @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer hero2 matches 570 at @e[type=husk,tag=herobrine] anchored feet run particle flame ~ ~ ~ 1 1 1 1 100 force
execute if score !Timer hero2 matches 570 at @e[type=husk,tag=herobrine] anchored feet run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 1 0.5 1 1 100 force
execute if score !Timer hero2 matches 570 at @e[type=husk,tag=herobrine] anchored feet if entity @a[distance=0..3] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"crimson_spore"},Radius:3f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:1,show_particles:1b}]},CustomName:"Dense Dreadwrath"}
execute if score !Timer hero2 matches 570.. run scoreboard players reset !Timer hero2

#Hero3

execute if score !Timer hero3 matches 950 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero3 matches 960 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero3 matches 970 in survivalexpansion:the_void run playsound minecraft:block.beacon.activate master @a[tag=void] 0 0 0 999999999 0
execute if score !Timer hero3 matches 970 in survivalexpansion:the_void run playsound minecraft:entity.generic.explode ambient @a[tag=void] 0 0 0 999999 1
execute if score !Timer hero3 matches 970 in survivalexpansion:the_void run playsound minecraft:block.end_portal_frame.fill master @a[tag=void] 0 0 0 999999999 0
execute if score !Timer hero3 matches 850..1050 in survivalexpansion:the_void positioned 0 0 0 run function survivalexpansion:hero3
execute if score !Timer hero3 matches 1050.. run scoreboard players reset !Timer hero3

#Hero4

execute if score !Timer hero4 matches 1300 run playsound minecraft:entity.enderman.teleport master @a[tag=void] ~ ~ ~ 10 0
execute if score !Timer hero4 matches 1300 run playsound minecraft:entity.enderman.teleport master @a[tag=void] ~ ~ ~ 10 2
execute if score !Timer hero4 matches 1300 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero4 matches 1310 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero4 matches 1320 in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer hero4 matches 1350 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1380 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1400 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1410 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1415 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1440 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1480 in survivalexpansion:the_void run function survivalexpansion:dreadwrath
execute if score !Timer hero4 matches 1300.. in survivalexpansion:the_void run tp @e[type=husk,tag=herobrine] 0 20 0
execute if score !Timer hero4 matches 1500.. run scoreboard players reset !Timer hero4

#Hero5

execute if score !Timer hero5 matches 630 run playsound minecraft:entity.zombie.infect master @a[tag=void] ~ ~ ~ 999999 2
execute if score !Timer hero5 matches 630 run effect give @e[type=husk,tag=herobrine] invisibility 1 1 true
execute if score !Timer hero5 matches 650 run playsound minecraft:entity.zombie.infect master @a[tag=void] ~ ~ ~ 999999 2
execute if score !Timer hero5 matches 650.. run scoreboard players reset !Timer hero5

#Part 2

#Dreadbrine

execute store result score Herohealth heroh run data get entity @e[type=husk,limit=1,tag=herobrine] Health
execute if score Herohealth heroh matches ..10 if entity @e[type=husk,tag=herobrine] run function survivalexpansion:part2

#Part 3

execute if score !Timer herotimer matches 1000.. unless entity @e[tag=herobrine] in survivalexpansion:the_void run function survivalexpansion:part3

#Part 4

execute if score !Timer herorng matches 8.. in survivalexpansion:the_void run function survivalexpansion:part4
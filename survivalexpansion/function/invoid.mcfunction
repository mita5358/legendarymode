effect give @e[type=!player,distance=0..] resistance infinite 2 true
effect give @e[type=!player,distance=0..] strength infinite 4 true
execute if score !Timer herotimer matches 1 run scoreboard players reset !Timer hero1
execute if score !Timer herotimer matches 1 run scoreboard players reset !Timer hero2
execute if score !Timer herotimer matches 1 run scoreboard players reset !Timer hero3
execute if score !Timer herotimer matches 1 run playsound minecraft:item.firecharge.use master @a[tag=void] 0 3 0 999999 0
execute unless block 0 3 0 fire run scoreboard players reset !Timer herotimer
execute unless block 0 3 0 fire run scoreboard players reset !Timer herotimer2
execute unless block 0 3 0 fire run scoreboard players reset !Timer herotimer3
execute unless block 0 3 0 fire run scoreboard players reset !Timer herotimer4
execute unless block 0 3 0 fire run scoreboard players reset !Timer herorng
execute unless block 0 3 0 fire run scoreboard players reset !Timer hero6
execute unless block 0 3 0 fire run scoreboard players reset @a heroflame
execute unless block 0 3 0 fire run bossbar set minecraft:flame visible false
execute unless block 0 3 0 fire run kill @e[tag=herotarget]

execute if block 0 3 0 fire run function survivalexpansion:herobrine
execute if score !Timer herotimer matches 150 run function survivalexpansion:hloop
execute if score !Timer herotimer matches 180 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 185 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 190 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 195 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 200 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 230 run playsound minecraft:block.beacon.activate ambient @a[tag=void] 0 3 0 99999999 0
execute if score !Timer herotimer matches 230 run playsound minecraft:block.beacon.activate ambient @a[tag=void] 0 3 0 99999999 2
execute if score !Timer herotimer matches 250..445 run particle falling_lava 0 30 0 0 0 0 0 10
execute if score !Timer herotimer matches 250..445 run particle flame 0 30 0 0 0 0 0 5
execute if score !Timer herotimer matches 435 run particle minecraft:witch 0 30 0 8 8 8 1 1000 force
execute if score !Timer herotimer matches 435 run playsound minecraft:entity.warden.sonic_charge master @a[tag=void] 0 3 0 999999 2
execute if score !Timer herotimer matches 440 run particle minecraft:explosion 0 30 0 8 8 8 1 1000 force
execute if score !Timer herotimer matches 440 run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] 0 3 0 999999 2
execute if score !Timer herotimer matches 440 run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] 0 3 0 999999 0
execute if score !Timer herotimer matches 440 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 440 run summon husk 0 30 0 {NoGravity:1b,Silent:1b,DeathLootTable:"null",Team:"neptune_no_nametag",PersistenceRequired:1b,Health:512f,Tags:["herobrine"],Passengers:[{id:"minecraft:armor_stand",Team:"herobrine",Marker:1b,Invisible:1b,PersistenceRequired:0b}],CustomName:"Herobrine",active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:9999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:15},{id:"minecraft:follow_range",base:120},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:512},{id:"minecraft:movement_speed",base:0.5}]}

execute if score !Timer herotimer matches 445..630 run execute as @a at @s run execute as @e[type=husk,tag=herobrine] at @s run tp @s ~ ~ ~ facing entity @p feet
execute if score !Timer herotimer matches 445..630 run execute in survivalexpansion:the_void as @e[type=husk,tag=herobrine] at @s run tp @s 0 ~-0.1 0
execute if score !Timer herotimer matches 710 run execute as @e[type=husk,tag=herobrine] at @s run execute at @r[tag=void] run spreadplayers ~ ~ 7 7 false @s
execute if score !Timer herotimer matches 710 run summon lightning_bolt 0 3 0
execute if score !Timer herotimer matches 710 run playsound minecraft:entity.enderman.teleport master @a[tag=void] ~ ~ ~ 999999 1
execute if score !Timer herotimer matches 715 run execute as @e[type=husk,tag=herobrine] run data merge entity @s {NoGravity:0b}

execute if score !Timer killedherobrinet matches 1 unless block 0 3 0 fire run execute at @a run playsound custom:secredits master @a[tag=void]
execute if score !Timer killedherobrinet matches 1 unless block 0 3 0 fire run effect give @a[distance=0..] levitation 325 1 true
execute if score !Timer killedherobrine matches 0 as @a if score @s y matches 579 run execute in minecraft:overworld run tp @s ~ -60 ~

execute if score !Timer killedherobrine matches 1 unless block 0 3 0 fire run scoreboard players reset !Timer herotimer
execute if score !Timer killedherobrine matches 1 unless block 0 3 0 fire run scoreboard players add !Timer killedherobrinet 1
execute if score !Timer killedherobrinet matches 2 run scoreboard players set !Timer killedherobrine 0
execute if score !Timer killedherobrine matches 0 run scoreboard players reset !Timer killedherobrinet

#Credits

execute if score !Timer killedherobrinet2 matches 1.. run scoreboard players add !Timer killedherobrinet2 1

execute if score !Timer killedherobrine matches 1 unless block 0 3 0 fire run scoreboard players add !Timer killedherobrinet2 1
execute if score !Timer killedherobrinet2 matches 100 run title @a[distance=0..] title ["","Minecraft: ",{"text":"Survival Expansion","bold":true,"color":"aqua"},{"text":" III","bold":true,"color":"dark_purple"}]
execute if score !Timer killedherobrinet2 matches 200 run title @a[distance=0..] title "Credits:"
execute if score !Timer killedherobrinet2 matches 300 run title @a[distance=0..] title ["","Developer: ",{"text":"Skrabbat ","color":"blue"},{"text":"\"Neptune\"","color":"dark_purple"}]
execute if score !Timer killedherobrinet2 matches 400 run title @a[distance=0..] title ["","Textures: ",{"text":"Skrabbat ","color":"blue"},{"text":"\"Neptune\"","color":"dark_purple"}]
execute if score !Timer killedherobrinet2 matches 500 run title @a[distance=0..] title "Music:"
execute if score !Timer killedherobrinet2 matches 600 run title @a[distance=0..] title ["",{"text":"Havenlands","color":"aqua"},{"text":" Music: ","color":"dark_purple"},"Entering the Crystal Caves"]
execute if score !Timer killedherobrinet2 matches 600 run title @a[distance=0..] subtitle {"text":"- JRSanchez93","color":"blue"}
execute if score !Timer killedherobrinet2 matches 700 run title @a[distance=0..] title ["",{"text":"Dreadlands","color":"dark_red"},{"text":" Music: ","color":"dark_purple"},"Horror Ambience Music 3"]
execute if score !Timer killedherobrinet2 matches 700 run title @a[distance=0..] subtitle {"text":"- ThrillShowX","color":"blue"}
execute if score !Timer killedherobrinet2 matches 800 run title @a[distance=0..] title ["",{"text":"Dragon & Helvius","color":"dark_aqua"},{"text":" Music: ","color":"dark_purple"},"Sweden (Orchestral)"]
execute if score !Timer killedherobrinet2 matches 800 run title @a[distance=0..] subtitle {"text":"- Yvan_TheDancingFishstick","color":"blue"}
execute if score !Timer killedherobrinet2 matches 900 run title @a[distance=0..] title ["",{"text":"Neptunium Golem","color":"dark_blue"},{"text":" Music: ","color":"dark_purple"},"The Razing of Heaven"]
execute if score !Timer killedherobrinet2 matches 900 run title @a[distance=0..] subtitle {"text":"- Joseph Earwicker","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1000 run title @a[distance=0..] title ["",{"text":"Dreadknight","color":"red"},{"text":" Music: ","color":"dark_purple"},"I Will Find You"]
execute if score !Timer killedherobrinet2 matches 1000 run title @a[distance=0..] subtitle {"text":"- Darren Curtis","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1100 run title @a[distance=0..] title ["",{"text":"Haven Angel","color":"blue"},{"text":" Music: ","color":"dark_purple"},"Dark Angel"]
execute if score !Timer killedherobrinet2 matches 1100 run title @a[distance=0..] subtitle {"text":"- Phil Rey Gibbons","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1200 run title @a[distance=0..] title ["",{"text":"Void","color":"gray"},{"text":" Music: ","color":"dark_purple"},"Fables"]
execute if score !Timer killedherobrinet2 matches 1200 run title @a[distance=0..] subtitle {"text":"- Secession Studios","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1300 run title @a[distance=0..] title ["",{"text":"Herobrine","color":"white"},{"text":" Music 1: ","color":"dark_purple"},"Dominion of Destiny"]
execute if score !Timer killedherobrinet2 matches 1300 run title @a[distance=0..] subtitle {"text":"- Secession Studios","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1400 run title @a[distance=0..] title ["",{"text":"Herobrine","color":"white"},{"text":" Music 2: ","color":"dark_purple"},"AXIS"]
execute if score !Timer killedherobrinet2 matches 1400 run title @a[distance=0..] subtitle {"text":"- Tom Player","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1500 run title @a[distance=0..] title ["",{"text":"Credits","color":"gold"},{"text":" Music: ","color":"dark_purple"},"Death May Die"]
execute if score !Timer killedherobrinet2 matches 1500 run title @a[distance=0..] subtitle {"text":"- Secession Studios","color":"blue"}
execute if score !Timer killedherobrinet2 matches 1700 run title @a[distance=0..] title {"text":"Thank you for playing!","color":"green"}
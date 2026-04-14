execute in survivalexpansion:the_void as @a[distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=armor_stand,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=giant,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=experience_orb,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=arrow,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=spectral_arrow,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=trident,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=egg,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=snowball,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=chicken,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=item,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=vex,distance=0..] run tag @s add exclude
execute in survivalexpansion:the_void as @e[type=!item,distance=0..] run data merge entity @s {PersistenceRequired:1b}
execute in survivalexpansion:the_void run execute as @a at @s run execute as @e[type=zombie,tag=dg] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,type=armor_stand,tag=herotarget] feet
execute in survivalexpansion:the_void run execute as @e[type=zombie,tag=dg] at @s run tp @s ^ ^ ^0.2
execute in survivalexpansion:the_void run execute as @e[tag=dg] at @s if block ~ ~ ~ gold_block run tp @s ~ ~1 ~
execute in survivalexpansion:the_void run execute as @e[tag=dg] at @s if block ~ ~ ~ netherrack run tp @s ~ ~1 ~

scoreboard players add !Timer summondread 1
scoreboard players add !Timer herotimer3 1
execute if score !Timer herotimer3 matches 1 run summon armor_stand 0 1 0 {Invulnerable:1b,Invisible:1b,Tags:["herotarget"]}
execute if score !Timer herotimer3 matches 1 run bossbar set minecraft:herobrine max 512
execute if score !Timer herotimer3 matches 1 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 1 run schedule clear survivalexpansion:hloop
execute if score !Timer herotimer3 matches 1 run stopsound @a master custom:herobrine
execute if score !Timer herotimer3 matches 20 run execute in survivalexpansion:the_void run function survivalexpansion:lightning

execute if score !Timer herotimer3 matches 40 run execute in survivalexpansion:the_void run function survivalexpansion:lightning

execute if score !Timer herotimer3 matches 50 run function survivalexpansion:hloop2
execute if score !Timer herotimer3 matches 100 run tellraw @a[tag=void] {"text":"<Herobrine> You think you've won haven't you?","color":"dark_red"}
execute if score !Timer herotimer3 matches 100 run playsound entity.firework_rocket.launch master @a[tag=void] 0 0 0 9999999 0

execute if score !Timer herotimer3 matches 120 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 122 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 124 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 126 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 128 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 130 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 132 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 134 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 136 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 138 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 140 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 142 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 144 run execute in survivalexpansion:the_void run function survivalexpansion:lightning

execute if score !Timer herotimer3 matches 160 run tellraw @a {"text":"<Herobrine> Yet the flame still burns...","color":"dark_red"}
execute if score !Timer herotimer3 matches 160 run playsound minecraft:block.beacon.activate master @a[tag=void] ~ ~ ~ 999999999 0
execute if score !Timer herotimer3 matches 160..575 run particle glow 0 3 0 0 100 0 1 1000 force
execute if score !Timer herotimer3 matches 160..575 run particle end_rod 0 3 0 0 100 0 1 10 force
execute if score !Timer herotimer3 matches 575 run function survivalexpansion:lightning
execute if score !Timer herotimer3 matches 575 run particle explosion 0 0 0 5 50 5 1 1000 force
execute if score !Timer herotimer3 matches 575 run execute in survivalexpansion:the_void run summon giant 0 10 0 {NoGravity:1b,Invulnerable:1b,Team:"herobrine",Health:1000f,Tags:["Herobrine"],CustomName:"Herobrine",active_effects:[{id:"minecraft:12",amplifier:1,duration:99999999,show_particles:1b}],attributes:[{id:"minecraft:max_health",base:1000}]}
execute if score !Timer herorng matches ..8 run execute as @a at @s run execute as @e[type=giant,tag=Herobrine] anchored eyes at @s run tp @s ~ ~ ~ facing entity @p feet
execute if score !Timer herotimer3 matches 575 run bossbar set minecraft:herobrineg players @a[tag=void]
execute if score !Timer herotimer3 matches 575 run bossbar set minecraft:flame players @a[tag=void]
execute if score !Timer herotimer3 matches 575 run bossbar set minecraft:flame visible true
execute if score !Timer herotimer3 matches 575 run scoreboard players set @a heroflame 500
execute if score !Timer herotimer3 matches 575 run scoreboard players set !Timer herorng 0

execute store result score Herohealth herogh run data get entity @e[type=giant,limit=1,tag=Herobrine] Health
execute if entity @e[type=minecraft:giant,tag=Herobrine] run bossbar set minecraft:herobrineg visible true
execute unless entity @e[type=minecraft:giant,tag=Herobrine] run bossbar set minecraft:herobrineg visible false
execute store result bossbar minecraft:herobrineg value run data get entity @e[type=giant,limit=1,tag=Herobrine] Health
execute if score !Timer herotimer3 matches 575.. run execute in survivalexpansion:the_void positioned 0 1 0 run function survivalexpansion:circle
execute if score !Timer herotimer3 matches 575.. run execute in survivalexpansion:the_void as @a[distance=0..] run title @a[tag=void] actionbar {"text":"CAPTURE THE FLAME","bold":true,"color":"dark_red"}
execute if score !Timer herotimer3 matches 575.. run execute in survivalexpansion:the_void positioned 0 1 0 if entity @a[distance=..6.5] unless entity @e[tag=!exclude,distance=..6.5] run scoreboard players add @a[distance=0..] heroflame 1
execute if score !Timer herotimer3 matches 575.. run execute in survivalexpansion:the_void positioned 0 1 0 if entity @e[tag=!exclude,distance=..6.5] unless entity @a[distance=..6.5] run scoreboard players operation @a[distance=0..] heroflame -= hero 1
execute as @a if score @s heroflame matches 1000.. run scoreboard players set @a heroflame 1000
execute as @a if score @s heroflame matches ..0 run scoreboard players set @a heroflame 0
execute as @a if score @s heroflame matches 0 run kill @a[tag=void]
execute if score !Timer herotimer3 matches 575.. run scoreboard players add !Timer hero6 1
execute as @a store result bossbar minecraft:flame value run scoreboard players get @s heroflame
execute if score !Timer herorng matches ..8 run execute in survivalexpansion:the_void unless entity @e[tag=!exclude,distance=0..] run function survivalexpansion:heroattackr

#Summon Dreadguardians through evokers 

execute in survivalexpansion:the_void as @e[type=evoker,name=Evoker,distance=0..] run execute if score !Timer summondread matches 1000 at @s run summon zombie ~-3 1 ~-3 {Silent:1b,PersistenceRequired:1b,Health:30f,Tags:["dread_guardian","dg","not_dreadguardian"],CustomName:{"bold":true,"color":"dark_red","text":"Dread Guardian"},equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;125903567,-559332347,-1106526735,119006413],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmYjM1YzUwNjE1MGQ1ZWY4MzVmMjlmOTU3Mzk2YjQyODk1MDUyOTVjNTUwYmY1YWY3ZWQ5ZDA5MmMzNmVlZCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:30}]}
execute in survivalexpansion:the_void as @e[type=evoker,name=Evoker,distance=0..] run execute if score !Timer summondread matches 1000 at @s run summon zombie ~3 1 ~3 {Silent:1b,PersistenceRequired:1b,Health:30f,Tags:["dread_guardian","dg","not_dreadguardian"],CustomName:{"bold":true,"color":"dark_red","text":"Dread Guardian"},equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;125903567,-559332347,-1106526735,119006413],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmYjM1YzUwNjE1MGQ1ZWY4MzVmMjlmOTU3Mzk2YjQyODk1MDUyOTVjNTUwYmY1YWY3ZWQ5ZDA5MmMzNmVlZCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:30}]}
execute in survivalexpansion:the_void as @e[type=evoker,name=Evoker,distance=0..] run execute if score !Timer summondread matches 1000 at @s run summon zombie ~-3 1 ~3 {Silent:1b,PersistenceRequired:1b,Health:30f,Tags:["dread_guardian","dg","not_dreadguardian"],CustomName:{"bold":true,"color":"dark_red","text":"Dread Guardian"},equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;125903567,-559332347,-1106526735,119006413],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmYjM1YzUwNjE1MGQ1ZWY4MzVmMjlmOTU3Mzk2YjQyODk1MDUyOTVjNTUwYmY1YWY3ZWQ5ZDA5MmMzNmVlZCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:30}]}
execute in survivalexpansion:the_void as @e[type=evoker,name=Evoker,distance=0..] run execute if score !Timer summondread matches 1000 at @s run summon zombie ~3 1 ~-3 {Silent:1b,PersistenceRequired:1b,Health:30f,Tags:["dread_guardian","dg","not_dreadguardian"],CustomName:{"bold":true,"color":"dark_red","text":"Dread Guardian"},equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;125903567,-559332347,-1106526735,119006413],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmYjM1YzUwNjE1MGQ1ZWY4MzVmMjlmOTU3Mzk2YjQyODk1MDUyOTVjNTUwYmY1YWY3ZWQ5ZDA5MmMzNmVlZCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:30}]}
execute in survivalexpansion:the_void as @e[type=evoker,name=Evoker,distance=0..] run execute if score !Timer summondread matches 1000.. run scoreboard players reset !Timer summondread

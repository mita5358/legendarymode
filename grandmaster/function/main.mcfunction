
#Protection V

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] at @s run function grandmaster:prot5

#Timers

scoreboard players add Timer WitherSpecial 1
scoreboard players add Timer WitherSpecial2 1
scoreboard players add Timer WitherSpecial3 1
scoreboard players add Timer WitherSpecial4 1
scoreboard players add Timer EndDragon 1
scoreboard players add Timer EndDragon2 1
scoreboard players add Timer EndDragon3 1
scoreboard players add Timer EndDragon4 1
scoreboard players add Timer Creepersound 1
scoreboard players add Timer EGuardian 1
scoreboard players add Timer ZombieDash 1
scoreboard players add Timer RandomInfect 1
scoreboard players add Timer CreeperInvis 1
scoreboard players add Timer CreeperDash 1
scoreboard players add Timer EndDragon6 1

#Perma hard mode

difficulty hard

#Wither Attacks

scoreboard players set Timer wsL 0
execute as @e[type=wither_skeleton,nbt={Tags:["ws"]}] run scoreboard players add Timer wsL 1
execute as @a if score Timer WitherSpecial matches 400 run execute at @e[type=wither] unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"null",Tags:["ws"]}
execute as @a if score Timer WitherSpecial matches 400 run execute at @e[type=wither] unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"null",Tags:["ws"]}
execute as @a if score Timer WitherSpecial matches 400 run execute at @e[type=wither] unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"null",Tags:["ws"]}
execute as @a if score Timer WitherSpecial matches 400 run execute at @e[type=wither] unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"null",Tags:["ws"]}
execute as @a if score Timer WitherSpecial matches 400 run execute at @e[type=wither] unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"null",Tags:["ws"]}
execute as @a if score Timer WitherSpecial matches 400.. run scoreboard players reset Timer WitherSpecial
execute as @a if score Timer WitherSpecial2 matches 500 run function grandmaster:witherspecial2
execute as @a if score Timer WitherSpecial2 matches 500.. run scoreboard players reset Timer WitherSpecial2
execute as @a if score Timer WitherSpecial3 matches 600 run execute at @e[type=wither] run summon minecraft:creeper ~ ~-10 ~ {Glowing:0b,powered:1b,ExplosionRadius:9b,Fuse:0,CustomName:'{"text":"Wither Explosion","color":"dark_gray"}'}
execute as @a if score Timer WitherSpecial3 matches 600.. run scoreboard players reset Timer WitherSpecial3
execute as @a if score Timer WitherSpecial4 matches 800 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[1.0,-3.0,0.0]}
execute as @a if score Timer WitherSpecial4 matches 801 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[1.0,-3.0,0.5]}
execute as @a if score Timer WitherSpecial4 matches 802 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[1.0,-3.0,1.0]}
execute as @a if score Timer WitherSpecial4 matches 803 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.5,-3.0,1.0]}
execute as @a if score Timer WitherSpecial4 matches 804 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.25,-3.0,1.0]}
execute as @a if score Timer WitherSpecial4 matches 805 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-0.0,-3.0,1.0]}
execute as @a if score Timer WitherSpecial4 matches 806 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-0.5,-3.0,1.0]}
execute as @a if score Timer WitherSpecial4 matches 807 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-1.5,-3.0,0.5]}
execute as @a if score Timer WitherSpecial4 matches 808 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-1.5,-3.0,0.0]}
execute as @a if score Timer WitherSpecial4 matches 809 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-1.5,-3.0,-0.5]}
execute as @a if score Timer WitherSpecial4 matches 810 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-1.5,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 811 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-1.0,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 812 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-0.5,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 813 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[-0.0,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 814 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.5,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 815 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[1.0,-3.0,-1.0]}
execute as @a if score Timer WitherSpecial4 matches 816 run execute at @e[type=wither] run summon minecraft:fireball ~ ~-1 ~ {Motion:[1.0,-3.0,-0.5]}
execute as @a if score Timer WitherSpecial4 matches 817.. run scoreboard players reset Timer WitherSpecial4

#Ender Dragon Attacks

execute in minecraft:the_end positioned 0 50 0 as @a[distance=0..700] at @s run tag @s add dragonaggro

execute as @a if score Timer EndDragon matches 1000 run execute at @e[type=player,tag=dragonaggro] run execute if entity @e[type=ender_dragon] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"portal"},Radius:20f,Duration:80,potion_contents:{potion:"minecraft:harming"},CustomName:{"color":"dark_purple","text":"Dragon's Wrath"}}
execute as @a if score Timer EndDragon matches 1000 run execute at @e[type=ender_dragon] run playsound entity.ender_dragon.ambient ambient @a[tag=dragonaggro] ~ ~ ~ 999999 0
execute as @a if score Timer EndDragon matches 1000 run execute at @e[type=ender_dragon] run playsound minecraft:entity.lightning_bolt.thunder ambient @a[tag=dragonaggro] ~ ~ ~ 9999999 0
execute as @a if score Timer EndDragon matches 1000.. run scoreboard players reset Timer EndDragon
schedule function grandmaster:dragon 30s append
execute if score Timer EndDragon3 matches 750.. run scoreboard players set Timer EndDragonT 1
execute if score Timer EndDragonT matches 1 run scoreboard players add Timer EndDragonE 1
execute as @a if score Timer EndDragonE matches 20 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 40 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 60 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 80 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 100 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 120 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 140 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 160 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 180 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 200 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 220 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 240 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 260 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 280 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 300 run execute if entity @e[type=ender_dragon] run execute in minecraft:the_end at @a[tag=dragonaggro] run summon lightning_bolt ~ ~ ~
execute as @a if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragon3
execute as @a if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragonT
execute as @a if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragonE
execute as @a if score Timer EndDragon4 matches 1600 run execute at @e[type=ender_dragon] run function grandmaster:enddragon4
execute as @a if score Timer EndDragon4 matches 1700 run execute if entity @e[type=ender_dragon] in minecraft:the_end run kill @e[type=dragon_fireball]
execute as @a if score Timer EndDragon4 matches 1700.. run scoreboard players reset Timer EndDragon4

execute if entity @a[tag=Inend] run execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:1b}] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 iron_bars
execute if entity @a[tag=Inend] run execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:1b}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute if entity @a[tag=Inend] run execute as @e[type=minecraft:end_crystal,nbt={ShowBottom:1b}] at @s run setblock ~ ~-1 ~ bedrock
execute if entity @a[tag=Inend] as @e[type=end_crystal,nbt={ShowBottom:1b}] run data merge entity @s {ShowBottom:0b}
execute if entity @e[type=ender_dragon] run execute if score Timer EndDragon6 matches 4000 run execute as @a at @s in minecraft:the_end run tp @s[tag=dragonaggro] ~ ~100 ~
execute if entity @e[type=ender_dragon] run execute if score Timer EndDragon6 matches 4000 run playsound minecraft:entity.enderman.teleport ambient @a[tag=dragonaggro] ~ ~ ~ 100 1
execute as @a if score Timer EndDragon6 matches 4000.. run scoreboard players reset Timer EndDragon6

#Reaper Spawning

execute as @e[type=creeper,tag=!not_reaper,sort=random] at @s run function grandmaster:reaper

#Creeper Sounds

execute as @a if score Timer Creepersound matches 250 run execute as @e[type=creeper] at @s run playsound block.sand.break ambient @a[distance=..30] ~ ~ ~ 1 1
execute as @a if score Timer Creepersound matches 250 run scoreboard players reset Timer Creepersound

#Elder Guardian Attack

scoreboard players set Timer esL 0
execute as @e[type=guardian,nbt={Tags:["es"]}] run scoreboard players add Timer esL 1
execute as @a if score Timer EGuardian matches 700 run execute at @e[type=elder_guardian] unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"null",Tags:["es"]}
execute as @a if score Timer EGuardian matches 700 run execute at @e[type=elder_guardian] unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"null",Tags:["es"]}
execute as @a if score Timer EGuardian matches 700 run execute at @e[type=elder_guardian] unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"null",Tags:["es"]}
execute as @a if score Timer EGuardian matches 700 run execute at @e[type=elder_guardian] unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"null",Tags:["es"]}
execute as @a if score Timer EGuardian matches 700 run execute at @e[type=elder_guardian] unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"null",Tags:["es"]}
execute as @a if score Timer EGuardian matches 700.. run scoreboard players reset Timer EGuardian

#Insomnia

execute if score Timer Time matches 12000 store result score Timer irng run random value 1..5
execute if score Timer irng matches 1 run function grandmaster:insomnia
scoreboard players reset Timer irng
execute if score Timer Insomniac matches 1 run function grandmaster:insomnia

#Mob Buffs

tag @e[type=ender_dragon] add noeffect
tag @e[type=wither] add noeffect
tag @e[type=player] add noeffect
execute in minecraft:overworld as @e[tag=!noeffect] run effect give @s resistance infinite 3 true
execute in minecraft:overworld as @e[tag=!noeffect] run effect give @s strength infinite 5 true
execute in minecraft:overworld as @e[tag=!noeffect] run tag @s add noeffect
execute as @e[type=creeper,nbt=!{ExplosionRadius:6b}] run data merge entity @s {ExplosionRadius:6b}

#Ender Pearl Trade Prevention

execute as @e[type=villager,nbt={VillagerData:{level:4,profession:"minecraft:cleric"}},tag=!AlreadyMod] run data merge entity @s {Tags:["AlreadyMod"],VillagerData:{level:4,profession:"minecraft:cleric"},Offers:{Recipes:[{buy:{id:"minecraft:rotten_flesh",Count:32b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:redstone",Count:2b}},{buy:{id:"minecraft:gold_ingot",Count:3b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:lapis_lazuli",Count:1b}},{buy:{id:"minecraft:rabbit_foot",Count:2b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:glowstone",Count:1b}},{buy:{id:"minecraft:scute",Count:4b},sell:{id:"minecraft:emerald",Count:1b}}]}}

execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run execute as @e[type=piglin,distance=0..5] run tag @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] add EnderKill
kill @e[tag=EnderKill]


#Events

#Pandemic

execute if score Timer Time matches 1000 store result score Timer prng run random value 1..10 
execute if score Timer prng matches 1 run function grandmaster:pandemic
scoreboard players reset Timer prng
execute if score Timer PandemicE matches 1 run function grandmaster:pandemic
execute as @a unless score @s Dragonkilled2 matches 1.. as @a[nbt={SleepTimer:100s}] if score Timer PandemicT matches 1.. run scoreboard players add Timer PandemicT 6000
execute as @a if score @s Dragonkilled2 matches 1.. as @a[nbt={SleepTimer:100s}] if score Timer PandemicT matches 1.. run scoreboard players add Timer PandemicT 12000

#Random Raids

execute if score Timer Time matches 1000 store result score Timer rrng run random value 1..18
execute if score Timer rrng matches 1 run effect give @a bad_omen infinite 1
scoreboard players reset Timer rrng

#Zombie Attacks
execute as @a if score Timer ZombieDash matches 200 run effect give @e[type=zombie] speed 3 4 true
execute as @a if score Timer ZombieDash matches 200.. run scoreboard players reset Timer ZombieDash

#Skeleton Buff

execute as @e[type=skeleton,tag=!alreadymodskeleton] run data merge entity @s {Tags:["alreadymodskeleton"],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":4}}}},drop_chances:{mainhand:0.000}}

#Enderman Blind
execute as @e[type=enderman] at @s run execute as @a[sort=nearest,distance=0..5] at @s run effect give @s blindness 2 5 true

#CreeperInvisDash
execute as @a if score Timer CreeperInvis matches 600 run effect give @e[type=creeper,name=Creeper] invisibility 5 1 false
execute as @a if score Timer CreeperInvis matches 600.. run scoreboard players reset Timer CreeperInvis
execute as @a if score Timer CreeperDash matches 300.. run effect give @e[type=creeper,name=Creeper] speed 4 3 true
execute as @a if score Timer CreeperDash matches 300.. run scoreboard players reset Timer CreeperDash

#Bottom Commands
execute if entity @a[scores={Insomnia=1}] run scoreboard players reset @a Insomnia
execute in minecraft:the_end as @a[distance=0..] at @s run tag @s add Inend
execute in minecraft:overworld as @a[distance=0..] at @s run tag @s remove Inend
execute in minecraft:the_nether as @a[distance=0..] at @s run tag @s remove Inend
#Endgame Gear

execute if entity @a[scores={Dragonkilled=1}] run function grandmaster:endgame
execute if score Timer Endgame matches 6.. run scoreboard players set Timer Endgame 1

#Time

execute store result score Timer Time run time query daytime

#The Dread Blade

execute if entity @e[type=giant] run function grandmaster:db

#Patches

#Creeper Residue Patch (1.2.7)

execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:strength"},{id:"minecraft:resistance"}]}}] run kill @s

#One Perch Patch (1.2.9)

execute in minecraft:the_end if entity @e[type=ender_dragon] store result score Timer OPP run fill -1 1 1 1 255 -1 air replace #minecraft:beds
execute if score Timer OPP matches 1 run execute in minecraft:the_end run playsound minecraft:entity.phantom.ambient master @a 0 70 0 5 0
scoreboard players reset Timer OPP

#Dragon Heal (1.2.9)

execute in minecraft:the_end positioned 0 50 0 unless entity @a[distance=0..700] run execute as @e[type=ender_dragon] run data merge entity @s {Health:200f}

#Bottom Commands

execute as @a if score Timer Endgametimer matches 280.. run scoreboard players reset @a Dragonkilled
execute as @a if score Timer Endgametimer matches 280.. run scoreboard players reset Timer Endgametimer
tag @a remove dragonaggro

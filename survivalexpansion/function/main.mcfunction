
#The Void

execute in survivalexpansion:the_void if entity @a[distance=0..] unless entity @e[type=armor_stand,name=Generatedarena,nbt={Marker:1b}] run function survivalexpansion:generate3
execute as @a store result score @s y run data get entity @s Pos[1]
execute in survivalexpansion:the_void if entity @a[distance=0..] run kill @e[name=Generatedarena]
execute in minecraft:overworld as @a[distance=0..,scores={y=-65}] run execute in survivalexpansion:the_void run tp @s ~ ~ ~
execute in survivalexpansion:the_void as @a[distance=0..] run tag @s add void
execute as @a[tag=void,gamemode=survival] run gamemode adventure @s
execute as @a[gamemode=adventure,tag=!void] run gamemode survival @s
execute in survivalexpansion:the_void as @a[distance=0..] run stopsound @s * minecraft:block.grass.step

#Portals

scoreboard players add DelayT as2 1
scoreboard players add DelayT as4 1
scoreboard players add DelayT Portals 1

execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] at @s if entity @e[type=marker,distance=..2,name="havenportal"] run tag @s add delb
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] at @s if entity @e[type=marker,distance=..2,name="dreadportal"] run tag @s add delb
execute at @e[type=item,tag=delb] run function survivalexpansion:portalignite

execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] at @s unless entity @e[type=marker,distance=..2,name="havenportal"] if block ~ ~ ~ water if block ~ ~-1 ~ crying_obsidian if block ~ ~ ~1 gold_block if block ~ ~ ~-1 gold_block if block ~1 ~ ~ gold_block if block ~-1 ~ ~ gold_block if block ~1 ~ ~1 warped_wart_block if block ~1 ~ ~-1 warped_wart_block if block ~-1 ~ ~1 warped_wart_block if block ~-1 ~ ~-1 warped_wart_block run tag @s add havenportal
execute at @e[type=item,tag=havenportal] run particle minecraft:witch ~ ~ ~ 1 1 1 5 1000 force
execute if entity @e[type=item,tag=havenportal] run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 999999 .5
execute at @e[type=item,tag=havenportal] run summon leash_knot ~ ~ ~ {Silent:1b}
execute if entity @e[type=item,tag=havenportal] at @e[type=leash_knot,nbt={Silent:1b}] run summon marker ~ ~-1 ~ {CustomName:"havenportal"}

kill @e[type=item,tag=havenportal]
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] at @s unless entity @e[type=marker,distance=..2,name="dreadportal"] if block ~ ~ ~ lava if block ~ ~-1 ~ crying_obsidian if block ~ ~ ~1 tinted_glass if block ~ ~ ~-1 tinted_glass if block ~1 ~ ~ tinted_glass if block ~-1 ~ ~ tinted_glass if block ~1 ~ ~1 nether_wart_block if block ~1 ~ ~-1 nether_wart_block if block ~-1 ~ ~1 nether_wart_block if block ~-1 ~ ~-1 nether_wart_block run tag @s add dreadportal
execute at @e[type=item,tag=dreadportal] run particle minecraft:witch ~ ~ ~ 1 1 1 5 1000 force
execute if entity @e[type=item,tag=dreadportal] run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 999999 .5
execute at @e[type=item,tag=dreadportal] run summon leash_knot ~ ~ ~ {Silent:1b}
execute if entity @e[type=item,tag=dreadportal] at @e[type=leash_knot,nbt={Silent:1b}] run summon marker ~ ~-1 ~ {CustomName:"dreadportal"}

kill @e[type=item,tag=dreadportal]
execute at @e[type=marker,name=dreadportal] as @a[distance=0..1] run tag @s add dreadtp
execute as @a[tag=dreadtp] at @s in survivalexpansion:the_dreadlands run tp @s ~ ~ ~
schedule function survivalexpansion:dreadtp 5t append
execute at @e[type=marker,name=havenportal] as @a[distance=0..1] run tag @s add haventp
execute as @a[tag=haventp] at @s in survivalexpansion:the_havenlands run tp @s ~ ~ ~
schedule function survivalexpansion:haventp 5t append
execute at @e[type=armor_stand,name=owportal,nbt={Small:1b}] as @a[distance=0..1] at @s run function survivalexpansion:owtp


execute as @e[type=marker,name=havenportal] at @s run function survivalexpansion:hpa
execute as @e[type=marker,name=dreadportal] at @s run function survivalexpansion:dpa


#Haven Altar

execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:1}}] at @s if block ~ ~-1 ~ crafting_table if block ~ ~-1 ~1 oxidized_cut_copper if block ~ ~-1 ~-1 oxidized_cut_copper if block ~1 ~-1 ~ oxidized_cut_copper if block ~-1 ~-1 ~ oxidized_cut_copper if block ~1 ~-1 ~1 cobbled_deepslate if block ~1 ~-1 ~-1 cobbled_deepslate if block ~-1 ~-1 ~1 cobbled_deepslate if block ~-1 ~-1 ~-1 cobbled_deepslate run tag @s add havenaltar
execute at @e[type=item,tag=havenaltar] run function survivalexpansion:ataltar
execute if entity @e[type=item,tag=havenaltar] at @e[type=leash_knot,nbt={Silent:1b}] run summon armor_stand ~ ~-2.375 ~ {Marker:1b,NoGravity:1b,Invisible:1b,CustomName:"havenaltar"}
execute if entity @e[type=item,tag=havenaltar] at @e[type=leash_knot,nbt={Silent:1b}] run summon block_display ~-0.40 ~-0.37 ~-0.4 {brightness:{sky:10,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.1f,0.8f]},block_state:{Name:"minecraft:ochre_froglight"}}
kill @e[type=leash_knot,nbt={Silent:1b}]
kill @e[tag=havenaltar]
execute as @e[type=armor_stand,name=havenaltar] at @s run function survivalexpansion:asaltar

#Haven Altar Recipes

execute at @e[type=armor_stand,name=havenaltar] if entity @a[distance=0..7] run function survivalexpansion:atifaltar

#Ascalaphus

execute at @e[type=minecraft:ghast,limit=1,nbt={Silent:1b},name="Ascalaphus"] as @e[distance=..100] run tag @s add asrange
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",count:1,components:{enchantment_glint_override:1b,"minecraft:custom_name":{color:"yellow",italic:0b,text:"Ichor Tear"},show_in_tooltip:false}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=ghast,name="Ascalaphus",nbt={Glowing:1b}] run team join AscalaphusGlow @s
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone",count:1}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~-2 ~-1 ~2 obsidian if block ~-2 ~ ~2 obsidian if block ~-2 ~1 ~2 obsidian if block ~-2 ~2 ~2 shroomlight if block ~2 ~-1 ~2 obsidian if block ~2 ~ ~2 obsidian if block ~2 ~1 ~2 obsidian if block ~2 ~2 ~2 shroomlight if block ~-2 ~-1 ~-2 obsidian if block ~-2 ~ ~-2 obsidian if block ~-2 ~1 ~-2 obsidian if block ~-2 ~2 ~-2 shroomlight if block ~2 ~-1 ~-2 obsidian if block ~2 ~ ~-2 obsidian if block ~2 ~1 ~-2 obsidian if block ~2 ~2 ~-2 shroomlight run function survivalexpansion:summonascalaphus

#Ascalaphus AI

bossbar set minecraft:ascalaphus players @a[tag=asrange]
execute store result bossbar minecraft:ascalaphus value run data get entity @e[type=ghast,name="Ascalaphus",nbt={Silent:1b},limit=1] Health
execute unless entity @e[type=minecraft:ghast,limit=1,nbt={Silent:1b},name="Ascalaphus"] run bossbar set minecraft:ascalaphus visible false
execute if entity @e[type=ghast,name="Ascalaphus",nbt={Silent:1b}] if score DelayT as2 matches 700 at @a[tag=asrange] run summon lightning_bolt
execute if score DelayT as2 matches 700 run scoreboard players reset DelayT as2
execute if entity @e[type=ghast,name="Ascalaphus",nbt={Silent:1b}] if score DelayT as4 matches 600 run effect give @a[tag=asrange] blindness 2 5 true 
execute if score DelayT as4 matches 600 as @e[type=ghast,name="Ascalaphus",nbt={Silent:1b}] at @s run tp @s @r[tag=asrange]
execute if score DelayT as4 matches 600 run scoreboard players reset DelayT as4
execute as @e[type=ghast,name="Ascalaphus",nbt={HurtTime:9s,Glowing:1b}] at @s run playsound entity.ghast.hurt hostile @a[distance=..30] ~ ~ ~ 2 0.5
tag @a remove asrange

#Dreadknight

execute at @e[type=armor_stand,tag=dreadknightdetect] as @a[distance=..100] run tag @s add dkrange
execute unless entity @e[type=zombie,tag=dreadknight] as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book",count:1,components:{"minecraft:item_model":"minecraft:guardflesh"}}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~-2 ~-1 ~2 obsidian if block ~-2 ~ ~2 obsidian if block ~-2 ~1 ~2 obsidian if block ~-2 ~2 ~2 shroomlight if block ~2 ~-1 ~2 obsidian if block ~2 ~ ~2 obsidian if block ~2 ~1 ~2 obsidian if block ~2 ~2 ~2 shroomlight if block ~-2 ~-1 ~-2 obsidian if block ~-2 ~ ~-2 obsidian if block ~-2 ~1 ~-2 obsidian if block ~-2 ~2 ~-2 shroomlight if block ~2 ~-1 ~-2 obsidian if block ~2 ~ ~-2 obsidian if block ~2 ~1 ~-2 obsidian if block ~2 ~2 ~-2 shroomlight run function survivalexpansion:summondk

execute if entity @e[type=item,tag=SummonDK] run kill @e[tag=dreadknight]
execute at @e[type=zombie,tag=dreadknight] as @e[type=armor_stand,tag=dreadknightdetect] run tp @s ~ ~10 ~
execute as @e[type=zombie,tag=dreadknight,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.zombie.hurt ambient @a[distance=0..30] ~ ~ ~ 10 0.7
execute as @e[type=zombie,tag=dreadknight,nbt={HurtTime:9s}] at @s run playsound minecraft:block.anvil.land ambient @a[distance=0..30] ~ ~ ~ 1 2
bossbar set minecraft:dreadknight players @a[tag=dkrange]
execute store result bossbar minecraft:dreadknight value run data get entity @e[type=zombie,limit=1,tag=dreadknight] Health
execute if entity @e[type=minecraft:zombie,tag=dreadknight] run bossbar set minecraft:dreadknight visible true
execute unless entity @e[type=minecraft:zombie,tag=dreadknight] run bossbar set minecraft:dreadknight visible false
execute unless entity @e[type=minecraft:zombie,tag=dreadknight] if entity @e[type=armor_stand,tag=dreadknightdetect] run function survivalexpansion:dreadknightdie
execute store result score DreadHealth dkh run data get entity @e[type=zombie,limit=1,tag=dreadknight] Health
execute if score DreadHealth dkh matches 1..7 run function survivalexpansion:dreadknight2

#dk2

execute at @e[type=zombie,tag=dreadknight] unless entity @a[tag=dkrange] run tp @e[tag=dreadknight] ~ ~-1000 ~
execute at @e[type=zombie,tag=dreadknight] unless entity @a[tag=dkrange] run kill @e[tag=dreadknight]
tag @a remove dkrange

#Drownedknight prevention

execute as @e[type=zombie,tag=dreadknight,nbt={InWaterTime:0}] run data merge entity @s {InWaterTime:-1}

#Drownedangel prevention

execute as @e[type=husk,tag=havenangel,nbt={InWaterTime:0}] run data merge entity @s {InWaterTime:-1}

#Herobrine

execute in survivalexpansion:the_void unless entity @a[distance=0..] if score !Timer herotimer matches 1.. run function survivalexpansion:terminate

#Herobrinesummon

execute in survivalexpansion:the_void if entity @a[distance=0..] run function survivalexpansion:activateherobrine




#Haven Angel

execute at @e[type=armor_stand,team=havenangel] as @e[distance=..100] run tag @s add harange
execute unless entity @e[type=husk,team=havenangel] if entity @a[scores={helviusdead=1}] as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",count:1,components:{"minecraft:item_model":"minecraft:angeltear"}}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~-2 ~-1 ~2 obsidian if block ~-2 ~ ~2 obsidian if block ~-2 ~1 ~2 obsidian if block ~-2 ~2 ~2 shroomlight if block ~2 ~-1 ~2 obsidian if block ~2 ~ ~2 obsidian if block ~2 ~1 ~2 obsidian if block ~2 ~2 ~2 shroomlight if block ~-2 ~-1 ~-2 obsidian if block ~-2 ~ ~-2 obsidian if block ~-2 ~1 ~-2 obsidian if block ~-2 ~2 ~-2 shroomlight if block ~2 ~-1 ~-2 obsidian if block ~2 ~ ~-2 obsidian if block ~2 ~1 ~-2 obsidian if block ~2 ~2 ~-2 shroomlight run tag @s add SummonHA
execute at @e[tag=SummonHA] run summon leash_knot ~ ~-1 ~ {Tags:["particle"]}
execute at @e[tag=SummonHA] run playsound minecraft:block.end_portal.spawn ambient @a[distance=..100] ~ ~ ~ 999999 0
execute at @e[tag=SummonHA] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["SummonHA2"]}
execute as @e[type=leash_knot,tag=particle] at @s positioned ~ ~-0.3 ~ run function survivalexpansion:reanimateparticles
execute as @e[tag=SummonHA2] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.005 100 normal
execute if entity @e[tag=SummonHA] run schedule function survivalexpansion:havenangel 3s
execute if entity @e[tag=SummonHA] run kill @e[type=husk,team=havenangel]
kill @e[tag=SummonHA]
execute as @e[type=husk,tag=havenangel,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.player.hurt hostile @a[distance=..30] ~ ~ ~ 2 0.8
bossbar set minecraft:havenangel players @a[tag=harange]
execute store result bossbar minecraft:havenangel value run data get entity @e[type=husk,limit=1,team=havenangel] Health
execute if entity @e[type=minecraft:husk,team=havenangel] run bossbar set minecraft:havenangel visible true
execute unless entity @e[type=minecraft:husk,team=havenangel] run bossbar set minecraft:havenangel visible false
execute unless entity @e[type=husk,team=havenangel] if entity @e[type=armor_stand,team=havenangel] run function survivalexpansion:havenangeldie

execute as @e[type=husk,tag=havenangel] at @s unless entity @a[tag=harange,distance=0..] run function survivalexpansion:havenangeldie

#ha1

scoreboard players add !Timer ha1 1
execute as @e[type=husk,team=havenangel] at @s at @a[distance=20..,tag=harange] run playsound minecraft:entity.enderman.teleport master @a[tag=harange] ~ ~ ~ 10 1
execute as @e[type=husk,team=havenangel] at @s at @r[distance=20..,tag=harange] run spreadplayers ~ ~ 5 5 false @s
execute if score !Timer ha1 matches 500 at @e[type=husk,team=havenangel] run playsound minecraft:entity.enderman.teleport master @a[tag=harange] ~ ~ ~ 10 1
execute if score !Timer ha1 matches 500 as @e[type=husk,team=havenangel] at @r run spreadplayers ~ ~ 5 5 false @s
execute if score !Timer ha1 matches 500.. run scoreboard players reset !Timer ha1

#ha2

execute if entity @e[type=husk,tag=havenangel] run scoreboard players add !Timer ha2 1
execute if score !Timer ha2 matches 970 run playsound minecraft:block.beacon.activate master @a[tag=harange] ~ ~ ~ 999999999 0
execute if score !Timer ha2 matches 970 run playsound minecraft:entity.generic.explode ambient @a[tag=harange] ~ ~ ~ 999999 1
execute if score !Timer ha2 matches 970 run playsound minecraft:block.end_portal_frame.fill master @a[tag=harange] ~ ~ ~ 999999999 0
execute if score !Timer ha2 matches 800..1000 at @a run function survivalexpansion:ha2
execute if score !Timer ha2 matches 1000.. run scoreboard players reset !Timer ha2

#ha3

scoreboard players add !Timer ha3 1
execute if score !Timer ha3 matches 1500 at @e[type=husk,tag=havenangel] run summon stray ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"null",Team:"neptune_no_nametag",Health:30f,Tags:["weepingangel"],CustomName:"Weeping Angel",equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;297912466,274614739,-1316817711,2134341701],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkODA2ZjE5YTc1MjZmYzZmYTQ4ZjQyZjcwM2I5MGFkZDgxNDJkYWM3ZjM3YWQxYmUxYjRlZGNhYzViYTgzIn19fQ=="}]}}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:attack_damage",base:1000},{id:"minecraft:follow_range",base:120},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.33148837208}]}
execute if score !Timer ha3 matches 1500 at @e[type=husk,tag=havenangel] run summon stray ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"null",Team:"neptune_no_nametag",Health:30f,Tags:["weepingangel"],CustomName:"Weeping Angel",equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;297912466,274614739,-1316817711,2134341701],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkODA2ZjE5YTc1MjZmYzZmYTQ4ZjQyZjcwM2I5MGFkZDgxNDJkYWM3ZjM3YWQxYmUxYjRlZGNhYzViYTgzIn19fQ=="}]}}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:attack_damage",base:1000},{id:"minecraft:follow_range",base:120},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.33148837208}]}
execute if score !Timer ha3 matches 1500 at @e[type=husk,tag=havenangel] run summon skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"null",Team:"nocol",NoAI:1b,Health:30f,Tags:["ghost","needsai","alreadymodskeleton"],CustomName:"Ghost",equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16777215,"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1214291957,467091955,-1331624879,962419111],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I2N2VkMGViY2YzZDc2NmZiOTc1Njc1ZDRhNDc2YWE1YTViYTg2NjgzNDBiNDEzMTk2NDk2N2FlZTg4ZWJkMyJ9fX0="}]}}}},drop_chances:{chest:0.000,head:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:30},{id:"minecraft:max_health",base:30}]}
execute if score !Timer ha3 matches 1500 at @e[type=husk,tag=havenangel] run summon vex
execute if score !Timer ha3 matches 1500 at @e[type=husk,tag=havenangel] run summon vex
execute if score !Timer ha3 matches 1500.. run scoreboard players reset !Timer ha3

#ha4

execute store result score !Timer ha4 run data get entity @e[type=husk,limit=1,tag=havenangel] Health
execute if score !Timer ha4 matches 1..512 run scoreboard players add !Timer ha1 1
execute if score !Timer ha4 matches 1..512 run scoreboard players add !Timer ha3 1
execute if score !Timer ha4 matches 1..250 run effect give @e[type=husk,tag=havenangel] speed infinite 1 true

tag @a remove harange

#Neptunium Golem

execute at @e[type=vindicator,team=neptuniumgolem] as @e[distance=..100] run tag @s add ngrange
effect give @e[type=vindicator,team=neptuniumgolem] slowness 999999 1 true
execute as @a if score @s helviusdead matches 1 run function survivalexpansion:helviusdead
execute unless entity @e[type=iron_golem,team=neptuniumgolem] if entity @a[scores={helviusdead=1}] as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_model":"minecraft:nepcrystal"}}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~-2 ~-1 ~2 obsidian if block ~-2 ~ ~2 obsidian if block ~-2 ~1 ~2 obsidian if block ~-2 ~2 ~2 shroomlight if block ~2 ~-1 ~2 obsidian if block ~2 ~ ~2 obsidian if block ~2 ~1 ~2 obsidian if block ~2 ~2 ~2 shroomlight if block ~-2 ~-1 ~-2 obsidian if block ~-2 ~ ~-2 obsidian if block ~-2 ~1 ~-2 obsidian if block ~-2 ~2 ~-2 shroomlight if block ~2 ~-1 ~-2 obsidian if block ~2 ~ ~-2 obsidian if block ~2 ~1 ~-2 obsidian if block ~2 ~2 ~-2 shroomlight run tag @s add SummonNG
execute at @e[tag=SummonNG] run playsound minecraft:block.end_portal.spawn ambient @a[distance=..100] ~ ~ ~ 999999 0
execute at @e[tag=SummonNG] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["SummonNG2"]}
execute at @e[tag=SummonNG] run summon leash_knot ~ ~-1 ~ {Tags:["particle"]}
execute as @e[type=leash_knot,tag=particle] at @s positioned ~ ~-0.3 ~ run function survivalexpansion:reanimateparticles
execute as @e[tag=SummonNG2] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.005 100 normal
execute if entity @e[tag=SummonNG] run schedule function survivalexpansion:neptuniumgolem 3s
execute if entity @e[tag=SummonNG] run kill @e[type=iron_golem,team=neptuniumgolem]
kill @e[tag=SummonNG]
execute as @e[type=vindicator,team=neptuniumgolem] run tp @e[type=iron_golem,team=neptuniumgolem] @s
execute as @e[type=iron_golem,team=neptuniumgolem,nbt={HurtTime:9s}] at @s run playsound entity.iron_golem.hurt hostile @a[distance=..30] ~ ~ ~ 2 0.7
bossbar set minecraft:neptuniumgolem players @a[tag=ngrange]
execute store result bossbar minecraft:neptuniumgolem value run data get entity @e[type=iron_golem,limit=1,team=neptuniumgolem] Health
execute if entity @e[type=minecraft:iron_golem,team=neptuniumgolem] run bossbar set minecraft:neptuniumgolem visible true
execute unless entity @e[type=minecraft:iron_golem,team=neptuniumgolem] run bossbar set minecraft:neptuniumgolem visible false
execute unless entity @e[type=iron_golem,team=neptuniumgolem] if entity @e[type=vindicator,team=neptuniumgolem] run function survivalexpansion:neptuniumgolemdie
execute at @e[team=neptuniumgolem] run kill @e[type=vindicator,team=!neptuniumgolem,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=pillager,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=ravager,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=evoker,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=zombie,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=drowned,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=spider,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=slime,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=creeper,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=skeleton,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=stray,distance=0..5]
execute at @e[team=neptuniumgolem] run kill @e[type=husk,distance=0..5]


#ng1

execute if entity @e[type=iron_golem,team=neptuniumgolem,nbt={OnGround:1b}] run scoreboard players add !Timer ng1 1
execute if score !Timer ng1 matches 1000 at @e[type=vindicator,team=neptuniumgolem] run playsound minecraft:entity.ender_dragon.flap master @a[tag=ngrange] ~ ~ ~ 10 2
execute if score !Timer ng1 matches 1000..1010 as @e[type=vindicator,team=neptuniumgolem] at @s run tp @s ~ ~1 ~
execute if score !Timer ng1 matches 1000.. at @e[type=vindicator,team=neptuniumgolem,nbt={OnGround:1b}] unless block ~ ~-1 ~ air run playsound block.anvil.land master @a[tag=ngrange] ~ ~ ~ 999999 0
execute if score !Timer ng1 matches 1000.. at @e[type=vindicator,team=neptuniumgolem,nbt={OnGround:1b}] unless block ~ ~-1 ~ air run playsound entity.lightning_bolt.impact master @a[tag=ngrange] ~ ~ ~ 999999 0
execute if score !Timer ng1 matches 1000.. at @e[type=vindicator,team=neptuniumgolem,nbt={OnGround:1b}] unless block ~ ~-1 ~ air run particle minecraft:electric_spark ~ ~ ~ 3 3 3 0 500 force
execute if score !Timer ng1 matches 1000.. at @e[type=vindicator,team=neptuniumgolem,nbt={OnGround:1b}] unless block ~ ~-1 ~ air run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"witch"},Radius:40f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune\\'s Curse"}
execute if score !Timer ng1 matches 1000.. at @e[type=vindicator,team=neptuniumgolem,nbt={OnGround:1b}] unless block ~ ~-1 ~ air run scoreboard players set !Timer ng1 10000
execute if score !Timer ng1 matches 10000.. run scoreboard players set !Timer ng1 0

#ng2

execute at @e[type=iron_golem,team=neptuniumgolem] unless entity @a[distance=..15] run scoreboard players add !Timer ng2 1
execute if score !Timer ng2 matches 100.. at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:entity.enderman.teleport master @a[tag=ngrange] ~ ~ ~ 10 1
execute if score !Timer ng2 matches 100.. at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:block.beacon.activate master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng2 matches 100.. at @r[tag=ngrange] run tp @e[type=vindicator,team=neptuniumgolem] ~ ~ ~
execute if score !Timer ng2 matches 100.. run scoreboard players reset !Timer ng2

#ng3
scoreboard players add !Timer ng3 1
execute if score !Timer ng3 matches 1300.. run effect give @e[type=vindicator,team=neptuniumgolem] slowness 3 5 true
execute if score !Timer ng3 matches 1300 at @e[type=vindicator,team=neptuniumgolem] run playsound minecraft:block.anvil.destroy master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng3 matches 1330 at @e[type=vindicator,team=neptuniumgolem] run playsound minecraft:entity.ender_dragon.flap master @a[tag=ngrange] ~ ~ ~ 10 2
execute if score !Timer ng3 matches 1330.. run effect clear @e[type=vindicator,team=neptuniumgolem] slowness
execute if score !Timer ng3 matches 1330.. run effect give @e[type=vindicator,team=neptuniumgolem] invisibility 999999 1 true
execute if score !Timer ng3 matches 1330.. run effect give @e[type=vindicator,team=neptuniumgolem] speed 1 10 true
execute if score !Timer ng3 matches 1330.. run scoreboard players reset !Timer ng3

#ng4

execute at @e[type=iron_golem,team=neptuniumgolem] unless entity @a[distance=9..] unless score !Timer ng4 matches 500.. run scoreboard players add !Timer ng4 1
execute if score !Timer ng4 matches 500.. at @e[type=iron_golem,team=neptuniumgolem] run scoreboard players add !Timer ng4 1
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run effect give @e[type=iron_golem,team=neptuniumgolem] slowness 4 4 true
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:block.beacon.activate master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:block.beacon.activate master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:block.beacon.activate master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:block.beacon.activate master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 501 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:entity.wither.ambient master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:entity.lightning_bolt.impact master @a[tag=ngrange] ~ ~ ~ 10 0
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:entity.lightning_bolt.impact master @a[tag=ngrange] ~ ~ ~ 10 1
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run playsound minecraft:entity.lightning_bolt.impact master @a[tag=ngrange] ~ ~ ~ 10 2
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"witch"},Radius:15f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune's Curse"}
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run summon area_effect_cloud ~ ~1 ~ {custom_particle:{type:"witch"},Radius:15f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune's Curse"}
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run summon area_effect_cloud ~ ~2 ~ {custom_particle:{type:"witch"},Radius:15f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune's Curse"}
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run summon area_effect_cloud ~ ~3 ~ {custom_particle:{type:"witch"},Radius:15f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune's Curse"}
execute if score !Timer ng4 matches 580 at @e[type=iron_golem,team=neptuniumgolem] run summon area_effect_cloud ~ ~4 ~ {custom_particle:{type:"witch"},Radius:15f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"Neptune's Curse"}
execute if score !Timer ng4 matches 580.. run scoreboard players reset !Timer ng4

#ng5

execute as @e[type=iron_golem,team=neptuniumgolem] at @s if entity @a[distance=0..5] run data merge entity @s {Invulnerable:0b} 
execute as @e[type=iron_golem,team=neptuniumgolem] at @s unless entity @a[distance=0..5] run data merge entity @s {Invulnerable:1b} 
execute unless entity @a[tag=ngrange] run tp @e[team=neptuniumgolem] ~ ~-1000 ~
execute unless entity @a[tag=ngrange] run kill @e[type=iron_golem,team=neptuniumgolem]
tag @a remove ngrange

#Helvius, The Dreadlord

execute at @e[type=vindicator,team=helvius] as @e[distance=..100] run tag @s add hrange
execute as @a if score @s dragondead2 matches 1 if score @s dragondead matches 1 run tellraw @a {"text":"Helvius, The Dreadlord: Begin the infiltration.","color":"dark_red"}
scoreboard players reset @a dragondead2
execute unless entity @e[type=giant,tag=helvius] as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1,components:{"minecraft:item_model":"minecraft:nepessence"}}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~-2 ~-1 ~2 obsidian if block ~-2 ~ ~2 obsidian if block ~-2 ~1 ~2 obsidian if block ~-2 ~2 ~2 shroomlight if block ~2 ~-1 ~2 obsidian if block ~2 ~ ~2 obsidian if block ~2 ~1 ~2 obsidian if block ~2 ~2 ~2 shroomlight if block ~-2 ~-1 ~-2 obsidian if block ~-2 ~ ~-2 obsidian if block ~-2 ~1 ~-2 obsidian if block ~-2 ~2 ~-2 shroomlight if block ~2 ~-1 ~-2 obsidian if block ~2 ~ ~-2 obsidian if block ~2 ~1 ~-2 obsidian if block ~2 ~2 ~-2 shroomlight run tag @s add SummonHim
execute at @e[tag=SummonHim] run playsound minecraft:block.end_portal.spawn ambient @a[distance=..100] ~ ~ ~ 999999 0
execute at @e[tag=SummonHim] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["SummonHim2"]}
execute at @e[tag=SummonHim2] positioned ~ ~-1 ~ run function survivalexpansion:reanimateparticles
execute as @e[tag=SummonHim2] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.005 100 normal
execute if entity @e[tag=SummonHim] run schedule function survivalexpansion:helvius 3s
execute if entity @e[tag=SummonHim] run kill @e[type=vindicator,nbt={Silent:1b},team=helvius]
execute if entity @e[tag=SummonHim] run scoreboard players reset !Timer h7
execute if entity @e[tag=SummonHim] run scoreboard players reset !Timer h8
execute if entity @e[tag=SummonHim] run scoreboard players reset !Timer h9
execute if entity @e[tag=SummonHim] run scoreboard players reset !Timer h10
kill @e[tag=SummonHim]
bossbar set minecraft:helvius players @a[tag=hrange]
execute store result bossbar minecraft:helvius value run data get entity @e[type=giant,limit=1,tag=helvius] Health
execute if entity @e[type=minecraft:giant,tag=helvius] run bossbar set minecraft:helvius visible true
execute unless entity @e[type=minecraft:giant,tag=helvius] run bossbar set minecraft:helvius visible false
execute as @e[type=vindicator,nbt={Silent:1b},team=helvius] run tp @e[type=giant,tag=helvius] @s
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run scoreboard players set @a helviusdead 1
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run stopsound @a
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run execute at @a run playsound minecraft:block.beacon.deactivate ambient @a[tag=hrange] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run execute at @a run playsound minecraft:entity.lightning_bolt.thunder ambient @a[tag=hrange] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run execute at @a run playsound minecraft:entity.lightning_bolt.impact ambient @a[tag=hrange] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run execute at @a run execute in minecraft:overworld run gamerule advance_time true
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run execute at @e[type=vindicator,nbt={Silent:1b},team=helvius] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"deathmarker"}
execute if entity @e[type=vindicator,nbt={Silent:1b},team=helvius] as @a if score @s Killedhelvius matches 1 run tellraw @a {"text":"Spirits of dread haunt the overworld.","color":"dark_red"}
execute at @e[type=armor_stand,name=deathmarker,nbt={Marker:1b}] run particle minecraft:explosion ~ ~ ~ 4 4 4 0 500 normal
execute at @e[type=armor_stand,name=deathmarker,nbt={Marker:1b}] run summon experience_orb ~ ~ ~ {Silent:1b,Value:31000}
execute if entity @e[type=armor_stand,name=deathmarker,nbt={Invisible:1b}] run kill @e[type=vindicator,nbt={Silent:1b},team=helvius]
execute as @a if score @s Killedhelvius matches 1 run scoreboard players reset @a Killedhelvius
kill @e[type=armor_stand,name=deathmarker,nbt={Invisible:1b}]
scoreboard players add !Timer hs 1
execute if score !Timer hs matches 150 at @e[type=giant,tag=helvius] run playsound minecraft:entity.zombie.ambient ambient @a[tag=hrange] ~ ~ ~ 10 0
execute if score !Timer hs matches 150 at @e[type=giant,tag=helvius] run playsound minecraft:entity.zombified_piglin.ambient ambient @a[tag=hrange] ~ ~ ~ 10 0
execute if score !Timer hs matches 150.. run scoreboard players reset !Timer hs
execute store result score HelviusHealth hh run data get entity @e[type=giant,limit=1,tag=helvius] Health

#Helvius Attacks

scoreboard players add !Timer h1 1
execute if score !Timer h1 matches 1000.. at @e[type=giant,tag=helvius] run summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"null",Health:30f,Tags:["dread_guardian"],CustomName:"Dread Guardian",equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:tide"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;125903567,-559332347,-1106526735,119006413],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRmYjM1YzUwNjE1MGQ1ZWY4MzVmMjlmOTU3Mzk2YjQyODk1MDUyOTVjNTUwYmY1YWY3ZWQ5ZDA5MmMzNmVlZCJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:max_health",base:30}]}
execute if score !Timer h1 matches 1000.. at @e[type=giant,tag=helvius] run summon vex ~ ~ ~ 
execute if score !Timer h1 matches 1000.. at @e[type=giant,tag=helvius] run summon phantom ~ ~ ~ 
execute if score !Timer h1 matches 1005.. run scoreboard players reset !Timer h1

scoreboard players add !Timer h2 1
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 500 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 502 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 504 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 506 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 508 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 510 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 512 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 514 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 516 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 518 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 520 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 522 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 524 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 526 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 528 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 530 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 532 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 534 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 536 at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon lightning_bolt ~ ~ ~
execute if entity @e[type=giant,tag=helvius] if score !Timer h2 matches 537.. run scoreboard players reset !Timer h2

scoreboard players add !Timer h3 1
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,0.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,0.5]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[0.5,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[0.25,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-0.0,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-0.5,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-1.5,-5.0,0.5]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-1.5,-5.0,0.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-1.5,-5.0,-0.5]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-1.5,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-0.5,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[-0.0,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[0.5,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,1.0]}
execute if score !Timer h3 matches 750 at @e[type=giant,tag=helvius] run summon minecraft:dragon_fireball ~ ~50 ~ {Motion:[1.0,-5.0,-0.5]}

execute if score !Timer h3 matches 750.. run scoreboard players reset !Timer h3

scoreboard players add !Timer h4 1
execute if score !Timer h4 matches 2000 at @e[type=giant,tag=helvius] run summon ghast ~ ~10 ~ {Silent:1b,Glowing:1b,PersistenceRequired:1b,Health:100f,ExplosionPower:3,CustomName:"Son of Ascalaphus",Attributes:[{Name:max_health,Base:100}]}
execute if score !Timer h4 matches 2000.. run scoreboard players reset !Timer h4

execute if score HelviusHealth hh matches 250..1000 run scoreboard players add !Timer h5 1
execute if score !Timer h5 matches 1500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.zombie.hurt ambient @a[tag=hrange] ~ ~ ~ 9999999 0
execute if score !Timer h5 matches 1500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.donkey.angry ambient @a[tag=hrange] ~ ~ ~ 9999999 0
execute if score !Timer h5 matches 1500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.elder_guardian.curse ambient @a[tag=hrange]
execute if score !Timer h5 matches 1500 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon ghast ~ ~10 ~ {Silent:1b,Glowing:1b,PersistenceRequired:1b,Health:100f,ExplosionPower:3,CustomName:"Son of Ascalaphus",Attributes:[{Name:max_health,Base:100}]}
execute if score !Timer h5 matches 1500..1699 as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:1b}
execute if score !Timer h5 matches 0..1499 as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:0b}
execute if score !Timer h5 matches 1700.. run scoreboard players reset !Timer h5

#h7

execute if score HelviusHealth hh matches 1..500 run scoreboard players add !Timer h7 1
execute if score !Timer h7 matches 1 run function survivalexpansion:phase2
execute if score !Timer h7 matches 1..100 at @e[type=giant,tag=helvius] run tp @e[type=vindicator,nbt={Silent:1b},team=helvius] ~ ~0.1 ~
execute if score HelviusHealth hh matches 101..500 if entity @e[type=giant,tag=helvius] if entity @e[type=evoker,tag=elemental2] as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:1b}
execute if score HelviusHealth hh matches 101..500 if entity @e[type=giant,tag=helvius] unless entity @e[type=evoker,tag=elemental2] as @e[type=vindicator,nbt={Silent:1b},team=helvius] run data merge entity @s {NoAI:0b}
execute if score HelviusHealth hh matches 101..500 if entity @e[type=giant,tag=helvius] unless entity @e[type=evoker,tag=elemental2] as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:0b}

#h8


execute if score HelviusHealth hh matches 1..100 run scoreboard players add !Timer h8 1
execute if score !Timer h8 matches 1 run function survivalexpansion:phase3
execute if score !Timer h8 matches 1..100 at @e[type=giant,tag=helvius] run tp @e[type=vindicator,nbt={Silent:1b},team=helvius] ~ ~0.1 ~
execute if score HelviusHealth hh matches 1..100 if entity @e[type=giant,tag=helvius] if entity @e[type=ghast,name="Ascalaphus"] as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:1b}
execute if score HelviusHealth hh matches 1..100 if entity @e[type=giant,tag=helvius] unless entity @e[type=ghast,name="Ascalaphus"] as @e[type=vindicator,nbt={Silent:1b},team=helvius] run data merge entity @s {NoAI:0b}
execute if score HelviusHealth hh matches 1..100 if entity @e[type=giant,tag=helvius] unless entity @e[type=ghast,name="Ascalaphus"] as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:0b}

#Second Helvius Phase

execute if score HelviusHealth hh matches 0..666 as @e[type=vindicator,nbt={Silent:1b},team=helvius] run data merge entity @s {Attributes:[{Name:movement_speed,Base:0.45}]}
execute if score HelviusHealth hh matches 0..666 if entity @e[type=giant,tag=helvius] as @e[type=phantom] run data merge entity @s {Attributes:[{Name:follow_range,Base:1000}]}
execute if score HelviusHealth hh matches 0..666 if entity @e[type=giant,tag=helvius] as @e[type=zombie,nbt={Silent:1b}] run data merge entity @s {Attributes:[{Name:follow_range,Base:1000}]}
execute if score HelviusHealth hh matches 0..666 if entity @e[type=giant,tag=helvius] as @e[type=vex] run data merge entity @s {Attributes:[{Name:follow_range,Base:1000}]}

#Third Helvius Phase

execute if score HelviusHealth hh matches 0..333 as @e[type=vindicator,nbt={Silent:1b},team=helvius,tag=helvius] run data merge entity @s {Attributes:[{Name:movement_speed,Base:0.5}]}
execute if score HelviusHealth hh matches 0..333 run scoreboard players add !Timer h9 1
execute if score HelviusHealth hh matches 0..333 run scoreboard players add !Timer h6 1
execute if score !Timer h6 matches 500 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 510 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 520 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 530 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 540 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 550 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[distance=0..] at @s run summon fireball ~ ~30 ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
execute if score !Timer h6 matches 550.. run scoreboard players reset !Timer h6
execute if score !Timer h9 matches 400 run effect give @e[type=vindicator,nbt={Silent:1b},team=helvius] speed 1 4 true
execute if score !Timer h9 matches 400.. run scoreboard players reset !Timer h9

#Fourth Helvius Phase

execute if score HelviusHealth hh matches 1..250 run scoreboard players reset !Timer h5
execute if score HelviusHealth hh matches 1..250 run scoreboard players add !Timer h10 1
execute if score !Timer h10 matches 500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.zombie.hurt ambient @a[tag=hrange] ~ ~ ~ 9999999 0
execute if score !Timer h10 matches 500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.donkey.angry ambient @a[tag=hrange] ~ ~ ~ 9999999 0
execute if score !Timer h10 matches 500 if entity @e[type=giant,tag=helvius] run playsound minecraft:entity.elder_guardian.curse ambient @a[tag=hrange]
execute if score !Timer h10 matches 500 if entity @e[type=giant,tag=helvius] at @e[type=giant,tag=helvius] as @a[tag=hrange] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"crimson_spore"},Radius:40f,Duration:200,potion_contents:{custom_color:16711680,custom_effects:[{id:"minecraft:instant_damage",amplifier:2,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:"dreadwrath"}
execute if score !Timer h10 matches 500..699 as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:1b}
execute if score !Timer h10 matches 1..499 as @e[type=giant,tag=helvius] run data merge entity @s {Invulnerable:0b}
execute if score !Timer h10 matches 700.. run scoreboard players reset !Timer h10

execute as @e[type=giant,tag=helvius,nbt={HurtTime:9s}] at @s run playsound entity.zombie.hurt hostile @a[distance=..30] ~ ~ ~ 2 0.5
tag @a remove hrange

#End Prevention

execute as @a[limit=1,nbt={Inventory:[{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"minecraft:enderkey"}}]}] at @s run function survivalexpansion:immunize


execute if entity @a[scores={endwarn=1}] unless entity @a[tag=immune2] unless entity @a[gamemode=creative] run function survivalexpansion:portalreplace
execute unless entity @a[tag=immune2] unless entity @a[gamemode=creative] unless entity @e[type=eye_of_ender] as @a[scores={endwarn=1..}] run title @s actionbar {"text":"A special key is required to enter.","color":"white"}
execute unless entity @a[tag=immune2] unless entity @a[gamemode=creative] unless entity @e[type=eye_of_ender] as @a[scores={endwarn=1..}] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 2 0
execute unless entity @a[tag=immune2] unless entity @a[gamemode=creative] unless entity @e[type=eye_of_ender] as @a[scores={endwarn=1..}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 2 2
execute if entity @a[scores={endwarn=1..}] run scoreboard players set @a endwarn 0

#Elemental Titans

execute at @e[type=armor_stand,name="DungeonChest",nbt={Invisible:1b}] positioned over motion_blocking_no_leaves positioned ~15 ~ ~ run particle witch ~ ~ ~ 1 3 1 1 10 force

execute as @a if score @s dragondead matches 1.. run tag @e[type=evoker,nbt={drop_chances:{chest:0.0f}},tag=elemental] add hardmode
execute as @e[tag=hardmode] run data merge entity @s {drop_chances:{chest:1.0f}}
tag @e remove hardmode
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying",count:1}}] at @s if block ~ ~-1 ~ respawn_anchor if block ~ ~-2 ~ crying_obsidian if block ~ ~-3 ~ chest if block ~ ~-4 ~ crying_obsidian if block ~-1 ~-2 ~ oxidized_cut_copper if block ~-1 ~-3 ~ obsidian if block ~-1 ~-4 ~ oxidized_cut_copper if block ~ ~-2 ~1 oxidized_cut_copper if block ~ ~-3 ~1 minecraft:obsidian if block ~ ~-4 ~1 oxidized_cut_copper if block ~1 ~-2 ~ oxidized_cut_copper if block ~1 ~-3 ~ obsidian if block ~1 ~-4 ~ oxidized_cut_copper if block ~ ~-2 ~-1 oxidized_cut_copper if block ~ ~-3 ~-1 minecraft:obsidian if block ~ ~-4 ~-1 oxidized_cut_copper if block ~1 ~-2 ~1 oxidized_cut_copper if block ~1 ~-3 ~1 oxidized_cut_copper if block ~1 ~-4 ~1 oxidized_cut_copper if block ~1 ~-2 ~-1 oxidized_cut_copper if block ~1 ~-3 ~-1 oxidized_cut_copper if block ~1 ~-4 ~-1 oxidized_cut_copper if block ~-1 ~-2 ~1 oxidized_cut_copper if block ~-1 ~-3 ~1 oxidized_cut_copper if block ~-1 ~-4 ~1 oxidized_cut_copper if block ~-1 ~-2 ~-1 oxidized_cut_copper if block ~-1 ~-3 ~-1 oxidized_cut_copper if block ~-1 ~-4 ~-1 oxidized_cut_copper if block ~2 ~-1 ~2 crying_obsidian if block ~2 ~-2 ~2 obsidian if block ~2 ~-3 ~2 obsidian if block ~2 ~-4 ~2 crying_obsidian if block ~2 ~-1 ~-2 crying_obsidian if block ~2 ~-2 ~-2 obsidian if block ~2 ~-3 ~-2 obsidian if block ~2 ~-4 ~-2 crying_obsidian if block ~-2 ~-1 ~2 crying_obsidian if block ~-2 ~-2 ~2 obsidian if block ~-2 ~-3 ~2 obsidian if block ~-2 ~-4 ~2 crying_obsidian if block ~-2 ~-1 ~-2 crying_obsidian if block ~-2 ~-2 ~-2 obsidian if block ~-2 ~-3 ~-2 obsidian if block ~-2 ~-4 ~-2 crying_obsidian run tag @s add totemactivate
execute at @e[type=item,tag=totemactivate] run summon armor_stand ~ ~-1 ~ {CustomName:"CastleChest",Marker:1b,Invisible:1b} 
kill @e[type=item,tag=totemactivate]
execute at @e[type=armor_stand,name="DungeonChest",nbt={Invisible:1b}] unless block ~ ~-0.5 ~ chest{Items: [{count: 1, Slot: 0b, id: "minecraft:bone"}, {count: 1, Slot: 4b, components: {"minecraft:item_model": "minecraft:adamantingot"}, id: "minecraft:iron_ingot"}, {count: 1, Slot: 11b, id: "minecraft:obsidian"}, {count: 1, Slot: 14b, id: "minecraft:bone"}, {count: 1, Slot: 16b, id: "minecraft:bone"}, {count: 1, Slot: 21b, id: "minecraft:iron_ingot"}, {count: 1, Slot: 25b, id: "minecraft:obsidian"}]} run tag @e[type=armor_stand,name="DungeonChest",nbt={Invisible:1b}] add activated
execute if entity @e[tag=activated] as @e[type=armor_stand,name="DungeonChest"] at @s as @a[distance=0..30] at @s run effect give @s blindness 20 1
execute at @e[tag=activated] run playsound minecraft:ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 7 0
execute at @e[tag=activated] run playsound minecraft:ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 7 2
execute at @e[tag=activated] run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 7 0
execute at @e[tag=activated] run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 7 2
execute at @e[tag=activated] run summon lightning_bolt ~ ~ ~5
execute at @e[tag=activated] run summon lightning_bolt ~5 ~ ~
execute at @e[tag=activated] run summon lightning_bolt ~ ~ ~-5
execute at @e[tag=activated] run summon lightning_bolt ~-5 ~ ~
execute at @e[tag=activated] run summon lightning_bolt ~3 ~ ~3
execute at @e[tag=activated] run summon lightning_bolt ~-3 ~ ~-3
execute at @e[tag=activated] run summon lightning_bolt ~3 ~ ~-3
execute at @e[tag=activated] run summon lightning_bolt ~-3 ~ ~3
execute at @e[tag=activated] run particle witch ~ ~ ~ 2 2 2 1 500 normal
execute at @e[tag=activated] run summon ravager ~ ~ ~ {PersistenceRequired:1b,Passengers:[{id:"minecraft:evoker",PersistenceRequired:1b,Health:250f,Tags:["elemental"],CustomName:"Elemental Titan",equipment:{chest:{id:"minecraft:blaze_powder",count:1,components:{"minecraft:item_model":"nepessence","minecraft:custom_name":{"color":"dark_purple","italic":false,"text":"Neptunium Essence"},"minecraft:tooltip_display":{hidden_components:["enchantments"]},"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1619025229,-1332982707,-1548686778,-563066635],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjE3OTJlYWQ4MzE0OWQ3MTI5YjBmNmFhZGQ4OWMxMmUwZTc3OWNmZmY0YWFiMTI2YTZhMzhiY2FjZDQ2YTljNiJ9fX0="}]}}},mainhand:{id:"minecraft:fire_charge",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:follow_range",base:120},{id:"minecraft:max_health",base:250}]}],attributes:[{id:"minecraft:attack_damage",base:50},{id:"minecraft:follow_range",base:120}]}
kill @e[tag=activated]
execute at @e[type=armor_stand,name="CastleChest",nbt={Invisible:1b}] unless block ~ ~-1.5 ~ chest{Items: [{count: 1, Slot: 13b, components: {"minecraft:item_model": "minecraft:ancientjewel", "minecraft:custom_name": {color:"yellow",italic:0b,text:"Ancient Jewel"}, "minecraft:enchantment_glint_override": 1b}, id: "minecraft:emerald"}], id: "minecraft:chest"} run tag @e[type=armor_stand,name="CastleChest",nbt={Invisible:1b}] add activated
execute at @e[type=armor_stand,name="IglooChest",nbt={Invisible:1b}] unless block ~ ~-1.5 ~ chest{Items: [{count: 1, Slot: 13b, components: {"minecraft:item_model": "minecraft:ancientgemstone", "minecraft:custom_name": {color:"yellow",italic:0b,text:"Ancient Gemstone"}, "minecraft:enchantment_glint_override": 1b}, id: "minecraft:purple_dye"}]} run tag @e[type=armor_stand,name="IglooChest",nbt={Invisible:1b}] add activated

#Custom Mobs

#Husk (Dreadlands)

execute in survivalexpansion:the_dreadlands as @e[type=zombie,distance=0..,nbt=!{Silent:1b}] at @s run summon husk ~ ~ ~
execute in survivalexpansion:the_dreadlands as @e[type=zombie,distance=0..,nbt=!{Silent:1b}] at @s run tp @s ~ ~-1000 ~

#Geophantom

effect give @e[type=spider,name=Geophantom,nbt={Silent:1b}] invisibility 999999 1 true
execute as @e[type=spider,name=Geophantom,nbt={Silent:1b}] at @s as @a[distance=0..3] at @s run effect give @s blindness 3 1 true
execute in survivalexpansion:the_dreadlands as @e[type=spider,distance=0..,tag=!geophantom] at @s run summon spider ~ ~ ~ {Silent:1b,Health:40f,Tags:["geophantom"],CustomName:"Geophantom",Attributes:[{Name:attack_damage,Base:6},{Name:max_health,Base:40}]}
execute in survivalexpansion:the_dreadlands as @e[type=spider,distance=0..,tag=!geophantom] at @s run tp @s ~ ~-1000 ~

#Dark Archer

execute in survivalexpansion:the_dreadlands as @e[type=blaze,distance=0..] at @s run summon wither_skeleton ~ ~ ~ {Tags:["darkarcher"],CustomName:"Dark Archer",equipment:{head:{id:"minecraft:jack_o_lantern",count:1},mainhand:{id:"minecraft:bow",count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:4s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:flame",lvl:1s}]}}},drop_chances:{head:0.000,mainhand:0.001},active_effects:[{id:"minecraft:speed",amplifier:2,duration:99999999,show_particles:0b}]}
execute in survivalexpansion:the_dreadlands as @e[type=blaze,distance=0..] at @s run tp @s ~ ~-1000 ~

#Vampire
execute in survivalexpansion:the_dreadlands as @e[type=witch,distance=0..] at @s run summon bat ~ ~ ~ {Silent:1b,Tags:["vampirebat"],CustomName:"Vampire Bat"}
execute in survivalexpansion:the_dreadlands as @e[type=witch,distance=0..] at @s run tp @s ~ ~-1000 ~
execute as @e[type=bat,tag=vampirebat] at @s if entity @a[distance=0..10] run summon zombie ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Health:50f,CanBreakDoors:1b,Tags:["neptune_no_nametag"],CustomName:"Vampire",equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:host"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:host"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:host"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-20152287,450317539,-1980111587,1382005024],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjVhNzAwNzAwN2Q1YTM5NmQ2MDQ5YzcxYWI2ZmY1ZmVkYjZjYTNlMTc1M2IzZmQ2ZjEzYmI2OTQ2YTdlMGRhZiJ9fX0="}]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.3}]}
execute at @e[type=bat,tag=vampirebat] if entity @a[distance=0..10] as @a at @s run playsound entity.zombie.infect ambient @s ~ ~ ~ 1 1
execute as @e[type=bat,tag=vampirebat] at @s if entity @a[distance=0..10] run particle smoke ~ ~ ~ 0.0125 0.0125 0.0125 1 50 normal
execute as @e[type=bat,tag=vampirebat] at @s if entity @a[distance=0..10] run tp @s ~ ~-256 ~

#Weeping Angel

execute in survivalexpansion:the_havenlands as @e[type=skeleton,distance=0..] at @s run summon creaking ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"null",Team:"neptune_no_nametag",Health:30f,Tags:["weepingangel"],Passengers:[{id:"minecraft:block_display",Tags:["weeping_model"],Passengers:[{id:"minecraft:block_display",transformation:[0f,-1f,0f,0.3123845263f,1f,0f,0f,-2.75f,0f,0f,0.75f,-0.4751965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:stone_slab",Properties:{type:"bottom"}}},{id:"minecraft:block_display",transformation:[0f,-1f,0f,0.3123845263f,1f,0f,0f,-1.75f,0f,0f,0.75f,-0.4751965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:stone_slab",Properties:{type:"bottom"}}},{id:"minecraft:block_display",transformation:[0.5000110004f,-0.8660190526f,0f,-0.1876154737f,0.8660190526f,0.5000110004f,0f,-3.0625f,0f,0f,0.75f,-0.4751965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:stone_slab",Properties:{type:"bottom"}}},{id:"minecraft:block_display",transformation:[0.5196114316f,0.3000066002f,0f,-0.1876154737f,-0.3000066002f,0.5196114316f,0f,-0.625f,0f,0f,0.6f,-0.4126965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite"}},{id:"minecraft:block_display",transformation:[0.5f,0f,0f,-0.5001154737f,0f,0.7244458058f,0.2588118987f,-1.5625f,0f,-0.1941089241f,0.9659277411f,0.0248034368f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[-0.5f,0f,0f,-0.0001154737f,0f,0.7244458058f,0.2588118987f,-1.5625f,0f,0.1941089241f,-0.9659277411f,-0.2251965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[-0.42786737f,-0.171872497f,0.4638989365f,-0.0001154737f,0.0476750559f,0.6085288166f,0.5767011624f,-1.375f,-0.2542766264f,0.403302026f,-0.6724682491f,-1.0376965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[0.3729714358f,-0.280986241f,-0.5447394786f,0.3123845263f,0.0397086583f,1.1396344809f,-0.2358993862f,-1.875f,0.3306289923f,0.1801006172f,0.6428338666f,-2.1001965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[0.4330062317f,-0.187520023f,0.4330231678f,-0.4376154737f,-0.0647095807f,0.543312538f,0.6771049404f,-1.375f,-0.2414917669f,-0.4818171095f,0.5949956604f,1.0248034368f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[0.3557807523f,-0.3463612991f,0.5593111613f,-0.1876154737f,0.0647091456f,1.1263644614f,0.2527130045f,-2.125f,-0.3453010032f,-0.1457933837f,0.6236442593f,1.1498034368f,0f,0f,0f,1f],block_state:{Name:"minecraft:andesite_wall",Properties:{north:"tall",south:"tall"}}},{id:"minecraft:block_display",transformation:[0.129406282f,-0.6531082324f,-0.1250051113f,0.6248845263f,0.4829637812f,0.1749898131f,0.0335082833f,-1.375f,-0.0000141637f,-0.181185546f,0.4829605751f,0.2748034368f,0f,0f,0f,1f],block_state:{Name:"minecraft:cobblestone_wall",Properties:{up:"true"}}},{id:"minecraft:block_display",transformation:[0.1530978938f,-0.6616837718f,0.0563978878f,0.5623845263f,0.4592792885f,0.1835774676f,-0.1478793675f,-1.25f,0.1249942803f,0.1359187242f,0.474289965f,-1.0376965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:cobblestone_wall",Properties:{up:"true"}}},{id:"minecraft:block_display",transformation:[-0.4227919224f,0.0105293108f,0.2668153404f,0.6248845263f,-0.1749694573f,-0.5393535404f,-0.2663947785f,-0.375f,0.2015754929f,-0.4460794683f,0.3283951829f,-0.5376965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:cobblestone_wall",Properties:{up:"true"}}},{id:"minecraft:block_display",transformation:[-0.4227865239f,0.0105245453f,0.2668239905f,0.6248845263f,0.1494139954f,-0.5705021329f,0.2482296645f,-0.75f,0.2211945143f,0.4054831073f,0.3423258561f,-0.2251965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:cobblestone_wall",Properties:{up:"true"}}},{id:"minecraft:block_display",transformation:[0.5412571585f,0.2187605707f,0f,-0.1251154737f,-0.312515101f,0.378880011f,0f,-0.4375f,0f,0f,0.6875f,-0.4751965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:cobblestone"}},{id:"minecraft:block_display",transformation:[0f,-1f,0f,0.3123845263f,1f,0f,0f,-2.75f,0f,0f,0.75f,-0.4751965632f,0f,0f,0f,1f],block_state:{Name:"minecraft:stone_slab",Properties:{type:"bottom"}}}]}],CustomName:"Weeping Angel",equipment:{chest:{id:"minecraft:ghast_tear",count:1,components:{item_model:"minecraft:angeltear",custom_name:{color:"dark_purple",italic:0b,text:"Angel's Tear"},enchantment_glint_override:true}}},drop_chances:{chest:0.300},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:attack_damage",base:1000},{id:"minecraft:follow_range",base:120},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.33148837208}]}
execute in survivalexpansion:the_havenlands as @e[type=skeleton,distance=0..] at @s run tp @s ~ ~-1000 ~
execute as @e[type=block_display,tag=weeping_model] on vehicle on passengers run tag @s add safe
execute as @e[type=block_display,tag=weeping_model,tag=!safe] at @s run kill @e[type=block_display,distance=..5]
tag @e[type=block_display,tag=weeping_model] remove safe




#Charged Reaper

execute in survivalexpansion:the_havenlands as @e[type=creeper,name=Creeper,distance=0..] at @s run data merge entity @s {Silent:1b,Tags:["chargedreaper"],CustomName:"Charged Reaper",active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:120},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.45}]}
effect give @e[type=creeper,tag=chargedreaper] invisibility infinite 1 true

#Piglin Brute

execute in survivalexpansion:the_dreadlands as @e[type=piglin,distance=0..] at @s run summon piglin_brute ~ ~ ~
execute in survivalexpansion:the_dreadlands as @e[type=piglin,distance=0..] run tp @s ~ ~-1000 ~

#Ghost

effect give @e[type=skeleton,tag=ghost] invisibility infinite 1 true
effect give @e[type=vex,tag=ghost] invisibility infinite 1 true
execute as @a if score @s dragondead matches 1.. as @e[type=skeleton,tag=!not_ghost,sort=random,distance=0..] at @s run function survivalexpansion:ghost
execute as @e[type=skeleton,tag=needsai] at @s run summon vex ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"nocol",Tags:["ghost"],CustomName:"Ghost",active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],Attributes:[{Name:follow_range,Base:30}]}
execute as @e[type=skeleton,tag=needsai] at @s as @e[type=vex,tag=ghost] run tp @e[type=skeleton,tag=needsai] @s
execute as @e[type=vex,tag=ghost] at @s run tp @e[type=skeleton,tag=ghost,distance=0..1] @s
execute as @e[type=skeleton,tag=ghost] at @s unless entity @e[type=vex,tag=ghost,distance=0..1] at @s run tag @s add needsai
execute as @e[type=vex,tag=ghost] at @s as @e[type=skeleton,tag=ghost,distance=0..1] at @s run tag @s remove needsai
execute as @e[type=vex,tag=ghost] at @s unless entity @e[type=skeleton,tag=ghost,distance=0..1] at @s run kill @e[distance=0..1,tag=ghost]
execute as @e[type=skeleton,tag=ghost] at @s unless block ~ ~1 ~ air run data merge entity @s {Invulnerable:1b}
execute as @e[type=skeleton,tag=ghost] at @s if block ~ ~1 ~ air run data merge entity @s {Invulnerable:0b}

#Charged Reaper 2

execute as @a if score @s dragondead matches 1.. as @e[type=creeper,name=Reaper,nbt={powered:1b}] run data merge entity @s {Silent:1b,powered:1b,CustomName:"Charged Reaper",active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],Attributes:[{Name:follow_range,Base:120},{Name:max_health,Base:30},{Name:movement_speed,Base:0.45}]}

#Haven Guardian Natural Spawn

execute as @a if score @s dragondead matches 1.. as @e[type=zombie,tag=!not_dreadguardian,sort=random,distance=0..,name=Zombie] at @s run function survivalexpansion:dreadguardian

#Drop Patch

execute as @e[type=zombie,nbt={CustomName:'{"bold":true,"color":"dark_red","text":"Dread Guardian"}'}] run data merge entity @s {ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}

#Cosmologist

execute unless entity @e[tag=cosmo] as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}] at @s if block ~ ~-0.5 ~ enchanting_table as @e[type=villager,distance=0..3,nbt={VillagerData:{profession:"minecraft:none"}}] at @s run tag @s add Cosmologist
execute as @e[tag=Cosmologist] run data merge entity @s {CustomName:"Cosmologist",VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"}}
execute as @e[tag=Cosmologist] run tag @s add cosmo
execute if entity @e[tag=Cosmologist] as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}] at @s if block ~ ~-0.5 ~ enchanting_table run particle witch ~ ~ ~ 1 1 1 1 100 force
execute if entity @e[tag=Cosmologist] as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}] at @s if block ~ ~-0.5 ~ enchanting_table run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 3 0
execute if entity @e[tag=Cosmologist] as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}] at @s if block ~ ~-0.5 ~ enchanting_table run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 3 2
execute if entity @e[tag=Cosmologist] as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}}] at @s if block ~ ~-0.5 ~ enchanting_table run kill @s
tag @a remove Cosmologist

execute as @a[nbt={Inventory:[{id:"minecraft:emerald",components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Jewel"}'}}]}] run tag @s add cosmo2
execute unless entity @e[tag=cosmologist2] unless entity @e[tag=cosmologist3] unless entity @e[tag=cosmologist4] unless entity @e[tag=cosmologist5] if entity @a[tag=cosmo2] as @e[type=villager,name=Cosmologist,tag=cosmo] run data merge entity @s {CustomNameVisible:0b,Tags:["cosmo","cosmologist2"],CustomName:'"Cosmologist"',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Jewel"}',"minecraft:item_model":"ancientjewel",enchantment_glint_override:true}}}]}}
execute as @a[nbt={Inventory:[{id:"minecraft:purple_dye",components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Gemstone"}'}}]}] run tag @s add cosmo3
execute unless entity @e[tag=cosmologist2] unless entity @e[tag=cosmologist2] unless entity @e[tag=cosmologist4] unless entity @e[tag=cosmologist5] if entity @a[tag=cosmo3] as @e[type=villager,name=Cosmologist,tag=cosmo] run data merge entity @s {CustomNameVisible:0b,Tags:["cosmo","cosmologist3"],CustomName:'"Cosmologist"',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Gemstone"}',"minecraft:item_model":"ancientgemstone",enchantment_glint_override:true}}}]}}
execute as @e[tag=cosmo2,tag=cosmo3] run tag @s add cosmo4
execute unless entity @e[tag=cosmologist4] unless entity @e[tag=cosmologist5] if entity @a[tag=cosmo4] as @e[type=villager,name=Cosmologist,tag=cosmo] run data merge entity @s {CustomNameVisible:0b,Tags:["cosmo","cosmologist4"],CustomName:'"Cosmologist"',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Jewel"}',"minecraft:item_model":"ancientjewel",enchantment_glint_override:true}}},{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Gemstone"}',"minecraft:item_model":"ancientgemstone",enchantment_glint_override:true}}}]}}
execute as @a[nbt={Inventory:[{id:"minecraft:iron_ingot",components:{"minecraft:item_model":"minecraft:adamantingot"}}]}] run tag @s add cosmo5
execute unless entity @e[tag=cosmologist5] if entity @a[tag=cosmo5] if entity @a[tag=cosmo4] as @e[type=villager,name=Cosmologist,tag=cosmo] run data merge entity @s {CustomNameVisible:0b,Tags:["cosmo","cosmologist5"],CustomName:'"Cosmologist"',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Jewel"}',"minecraft:item_model":"ancientjewel",enchantment_glint_override:true}}},{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:amethyst_shard",count:4},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Ancient Gemstone"}',"minecraft:item_model":"ancientgemstone",enchantment_glint_override:true}}},{rewardExp:1b,maxUses:2147483647,buy:{id:"minecraft:emerald",count:64},buyB:{id:"minecraft:netherite_ingot",count:1},sell:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Adamant Ingot"}',"minecraft:item_model":"adamantingot",enchantment_glint_override:true}}}]}}

#Dreadblade Perks


scoreboard players set !placeholder Neptune_1 1
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"minecraft:dreadblade"}}}] at @s as @e[type=creaking,tag=weepingangel,distance=..5] run data merge entity @s {Invulnerable:0b}
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"minecraft:dreadblade"}}}] as @a[scores={damage_dealt=200..}] run effect give @s regeneration 1 4 true
execute as @a[scores={damage_dealt=200..}] run scoreboard players reset @s damage_dealt
scoreboard players operation @a crit -= !placeholder Neptune_1
execute as @a[scores={crit=..0}] run scoreboard players set @s crit 0
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"minecraft:dreadblade"}}}] as @a[scores={crit=0}] run attribute @s minecraft:attack_damage base set 20
execute as @a[scores={crit=400..}] run scoreboard players set @s crit 0
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"minecraft:dreadblade"}}}] as @a[scores={crit=1..199}] run attribute @s minecraft:attack_damage base set 1
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"minecraft:dreadblade"}}}] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.125 0.5 0.125 1 5 normal

#Neptunium Pickaxe


execute as @e[type=marker,tag=neptunebedrock2] run scoreboard players add @s bedrockmine 1
execute as @e[scores={bedrockmine=1..70}] at @s run particle glow ~ ~ ~ 0 1 0 1 25 force
execute as @e[scores={bedrockmine=1}] at @s run playsound minecraft:entity.warden.sonic_charge ambient @a ~ ~ ~ 10 0
execute as @e[scores={bedrockmine=80}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 10 0
execute as @e[scores={bedrockmine=80}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 10 2
execute as @e[scores={bedrockmine=80}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 0
execute as @e[scores={bedrockmine=80}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 2
execute as @e[scores={bedrockmine=80}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[scores={bedrockmine=80}] at @s run summon tnt ~ ~1 ~ {fuse:0}
execute as @e[scores={bedrockmine=80}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace bedrock
execute as @e[scores={bedrockmine=1000}] run kill @s
execute as @e[scores={bedrockmine=1000..}] run scoreboard players set @s bedrockmine 0


tp @e[tag=neptunebedrock] ~ ~-1000 ~


#Invisible Nametags

tag @e[type=villager,name=Cosmologist,tag=cosmo] add neptune_no_nametag
tag @e[type=giant,name=helvius] add neptune_no_nametag
tag @e[type=zombie,tag=dread_guardian] add neptune_no_nametag
tag @e[type=zombie,tag=haven_guardian] add neptune_no_nametag
tag @e[type=evoker,tag=elemental] add neptune_no_nametag
tag @e[type=ghast,nbt={Silent:1b,Glowing:1b,PersistenceRequired:1b,Health:100f,ExplosionPower:4,CustomName:{text:"Ascalaphus"}}] add neptune_no_nametag
tag @e[type=wither_skeleton,tag=darkarcher] add neptune_no_nametag
team join neptune_no_nametag @e[tag=neptune_no_nametag]

#Boss Buffs (3.1.4)

effect give @e[type=ghast,nbt={Silent:1b},name="Ascalaphus"] resistance infinite 2 true
effect give @e[type=ghast,nbt={Silent:1b},name="Ascalaphus"] strength infinite 4 true

effect give @e[type=giant,team=helvius] resistance infinite 2 true
effect give @e[type=vindicator,nbt={Silent:1b},team=helvius] strength infinite 4 true

effect give @e[type=iron_golem,team=neptuniumgolem] resistance infinite 2 true
effect give @e[type=vindicator,team=neptuniumgolem] strength infinite 4 true

effect give @e[type=zombie,tag=dreadknight] resistance infinite 2 true
effect give @e[type=zombie,tag=dreadknight] strength infinite 4 true

effect give @e[type=husk,team=havenangel] resistance infinite 2 true
effect give @e[type=husk,team=havenangel] strength infinite 4 true

#Dread Spirits

execute as @a if score @s helviusdead matches 1.. as @e[type=spider,tag=!not_dreadspirit,sort=random,distance=0..,name=Spider] at @s run function survivalexpansion:dreadspirit
execute as @e[type=zombie,tag=dreadspirit] if entity @s[nbt={NoAI:1b}] anchored eyes at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=zombie,tag=dreadspirit] at @s if entity @a[distance=..60] store result score ! dreadspirit run random value 1..500
execute as @e[type=zombie,tag=dreadspirit] at @s if entity @a[distance=..60] if score ! dreadspirit matches 1 run function survivalexpansion:attack

#Chronoshard

execute as @e[type=item,nbt={Item:{components:{"minecraft:item_model":"minecraft:chronoshard"}}}] run data merge entity @s {Invulnerable:1b}
execute as @a[scores={timewarpd=1..}] run scoreboard players add @s timewarpd 1
execute as @a[scores={timewarpd=10..}] run scoreboard players set @s timewarpd 0

#Bottom Commands

execute in survivalexpansion:the_havenlands run stopsound @a[distance=0..] music 
execute in survivalexpansion:the_dreadlands run stopsound @a[distance=0..] music 
function survivalexpansion:sounds
tag @a remove void

#Weird husk bugfix

execute store result score !Timer huskcount if entity @e[type=husk]
execute if score !Timer huskcount matches 500.. run tp @e[type=husk] ~ ~-1000 ~

#Weird charged reaper bugfix

execute store result score !Timer crcount if entity @e[type=creeper,tag=chargedreaper]
execute if score !Timer crcount matches 500.. run tp @e[type=creeper,tag=chargedreaper] ~ ~-1000 ~

#entity sounds

execute as @e[type=zombie,tag=dread_guardian,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.armadillo.hurt_reduced hostile @a ~ ~ ~ 3 0
execute as @e[type=zombie,tag=dread_guardian,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.zombie.destroy_egg hostile @a ~ ~ ~ 3 0
execute as @e[type=zombie,tag=haven_guardian,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.armadillo.hurt_reduced hostile @a ~ ~ ~ 3 0
execute as @e[type=zombie,tag=haven_guardian,nbt={HurtTime:9s}] at @s run playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 3 0

execute as @e[type=skeleton,tag=ghost,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.warden.hurt hostile @a ~ ~ ~ 1 2
execute as @e[type=skeleton,tag=ghost,nbt={HurtTime:9s}] at @s run playsound minecraft:block.soul_sand.step hostile @a ~ ~ ~ 1 0